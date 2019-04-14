/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Sami Disha Fahim
 */
public class TicketServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Statement stm = null;
        ResultSet rs = null;
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* Html design for Buy Ticket */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Book Ticket</title>");
            out.println("<style>");
            out.println("body{background-image: url(\"images/cine_bodyBG.jpg\");font-family: cursive;background-color: #f5f5f5}");
            out.println("div{width: 400px;margin: 0px auto;box-shadow: 0px 1px 10px #a8a8a8;background-color: #fff;padding-bottom: 10px;position: absolute;top: 50%;left: 50%;transform: translate(-50%,-50%)}");
            out.println("h1{background-color: #34cbd1;text-align: center;margin-top: 0;padding: 20px;color: #fff}");
            out.println("p{text-align: center;font-size: 20px;color: #6a595b;}");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<div>");
            /* get data from form */
            String movie_name = request.getParameter("movie");
            String show_time = request.getParameter("time");
            String show_date = request.getParameter("date");
            int num_ticket = Integer.parseInt(request.getParameter("num_ticket"));

            Connection con = null;

            System.out.println(movie_name);
            System.out.println(show_time);
            System.out.println(show_date);
            System.out.println(num_ticket);
            try {
                /* add jdbc driver */
                Class.forName("com.mysql.jdbc.Driver");
                /* connect with desired database */
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cineplex_database", "root", "");
                /* query statement */
                String query = "select * from show_details inner join time_slot "
                        + " on show_details.time_slot_id = time_slot.time_slot_id where movie_name = '" + movie_name + "' and show_details.time_slot_id = '" + show_time + "' and show_date = '" + show_date + "'";
                stm = con.createStatement();
                /* Execute query*/
                rs = stm.executeQuery(query);

                if (rs.next()) {
                    int available_seat = Integer.parseInt(rs.getString("available_seats"));
                    if (available_seat >= num_ticket) {
                        /* display ticket details */
                        out.println("<h1>Congratulation!!</h1>");
                        out.println("<p>Movie Name - " + rs.getString("movie_name") + "</p>");
                        out.println("<p>Show Time  - " + rs.getString("start_time") + "</p>");
                        out.println("<p>Date       - " + rs.getString("show_date") + "</p>");
                        out.print("<p>Your Seat  - ");
                        int new_available_seat = available_seat - num_ticket;
                        String seat = "";
                        for (int i = 1; i <= num_ticket; i++) {
                            int j = 200 - available_seat + i;
                            seat = seat + j + ",";
                            out.print(j + ", ");
                        }
                        out.println("</p>");
                        /* getSession with parameter false, if exists then use , else return null */
                        HttpSession session = request.getSession(false);
                        /*get Session attribute */
                        String email = (String) session.getAttribute("email");
                        /* query for update */
                        query = "update show_details set available_seats = " + new_available_seat + " where movie_name = '" + movie_name + "' and time_slot_id = '" + show_time + "' and show_date = '" + show_date + "'";
                        stm = con.createStatement();
                        /* execute query*/
                        stm.executeUpdate(query);
                        int amount = num_ticket * 300;
                        /* query for insert */
                        query = "INSERT INTO ticket_details(user_email, movie_name, time_slot_id, show_date, seat_no, ticket_price) VALUES ('" + email + "','" + movie_name + "','" + show_time + "','" + show_date + "','" + seat + "','" + amount + "')";
                        System.out.println(query);
                        stm = con.createStatement();
                        /* execute query*/
                        stm.executeUpdate(query);

                    }

                } else {
                    out.println("<h1 style='background-color: #eb1616'>Ticket not available!</h1>");
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                try {
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            out.println("<p><a href='index.jsp'>Home</a></p>");
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        }
    }
}
