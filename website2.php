<?php
    session_start();
    if (!isset($_SESSION["login"])) {
        header("Location: index.php");
        exit;
    }
    
    require "function.php";
    $books_pop1 = query("SELECT * FROM bookpop1");
    $books_pop2 = query("SELECT * FROM bookpop2");

?>
<!doctype html>
<html lang="en" id="home">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="css/ta3.css">
    <link rel="stylesheet" href="css/new-boot.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link href="fontawesome/css/all.css" rel="stylesheet"> <!--load all styles -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <!-- <script src="js/parallax/parallax.min.js"></script> -->
    <script src="js/java.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

    <script text="js/javascript">

    </script>
        <style>
            .hero{
                background-image: url('img/yonotolol.jpg');
                background-size: cover;
                background-position:center;
            }

            .btn-primary {
                color: #fff;
                background-color: #4e73df;
                border-color: #4e73df;
                }

            @media only screen and (max-width: 600px){
                .hero{
                background-image: url('img/PANDULMOBILEASU2.jpg');
                background-size: cover;
                background-position:center;
                }
            }
        </style>
    
    <title>Index</title>
  </head>
  <body>

    <div class="toggle-collapse">
       <div class="toggle-icon"><i onclick="side()" class="fas fa-bars"></i></div>
    </div>
    <div id="sidebar">
        <div class="close"><span onclick="side()">&#215;</span></div>
        <ul>
            <hr>
            <li class="nav-item">
                <a class="nav-link page" onclick="remove()" href="#home">Home</a>
            </li>
            <hr>
            <li class="nav-item">
                <a class="nav-link page" onclick="remove()"  href="#wedo">About</a>
            </li>
            <hr>
            <li class="nav-item">
                <a class="nav-link page" onclick="remove()" href="#anjing2">Popular</a>
            </li>
            <hr>
            <li class="nav-item">
                <a class="nav-link page" onclick="remove()" href="#babi2">Books</a>
            </li>
            <hr>
            <li class="nav-item">
                <a data-toggle="modal" class="nav-link page" onclick="remove()" data-target="#logoutModal">Logout</a>
            </li>
            <hr>
        </ul>
    </div>

    <!-- modal log out -->
    <div class="modal fade" id="logoutModal" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <button class="btn btn-primary" type="button" onclick="window.location.href = 'logout.php'">Log Out</button>
            </div>
            </div>
        </div>
    </div>

    <!-- Section Navbar -->
    <nav class="navbar navbar-expand-md navbar-light fixed-top pl-5 pr-5">

        <a class="navbar-brand page" href="#home"><img src="img/50black.png" alt="logo gan"></a>

       <div class="collapse navbar-collapse pl-4">

            <ul class="navbar-nav ml-auto"> 
                <!-- <li><a href="#wedo" class="page-scroll">Location</a></li> -->
                <li class="nav-item">
                    <a class="nav-link page" href="#wedo">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page" href="#anjing">Popular</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page" href="#babi">Books</a>
                </li>
                <li class="nav-item">
                    <a data-toggle="modal" class="nav-link page" data-target="#logoutModal" style="cursor: pointer;">Logout</a>
                </li>
            </ul>
        </div>
    </nav>
    
    <div class="hero">
    </div>

    <section class="wedo" id="wedo">
        <div class="container-fluid pb-5">
            
            <div class="row justify-content-center" data-aos="fade-up" data-aos-duration="1000">
                <div class="col-md-5">
                    <h1>WHAT WE DO</h1><hr>
                    <p>We provides <span>online library</span> service from the comfort of your hand, so you can read or download books for free</p>
                </div>
                <div class="col-md-3 ml-5 mr-3 p-0">
                    <div class="image1">
                        <img src="img/what1.jpg" alt="">
                    </div>
                </div>
                <div class="col-md-2 p-0">
                    <div class="image2">
                        <img src="img/what3.jpg" alt="hahah">
                        <img src="img/what2.jpg" alt="">
                    </div>    
                </div>
            </div>
        </div>
    </section>

    <section class="anjing2" id="anjing2">

    <!-- Modal -->
    <div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalScrollableTitle">Home</h5>
                        <button type="button" class="close close2" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <img src="img/book20.jpg" id="ahbabilah1" alt="">
                        </div>
                        <div class="col-md-6 pt-3">
                            <h2><span id="judul1"></span></h2>
                            <h5>by <span id="penulis1"></span></h5><br>
                                <div class="row mb-4">
                                    <div class="col-12">
                                        <a href="" class="mr-3 linkbabi1">Download</a>
                                        <a href="" class="linkbabi1">Read Online</a>
                                    </div>
                                </div>
                                <p class="mt-4">Page : <span id="halaman1"></span></p>
                                <p>Publish : <span id="publish1"></span></p>
                                <p>Genre : <span id="genre1"></span></p>
                                <p>Synopsis : <span id="sinopsis1"></span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="content">
        <h2 class="text-center pb-4" data-aos="fade-up" data-aos-duration="1000">Popular Books</h2>
        <div class="owl-carousel owl-theme pb-4">
        <?php foreach($books_pop1 as $book) : ?> 
            <div class="d-flex align-items-center justify-content-center" data-aos="fade-up" data-aos-duration="1000"><a href="javascript:;"
                data-toggle="modal" data-target="#exampleModal1" id="atun"
                data-judul="<?= $book["judul"]; ?>" 
                data-penulis="<?= $book["penulis"]; ?>" 
                data-halaman="<?= $book["halaman"]; ?>" 
                data-publish="<?= $book["publish"]; ?>"
                data-genre="<?= $book["genre"]; ?>"
                data-sinopsis="<?= $book["sinopsis"]; ?>"
                data-link="<?= $book["link"]; ?>"
                data-gambar="<?= $book["gambar"]; ?>">  
                <img src="img/<?= $book["gambar"]; ?>" alt=""></a>
            </div>
        <?php endforeach; ?>

        <?php foreach($books_pop2 as $book) : ?>   
            <div class=" d-flex align-items-center justify-content-center" data-aos="fade-up" data-aos-duration="2000"><a href="javascript:;"
                data-toggle="modal" data-target="#exampleModal" id="atun"
                data-judul="<?= $book["judul"]; ?>" 
                data-penulis="<?= $book["penulis"]; ?>" 
                data-halaman="<?= $book["halaman"]; ?>" 
                data-publish="<?= $book["publish"]; ?>"
                data-genre="<?= $book["genre"]; ?>"
                data-sinopsis="<?= $book["sinopsis"]; ?>"
                data-link="<?= $book["link"]; ?>"
                data-gambar="<?= $book["gambar"]; ?>">  
                <img src="img/<?= $book["gambar"]; ?>" alt=""></a>
            </div>
        <?php endforeach; ?>
        </div>
    </div>
    </section>

    <section class="anjing" id="anjing">
            <div class=" text-center container-fluid">
            <div class="row text-center">
                <div class="col-lg-12" data-aos="fade-up" data-aos-duration="1000">
                    <h1>Popular Books</h1>
                </div>
            </div> 

            <!-- Modal -->
            <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalScrollableTitle">Home</h5>
                    <button type="button" class="close close2" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <img src="img/book20.jpg" id="ahbabilah2" alt="">
                                </div>
                                <div class="col-md-6">
                                    <h2><span id="judul2"></span></h2>
                                    <h5>by <span id="penulis2"></span></h5><br>
                                    <div class="row mb-4">
                                        <div class="col-12">
                                            <a href="" class="mr-3 linkbabi2">Download</a>
                                            <a href="" class="linkbabi2">Read Online</a>
                                        </div>
                                    </div>
                                    <p class="mt-4">Page : <span id="halaman2"></span></p>
                                    <p>Publish : <span id="publish2"></span></p>
                                    <p>Genre : <span id="genre2"></span></p>
                                    <p>Synopsis : <span id="sinopsis2"></span></p>
                                </div>
                            </div>
                </div>
                </div>
            </div>
            </div>

                <div class="row d-flex align-items-center">
                    <div class="col-1 d-flex align-items-center justify-content-center">
                        <a href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <div class="carousel-nav-icon">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 129 129" xmlns:xlink="http://www.w3.org/1999/xlink">
                                    <path d="m88.6,121.3c0.8,0.8 1.8,1.2 2.9,1.2s2.1-0.4 2.9-1.2c1.6-1.6 1.6-4.2 0-5.8l-51-51 51-51c1.6-1.6 1.6-4.2 0-5.8s-4.2-1.6-5.8,0l-54,53.9c-1.6,1.6-1.6,4.2 0,5.8l54,53.9z"/>
                                </svg>
                            </div>
                        </a>
                    </div>
                    <div class="col-10 pt-4">
                        <!--Start carousel-->
                        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                   
                            <div class="carousel-item active">
                                <div class="row">
                                    <?php foreach($books_pop1 as $book) : ?> 
                                    <div class="col-md-4 d-flex align-items-center justify-content-center" data-aos="fade-up" data-aos-duration="1000"><a href="javascript:;"
                                        data-toggle="modal" data-target="#exampleModal2" id="atun"
                                        data-judul="<?= $book["judul"]; ?>" 
                                        data-penulis="<?= $book["penulis"]; ?>" 
                                        data-halaman="<?= $book["halaman"]; ?>" 
                                        data-publish="<?= $book["publish"]; ?>"
                                        data-genre="<?= $book["genre"]; ?>"
                                        data-sinopsis="<?= $book["sinopsis"]; ?>"
                                        data-link="<?= $book["link"]; ?>"
                                        data-gambar="<?= $book["gambar"]; ?>">  
                                        <img src="img/<?= $book["gambar"]; ?>" alt=""></a>
                                    </div>

                                    <?php endforeach; ?>
                                </div>
                            </div>
                
                            <div class="carousel-item">
                                <div class="row">
                                <?php foreach($books_pop2 as $book) : ?>   
                                    <div class="col-md-4 d-flex align-items-center justify-content-center" data-aos="fade-up" data-aos-duration="1000"><a href="javascript:;"
                                        data-toggle="modal" data-target="#exampleModal2" id="atun"
                                        data-judul="<?= $book["judul"]; ?>" 
                                        data-penulis="<?= $book["penulis"]; ?>" 
                                        data-halaman="<?= $book["halaman"]; ?>" 
                                        data-publish="<?= $book["publish"]; ?>"
                                        data-genre="<?= $book["genre"]; ?>"
                                        data-sinopsis="<?= $book["sinopsis"]; ?>"
                                        data-link="<?= $book["link"]; ?>"
                                        data-gambar="<?= $book["gambar"]; ?>">  
                                        <img src="img/<?= $book["gambar"]; ?>" alt=""></a>
                                    </div>
                                    <?php endforeach; ?>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!--End carousel-->
                </div>
                <div class="col-1 d-flex align-items-center justify-content-center"><a  href="#carouselExampleIndicators" data-slide="next">
                    <div class="carousel-nav-icon">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 129 129" xmlns:xlink="http://www.w3.org/1999/xlink">
                            <path d="m40.4,121.3c-0.8,0.8-1.8,1.2-2.9,1.2s-2.1-0.4-2.9-1.2c-1.6-1.6-1.6-4.2 0-5.8l51-51-51-51c-1.6-1.6-1.6-4.2 0-5.8 1.6-1.6 4.2-1.6 5.8,0l53.9,53.9c1.6,1.6 1.6,4.2 0,5.8l-53.9,53.9z"/>
                        </svg>
                    </div>
                </a>
            </div>
    </section>

    <section class="babi bg-white" id="babi">
        <div class="container-fluid">
            <div class="row text-center">
                <div class="col-lg-12" data-aos="fade-up" data-aos-duration="1000">
                    <h1>Book Category</h1>
                </div>
            </div>
            <div class="row pt-4 pb-5">
                <div class="col-lg-4" data-aos="fade-up-right" data-aos-duration="1000">
                    <div class="kartu1">
                        <div class="front">
                            <img src="img/YALTA1.jpg" alt="">
                        </div>
                        <div class="back">
                            <h2><a href="nonfiksi2.php">Non-Fiction</a></h2>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4" data-aos="fade-up" data-aos-duration="1000">
                    <div class="kartu2">
                        <div class="front">
                            <img src="img/YALTA2.jpg" alt="">
                        </div>
                        <div class="back">
                            <h2><a href="bse2.php">BSE</a></h2>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4" data-aos="fade-up-left" data-aos-duration="1000">
                    <div class="kartu3">
                        <div class="front">
                            <img src="img/YALTA3.jpg" alt="">
                        </div>
                        <div class="back">
                            <h2><a href="fiksi2.php">Fiction</a></h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="cardres" id="babi2">
        <div class="container" data-aos="fade-up" data-aos-duration="1000">
        <h2 class="pt-4 pb-2 text-center">Book Category</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="post">
                    <a href="nonfiksi2.php"><img src="img/YALTA1.jpg" alt=""></a>
                        <div class="blog-title">
                            <button class="btn"><a href="nonfiksi2.php">Non-Fiction</a></button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="post">
                    <a href="bse2.php"><img src="img/YALTA2.jpg" alt=""></a>
                        <div class="blog-title">
                            <button class="btn"><a href="bse2.php">BSE</a></button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="post">
                    <a href="fiksi2.php"><img src="img/YALTA3.jpg" alt=""></a>
                        <div class="blog-title">
                            <button class="btn" ><a href="fiksi2.php">Fiction</a></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <footer class="bg-dark">
        <div class="logofooter">
            <ul class="term justify-content-center text-white">
                <li><a href=""class="mr-2">Contact</a></li>
                <li><p>|</p></li>
                <li><a href="" class="ml-2 mr-2">Help</a></li>
                <li><p>|</p></li>
                <li><a href="" class="mr-2 ml-2">Terms & Conditions</a></li>
                <li><p>|</p></li>
                <li><a href="" class="ml-2 mr-2">License</a></li>
                <li><p>|</p></li>
                <li><a href="" class="ml-2">FAQ</a></li>
            </ul>
            <ul class="logo justify-content-center">
                <li><a href="https://www.instagram.com/smknegeri7semarang/?hl=id" target="_blank"><i class="fab fa-instagram"></i></a></li>
                <li><a href="https://www.facebook.com/smknegeri7semarang/" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                <li><a href="https://www.youtube.com/playlist?list=PLLxgBk1dEIIAWhoKiZhvQ44LDU1WQMy_Z" target="_blank"><i class="fab fa-youtube"></i></a></li>
                <li><a href="https://twitter.com/stembasemarang" target="_blank"><i class="fab fa-twitter"></i></a></li>
            </ul>
            <ul class="copy justify-content-center">
                <li><p>Copyright © 2020 SMK N 7 Semarang All rights reserved.</p></li>
            </ul>
        </div>
    </footer>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <!-- <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script>

        function remove(){
            var element = document.getElementById("sidebar");
            element.classList.remove("active");
            }
            
        function side(){
            var element = document.getElementById("sidebar");
            element.classList.toggle("active");
            } 
                
        AOS.init();

        $(document).ready(function() {
            $(document).on("click", "#atun", function() {
                var judul = $(this).data('judul');
                var penulis = $(this).data("penulis");
                var halaman = $(this).data("halaman");
                var publish = $(this).data("publish");
                var genre = $(this).data("genre");
                var sinopsis = $(this).data("sinopsis");
                var gambar = $(this).data("gambar");
                var link = $(this).data("link");
                // alert(gambar);
                $("#judul1").text(judul);
                $("#penulis1").text(penulis);
                $("#halaman1").text(halaman);
                $("#publish1").text(publish);
                $("#genre1").text(genre);
                $("#gambar1").text(gambar);
                $("#sinopsis1").text(sinopsis);
                $("#link1").text(link);
                $("#ahbabilah1").attr("src", 'img/'+gambar);
                $(".linkbabi1").attr("href", link);

                $("#judul2").text(judul);
                $("#penulis2").text(penulis);
                $("#halaman2").text(halaman);
                $("#publish2").text(publish);
                $("#genre2").text(genre);
                $("#gambar2").text(gambar);
                $("#sinopsis2").text(sinopsis);
                $("#link2").text(link);
                $("#ahbabilah2").attr("src", 'img/'+gambar);
                $(".linkbabi2").attr("href", link);
            });
        });

        $(document).ready(function () {
            $('.owl-carousel').owlCarousel({
                loop: true,
                autoplay: true,
                autoplayTimeout: 3000,
                dots: false,
                margin : 10,
                responsiveClass:true,
                responsive:{
                    0:{
                        items:1,
                        loop : true
                    },
                    600:{
                        items:2,
                        loop :true
                    },
                    1000:{
                        items:3,
                        loop:true
                    }
                }
            });
        });
        
    </script>
</body>
</html>