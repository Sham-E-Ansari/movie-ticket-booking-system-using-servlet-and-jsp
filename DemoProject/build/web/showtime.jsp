<%-- 
    Document   : showTime
    Created on : Apr 11, 2019, 3:11:41 AM
    Author     : Sami Disha Fahim
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    Connection con = null;
    Statement statement = null;
    ResultSet resultSet = null;
    String driverName = "com.mysql.jdbc.Driver";

    try {
        Class.forName(driverName);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

%>
<html>
    <head>
        <title>Show Time</title>
        <link rel="stylesheet" href="styles/myStyle.css">
        <style>
            body {
                background-image: url("images/cine_bodyBG.jpg");
                background-position: center 0;
                backface-visibility: visible;
                background-color: #030202!important;
                background-repeat: no-repeat;
            }
        </style>

    </head>
    <body>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a class="active" href="showtime.jsp">Show Time</a></li>
            <li><a href="ticket.jsp">Ticket Price</a></li>
            <li><a href="concession.jsp">Concession</a></li>
            <li><a href="gossip&news.jsp">Gossip & News</a></li>
            <li><a href="about.jsp">About Movie Theatre</a></li>
            <li><a href="contact.jsp">Contact</a></li>
        </ul>
        <div class= "dv">
            <h1 style="text-align: center">Schedule</h1>
            <table>
                <tr>
                    <th>Movie Name</th>
                    <th>Date</th>
                    <th>Start Time</th>
                    <th>Available Seats</th>
                </tr>
                <%try {
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cineplex_database", "root", "");
                        statement = con.createStatement();
                        String query = "select * from show_details inner join time_slot "
                                + "on show_details.time_slot_id = time_slot.time_slot_id";
                        System.out.println(query);
                        resultSet = statement.executeQuery(query);
                        while (resultSet.next()) {
                %>
                <tr bgcolor="#DEB887">

                    <td><%=resultSet.getString("movie_name")%></td>
                    <td><%=resultSet.getString("show_date")%></td>
                    <td><%=resultSet.getString("start_time")%></td>
                    <td><%=resultSet.getString("available_seats")%></td>
                </tr>
                <%
                        }

                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </table>
            <p style="margin-left:450px"><a href='buyTicket.jsp'>Buy Ticket</a></p>
        </div>
    </body>
</html>
