<%-- 
    Document   : buyTicket
    Created on : Apr 10, 2019, 6:03:39 PM
    Author     : Sami  Disha Fahim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ticket</title>
        <link rel="stylesheet" href="styles/myStyle.css">


        <style>
            body{background-image: url("images/cine_bodyBG.jpg");font-family: cursive;background-color: #f5f5f5}
            div{align-self: center; width: 400px;margin: 0px auto;box-shadow: 0px 1px 10px #a8a8a8;background-color: #fff;padding-bottom: 10px}
            h1{background-color: #34cbd1;text-align: center;margin-top: 0;padding: 20px;color: #fff}
            input{display: block; margin:auto; font-size: 20px}
            p{text-align: center;font-size: 20px;color: #82a28a;}
            input{width: 70%;border: 1px solid #34cbd1; background-color: #fff;outline: none;border-radius: 5px;height:40px;padding: 10px}
            input[type="submit"]:hover{background-color: #54b0bc;border: 0}
            input[type="submit"]{background-color: #34cbd1;color: #fff;cursor: pointer;}
            a{padding: 5px; border-radius: 3px; background-color: #c0eb30;text-decoration: none;display: inline-block;color: #000;}
            a:hover{color: #fff; background-color: #4cce56;transition: all 0.3s}
        </style>

    </head>
    <body>

        <%
            session = request.getSession(false);
            System.out.println(session);
            if (session != null) {
                if (session.getAttribute("name") != null) {%>
        <form action="ticketServlet" method="POST">
            <div>
                <h1 style="text-align: center">Buy Tickets</h1>

                <h2>Movie Name</h2>
                <select name="movie">
                    <option value="Dumbo (3D)">Dumbo (3D)</option>
                    <option value="Jodi Ekdin (2D)">Jodi Ekdin (2D)</option>
                    <option value="Captain Marvel (3D)">Captain Marvel (3D)</option>
                    <option value="How To Train Your Dragon (3D)">How To Train Your Dragon (3D)</option>
                    <option value="Phagun Hawa (2D)" selected>Phagun Hawa (2D)</option>
                </select>

                <h2>Show Time</h2>
                <select name="time">
                    <option value="A">11:30 am</option>
                    <option value="B">2:00 pm</option>
                    <option value="C">4:30 pm</option>
                    <option value="D" selected>7:00 pm</option>
                </select>

                <h2>Date</h2>
                <select name="date">
                    <option value="11/04/2019">11/04/2019</option>
                    <option value="12/04/2019">12/04/2019</option>
                    <option value="13/04/2019">13/04/2019</option>
                    <option value="14/04/2019" selected>14/04/2019</option>
                </select>
                <h2>Number of Ticket</h2>
                <input type ="number" name="num_ticket" min="1" max ="4" >
                <input type="submit"  value="submit" style="margin-left:80px">
            </div>
        </form>


        <%} else {
           
            out.println("<style>");
            out.println("body{background-image: url(\"images/cine_bodyBG.jpg\");font-family: cursive;background-color: #f5f5f5}");
            out.println("div{width: 400px;margin: 0px auto;box-shadow: 0px 1px 10px #a8a8a8;background-color: #fff;padding-bottom: 10px;position: absolute;top: 50%;left: 50%;transform: translate(-50%,-50%)}");
            out.println("h1{background-color: #34cbd1;text-align: center;margin-top: 0;padding: 20px;color: #fff}");
            out.println("p{text-align: center;font-size: 20px;color: #6a595b;}");
            out.println("</style>");
            out.println("<div>");
            out.println(" <h1>Login First!</h1>");
            out.println("<p><a href='loginPage.jsp'>Login to buy ticket</a></p>");
            out.println("<p><a href='register.html'>New here? Click here to register<a></p>");
            out.println("<p><a href='index.jsp'>Home</a></p>");
            out.println("</div>");
        %>

        <%}
            }%>
    </body>
    
</html>
