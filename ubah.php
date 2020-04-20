<?php

    session_start();
    if (!isset($_SESSION["login"])) {
        header("Location: login.php");
        exit;
    }
    require "function.php";

    // ambil data id di url
    $id = $_GET["id"];

    // ambil atau query data siswa dalam data id tadi
    $s = query("SELECT * FROM siswa WHERE id = $id")[0];

        
    if (isset($_POST["submit"])) {

        if( ubah($_POST) > 0 ) {
            echo "
                <script>
                    alert('data berhasil diupdate');
                    document.location.href = 'admin.php';
                </script>
            ";
        } else {
            echo  "                      
            <script>
                alert('data gagal diupdate');
                document.location.href = 'admin.php';
            </script>
            ";
        }
    } 

?>
<html>
<head>
    <title>Admin Ubah Page</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Raleway&display=swap');
        .float {
            float: left;
        }
        * {
            font-family: 'Raleway', sans-serif;
        }
        h1 {
            font-family: 'Raleway', sans-serif;
            padding-bottom: 10px;
            border-bottom: 5px solid black;
        }
        li {
            list-style: none;
            font-family: 'Raleway', sans-serif;
        }
        .clear {
            clear: both;
        }
        table {
            justify-content: center;
            text-align: center;
        }
        button a.logout {
            text-decoration: none;
        }
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>
    <div class="container">
    <h1 class="text-center mt-5 mb-4">Update Data</h1>
    <form action="" method="post" class="pb-4">
    <input type="hidden" name="id" value="<?= $s["id"]; ?>">
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label for="nama">Nama</label>
                <input type="text" class="form-control" id="nama" aria-describedby="emailHelp" name="nama" placeholder="Enter Username" required value="<?= $s["nama"]; ?>">
            </div>
        </div>
    </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="kelas">Kelas</label>
                    <input type="text" class="form-control" id="kelas" name="kelas" placeholder="Kelas" required value="<?= $s["kelas"]; ?>">
                </div>
                <div class="form-group">
                    <label for="jurusan">Jurusan</label>
                    <input type="text" class="form-control" id="jurusan" name="jurusan" placeholder="Jurusan" required value="<?= $s["jurusan"]; ?>">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="nis">NIS</label>
                    <input type="text" class="form-control" id="nis" name="nis" placeholder="Enter NIS" required value="<?= $s["nis"]; ?>">
                </div>
                <div class="form-group">
                    <label for="gambar">Foto</label>
                    <input type="text" class="form-control" id="gambar" name="gambar" placeholder="Enter Name of the Picture" required value="<?= $s["gambar"]; ?>">
                </div>
            </div>
        </div>
        <div class="row mt-3 text-center">
            <div class="col-md-12">
                <button type="submit" class="btn btn-primary" name="submit">Update Data</button>
            </div>
        </div>

    </form>
</body>
</html>