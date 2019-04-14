/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Sami  Disha Fahim
 */
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        /* Html design for Logoutpage */
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Servlet loginClass</title>");
        out.println("<style>");
        out.println("body{background-image: url(\"images/cine_bodyBG.jpg\");\n"
                + "		background-position: center 0;\n"
                + "		backface-visibility: visible;\n"
                + "		background-color: #030202!important;\n"
                + "		background-repeat: no-repeat;}");
        out.println("div{width: 400px;margin: 0px auto;box-shadow: 0px 1px 10px #a8a8a8;background-color: #fff;padding-bottom: 10px;position: absolute;top: 50%;left: 50%;transform: translate(-50%,-50%)}");
        out.println("h1{background-color: #34cbd1;text-align: center;margin-top: 0;padding: 20px;color: #fff}");
        out.println("p{text-align: center;font-size: 20px;color: #6a595b;}");
        out.println("</style>");
        out.println("</head>");
        out.println("<body>");
        out.println("<div>");
        /* get data from form */
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        Connection con = null;
        Statement stm = null;
        ResultSet rs = null;
        try {
             /* add jdbc driver*/
            Class.forName("com.mysql.jdbc.Driver");
            /* connect with desired database*/
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cineplex_database", "root", "");
            /* query statement for database */
            String query = "select * from user_details where email='" + email + "' and pass='" + pass + "'";
            stm = con.createStatement();
            /* execute query*/
            rs = stm.executeQuery(query);
            if (rs.next()) {
                /* Show user details*/
                out.println("<h1>Welcome</h1>");
                out.println("<p>Name - " + rs.getString("name") + "</p>");
                out.println("<p>Email - " + rs.getString("email") + "</p>");
                out.println("<p>Mobile - " + rs.getString("mob") + "</p>");
                /* getSession() parameter true if exists then use else create */
                HttpSession session = request.getSession();
                String name = rs.getString("name");
                /*Set Session attributes */
                session.setAttribute("email", email);
                session.setAttribute("name", name);
            } else {
                out.println("<h1 style='background-color: #eb1616'>Invalid email or password !</h1>");
            }
        } catch (ClassNotFoundException e) {
            out.println(e);
        } catch (SQLException e) {
            out.println(e);
        } finally {
            try {
                /* close all connection */
                rs.close();
                stm.close();
                con.close();
            } catch (SQLException e) {
                out.println(e);
            }
        }
        out.println("<p><a href='index.jsp'>Home</a></p>");
        out.println("<p><a href='buyTicket.jsp'>Buy Ticket</a></p>");
        out.println("</div>");
        out.println("</body>");
        out.println("</html>");

    }
}
