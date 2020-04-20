<script src="js/java.js"></script>
<?php
    $conn = mysqli_connect("localhost", "root", "", "test");
    function query($query) {
        global $conn;
        $result = mysqli_query($conn, $query);
        $rows = [];
        while ( $row = mysqli_fetch_assoc($result) ) {
            $rows[] = $row;
        }
        return $rows;
    }

    function tambah($data) {
        global $conn;

        $nama = htmlspecialchars($data["nama"]);
        $kelas = htmlspecialchars($data["kelas"]);
        $jurusan = htmlspecialchars($data["jurusan"]);
        $nis = htmlspecialchars($data["nis"]);
        $gambar = htmlspecialchars($data["gambar"]);

        $query = "INSERT INTO siswa VALUES ('', '$nama', '$kelas', '$jurusan', '$nis', '$gambar')";

        mysqli_query($conn, $query); 

        return mysqli_affected_rows($conn);
    }

    function hapus($id) {
        global $conn;

        mysqli_query($conn, "DELETE FROM siswa WHERE id = $id");
        return mysqli_affected_rows($conn);
    }

    function ubah($data) {
        global $conn;

 
        $id = $_GET["id"];

        $nama = htmlspecialchars($data["nama"]);
        $kelas = htmlspecialchars($data["kelas"]);
        $jurusan = htmlspecialchars($data["jurusan"]);
        $nis = htmlspecialchars($data["nis"]);
        $gambar = htmlspecialchars($data["gambar"]);

        $query = "UPDATE siswa SET 
                    nama = '$nama',
                    kelas = '$kelas',
                    jurusan = '$jurusan',
                    nis = '$nis',
                    gambar = '$gambar'
                WHERE id = $id";

        mysqli_query($conn, $query); 

        return mysqli_affected_rows($conn);
    }

    function cariFiksi($keyword) {

        if (isset($_POST["cari"]) ) {
            $query = "SELECT * FROM fiksi WHERE 
            -- jika pakai ini haris sama keyword sama nama-nya nama = '$keyword'
            -- lebih fleksibel pakai LIKE dan % di depan dan belakangnya di php
            judul LIKE '%$keyword%' OR
            penulis LIKE '%$keyword%'
            -- jurusan LIKE '%$keyword%' OR
            -- nis LIKE '%$keyword%'
            ";
            return query($query);
        } else {
            $books = query("SELECT * FROM fiksi LIMIT $awalData, $jumlahDataPerHalaman");
        }
        // $query = "SELECT * FROM siswa WHERE 

    }

    function signup($data) {
        global $conn;

        $username = strtolower(stripslashes($data["username"]));
        $email = $data["email"];
        $password = mysqli_real_escape_string($conn, $data["password"]);
        $password2 = mysqli_real_escape_string($conn, $data["password2"]);
        $ttl = $data["ttl"];

        // cek username dan email uda ada apa belum
        $result1 = mysqli_query($conn, "SELECT username FROM users WHERE username = '$username'");
        $result2 = mysqli_query($conn, "SELECT email FROM users WHERE email = '$email'");

        if( mysqli_fetch_assoc($result1) || mysqli_fetch_assoc($result2)){
            echo "
            <script>
                alert('Username atau email Sudah Terdaftar');
            </script>
            ";
            return false;
        }

        // cek konfirmasi password 
        if ( $password !== $password2 ){
            echo "
            <script>
                alert('Konfirmasi Password Tidak Sama');
            </script>
            ";
            return false;
        }

        // enkripsi password
        // $password = password_hash($password, PASSWORD_DEFAULT);

        // tambahkan user tadi ke database
        mysqli_query($conn, "INSERT INTO users VALUE('', '$username', '$password', '$email', '$ttl')");
        return mysqli_affected_rows($conn);
    }
?>