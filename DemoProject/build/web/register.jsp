<%-- 
    Document   : register
    Created on : Apr 11, 2019, 1:40:58 AM
    Author     : Sami Disha Fahim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registration Page</title>
        <style>
            body{background-image: url("images/cine_bodyBG.jpg");font-family: cursive;background-color: #f5f5f5}
            div{width: 400px;margin: 0px auto;box-shadow: 0px 1px 10px #a8a8a8;background-color: #fff;padding-bottom: 10px}
            h1{background-color: #34cbd1;text-align: center;margin-top: 0;padding: 20px;color: #fff}
            input{display: block; margin:auto; font-size: 20px}
            p{text-align: center;font-size: 20px;color: #82a28a;}
            input{width: 70%;border: 1px solid #34cbd1;background-color: #fff;outline: none;border-radius: 5px;height:40px;padding: 10px}
            input[type="submit"]:hover{background-color: #54b0bc;border: 0}
            input[type="submit"]{background-color: #34cbd1;color: #fff;cursor: pointer}
            a{padding: 5px; border-radius: 3px; background-color: #c0eb30;text-decoration: none;display: inline-block;color: #000;}
            a:hover{color: #fff; background-color: #4cce56;transition: all 0.3s}
        </style>
    </head>
    <body>
        <div>
            <h1>Register</h1>
            <form action="register" method="get">
                <p>Enter your name</p>
                <input type="text" name="name">
                <p>Enter your email</p>
                <input type="text" name="email">
                <p>Enter your password</p>
                <input type="password" name="pass">
                <p>Enter your mobile number</p>
                <input type="text" name="mob"><br>
                <input type="submit" value="Submit">
                <p><a href="index.jsp">Home</a></p>
            </form>
        </div>
    </body>
</html>