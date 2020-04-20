<?php 
    // session_start();
    // if (!isset($_SESSION["login"])) {
    //     header("Location: login.php");
    //     exit;
    // }


    require "function.php";

    //pagination
    $jumlahDataPerHalaman = 18;
    $jumlahData = count(query("SELECT * FROM nonfiksi"));
    $jumlahHalaman = ceil($jumlahData / $jumlahDataPerHalaman);
    $halamanAktif = (isset($_GET["halaman"])) ? $_GET["halaman"] : 1;
    $awalData = ($jumlahDataPerHalaman * $halamanAktif) - $jumlahDataPerHalaman;
    
    $books = query("SELECT * FROM nonfiksi LIMIT $awalData, $jumlahDataPerHalaman");
    // $books = query("SELECT * FROM fiksi");

    if (isset($_POST["cari"]) ) {
        if (strlen($_POST["keyword"]) > 0) {
            $keyword = $_POST["keyword"];
            $query = "SELECT * FROM nonfiksi WHERE 
            -- jika pakai ini haris sama keyword sama nama-nya nama = '$keyword'
            -- lebih fleksibel pakai LIKE dan % di depan dan belakangnya di php
            judul LIKE '%$keyword%' OR
            penulis LIKE '%$keyword%'
            -- jurusan LIKE '%$keyword%' OR
            -- nis LIKE '%$keyword%'
            ";
            // return query($query);
            $books = query($query);
            // $(".placebabi").attr("placeholder", $keyword);
        } else {
            $books = query("SELECT * FROM nonfiksi LIMIT $awalData, $jumlahDataPerHalaman");
        }
    }

    // if (isset($_POST["cari"])) {
    //     $books = cariFiksi($_POST["keyword"]);
    // } 
        // $books = $halamanAktifFiksi;
