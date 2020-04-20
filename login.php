<?php
  
    session_start();
    if (isset($_SESSION["login"])) {
        header("Location: website2.php");
        exit;
    }

    require "function.php";

    if (isset($_POST["submitlogin"])) {

        $username = $_POST["username"];
        $password = $_POST["password"];

        $result = mysqli_query($conn, "SELECT * FROM users WHERE username = '$username'");
        $resultadmin = mysqli_query($conn, "SELECT * FROM admin WHERE username = '$username'");

        if (mysqli_num_rows($resultadmin) > 0 ) {

            // cek password
            $rowsadmin = mysqli_fetch_assoc($resultadmin);

            // table sendiri untuk as admin
            if($password === $rowsadmin["password"]) {
                $_SESSION["login"] = true;
                header("Location: admin.php");
                exit;
            }
            
            // untuk login as admin ini manual kalau admin masuk di table user  
            // if($password == "betamantap") {
            //     header("Location: admin.php");
            //     exit;
            // }
        }  
        // cek username
        elseif (mysqli_num_rows($result) > 0 ) {

            // cek password
            $row = mysqli_fetch_assoc($result);

            // should using password verify but is not working with my code, i dont know why 
            if($password == $row["password"]) {
                $_SESSION["login"] = true;
                header("Location: website2.php");
                exit;
            }
        }
        $error = true;
    }

?>
<html>
    <head> 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Login Page</title>
        <link rel="stylesheet" href="css/login.css">
        <link rel="stylesheet" href="css/new-boot.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body>
    <div class="login">
        <div class="row">
            <div class="col-md-4 pt-8 text-center justify-content-center">
                <h1 class="mb-3">Sign in and start downloading</h1>
                <h2 class="mb-4">Sign in</h2>

                <ul>
                    <form action="" method="post">
                        <li>
                            <!-- <label for="username"></label> -->
                            <input type="text" id="username" name="username" placeholder="Enter User or Email Address..." required>
                        </li>
                        <li>
                            <input type="password" id="password" name="password" placeholder="Password..." required>
                        </li>
                        <li>
                            <button type="submit" name="submitlogin">Sign in</button><br>
                            <div class="row">
                                <div class="col-md-12 have">
                                    <a href="register.php" class="mr-5">Create an Account !</a><a href="index.php">Cancel</a>
                                </div>
                            </div>
                        </li>
                    <?php if(isset($error)) : ?>
                        <p>Maaf Username atau Password anda salah</p>
                    <?php endif; ?>
                    </form>
                </ul>
            </div>
        </div>
 
    </div>

    </body>
</html>