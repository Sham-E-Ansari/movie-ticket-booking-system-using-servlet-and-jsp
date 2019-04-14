<%-- 
    Document   : gossipNews
    Created on : Apr 11, 2019, 1:43:04 AM
    Author     : Sami  Disha Fahim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Gossip & News | Movie Theatre Website</title>
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
            <li><a href="concession.jsp">Concession</a></li>
            <li><a class="active" href="gossipNews.jsp">Gossip & News</a></li>
            <li><a href="about.jsp">About Movie Theatre</a></li>
            <li><a href="contact.jsp">Contact</a></li>
        </ul>
        <br>

        <div class="slideshow-container" style="margin-left:155px">
            <div class="mySlides fade">
                <div class="numbertext">1 / 3</div>
                <img src="images/STAR-Cineplex-Opening-soon-Shimanto-Shomvar.jpg" style="width:100%;height: 410px;">
                <div class="carousel-caption"><h2>Star Cineplex opens at Shimanto Shambhar</h2></div>
            </div>
            <div class="mySlides fade">
                <div class="numbertext">2 / 3</div>
                <img src="images/star_cineplex_opening.jpg" style="width:100%;height: 410px;">
                <div class="carousel-caption"><h2>Star Cineplex opening ceremony was held at Dhanmondi</h2></div>
            </div>
            <div class="mySlides fade">
                <div class="numbertext">3 / 3</div>
                <img src="images/star_cineplex_celebrates_14_years_of_excellence1.jpg" style="width:100%;height: 410px;">
                <div class="carousel-caption"><h2>Star Cineplex celebrates 14 years of excellence<h2></div>
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
                                    <input type="checkbox" class="read-more-state" id="post-1" />

                                    <h3 style="margin-left:0px; text-align:center;">SEQUELS TO SPIDER-MAN: INTO THE SPIDER-VERSE ALREADY?</h3>
                                    <img src= "images/spider_man_into_the_spider.jpg" alt =""  style="height: 212px;width:300px;display:block; margin-left:auto; margin-right:auto;" />

                                    <p class="read-more-wrap"><span class="read-more-target"> Spider-Man: Into the Spider-Verse sets up not only
                                            a direct sequel starring Miles Morales, but the all-female spinoff featuring Gwen Stacy that's also in the
                                            works at Sony Pictures Animation. Though there are two other Spider-Man related franchises ongoing from
                                            Sony (Tom Holland's Spidey in the MCU and Venom), the studio recently launched a third with the debut of
                                            Spider-Man: Into the Spider-Verse. The animated film introduces Miles Morales (Shameik Moore) and a whole
                                            host of alternate universe Spider-People. While much of the movie focuses on Miles, giving the character an
                                            origin story as his world's Spider-Man, the ending of Spider-Verse and the potential for other characters to
                                            join in or lead their own spinoffs is limitless.</br></br>Even before the movie hit theaters, Sony announced
                                            a Spider-Verse sequel and an all-female spinoff were in development, with creative teams already attached.
                                            Given the positive reactions and reviews of Spider-Man: Into the Spider-Verse, it's clear Sony's confidence
                                            in the franchise is justifiable, and those who have seen the movie are surely excited to know future
                                            installments are already in the pipeline.</span></p>

                                    <label for="post-1" class="read-more-trigger"></label>
                                </div>

                                <div class="news">
                                    <input type="checkbox" class="read-more-state" id="post-2" />

                                    <h3 style="margin-left:0px; text-align:center;">BUMBLEBEE CUT G1 MEGATRON</h3>
                                    <img src="images/bumblebee.jpg" alt="" style="height: 212px;width:300px;display:block; margin-left:auto; margin-right:auto;" />

                                    <p class="read-more-wrap"><span class="read-more-target">Bumblebee had to pass on a pitched scene that would
                                            have involved a G1 (Generation 1) version of Megatron. Bumblebee is the newest Transformers film that stands
                                            as the franchise's first spinoff, and a prequel to the series that started in 2007 with Shia Labeouf.
                                            Bumblebee is also the first film in the series that doesn't include Michael Bay as the director.</br></br>
                                            While previous Transformers movies have mainly relied on action sequences and big-budget special effects,
                                            Bumblebee is said to be focusing more on bringing humor and heart to the Transformers franchise. One of the
                                            ways the film is doing this is by setting the movie in the 1980s, the same decade that the Transformers toys
                                            were invented. In this way, the film is relying on nostalgia to get people invested in the movie by bringing
                                            fan-favorite Transformers characters to life with their G1 designs. While many characters like Optimus Prime
                                            and Soundwave will appear in the film with their G1 designs, the franchise's biggest villain was purposefully
                                            left out of the movie.</span></p>

                                    <label for="post-2" class="read-more-trigger"></label>
                                </div>

                                <div class="news">
                                    <input type="checkbox" class="read-more-state" id="post-3" />

                                    <h3 style="margin-left:0px; text-align:center;">LIVE AID SCENE, ALMOST IMPOSSIBLE!</h3>
                                    <img src="images/rami.jpg" alt="" style="height: 212px;width:300px;display:block;display:block; margin-left:auto; margin-right:auto;" />

                                    <p class="read-more-wrap"><span class="read-more-target"> Rami Malek, who played Freddie Mercury in the 
                                            Queen biopic, has spoken about one of the most tiring parts of taking on the role saying he was "left lying
                                            on [his] back".</br></br>The movie follows Mercury joining Queen and their rise to fame along with the famous
                                            Live Aid performance.</br></br>Speaking to The Wrap, Malek said: �I didn�t really want to bulk up, per se � I just
                                            wanted to get my body into a place where I could do a 22-minute concert over and over for five days and not 
                                            be out of breath."</br></br>It turned out it wasn't that easy to do.</br></br>�Well, it�s highly impossible to do 
                                            that," Malek added. "There were days when I found myself laying on my back trying to just absorb as much air
                                            as possible."</span></p>

                                    <label for="post-3" class="read-more-trigger"></label>
                                </div>

                                <div class="news">
                                    <input type="checkbox" class="read-more-state" id="post-4" />

                                    <h3 style="margin-left:0px; text-align:center;">AQUAMAN, SAVIOR OF DC?</h3>
                                    <img src="images/aquaman-759.jpg" alt="" style="height: 212px;width:300px;display:block;display:block; margin-left:auto; margin-right:auto;" />

                                    <p class="read-more-wrap"><span class="read-more-target">  James Wan didn't go into making "Aquaman" thinking
                                            it would have to be the savior of the DC Extended Universe. He knew the movie would get a lot of attention
                                            from fans and the executives at Warner Bros. But he didn't think it would be on the level of "Furious 7," in
                                            which he had to figure out how to send off Paul Walker's character following the actor's death at the end of
                                            production in 2013.<br><br>JIt's the superhero "everyone makes fun of," as Wan said in an interview.<br><br>
                                            While Warner Bros. concentrated on making a standalone "Batman" movie with Ben Affleck, Wan would be hanging
                                            out with Jason Momoa (who plays Aquaman) and Amber Heard (Mera), surrounded by green screens that would one 
                                            day become the mythical underwater city of Atlantis. At least, that's what Wan thought.<br><br>First, the 
                                            DCEU's crown project, "Justice League," got slaughtered by critics and underperformed at the box office last
                                            year. Then Affleck stepped away from directing and writing duties for a "Batman" movie. (The project has
                                            since been taken over by Matt Reeves, the "Planet of the Apes" franchise director.) And suddenly "Aquaman"
                                            has been the center stage.</span></p>

                                    <label for="post-4" class="read-more-trigger"></label>
                                </div>


                            </div>

                            </body>
                            </html>