?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/rellax.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <link href="fontawesome/css/all.css" rel="stylesheet"> <!--load all styles -->
    <title>Non-Fiksi</title>
    <style>
        .jumbo{
            background-image: url('img/baner.jpg');
            background-size: cover;
        }
    </style>
  </head>
  <body>
    <!-- Button trigger modal -->

    <!-- <a href="" data-toggle="modal" data-target="#exampleModal"><img src="img/book14.jpg" alt=""></a> -->
  
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Non-Fiction</h5>
                <div  class="close" data-dismiss="modal" aria-label="Close"><span onclick="move()">&#215;</span></div>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <img src="img/book20.jpg" id="ahbabilah" alt="">
                    </div>
                    <div class="col-md-6">
                        <h2><span id="judul"></span></h2>
                        <h5>by <span id="penulis"></span></h5><br>
                        <div class="row mb-4">
                            <div class="col-12">
                                <a href="login.php" class="mr-3">Download</a>
                                <a href="login.php">Read Online</a>
                            </div>
                        </div>
                        <p class="mt-4">Page : <span id="halaman"></span></p>
                        <p>Publish : <span id="publish"></span></p>
                        <p>Genre : <span id="genre"></span></p>
                        <p>Synopsis : <span id="sinopsis"></span></p>
                    </div>
                </div>
            </div>
            <!-- <div class="modal-footer">
                <div class="col-6 ">
                    <div class="row justify-content-center">
                        <a href="" class="mr-3">Download</a>
                        <a href="">Read Online</a>
                    </div>
                </div>
                <div class="col-6"></div>
            </div> -->
        </div>
        </div>
    </div>

    <div class="jumbo">
        
    </div>
    <div class="navbar kuda" id="kuda">
            <ul class="mt-3 ml-3">
                <li><a href="fiksi.php">Fiction</a></li>
                <li><a href="bse.php">BSE</a></li>
                <li><a href="#" style="background-color:#343a40; color:white;">Non-Fiction</a></li>
                <li class="cario" id="cario"><i onclick="cari()" class="fa fa-search"></i></li>
                <li class="moveo" id="moveo"><i onclick="move()" class="fas fa-times"></i></li>
            </ul>

            <form action="" method="post" class="cari">
                <input type="text" name="keyword" class="placebabi" placeholder="Search Here..." autocomplete="off">
                <button type="submit" name="cari" class="tombol"><i class="fa fa-search"></i></button>
            </form>
        </div>

        <section class="list-book" id="list-book">
            <div class="container-fluid pl-5 pr-5">
                <div class="row text-center pt-4 pb-4">
                    <div class="col-12">
                        <a href="index.php">Home</a><span>/ Non-Fiction </span>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <?php foreach($books as $book) : ?>                    
                    <div class="col-fhd-2 col-md-2 mb-4 col-6">
                        <div class="card" data-aos="fade-up" data-aos-duration="1000">
                            <a href="" data-toggle="modal" data-target="#exampleModal" id="atun"
                            data-judul="<?= $book["judul"]; ?>" 
                            data-penulis="<?= $book["penulis"]; ?>" 
                            data-halaman="<?= $book["halaman"]; ?>" 
                            data-publish="<?= $book["publish"]; ?>"
                            data-genre="<?= $book["genre"]; ?>"
                            data-sinopsis="<?= $book["sinopsis"]; ?>"
                            data-link="<?= $book["link"]; ?>"
                            data-gambar="<?= $book["gambar"]; ?>">
                            <img src="img/<?= $book["gambar"]; ?>" class="card-img-top" alt="..."></a>
                            
                            <div class="card-body text-center">
                            <a href="" data-toggle="modal" class="card-title" data-target="#exampleModal" id="atun"
                            data-judul="<?= $book["judul"]; ?>" 
                            data-penulis="<?= $book["penulis"]; ?>" 
                            data-halaman="<?= $book["halaman"]; ?>" 
                            data-publish="<?= $book["publish"]; ?>"
                            data-genre="<?= $book["genre"]; ?>"
                            data-sinopsis="<?= $book["sinopsis"]; ?>"
                            data-link="<?= $book["link"]; ?>"
                            data-gambar="<?= $book["gambar"]; ?>">
                                <?= $book["judul"]; ?></a>
                                <p class="card-text pt-1"><?= $book["penulis"]; ?></p>
                            </div>
                        </div>
                    </div>
                    <?php endforeach; ?>
                </div>

                <div class="content text-center bg-dark" id="content">
                <?php if($halamanAktif > 1) : ?>
                    <a href="?halaman=<?= $halamanAktif - 1 ?>" data-target="next" id="next"><i class="fa fa-chevron-circle-left mr-2 text-white"></i></a>
                <?php else : ?>
                    <a href=""><i class="fa fa-chevron-circle-left mr-2 text-white"></i></a>
                <?php endif; ?>
                
                <?php for($i = 1; $i <= $jumlahHalaman; $i++) : ?>
                    <?php if($i == $halamanAktif) : ?>
                        <a href="?halaman=<?= $i; ?>" style="font-weight: bold; color: salmon;" class=" mr-2"><?= $i; ?></a>
                    <?php else: ?>
                        <a href="?halaman=<?= $i; ?>" style="color: white;" class="mr-2"><?= $i; ?></a>
                    <?php endif; ?>
                <?php endfor; ?>

                <?php if($halamanAktif < $jumlahHalaman) : ?>
                    <a href="?halaman=<?= $halamanAktif +1; ?>" data-target="next" id="next"><i class="fa fa-chevron-circle-right mr-2 text-white"></i></a>
                <?php else: ?>
                    <a href=""><i class="fa fa-chevron-circle-right mr-2 text-white"></i></a>
                <?php endif; ?>
            </div>
            </div>

        </section>
    <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
        Launch demo modal
    </button> -->

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
                <li><a href="https://www.youtube.com/playlist?list=PLLxgBk1dEIIAWhoKiZhvQ44LDU1WQMy_Z"><i class="fab fa-youtube"></i></a></li>
                <li><a href="https://twitter.com/stembasemarang" target="_blank"><i class="fab fa-twitter"></i></a></li>
            </ul>
            <ul class="copy justify-content-center">
                <li><p>Copyright © 2020 SMK N 7 Semarang All rights reserved.</p></li>
            </ul>
        </div>
    </footer>




    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script>

    
    function cari(){
        var element = document.getElementById("cario");
        element.classList.add("active");
        var element = document.getElementById("kuda");
        element.classList.add("active");
        var element = document.getElementById("moveo");
        element.classList.add("active");
    }

    function move(){
        var element = document.getElementById("kuda");
        element.classList.remove("active");
        var element = document.getElementById("cario");
        element.classList.remove("active");
        var element = document.getElementById("moveo");
        element.classList.remove("active");
    }
    
    AOS.init();

    var rellax = new Rellax('.rellax');

    $(document).ready(function() {
        $(document).on("click", "#atun", function() {
            var judul = $(this).data('judul');
            var penulis = $(this).data("penulis");
            var halaman = $(this).data("halaman");
            var publish = $(this).data("publish");
            var genre = $(this).data("genre");
            var sinopsis = $(this).data("sinopsis");
            var link = $(this).data("link");
            var gambar = $(this).data("gambar");
            // alert(gambar);
            $("#judul").text(judul);
            $("#penulis").text(penulis);
            $("#halaman").text(halaman);
            $("#publish").text(publish);
            $("#genre").text(genre);
            $("#gambar").text(gambar);
            $("#sinopsis").text(sinopsis);
            $("#ahbabilah").attr("src", 'img/'+gambar);
            $(".linkbabi").attr("href", link);
        });
    });


</script>

</body>
</html>