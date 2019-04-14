<%-- 
    Document   : index
    Created on : Apr 10, 2019, 6:38:10 PM
    Author     : Sami  Disha Fahim
--%>
<%@ page import ="java.io.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Home | Movie Theatre Website</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="styles/myStyle.css">

        <style>
            body {
                background-image: url("images/cine_bodyBG.jpg");
                background-position: center 0;
                backface-visibility: visible;
                background-color: #030202!important;
                background-repeat: no-repeat;

            }
            button[type=submit] {
                width: 100%;
                background-color: white;
                color: Black;
                padding: 14px 20px;
                margin: 2px 2px;
                border: none;
                max-width: 220px;
                border-radius: 4px;
                display:block;
                cursor: pointer;
            }
            button[type=submit]:hover {
                background-color: DeepSkyBlue;
            }
        </style>
    </head>
    <body>
        <ul>
            <li><a class="active" href="index.jsp">Home</a></li>
            <li><a href="showtime.jsp">Show Time</a></li>
            <li><a href="ticket.jsp">Ticket Price</a></li>
            <li><a href="concession.jsp">Concession</a></li>
            <li><a href="gossipNews.jsp">Gossip & News</a></li>
            <li><a href="about.jsp">About Movie Theatre</a></li>
            <li><a href="contact.jsp">Contact</a></li>
        </ul>

        </br>		
        </br>

        <div class="slideshow-container">
            <div class="mySlides fade">
                <div class="numbertext">1 / 5</div>
                <img src="images/Dumbo.jpg" style="width:100%; height:410px;">
                <div class="carousel-caption">
                    <h2> Dumbo (3D)</h2>
                </div>
            </div>
            <div class="mySlides fade">
                <div class="numbertext">2 / 5</div>
                <img src="images/Jodi-Ekdin.jpg" style="width:100%; height:410px;">
                <div class="carousel-caption"><h2>Jodi Ekdin (2D)</h2></div>
            </div>
            <div class="mySlides fade">
                <div class="numbertext">3 / 5</div>
                <img src="images/captain-marvel.jpg" style="width:100%; height:410px;">
                <div class="carousel-caption"><h2>Captain Marvel (3D)</h2></div>
            </div>
            <div class="mySlides fade">
                <div class="numbertext">4 / 4</div>
                <img src="images/HowToTrainYourDragon.jpg" style="width:100%; height:410px;">
                <div class="carousel-caption"><h2>How To Train Your Dragon (3D)</h2></div>
            </div>
            <div class="mySlides fade">
                <div class="numbertext">5 / 5</div>
                <img src="images/phagun_hawa.jpg" style="width:100%; height:410px;">
                <div class="carousel-caption"><h2>Phagun Hawa (2D)</h2></div>
            </div>

        </div>
        <br>

        <div style="text-align:center">
            <span class="dot"></span> 
            <span class="dot"></span> 
            <span class="dot"></span>
            <span class="dot"></span>
            <span class="dot"></span>
        </div>

        </br>

        <script src="myScript.js"></script>
        <div class="homes">
            <div>
                <nav>
                    <%
                        session = request.getSession(false);
                        System.out.println(session);
                        if (session != null) {
                            if (session.getAttribute("name") != null) {%>
                    <h4>Welcome 
                        <%
                            String name = (String) session.getAttribute("name");
                            out.print(name);
                        %>
                    </h4>
                    <form action="logoutController" method="post">
                        <input type ="submit" value= "logout">
                    </form>
                    <%} else {%>
                    <a href="loginPage.jsp">Login to buy ticket.</a>
                    </br>
                    </br>
                    <a href="register.jsp">New here? Click here to register.</a>                           
                    <%}
                        }%>

                </nav>
            </div>
            <article>

                <ul style="margin-left:0px;">
                    <li class="active"><a data-toggle="tab" href="#sectionA">Now Showing</a></li>
                    <li><a data-toggle="tab" href="buyTicket.jsp">Buy Ticket</a></li>
                    <li><a data-toggle="tab" href="#sectionC">Coming Soon</a></li>
                    <li><a data-toggle="tab" href="#sectionD">Music</a></li>
                </ul>
                <div id = "sectionA" style="margin-left:0px" class="dv">
                    <img src="images/Dumbo.jpg" style="width:100%; height:50%; text-align: center;">
                    <input style="margin-left:35%" type="submit" value="Details" onclick="alert('Dumbo is Showing Now!!!!!')">

                </div>

                <h2 style="text-align:center">Coming Soon!!!</h2>
                <h4 style="text-align:center">Click Photo To Open In Full Size</h4>

                <div class="row">
                    <div class="column">
                        <img src="images/01_small.jpg" style="width:100%" onclick="openModal();currentSlide(1)" class="hover-shadow cursor">
                    </div>
                    <div class="column">
                        <img src="images/02_small.jpg" style="width:100%" onclick="openModal();currentSlide(2)" class="hover-shadow cursor">
                    </div>
                    <div class="column">
                        <img src="images/03_small.jpg" style="width:100%" onclick="openModal();currentSlide(3)" class="hover-shadow cursor">
                    </div>
                    <div class="column">
                        <img src="images/04_small.jpg" style="width:100%" onclick="openModal();currentSlide(4)" class="hover-shadow cursor">
                    </div>
                </div>

                </br>

                <div class="row">
                    <div class="column">
                        <img src="images/05_small.jpg" style="width:100%" onclick="openModal();currentSlide(5)" class="hover-shadow cursor">
                    </div>
                    <div class="column">
                        <img src="images/06_small.jpg" style="width:100%" onclick="openModal();currentSlide(6)" class="hover-shadow cursor">
                    </div>
                    <div class="column">
                        <img src="images/07_small.jpg" style="width:100%" onclick="openModal();currentSlide(7)" class="hover-shadow cursor">
                    </div>
                    <div class="column">
                        <img src="images/08_small.jpg" style="width:100%" onclick="openModal();currentSlide(8)" class="hover-shadow cursor">
                    </div>
                </div>

                <div id="myModal" class="modal">
                    <span class="close cursor" onclick="closeModal()">&times;</span>
                    <div class="modal-content">

                        <div class="myGallerySlides">
                            <div class="numbertext">1 / 8</div>
                            <img src="images/01_large.jpg" style="width:100%">
                        </div>

                        <div class="myGallerySlides">
                            <div class="numbertext">2 / 8</div>
                            <img src="images/02_large.jpg" style="width:100%">
                        </div>

                        <div class="myGallerySlides">
                            <div class="numbertext">3 / 8</div>
                            <img src="images/03_large.jpg" style="width:100%">
                        </div>
                        <div class="myGallerySlides">
                            <div class="numbertext">4 / 8</div>
                            <img src="images/04_large.jpg" style="width:100%">
                        </div>
                        <div class="myGallerySlides">
                            <div class="numbertext">5 / 8</div>
                            <img src="images/05_large.jpg" style="width:100%">
                        </div>
                        <div class="myGallerySlides">
                            <div class="numbertext">6 / 8</div>
                            <img src="images/06_large.jpg" style="width:100%">
                        </div>
                        <div class="myGallerySlides">
                            <div class="numbertext">7 / 8</div>
                            <img src="images/07_large.jpg" style="width:100%">
                        </div>
                        <div class="myGallerySlides">
                            <div class="numbertext">8 / 8</div>
                            <img src="images/08_large.jpg" style="width:100%">
                        </div>


                        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                        <a class="next" onclick="plusSlides(1)">&#10095;</a>

                        <div class="caption-container">
                            <p id="caption"></p>
                        </div>


                        <div class="column">
                            <img class="demo cursor" src="images/01_small.jpg" style="width:100%" onclick="currentSlide(1)" alt="TT Ground">
                        </div>
                        <div class="column">
                            <img class="demo cursor" src="images/02_small.jpg" style="width:100%" onclick="currentSlide(2)" alt="AUST Rainy Day">
                        </div>
                        <div class="column">
                            <img class="demo cursor" src="images/03_small.jpg" style="width:100%" onclick="currentSlide(3)" alt="Front of Canteen">
                        </div>
                        <div class="column">
                            <img class="demo cursor" src="images/04_small.jpg" style="width:100%" onclick="currentSlide(4)" alt="AUST Corridor">
                        </div>
                        <div class="column">
                            <img class="demo cursor" src="images/05_small.jpg" style="width:100%" onclick="currentSlide(5)" alt="AUST Convocation Night">
                        </div>
                        <div class="column">
                            <img class="demo cursor" src="images/06_small.jpg" style="width:100%" onclick="currentSlide(6)" alt="From Rooftop to Ground">
                        </div>
                        <div class="column">
                            <img class="demo cursor" src="images/07_small.jpg" style="width:100%" onclick="currentSlide(7)" alt="Campus View">
                        </div>
                        <div class="column">
                            <img class="demo cursor" src="images/08_small.jpg" style="width:100%" onclick="currentSlide(8)" alt="Canteen Lemonade">
                        </div>
                    </div>
                </div>

                </br>
                </br>

                <h2 style="text-align:center">Now Showing - Trailers</h2>
                <h4 style="text-align:center">View Full Size To Have Better Resolution</h4>

                <div class="row">
                    <div class="column">
                        <video width="100%" controls>
                            <source src="video/Aynabaji Original Series 2017 _ Dondo Somash _ Full Drama.mp4" type="video/mp4">
                            Your browser does not support HTML5 video.
                        </video>

                        <p>
                            Video courtesy of 
                            <a href="https://www.youtube.com/" target="_blank">YouTube</a>.
                        </p>
                    </div>

                    <div class="column">
                        <video width="100%" controls>
                            <source src="video/Aynabaji Original Series 2017 _ Ke _ Keno _ Kivabe _ _ Full Drama.mp4" type="video/mp4">
                            Your browser does not support HTML5 video.
                        </video>

                        <p>
                            Video courtesy of 
                            <a href="https://www.youtube.com/" target="_blank">YouTube</a>.
                        </p>
                    </div>

                    <div class="column">
                        <video width="100%" controls>
                            <source src="video/Aynabaji Original Series 2017 _ March Mash e Shooting _ Full Drama.mp4" type="video/mp4">
                            Your browser does not support HTML5 video.
                        </video>

                        <p>
                            Video courtesy of 
                            <a href="https://www.youtube.com/" target="_blank">YouTube</a>.
                        </p>
                    </div>

                    <div class="column">
                        <video width="100%" controls>
                            <source src="video/Aynabaji Original Series 2017 _ Mukhomukhi _ Full Drama.mp4" type="video/mp4">
                            Your browser does not support HTML5 video.
                        </video>

                        <p>
                            Video courtesy of 
                            <a href="https://www.youtube.com/" target="_blank">YouTube</a>.
                        </p>
                    </div>
                </div>

            </article>
        </div>

        <footer>
            Copyright | CSE4226 | Section A2
        </footer>
    </body>
</html>
