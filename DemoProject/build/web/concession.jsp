<%-- 
    Document   : concession
    Created on : Apr 11, 2019, 1:36:09 AM
    Author     : Sami  Disha Fahim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Concession | Movie Theatre Website</title>
        <link rel="stylesheet" href="styles/myStyle.css">
        <style>
            body {
                background-image: url("images/cine_bodyBG.jpg");
                background-position: center 0;
                backface-visibility: visible;
                background-color: #030202!important;
                background-repeat: no-repeat;
            }


            .read-more-state {
                display: none;
            }

            .read-more-target {
                opacity: 0;
                max-height: 0;
                font-size: 0;
                transition: .25s ease;
            }

            .read-more-state:checked ~ .read-more-wrap .read-more-target {
                opacity: 1;
                font-size: inherit;
                max-height: 999em;
            }

            .read-more-state ~ .read-more-trigger:before {
                content: 'Show more';
            }

            .read-more-state:checked ~ .read-more-trigger:before {
                content: 'Show less';
            }

            .read-more-trigger {
                cursor: pointer;
                display: inline-block;
                padding: 0 .5em;
                color: #666;
                font-size: .9em;
                line-height: 2;
                border: 1px solid #ddd;
                border-radius: .25em;
            }

            .content {
                max-width:1024px;
                float: left;
                margin-left: 155px;
                margin-bottom:10px;
            }

            .news{
                background-color: LightGray;
                width:1024px;
                max-height: 400px;
                margin-top:10px;
                float: left; 
                padding: 2%;
                border-radius: .5em;
                resize: both;
                overflow: auto;
            }

        </style>
    </head>
    <body>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="showtime.jsp">Show Time</a></li>
            <li><a href="ticket.jsp">Ticket Price</a></li>
            <li><a class="active" href="concession.jsp">Concession</a></li>
            <li><a href="gossipNews.jsp">Gossip & News</a></li>
            <li><a href="about.jsp">About Movie Theatre</a></li>
            <li><a href="contact.jsp">Contact</a></li>
        </ul>

        <div class="slideshow-container" style="margin-left:155px">
            <div class="mySlides fade">
                <div class="food-banner">1 / 3</div>
                <img src="images/food-banner.jpg" style="width:100%;height: 410px;">
            </div>
            <div class="mySlides fade">
                <div class="food-banner-1">2 / 3</div>
                <img src="images/food-banner-1.jpg" style="width:100%;height: 410px;">
            </div>
            <div class="mySlides fade">
                <div class="food-banner-2">3 / 3</div>
                <img src="images/food-banner-2.jpg" style="width:100%;height: 410px;">
            </div>

        </div>
        <br>
        <div style="text-align:center">
            <span class="dot"></span> 
            <span class="dot"></span> 
            <span class="dot"></span>
        </div>

        <script src="myScriptNews.js"></script>


        <div class="content">
            <div class="news">

                <h3 style="margin-left:0px; text-align:center;">Couple Combo</h3>
                <img src= "images/CouplesCombo.jpg" alt =""  style="height: 212px;width:300px;display:block; margin-left:auto; margin-right:auto;" />

                <p style="text-align: center;">Buy one large popcorn + two large pepsi and save 15 taka. (Check for availability)</p>

            </div>

            <div class="news">

                <h3 style="margin-left:0px; text-align:center;">Poteto Sticks</h3>
                <img src="images/PotetoSticks.jpg" alt="" style="height: 212px;width:300px;display:block; margin-left:auto; margin-right:auto;" />

                <p style="text-align: center;">These are the famous Cineplex Potato Sticks. Potato Sticks are salty, cooked potatoes. (Check for availability)</p>

            </div>

            <div class="news">

                <h3 style="margin-left:0px; text-align:center;">Sandwich</h3>
                <img src="images/sandwich3.jpg" alt="" style="height: 212px;width:300px;display:block;display:block; margin-left:auto; margin-right:auto;" />

                <p style="text-align: center;">Chicken sandwich (Check for availability)</p>

            </div>

            <div class="news">

                <h3 style="margin-left:0px; text-align:center;">Candy</h3>
                <img src="images/Chocolate1.jpg" alt="" style="height: 212px;width:300px;display:block;display:block; margin-left:auto; margin-right:auto;" />

                <p style="text-align: center;">Choose from our huge collection of imported Candies.</p>

            </div>


        </div>

    </body>
</html>