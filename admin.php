<?php

    session_start();
    if (!isset($_SESSION["login"])) {
        header("Location: login.php");
        exit;
    }

    require "function.php";

    //pagination
    $jumlahDataPerHalaman = 5;
    $jumlahData = count(query("SELECT * FROM siswa"));
    $jumlahHalaman = ceil($jumlahData / $jumlahDataPerHalaman);
    $halamanAktif = (isset($_GET["halaman"])) ? $_GET["halaman"] : 1;
    $awalData = ($jumlahDataPerHalaman * $halamanAktif) - $jumlahDataPerHalaman;

    $siswa = query("SELECT * FROM siswa LIMIT $awalData, $jumlahDataPerHalaman");

    // ascending = ASC dan descending DESC
    // $siswa = query("SELECT * FROM siswa ORDER BY id ASC");

    if (isset($_POST["cari"])) {
        $siswa = cari($_POST["keyword"]);
    }
?>
<html>
<head>
    <title>Admin Page</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Raleway&display=swap');
        body {
            padding-bottom: 50px;
        }
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
    <h1 class="text-center mt-5 mb-4">Tambah Data</h1>
    <form action="" method="post" class="pb-4">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="nama">Nama</label>
                    <input type="text" class="form-control" id="nama" aria-describedby="emailHelp" name="nama" placeholder="Enter Username" required>
                </div>
                <div class="form-group">
                    <label for="kelas">Kelas</label>
                    <input type="text" class="form-control" id="kelas" name="kelas" placeholder="Kelas" required>
                </div>
                <div class="form-group">
                    <label for="jurusan">Jurusan</label>
                    <input type="text" class="form-control" id="jurusan" name="jurusan" placeholder="Jurusan" required>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="nis">NIS</label>
                    <input type="text" class="form-control" id="nis" name="nis" placeholder="Enter NIS" required>
                </div>
                <div class="form-group">
                    <label for="gambar">Foto</label>
                    <input type="text" class="form-control" id="gambar" name="gambar" placeholder="Enter Name of the Picture" required>
                </div>
            </div>
        </div>
        <div class="row mt-3 text-center">
            <div class="col-md-12">
                <button type="submit" class="btn btn-primary" name="submit">Tambah Data</button>
                <button type="submit" class="btn btn-danger"><a class="logout text-white" href="logout.php">Logout</a></button>
            </div>
        </div>
    
        <?php 
            if (isset($_POST["submit"])) {

                if( tambah($_POST) > 0 ) {
                    echo "
                        <script>
                            alert('data berhasil ditambahkan');
                            document.location.href = 'admin.php';
                        </script>
                    ";
                } else {
                    echo  "                      
                    <script>
                        alert('data gagal ditambahkan');
                        document.location.href = 'admin.php';
                    </script>
                    ";
                }
            } 
        ?>
    </form>

    <h1 class="text-center">Daftar Siswa</h1>
    <div class="row mt-3">
        <div class="col-md-12">
            <form action="" method="post" class="form-inline justify-content-end">
                <input type="text" class="form-control mr-2" name="keyword" size="100%" placeholder="Masukan Keyword Pencarian..." autocomplete="off" autofocus>
                <button type="submit" class="btn btn-primary" name="cari">Cari</button>
            </form>
        </div>
    </div>

    <!-- //navigasi -->
    <?php if($halamanAktif > 1) : ?>
        <a href="?halaman=<?= $halamanAktif-1; ?>">&lt</a>
    <?php else : ?>
        <a href="">&lt</a>
    <?php endif; ?>

    <?php for($i = 1; $i <= $jumlahHalaman; $i++) :?>
        <?php if($i == $halamanAktif) : ?>
            <a href="?halaman=<?= $i; ?>" style="color: red;"><?= $i ?></a>
        <?php else :?>
            <a href="?halaman=<?= $i; ?>"><?= $i ?></a>
        <?php endif; ?>
    <?php endfor; ?>

    <?php if($halamanAktif < $jumlahHalaman) : ?>
        <a href="?halaman=<?= $halamanAktif+1; ?>">&gt</a>
    <?php else : ?>
        <a href="">&gt</a>
    <?php endif; ?>

    <table border="2" cellspacing="0" cellpadding="10" width="100%">
        <tr>
            <th>No</th>
            <th>Foto</th>
            <th>Nama</th>
            <th>Kelas</th>
            <th>Jurusan</th>
            <th>NIS</th>
            <th>Action</th>
        </tr>

        <?php $i = 1; ?>
        <?php foreach($siswa as $s) : ?>
        <tr>
            <td><?= $i; ?></td>
            <td>
                <img src="img/<?= $s["gambar"]; ?>" width="70" alt="">
            </td>
            <td><?= $s["nama"]; ?></td>
            <td><?= $s["kelas"]; ?></td>
            <td><?= $s["jurusan"]; ?></td>
            <td><?= $s["nis"]; ?></td>
            <td>
                <a href="ubah.php?id=<?= $s["id"]; ?>">Ubah</a> |
                <a href="hapus.php?id=<?= $s["id"]; ?>" onclick="return confirm('Apakah anda yakin ingin menghapus data berikut ? ');">Hapus</a>
            </td>
        </tr>
        <?php $i++; ?>
        <?php endforeach; ?>
    </table>
    </div>

    


</body>
</html>