<%-- 
    Document   : admin_home
    Created on : Feb 20, 2018, 1:46:47 PM
    Author     : java3
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Reporters Home</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!--[if lte IE 8]><script src="home/assets/js/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="home/assets/css/main.css" />
        <!--[if lte IE 9]><link rel="stylesheet" href="home/assets/css/ie9.css" /><![endif]-->
        <!--[if lte IE 8]><link rel="stylesheet" href="home/assets/css/ie8.css" /><![endif]-->
    </head>
    <body>

        <!-- Header -->
        <header id="header">
            <a href="reporter_home.jsp" class="title">Reporters</a>
            <nav>
                <ul>
                    <li><a href="reporter_home.jsp" class="active">Home</a></li>
                    <li><a href="add_news.jsp">Update News</a></li>
                    <li><a href="news_approval.jsp">News Approvals</a></li>
                    <li><a href="added_news.jsp">View Added News</a></li>
                    <li><a href="index.jsp">Logout</a></li>
                </ul>
            </nav>
        </header>

        <div id="wrapper">

            <!-- Main -->
            <section id="main" class="wrapper">
                <div class="inner">
                    <h1 class="major">Add News</h1>

                    <!-- Form -->
                    <section>
                        <form action="add_news" method="post" enctype="multipart/form-data">
                            <center>
                                <div class="4u 12u$(xsmall)">
                                    <br>
                                    <label for="email">Head Line</label>head_line
                                    <textarea name="head_line" rows="3" width="200px" ></textarea>
                                </div>
                                <div class="4u 12u$(xsmall)">
                                    <br>
                                    <label for="name">News Tag1</label>
                                    <input type="text" name="tag1" id="name" width="200px" />
                                </div>
                                <div class="4u 12u$(xsmall)">
                                    <br>
                                    <label for="name">News Tag2</label>
                                    <input type="text" name="tag2" id="name" width="200px" />
                                </div>
                                <div class="4u 12u$(xsmall)">
                                    <br>
                                    <label for="name">News Tag3</label>
                                    <input type="text" name="tag3" id="name" width="200px" />
                                </div>
                                <div class="4u 12u$(xsmall)">
                                    <br>
                                    <label for="name">Date Held</label>
                                    <input type="date" name="date_held" id="name" width="200px" />
                                </div>
                                <div class="4u 12u$(xsmall)">
                                    <br>
                                    <label for="name">Time Held</label>
                                    <input type="time" name="time_held" id="name" width="200px" />
                                </div>
                                <div class="4u 12u$(xsmall)">
                                    <br>
                                    <label for="name">Place</label>
                                    <input type="text" name="place" id="name" width="200px" />
                                </div>
                                <div class="8u 12u$(xsmall)">
                                    <br>
                                    <label for="name">News Details</label>
                                    <textarea name="news_details" rows="6" cols="10" width="500px" ></textarea>
                                </div>
                                <div class="4u 12u$(xsmall)">
                                    <br>
                                    <label for="email">News Types</label>
                                    <select name="type">
                                        <option value="Political">Political</option>
                                        <option value="Entertainment">Entertainment</option>
                                        <option value="Sports">Sports</option>
                                    </select>
                                </div>
                                <br>
                                <div class="box alt">
                                    <div class="row uniform">
                                        <div class="4u"><span class="image fit"><div class="6u" id="fileDisplayArea" ><br><label>Main Picture</label>
                                                    <input type="file" id="fileInput" name="pic1" class="custom-file-input"></span></div></div>
                                        <div class="4u"><span class="image fit"><div class="6u" id="fileDisplayArea2" ><br><label>Additional Picture1</label>
                                                    <input type="file" id="fileInput2" name="pic2" class="custom-file-input"></span></div></div>
                                        <div class="4u$"><span class="image fit"><div class="6u" id="fileDisplayArea3" ><br><label>Additional Picture2</label>
                                                    <input type="file" id="fileInput3" name="pic3" class="custom-file-input"></span></div></div>
                                    </div></div>
                                <div class="4u 12u$(xsmall)">
                                    <br>
                                    <ul class="actions">
                                        <li><input type="submit" value="Add" class="special" /></li>
                                        <li><input type="reset" value="Reset" /></li>
                                    </ul>
                                </div>
                            </center>
                        </form>
                    </section>


                </div>
            </section>

        </div>

        <!-- Footer -->
        <footer id="footer" class="wrapper alt">
            <div class="inner">
                <ul class="menu">

                </ul>
            </div>
        </footer>
        <script>
            window.onload = function() {

                var fileInput = document.getElementById('fileInput');
                var fileDisplayArea = document.getElementById('fileDisplayArea');

                fileInput.addEventListener('change', function(e) {
                    var file = fileInput.files[0];
                    var imageType = /image.*/;

                    if (file.type.match(imageType)) {
                        var reader = new FileReader();

                        reader.onload = function(e) {
                            //fileDisplayArea.innerHTML = "";

                            var img = new Image();
                            img.src = reader.result;

                            fileDisplayArea.appendChild(img);
                        }

                        reader.readAsDataURL(file);	
                    } else {
                        fileDisplayArea.innerHTML = "File not supported!"
                    }
                });

                var fileInput2 = document.getElementById('fileInput2');
                var fileDisplayArea2 = document.getElementById('fileDisplayArea2');

                fileInput2.addEventListener('change', function(e) {
                    var file = fileInput2.files[0];
                    var imageType = /image.*/;

                    if (file.type.match(imageType)) {
                        var reader = new FileReader();

                        reader.onload = function(e) {
                            //fileDisplayArea2.innerHTML = "";

                            var img = new Image();
                            img.src = reader.result;

                            fileDisplayArea2.appendChild(img);
                        }

                        reader.readAsDataURL(file);	
                    } else {
                        fileDisplayArea2.innerHTML = "File not supported!"
                    }
                });

                var fileInput3 = document.getElementById('fileInput3');
                var fileDisplayArea3 = document.getElementById('fileDisplayArea3');

                fileInput3.addEventListener('change', function(e) {
                    var file = fileInput3.files[0];
                    var imageType = /image.*/;

                    if (file.type.match(imageType)) {
                        var reader = new FileReader();

                        reader.onload = function(e) {
                            //fileDisplayArea3.innerHTML = "";

                            var img = new Image();
                            img.src = reader.result;

                            fileDisplayArea3.appendChild(img);
                        }

                        reader.readAsDataURL(file);	
                    } else {
                        fileDisplayArea3.innerHTML = "File not supported!"
                    }
                });
            }
        </script>

        <!-- Scripts -->
        <script src="home/assets/js/jquery.min.js"></script>
        <script src="home/assets/js/jquery.scrollex.min.js"></script>
        <script src="home/assets/js/jquery.scrolly.min.js"></script>
        <script src="home/assets/js/skel.min.js"></script>
        <script src="home/assets/js/util.js"></script>
        <!--[if lte IE 8]><script src="home/assets/js/ie/respond.min.js"></script><![endif]-->
        <script src="home/assets/js/main.js"></script>

    </body>
</html>