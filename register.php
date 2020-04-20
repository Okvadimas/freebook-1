<?php

    require "function.php";

    if(isset($_POST["signup"])) {
        
        if (signup($_POST) > 0 ) {
            echo "
            <script>
                alert('User Baru Berhasil Di Tambahkan');
                document.location.href = 'login.php';
            </script>
            ";
        } else {
            echo mysqli_error($conn);
        }
    }
?>
<html>
    <head> 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Register Page</title>
        <link rel="stylesheet" href="css/login.css">
        <link rel="stylesheet" href="css/new-boot.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body>
    <div class="registrasi">
        <div class="row">
            <div class="col-md-4 text-center">
                <h1 class="mb-3">Let's Make Account !</h1>
                <h2 class="mb-3">Register</h2>

                <ul>
                    <form action="" method="post">
                        <li>
                            <input type="text" id="username" name="username" placeholder="Masukan Username..." required>
                        </li>
                        <li>
                            <input type="email" id="email" name="email" required placeholder="Email...">
                        </li>
                        <li>
                            <input type="password" id="password" name="password" required placeholder="Password...">
                        </li>
                        <li>
                            <input type="password" id="password2" name="password2" required placeholder="Konfirmasi Password...">
                        </li>
                        <li>
                            <input type="text" size="100" id="ttl" name="ttl" required placeholder="Tanggal/Bulan/Tahun...">
                        </li>
                        <li>
                            <button type="submit" class="buton" name="signup">Sign Up</button>
                            <div class="row">
                                <div class="col-md-12 have">
                                  <p>Already have Account?
                                        <a href="login.php">Sign in</a><a href="index.php">Cancel</a></p>
                                </div>
                            </div>
                        </li>
                    </form>
                </ul>
            </div>
        </div>
    </div>
    </body>
</html>