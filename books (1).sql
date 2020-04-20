-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Apr 2020 pada 11.00
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'betamantap1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bookpop1`
--

CREATE TABLE `bookpop1` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `halaman` varchar(100) NOT NULL,
  `publish` varchar(100) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `sinopsis` varchar(1000) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bookpop1`
--

INSERT INTO `bookpop1` (`id`, `judul`, `penulis`, `halaman`, `publish`, `genre`, `sinopsis`, `gambar`, `link`) VALUES
(2, 'Bumi', 'Tere Liye', '376', 'January 16th 2014', 'Fantasy, Fiction', 'Namaku Raib, usiaku 15 tahun, kelas sepuluh. Aku anak perempuan seperti kalian, adik-adik kalian, tetangga kalian. Aku punya dua kucing, namanya si Putih dan si Hitam. Mama dan papaku menyenangkan. Guru-guru di sekolahku seru. Teman-temanku baik dan kompak.\r\nAku sama seperti remaja kebanyakan, kecuali satu hal. Sesuatu yang kusimpan sendiri sejak kecil. Sesuatu yang menakjubkan.\r\nNamaku, Raib. Dan aku bisa menghilang.', 'Bumi.jpg', 'http://bit.ly/2OqNZUx'),
(3, 'Cantik itu Luka', 'Eka Kurniawan', '490', 'December 12th 2002', 'History, Fiction', 'Di akhir masa kolonial, seorang perempuan dipaksa menjadi pelacur. Kehidupan itu terus dijalaninya hingga ia memiliki tiga anak gadis yang kesemuanya cantik. Ketika mengandung anaknya yang keempat, ia berharap anak itu akan lahir buruk rupa. Itulah yang terjadi, meskipun secara ironik ia memberinya nama si Cantik.', 'Cantik itu Luka.jpg', 'http://bit.ly/37Yn6ia'),
(4, 'The Prophet', 'Kahlil Gibran', '72', '1923', 'Philosophy, Poetry', 'The Prophet is a collection of poetic essays that are philosophical, spiritual, and, above all, inspirational. Gibran’s musings are divided into twenty-eight chapters covering such sprawling topics as love, marriage, children, giving, eating and drinking, work, joy and sorrow, housing, clothes, buying and selling, crime and punishment, laws, freedom, reason and passion, pain, self-knowledge, teaching, friendship, talking, time, good and evil, prayer, pleasure, beauty, religion, and death.', 'The Prophet.jpg', 'http://bit.ly/371x8y5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bookpop2`
--

CREATE TABLE `bookpop2` (
  `id` int(11) NOT NULL,
  `judul` varchar(123) NOT NULL,
  `penulis` varchar(123) NOT NULL,
  `halaman` varchar(100) NOT NULL,
  `publish` varchar(100) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `sinopsis` varchar(1000) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bookpop2`
--

INSERT INTO `bookpop2` (`id`, `judul`, `penulis`, `halaman`, `publish`, `genre`, `sinopsis`, `gambar`, `link`) VALUES
(7, 'Adventures of Huckleberry Finn', 'Mark twain', '305', 'December 10th 1884', 'Adventure, Fiction', 'A nineteenth-century boy from a Mississippi River town recounts his adventures as he travels down the river with a runaway slave, encountering a family involved in a feud, two scoundrels pretending to be royalty, and Tom Sawyer\'s aunt who mistakes him for Tom.', 'Adventures of Huckleberry Finn.jpg', 'http://bit.ly/2v3ZY3e'),
(13, 'Sang Pemimpi\r\n', 'Andrea Hirata', '158', '2006', 'Novel, Fiction', 'Sang Pemimpi adalah sebuah lantunan kisah kehidupan yang memesona dan akan membuat Anda percaya akan tenaga cinta, percaya pada kekuatan mimpi dan pengorbanan, lebih dari itu, akan membuat Anda percaya kepada Tuhan. Andrea akan membawa Anda berkelana menerobos sudut-sudut pemikiran di mana Anda akan menemukan pandangan yang berbeda tentang nasib, tantangan intelektualitas, dan kegembiraan yang meluap-luap, sekaligus kesedihan yang mengharu biru.', 'Sang Pemimpi.jpg', 'http://bit.ly/37YrZrw'),
(14, 'The Art of War', 'Sun Tzu', '500', '1840', 'Philosophy, Non-Fiction', 'Twenty-Five Hundred years ago, Sun Tzu wrote this classic book of military strategy based on Chinese warfare and military thought. Since that time, all levels of military have used the teaching on Sun Tzu to warfare and civilization have adapted these teachings for use in politics, business and everyday life. The Art of War is a book which should be used to gain advantage of opponents in the boardroom and battlefield alike.', 'The Art of War.jpg', 'http://bit.ly/2tvQpKc');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bse`
--

CREATE TABLE `bse` (
  `judul` varchar(100) NOT NULL,
  `penulis` varchar(1000) NOT NULL,
  `publish` varchar(100) NOT NULL,
  `page` varchar(100) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `link` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bse`
--

INSERT INTO `bse` (`judul`, `penulis`, `publish`, `page`, `kelas`, `id`, `link`, `gambar`) VALUES
('Kelas 10 Bahasa Indonesia', 'Maryanto, Anik Muslikah, Nur Hayati, dan Elvi Suzanti', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '222', '10', 1, 'http://bit.ly/2vJ7dOn', 'Kelas_10_SMK_Bahasa_Indonesia_Siswa.JPG'),
('Kelas 10 Bahasa Inggris', 'Utami Widiati, Zuliati Rohmah, dan Furaidah', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '116', '10', 3, 'http://bit.ly/39Dan54', 'Kelas_10_SMK_Bahasa_Inggris_Siswa.JPG'),
('Kelas 10 Pendidikan Agama Islam dan Budi Pekerti', 'Nelty Khairiyah dan Endi Suhendi Zen', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '202', '10', 4, 'http://bit.ly/2vEmekN', 'Kelas10_buku_siswa_pendidikan_agama_islam_dan_bp_sma_ma_kelas_x_1959.JPG'),
('Kelas 10 Pendidikan Agama Katolik dan Budi Pekerti', 'Maman Sutarman, Sulis Bayu Setyawan', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '194', '10', 5, 'http://bit.ly/2SxLQIT', 'Kelas10_buku_siswa_pendidikan_agama_katolik_dan_bp_sma_kelas_x_1785.JPG'),
('Kelas 10 Pendidikan Agama Khonghucu dan Budi Pekerti', 'Js. Gunadi dan Js. Hartono', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '162', '10', 6, 'http://bit.ly/2Hs1NKo', 'Kelas10_buku_siswa_pendidikan_agama_khonghucu_dan_bp_sma_kelas_x_1921.JPG'),
('Kelas 10 Pendidikan Agama Kristen dan Budi Pekerti', 'Pdt. Janse Belandina Non-Serrano dan Pdt. Stephen Suleeman', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '190', '10', 7, 'http://bit.ly/2Hwitk0', 'Kelas10_buku_siswa_pendidikan_agama_kristen_dan_bp_sma_kelas_x_1946.JPG'),
('Kelas 10 Pendidikan Pancasila dan Kewarganegaraan', 'Nuryadi dan Tolib', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '252', '10', 8, 'http://bit.ly/2SwF3PG', 'Kelas10_buku_siswa_ppkn_sma_ma_smk_mak_kelas_x_1997.JPG'),
('Kelas 10 Seni Budaya Semester 1', 'Zackaria Soetedja, Dewi Suryati, Milasari, Agus Supriatna', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '232', '10', 9, 'http://bit.ly/31YPUVC', 'Kelas10_buku_siswa_seni_budaya_sma_ma_smk_mak_kelas_x_sem1_1823.JPG'),
('Kelas 10 Seni Budaya Semester 2', 'Zackaria Soetedja, Dewi Suryati, Milasari, Agus Supriatna', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '240', '10', 10, 'http://bit.ly/39ExCM3', 'Kelas10_buku_siswa_seni_budaya_sma_ma_smk_mak_kelas_x_semester_2_1854.JPG'),
('Kelas 10 Matematika SMK', 'Bornok Sinaga, Pardomuan N.J.M Sinambela, Andri Kristianto Sitanggang, Tri Andri Hutapea, Sudianto Manulang, Lasker Pengarapan Sinaga, dan Mangara Simanjorang', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '216', '10', 11, 'http://bit.ly/3bLlMl1', 'Kelas10_matematika_buku_siswa_sma_ma_smk_mak_kelas_x_1841.JPG'),
('Kelas 10 Pendidikan Jasmani, Olahraga, dan Kesehatan', 'Sudrajat Wiradihardja dan Syarifudin', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '214', '10', 12, 'http://bit.ly/37DZdMd', 'Kelas10_pendidikan_Jasmani_Olahraga_dan_Kesehatan.JPG'),
('Kelas 10 Prakarya dan Kewirausahaan Semester 1', 'Hendriana Werdhaningsih, Alberta Haryudanti, Rinrin Jamrianti, dan Desta Wirmas', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '138', '10', 13, 'http://bit.ly/2P0CEuv', 'Kelas10_prakarya_dan_kewirausahaan_buku_siswa_sma_ma_smk_mak_kelas_x_semester_1_1957.JPG'),
('Kelas 10 Prakarya dan Kewirausahaan Semester 2', 'Hendriana Werdhaningsih, Alberta Haryudanti, Rinrin Jamrianti dan Desta Wirmas', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '138', '10', 14, 'http://bit.ly/2uQk811', 'Kelas10_prakarya_dan_kewirausahaan_buku_siswa_sma_ma_smk_mak_kelas_x_semester_2_1993.JPG'),
('Kelas 10 Perakitan Komputer Semester 1', 'Siswati', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '224', '10', 15, 'http://bit.ly/2Sxt0Bz', '1-C2-Perakitan Komputer-X-1.JPG'),
('Kelas 10 Perakitan Komputer Semester 2', '-', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '322', '10', 16, 'http://bit.ly/3bIjgfx', '2-C2-Perakitan Komputer-X-2.JPG'),
('Kelas 10 Simulasi Digital Semester ', 'Eko Subiyantoro,Haritz Cahya Nugraha,Cahya Kusuma Ratih ,Reinaldo Rhesky Nosyrafil', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '205', '10', 17, 'http://bit.ly/2SBJR6B', '3-C2-Simulasi Digital-X-1.JPG'),
('Kelas 10 Simulasi Digital Semester 2', 'Abdul Munif,Puryanto,Prayitno', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '191', '10', 18, 'http://bit.ly/2HwMgJc', '4-C2-Simulasi Digital-X-2.JPG'),
('Kelas 10 Sistem Operasi Semester 1', 'Abdul Munif', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '282', '10', 19, 'http://bit.ly/2HH5sUZ', '5-C2-Sistem Operasi-X-1.JPG'),
('Kelas 10 Sistem Operasi Semester 2', 'Siyamta', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '225', '10', 20, 'http://bit.ly/2UY0GKA', '6-C2-Sistem Operasi-X-2.JPG'),
('Kelas 10 Jaringan Dasar Semester 1', 'Supriyanto', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '296', '10', 21, 'http://bit.ly/2UWL4a3', '7-C2-Jaringan Dasar-X-1.JPG'),
('Kelas 10 Jaringan Dasar Semester 2', 'Supriyanto', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '369', '10', 22, 'http://bit.ly/2SwcPVk', '8-C2-Jaringan Dasar-X-2.JPG'),
('Kelas 10 Pemrograman Web Semester 1', 'Wahyu Purnomo,Endah Damayanti', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '244', '10', 23, 'http://bit.ly/2OZtgHw', '9-C2-Pemrograman Web-X-1.JPG'),
('Kelas 10  Pemrograman Web Semester 2', 'Kadek Surya P., Endah Damayanti', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '229', '10', 24, 'http://bit.ly/2UVMSjt', '10-C2-Pemrograman Web-X-2.JPG'),
('Kelas 10 Dasar dan Pengukuran Listrik Semester 1', '-', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '296', '10', 25, 'http://bit.ly/2STYa5a', 'Kelas_10_SMK_Dasar_dan_Pengukuran_Listrik_1.JPG'),
('Kelas 10 Gambar Teknik Semester 1', '-', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '240', '10', 26, 'http://bit.ly/39QNEmn', 'Kelas_10_SMK_Gambar_Teknik_1.JPG'),
('Kelas 10 Mekanika Teknik Semester 1', 'Weni Murfihenni, ST., M.Pd', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '165', '10', 27, 'http://bit.ly/39GPwxS', 'Kelas_10_SMK_Mekanika_Teknik_1.JPG'),
('Kelas 10 Mekanika Teknik Semester 2', 'Weni Murfihenni, ST., M.Pd', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '166', '10', 28, 'http://bit.ly/38FsZBy', 'Kelas_10_SMK_Mekanika_Teknik_2.JPG'),
('Kelas 10 Pekerjaan Dasar Elektromekanik Semester 1', '-', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '148', '10', 29, 'http://bit.ly/2u8aqqw', 'Kelas_10_SMK_Pekerjaan_Dasar_Elektromekanik.JPG'),
('Kelas 10 Pekerjaan Dasar Teknik Otomotif Semester 2', 'Sasongko', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '161', '10', 30, 'http://bit.ly/37yhJ8z', 'Kelas_10_SMK_Pekerjaan_Dasar_Teknik_Otomotif_2.JPG'),
('Kelas 10 Pekerjaan Mesin Perkakas Semester 1', 'Joko Santoso', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '178', '10', 31, 'http://bit.ly/2P11sm1', 'Kelas_10_SMK_Pekerjaan_Mesin_Perkakas.JPG'),
('Kelas 10 Perekayasaan Sistem Audio Semester 1', 'Hendro Hermanto', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '105', '10', 32, 'http://bit.ly/3208gpn', 'Kelas_10_SMK_Perekayasaan_Sistem_Audio_1.JPG'),
('Kelas 10 Perekayasaan Sistem Audio Semester 2', 'Hendro Hermanto', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '73', '10', 33, 'http://bit.ly/2SzhxSa', 'Kelas_10_SMK_Perekayasaan_Sistem_Audio_2.JPG'),
('Kelas 10 Rangkaian Elektronika Analog Semester 1', 'Asmuniv', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '47', '10', 34, 'http://bit.ly/2STCaHN', 'Kelas_10_SMK_Rangkaian_Elektronika_Analog_1.JPG'),
('Kelas 10 Sistem Kontrol Elektro Pneumatik Semester 2', '-', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '122', '10', 35, 'http://bit.ly/39DWOlW', 'Kelas_10_SMK_Sistem_Kontrol_Elektro_Pneumatik_2.JPG'),
('Kelas 10 Teknik Bubut Semester 1 ', 'Drs. Eddy Sudarmanto', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '104', '10', 36, 'http://bit.ly/37AaHjI', 'Kelas_10_SMK_Teknik_Bubut_1_Bubut_Dua_Senter_1.JPG'),
('Kelas 10 Teknik Bubut Semester 2', 'Drs. FX. Supriyono, M.Ds', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '105', '10', 37, 'http://bit.ly/2OXVHFI', 'Kelas_10_SMK_Teknik_Bubut_1_Bubut_Dua_Senter_2.JPG'),
('Kelas 10 Teknik Dasar Elektronika Komunikasi Semeser 2', 'Rugianto', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '205', '10', 38, 'http://bit.ly/2P1GS4W', 'Kelas_10_SMK_Teknik_Dasar_Elektronika_Komunikasi_2.JPG'),
('Kelas 10 Teknik Dasar Listrik Telekomunikasi Semester 2', 'Widiharso', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '208', '10', 39, 'http://bit.ly/3bKLc2g', 'Kelas_10_SMK_Teknik_Dasar_Listrik_Telekomunikasi_2.JPG'),
('Kelas 10 Teknik Dasar Pengerjaan Logam Semester 1', 'Dadang', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '211', '10', 40, 'http://bit.ly/321WOd1', 'Kelas_10_SMK_Teknik_Dasar_Pengerjaan_Logam_1.JPG'),
('Kelas 10 Teknik Dasar Pengerjaan Non Logam Semester 1', 'Cahyo Kuncoro', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '244', '10', 41, 'http://bit.ly/2woMikb', 'Kelas_10_SMK_Teknik_Dasar_Pengerjaan_Non_Logam_1.JPG'),
('Kelas 10 Teknik Dasar Pengerjaan Non Logam Semester 2', 'Bambang Wijanarko ,S.Pd,MT  ', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '214', '10', 42, 'http://bit.ly/322MAZy', 'Kelas_10_SMK_Teknik_Dasar_Pengerjaan_Non_Logam_2.JPG'),
('Kelas 10 Teknik Dasar Telekomunikasi Semester 1', 'Herry Sudjendro', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '268', '10', 43, 'http://bit.ly/39JgCV9', 'Kelas_10_SMK_Teknik_Dasar_Telekomunikasi_1.JPG'),
('Kelas 10 Teknik Mikroprosesor Semester 2', 'Djoko Sugiono', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '240', '10', 44, 'http://bit.ly/37AANCW', 'Kelas_10_SMK_Teknik_Mikroprosesor_2.JPG'),
('Kelas 10 Teknik Dasar Otomotif Semester 2', 'M.Syarif', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '222', '10', 45, 'http://bit.ly/3bKLk1K', 'Kelas_10_SMK_Teknologi_Dasar_Otomotif_2.JPG'),
('Kelas 10 Teknologi Mekanik Semester 1', 'Agung Setyobudi', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '226', '10', 46, 'http://bit.ly/3bI9OJ9', 'Kelas_10_SMK_Teknologi_Mekanik_1.JPG'),
('Kelas 11 Bahasa Inggris Semester 1', 'Mahrukh Bashir', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '112', '11', 47, 'http://bit.ly/2SCJkkR', 'Kelas_11_SMK_Bahasa_Inggris_Siswa.JPG'),
('Kelas 11 Bahasa Indonesia ', 'Suherli,Maman Suryaman,Aji Septiaji,Istiqomah', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '305', '11', 48, 'http://bit.ly/39KW92d', 'Kelas11_bahasa_indonesia_buku_siswa_sma_smk_ma_mk_kelas_xi_1948.JPG'),
('Kelas 11 Pendidikan Agama Islam dan Budi Pekerti', 'Mustahdi ,Mustakim', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '210', '11', 49, 'http://bit.ly/2HwpIZ7', 'Kelas11_islam_buku_siswa_1966.JPG'),
('Kelas 11 Pendidikan Agama Kristen dan Budi Pekerti', 'Dien Sumiyatiningsih ,Stephanus', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '154', '11', 50, 'http://bit.ly/38M2bze', 'Kelas11_kristen_buku_siswa_1795.JPG'),
('Kelas 11 Matemaika', 'Sudiarto Manullang,Andri Kristianto S,Tri Andri Hutapea,Lasker Pangarapan Sinaga,Bornok Sinaga ,Mangaratua Marianus S,Pardomuan N.J.M.Sinambela.', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '336', '11', 51, 'http://bit.ly/324dTmh', 'Kelas11_matematika_buku_siswa_2005.JPG'),
('Kelas 11 Pendidikan Jasmani, Olahraga, dan Kesehatan (BUKU GURU)', 'Sumaryoto ,Soni Nopembri', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '136', '11', 52, 'http://bit.ly/321KSHV', 'Kelas11_pjok_buku_guru_sma_ma_smk_mak_kelas_xi_1828.JPG'),
('Kelas 11 Prakarya dan Kewirausahaan Semester 1', 'RR.Indah Setyowati,Wawat Naswati,Heatiningsih,Miftakhodin,Cahyadi,Dwi Ayu', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '256', '11', 53, 'http://bit.ly/2whp6nM', 'Kelas11_prakarya_dan_kewirausahaan_buku_siswa_sma_smk_ma_mak_kelas_xi_semester_1_1833.JPG'),
('Kelas 11 Prakarya dan Kewirausahaan Semester 2', 'RR.Indah Setyowati,Wawat Naswati,Heatiningsih,Miftakhodin,Cahyadi,Dwi Ayu', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '218', '11', 54, 'http://bit.ly/38Bxzkb', 'Kelas11_prakarya_dan_kewirausahaan_buku_siswa_sma_smk_ma_mak_kelas_xi_semester_2_1939.JPG'),
('Kelas 11 Sejarah Indonesia Semester 1', 'Sardiman AM,Amurwani Dwi Lestariningsih', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '256', '11', 55, 'http://bit.ly/326gWKP', 'Kelas11_sejarah_indonesia_buku_siswa_sma_ma_smk_mak_kelas_xi_semester_1_1961.JPG'),
('Kelas 11 Sejarah Indonesia Semester 2', 'Sardiman AM,Amurwani Dwi Lestariningsih', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '232', '11', 56, 'http://bit.ly/2HsobDx', 'Kelas11_sejarah_indonesia_buku_siswa_sma_ma_smk_mak_kelas_xi_semester_2_1970.JPG'),
('Kelas 11 Seni Budaya Semester 2', 'Sem Cornelyoes Bangun,Siswandi,Tati Narawati,Jose Rizal Manua', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '122', '11', 57, 'http://bit.ly/2P3WUeS', 'Kelas11_seni_budaya_buku_siswa_sma_ma_smk_mak_kelas_xi_semester_2_1855.JPG'),
('Kelas 11 Seni Budaya Semester 1', 'Sem Cornelyoes Bangun,Siswandi,Tati Narawati,Jose Rizal Manua', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '202', '11', 58, 'http://bit.ly/2UXy5ow', 'Kelas11_seni_budaya_buku_siswa_semester_1_1981.JPG'),
('Kelas 11 Pemrograman Berorientasi Objek Semester 1', 'Eko Subiyantoro', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '200', '11', 59, 'http://bit.ly/2Hwhi4c', '11-C3-RPL-Pemrograman basis obyek-XI-1.JPG'),
('Kelas 11 Pemrograman Berorientasi Objek Semester 2', 'Eko Subiyantoro', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '187', '11', 60, 'http://bit.ly/38ztL2V', '12-C3-RPL-Pemrograman basis obyek-XI-2.JPG'),
('Kelas 11 Basis Data Semester 1', 'Abdul Munif', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '246', '11', 61, 'http://bit.ly/2UY8hZy', '13-C3-RPL-Basis data XI-1.JPG'),
('Kelas 11 Basis Data Semester 2', 'Farid Zuniawan', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '218', '11', 62, 'http://bit.ly/323Gk3K', '14-C3-RPL-Basis data XI-2.JPG'),
('Kelas 11 Sistem Operasi Jaringan Semester 1', 'Kadek Surya Pranata', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '250', '11', 63, 'http://bit.ly/2UYBqUv', '15-C3-TKJ-Sistem Operasi Jaringan-XI-1.JPG'),
('Kelas 11 Sistem Operasi Jaringan Semester 2', 'Kadek Surya Pranata', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '158', '11', 64, 'http://bit.ly/2uJ8pS5\r\n', '16-C3-TKJ-Sistem Operasi Jaringan-XI-2.JPG'),
('Kelas 11 Admnistrasi Server Semester 1', 'Antonius Duty Susilo', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '223', '11', 65, 'http://bit.ly/37EXAxP', '17-C3-TKJ-Admin Server-XI-1.JPG'),
('Kelas 11 Admnistrasi Server Semester 2', 'Wismanu', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '112', '11', 66, 'http://bit.ly/32cqvIt', '18-C3-TKJ-Admin Server-XI-2.JPG'),
('Kelas 11 Desain Multimedia Semester 1', 'Nanik Sri Rahayu', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '152', '11', 67, 'http://bit.ly/2woZjKC', '19-C3-MM-Desain multimedia-XI-1.JPG'),
('Kelas 11 Desain Multimedia Semester 2', 'Nanik Sri Rahayu', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '145', '11', 68, 'http://bit.ly/2SyTToZ', '20-C3-MM-Desain Multimedia-XI-2.JPG'),
('Kelas 11 Pengolahan Citra Digital Semester 1', 'Peny Iswindarty', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '244', '11', 69, 'http://bit.ly/2HxIz60', '21-C3-MM-Pengolahan Citra Digital-XI-1.JPG'),
('Kelas 11 Pengolahan Citra Digital Semester 2', 'Endah Damayanti', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '282', '11', 70, 'http://bit.ly/2u3LGzx', '22-C3-MM-Pengolahan Citra Digital-XI-2.JPG'),
('Kelas 11 Animasi 2D Semester 1', 'Wahyu Purnomo ,Wahyu Andreas', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '203', '11', 71, 'http://bit.ly/2V0vLgy', '23-C3-MM-Teknik Animasi 2 Dimensi-XI-1.JPG'),
('Kelas 11 Animasi 2D Semester 2', 'Siswati, M.Agus Salim', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '206', '11', 72, 'http://bit.ly/2UY9bVW', '24-C3-MM-Teknik Animasi 2 Dimensi-XI-2.JPG'),
('Kelas 11 Aircraft Drawing & CAD Semester 2', '-', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '181', '11', 73, 'http://bit.ly/2P1VLo2', 'Kelas_11_SMK_Aircraft_Drawing_&_CAD_3.JPG'),
('Kelas 11 Chasis Management System Semester 1', 'Sudaryono', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '326', '11', 74, 'http://bit.ly/2UW3l7g', 'Kelas_11_SMK_Chasis_Management_System_CMS_1.JPG'),
('Kelas 11 Desain Grafis', '-', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '153', '11', 75, 'http://bit.ly/32373xA', 'Kelas_11_SMK_Desain_Grafis.JPG'),
('Kelas 11 Engine Management System Semester 1', 'Husni', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '218', '11', 76, 'http://bit.ly/3bK4Onq', 'Kelas_11_SMK_Engine_Management_System_EMS_1.JPG'),
('Kelas 11 Finishing Bangunan Semester 2', 'Drs. Novherryon ,Dedy Hermawan, M. Pd', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '198', '11', 77, 'http://bit.ly/39E7HnM', 'Kelas_11_SMK_Finishing_Bangunan_4.JPG'),
('Kelas 11 Finishing Konstruksi Kayu Semeser 1', 'Drs. Muhammad Fatori, MP', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '116', '11', 78, 'http://bit.ly/38CYfkC', 'Kelas_11_SMK_Finishing_Konstruksi_Kayu_3.JPG'),
('Kelas 11 Finishing Konstruksi Kayu Semeser 2', 'Drs. Muhammad Fatori, MP', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '175', '11', 79, 'http://bit.ly/37CxJpY', 'Kelas_11_SMK_Finishing_Konstruksi_Kayu_4.JPG'),
('Kelas 11 Konstruksi Beton Bertulang Semester 2', '-', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '190', '11', 80, 'http://bit.ly/2HxJgfC', 'Kelas_11_SMK_Konstruksi_Beton_Bertulang_2.JPG'),
('Kelas 11 Pemeliharaan Kaca ,Assesoris dan Kelistrikan Bodi Semester 1', 'Suwartojati', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '141', '11', 81, 'http://bit.ly/2HxJhQI', 'Kelas_11_SMK_Pemeliharaan_Kaca_Assessories_dan_Kelistrikan_Bodi_1.JPG'),
('Kelas 11 Pemeliharaan Kelistrikan Sepeda Motor Semester 2', 'Agus Wahyudi', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '90', '11', 82, 'http://bit.ly/2uVuhtp', 'Kelas_11_SMK_Pemeliharaan_Kelistrikan_Sepeda_Motor_2.JPG'),
('Kelas 11 Pemeliharaan  Kendaraan Ringan Semester 1', 'Bintoro', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '229', '11', 83, 'http://bit.ly/38AhNWH', 'Kelas_11_SMK_Pemeliharaan_Mesin_Kendaraan_Ringan_1.JPG'),
('Kelas 11 Pemeliharaan Sasis Sepeda Motor Semester 1', 'Wawan', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '143', '11', 84, 'http://bit.ly/38CYDzA', 'Kelas_11_SMK_Pemeliharaan_Sasis_Sepeda_Motor_1.JPG'),
('Kelas 11 Perekayasaan Radio dan Televisi Semester  2', 'Herry Sudjendro', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '316', '11', 85, 'http://bit.ly/39H7oIR', 'Kelas_11_SMK_Perekayasaan_Sistem_Radio_dan_Televisi_2.JPG'),
('Kelas 11 Teknik Pengendalian Instrumen Logam Semester 1', '-', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '300', '11', 86, 'http://bit.ly/2HI2MGF', 'Kelas_11_SMK_Teknik_Pegendalian_Instrumen_Logam_3.JPG'),
('Kelas  12 Instalasi Motor Listrik Semester 2', '-', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '141', '12', 87, 'http://bit.ly/32658Zg', 'Kelas_12_SMK_Instalasi_Motor_Listrik_6.JPG'),
('Kelas  12 Sistem Kontrol Terprogram Semeser 1', '-', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '138', '12', 88, 'http://bit.ly/38BypNR', 'Kelas_12_SMK_Sistem_Kontrol_Elektro_Pneumatik_5.JPG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fiksi`
--

CREATE TABLE `fiksi` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `halaman` varchar(100) NOT NULL,
  `publish` varchar(100) NOT NULL,
  `sinopsis` varchar(1000) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `fiksi`
--

INSERT INTO `fiksi` (`id`, `judul`, `penulis`, `halaman`, `publish`, `sinopsis`, `gambar`, `genre`, `link`) VALUES
(2, 'Adventures of Huckleberry Finn', 'Mark twain', '305', '10 Desember 1884', 'A nineteenth-century boy from a Mississippi River town recounts his adventures as he travels down the river with a runaway slave, encountering a family involved in a feud, two scoundrels pretending to be royalty, and Tom Sawyer\'s aunt who mistakes him for Tom...', 'Adventures of Huckleberry Finn.jpg', 'Adventure, Fiction', 'http://bit.ly/2v3ZY3e'),
(3, 'Anak Semua Bangsa', 'Pramoedya Ananta Toer', '412', '1975', 'Di titik ini Minke diperhadapkan antara kekaguman yang melimpah-limpah pada peradaban Eropa dan kenyataan di selingkungan bangsanya yang kerdil. Sepotong perjalanannya ke Tulangan Sidoarjo dan pertemuannya dengan Khouw Ah Soe, seorang aktivis pergerakan Tionghoa, korespondensinya dengan keluarga De la Croix...', 'Anak Semua Bangsa.jpg', 'History, Fiction', 'http://bit.ly/2RTtiTd'),
(4, 'Bekisar Merah', 'Ahmad Tohari', '263', '1993', 'Bekisar, unggas elok hasil kawin silang antara ayam hutan dan ayam biasa sering menjadi hiasan rumah orang-orang kaya. Dan, adalah Lasi yang berayah bekas serdadu Jepang kulitnya yang putih dan matanya yang khas membawa dirinya menjadi bekisar untuk hiasan sebuah gedung dan kehidupan megah seorang lelaki kaya di Jakarta. Lahir dalam keluarga petani gula kelapa sebuah desa di pedalaman, Lasi terbawa arus sejarah hidupnya sendiri dan berlabuh dalam kemewahan kota yang tak pernah terbayangkan sebelumnya. Lasi mencoba menikmati kemewahan itu dan rela membayarnya dengan kesetiaan penuh pada Pak Han, seorang suami tua yang sudah lemah. Namun Lasi gagap ketika menemukan nilai perkawinannya dengan Pak Han hanya sebuah keisengan, main-main. Longgar, dan di mata Lasi sangat ganjil...', 'Bekisar Merah.jpg', 'History, Fiction', 'http://bit.ly/2Un9gSH'),
(5, 'Blues untuk Bonnie', 'W. S. Rendra', '36', '1971', 'Kumpulan sajak karya W.S. Rendra terbitan ketiga. Sajak yang terhimpun dalam kumpulan sajak ini berasal dari sajak-sajak...', 'Blues untuk Bonnie.JPG', 'Poetry, Fiction', 'http://bit.ly/2Oo9EfK'),
(6, 'Bumi Manusia', 'Pramudya Ananta Toer', '366', 'Agustus 1980', 'Roman Tetralogi Buru mengambil latar belakang dan cikal bakal nation Indonesia di awal abad ke-20. Dengan membacanya waktu kita dibalikkan sedemikian rupa dan hidup di era membibitnya pergerakan nasional mula-mula, juga pertautan rasa, kegamangan jiwa, percintaan, dan pertarungan kekuatan anonim para srikandi yang mengawal penyemaian bangunan nasional yang kemudian kelak melahirkan Indonesia modern...', 'Bumi Manusia.jpg', 'History, Fiction', 'http://bit.ly/2u7UtAM'),
(7, 'Bumi', 'Tere Liye', '16 Januari 2014', '376', 'Namaku Raib, usiaku 15 tahun, kelas sepuluh. Aku anak perempuan seperti kalian, adik-adik kalian, tetangga kalian. Aku punya dua kucing, namanya si Putih dan si Hitam. Mama dan papaku menyenangkan. Guru-guru di sekolahku seru. Teman-temanku baik dan kompak.\r\nAku sama seperti remaja kebanyakan, kecuali satu hal. Sesuatu yang kusimpan sendiri sejak kecil. Sesuatu yang menakjubkan.\r\nNamaku, Raib. Dan aku bisa menghilang.', 'Bumi.jpg', 'Fantasy, Fiction', 'http://bit.ly/2OqNZUx'),
(8, 'Cantik itu Luka', 'Eka Kurniawan', '490', '12 Desember 2002', 'Di akhir masa kolonial, seorang perempuan dipaksa menjadi pelacur. Kehidupan itu terus dijalaninya hingga ia memiliki tiga anak gadis yang kesemuanya cantik. Ketika mengandung anaknya yang keempat, ia berharap anak itu akan lahir buruk rupa. Itulah yang terjadi, meskipun secara ironik ia memberinya nama si Cantik...', 'Cantik itu Luka.jpg', 'History, Fiction', 'http://bit.ly/37Yn6ia'),
(10, 'Cinta Tak Ada Mati', 'Eka Kurniawan', '164', 'March 2005', 'Menurut Seno Gumira Ajidarma, kita pantas meletakkan harapan atas masa depan sastra Indonesia kepada para penulis muda seperti Eka Kurniawan. Sebuah pernyataan perlu diuji dan penuh tanggung jawab, yang tentu saja tidak sekadar diucapkan untuk kepentingan publikasi semata. Dan Anda bisa jadi setuju dengan pernyataan tersebut setelah Anda membaca Cinta Tak Ada mati dan Cerita-cerita lain, karya Eka Kurniawan...', 'Cinta Tak Ada Mati.jpg', 'Fiction', 'http://bit.ly/3833B8w'),
(11, 'Crime and Punishment', 'Fyodor Dostoevsky', '208', '1866', 'Raskolnikov, a destitute and desperate former student, wanders through the slums of St Petersburg and commits a random murder without remorse or regret. He imagines himself to be a great man, a Napoleon: acting for a higher purpose beyond conventional moral law. But as he embarks on a dangerous game of cat and mouse with a suspicious police investigator, Raskolnikov is pursued by the growing voice of his conscience and finds the noose of his own guilt tightening around his neck. Only Sonya, a downtrodden prostitute, can offer the chance of redemption...', 'Crime and Punishment.jpg', 'Psychological, Fiction', 'http://bit.ly/2RWEYEG'),
(12, 'Don Quixote', 'Miguel de Cervantes Saavedra', '649', '1615', 'Don Quixote has become so entranced by reading chivalric romances that he determines to become a knight-errant himself. In the company of his faithful squire, Sancho Panza, his exploits blossom in all sorts of wonderful ways. While Quixote\'s fancy often leads him astray—he tilts at windmills, imagining them to be giants—Sancho acquires cunning and a certain sagacity. Sane madman and wise fool, they roam the world together, and together they have haunted readers\' imaginations for nearly four hundred years...', 'Don Quixote.jpg', 'Historical, Fiction', 'http://bit.ly/2v6Duyz'),
(13, 'Edensor', 'Andrea hirata', '158', '2007', 'Aku ingin mendaki puncak tantangan, menerjang batu granit kesulitan, menggoda mara bahaya, dan memecahkan misteri dengan sains. Aku ingin menghirup berupa-rupa pengalaman lalu terjun bebas menyelami labirin lika-liku hidup yang ujungnya tak dapat disangka. Aku mendamba kehidupan dengan kemungkinan-kemungkinan yang bereaksi satu sama lain seperti benturan molekul uranium: meletup tak terduga-duga, menyerap, mengikat, mengganda, berkembang, terurai, dan berpencar ke arah yang mengejutkan. Aku ingin ke tempat-tempat yang jauh, menjumpai beragam bahasa dan orang-orang asing. Aku ingin berkelana, menemukan arahku dengan membaca bintang gemintang. Aku ingin mengarungi padang dan gurun-gurun, ingin melepuh terbakar matahari, limbung dihantam angin, dan menciut dicengkeram dingin. Aku ingin kehidupan yang menggetarkan, penuh dengan penaklukan. Aku ingin hidup! Ingin merasakan sari pati hidup!', 'Edensor.jpg', 'Novel, Fiction', 'http://bit.ly/36T4XB1'),
(14, 'Empat Kumpulan Sajak', 'W. S. Rendra', '105', '2003', 'Sebuah kumpulan sajak sajak dari W.S. Rendra', 'Empat Kumpulan Sajak.JPG', 'Poetry, Fiction', 'http://bit.ly/3bcaVAi'),
(15, 'Gadis Pantai', 'Pramoedya Ananta Toer', '121', '1962', '\"...Roman ini menusuk feodalisme Jawa yang tak memiliki adab dan jiwa kemanusiaan tepat langsung di jantungnya yang paling dalam.\"', 'Gadis Pantai.jpg', 'Novel, Fiction', 'http://bit.ly/3b2vjE2'),
(16, 'Hamlet', 'William Shakespeare', '184', '1603', 'Among Shakespeare\'s plays, \"Hamlet\" is considered by many his masterpiece. Among actors, the role of Hamlet, Prince of Denmark, is considered the jewel in the crown of a triumphant theatrical career. Now Kenneth Branagh plays the leading role and co-directs a brillant ensemble performance. Three generations of legendary leading actors, many of whom first assembled for the Oscar-winning film \"Henry V\", gather here to perform the rarely heard complete version of the play...', 'Hamlet.jpg', 'Drama, Fiction', 'http://bit.ly/2RWNJif'),
(17, 'Hujan Bulan Juni', 'Sapardi Djoko Damono', '145', 'June 18th 2015', 'Bagaimana mungkin seseorang memiliki keinginan untuk mengurai kembali benang yang tak terkirakan jumlahnya dalam selembar sapu tangan yang telah ditenunnya sendiri.\r\nBagaimana mungkin seseorang bisa mendadak terbebaskan dari jaringan benang yang susun-bersusun, silang-menyilang, timpa-menimpa dengan rapi di selembar saputangan yang sudah bertahun-tahun lamanya ditenun dengan sabar oleh jari-jarinya sendiri oleh kesunyiannya sendiri oleh ketabahannya sendiri oleh tarikan dan hembusan napasnya sendiri oleh rintik waktu dalam benaknya sendiri oleh kerinduannya sendiri oleh penghayatannya sendiri tentang hubungan-hubungan pelik antara perempuan dan laki-laki yang tinggal di sebuah ruangan kedap suara yang bernama kasih sayang.', 'Hujan Bulan Juni.jpg', 'Poetry, Fiction', 'http://bit.ly/3979OQU'),
(18, 'Laskar Pelangi', 'Andrea hirata', '446', '2005', 'Begitu banyak hal menakjubkan yang terjadi dalam masa kecil para anggota Laskar Pelangi. Sebelas orang anak Melayu Belitong yang luar biasa ini tak menyerah walau keadaan tak bersimpati pada mereka. Tengoklah Lintang, seorang kuli kopra cilik yang genius dan dengan senang hati bersepeda 80 kilometer pulang pergi untuk memuaskan dahaganya akan ilmu—bahkan terkadang hanya untuk menyanyikan Padamu Negeri di akhir jam sekolah. Atau Mahar, seorang pesuruh tukang parut kelapa sekaligus seniman dadakan yang imajinatif, tak logis, kreatif, dan sering diremehkan sahabat-sahabatnya, namun berhasil mengangkat derajat sekolah kampung mereka dalam karnaval 17 Agustus. Dan juga sembilan orang Laskar Pelangi lain yang begitu bersemangat dalam menjalani hidup dan berjuang meraih cita-cita. Selami ironisnya kehidupan mereka, kejujuran pemikiran mereka, indahnya petualangan mereka, dan temukan diri Anda tertawa, menangis, dan tersentuh saat membaca setiap lembarnya...', 'Laskar Pelangi.jpg', 'Novel, Fiksi', 'http://bit.ly/2u92e9A'),
(19, 'Lelaki Harimau', 'Eka Kurniawan', '204', '2004', 'Pada lanskap yang sureal, Margio adalah bocah yang menggiring babi ke dalam perangkap. Namun di sore ketika seharusnya rehat menanti musim perburuan, ia terperosok dalam tragedi pembunuhan paling brutal. Di balik motif-motif yang berhamburan, antara cinta dan pengkhianatan, rasa takut dan berahi, bunga dan darah, ia menyangkal dengan tandas. “Bukan aku yang melakukannya,” ia berkata dan melanjutkan, “Ada harimau di dalam tubuhku.”', 'Lelaki Harimau.jpg', 'Fiction', 'http://bit.ly/2ScxwEm'),
(20, 'Les Misérables', 'Victor Hugo', '1613', '1862', 'Introducing one of the most famous characters in literature, Jean Valjean—the noble peasant imprisoned for stealing a loaf of bread—Les Misérables ranks among the greatest novels of all time. In it, Victor Hugo takes readers deep into the Parisian underworld, immerses them in a battle between good and evil, and carries them to the barricades during the uprising of 1832 with a breathtaking realism that is unsurpassed in modern prose. Within his dramatic story are themes that capture the intellect and the emotions: crime and punishment, the relentless persecution of Valjean by Inspector Javert, the desperation of the prostitute Fantine, the amorality of the rogue Thénardier, and the universal desire to escape the prisons of our own minds...', 'Les Miserables.jpg', 'Novel, History, Fiction', 'http://bit.ly/2RUuO7q'),
(21, 'Macbeth', 'William Shakespeare', '97', '1606', 'One night on the heath, the brave and respected general Macbeth encounters three witches who foretell that he will become king of Scotland. At first sceptical, he’s urged on by the ruthless, single-minded ambitions of Lady Macbeth, who suffers none of her husband’s doubt. But seeing the prophecy through to the bloody end leads them both spiralling into paranoia, tyranny, madness, and murder.\r\nThis shocking tragedy - a violent caution to those seeking power for its own sake - is, to this day, one of Shakespeare’s most popular and influential masterpieces.', 'Macbeth.jpg', 'Drama, Fiction', 'http://bit.ly/2OodrtA'),
(23, 'Pride and Prejudice', 'Jane Austen', '315', '28 Januari 1813', 'The Regency novella Pride and Prejudice tells the story about a family of 7 made of Mr. and Mrs. Bennet and their five daughters. The time is the Napoleonic Wars circa the 1810-1820 and women had a low status within society unless they married well. It was a struggle throughout the story for elder sisters Jane and Elizabeth to comply with the obstinate ways of their mother in that they should marry a man of means, rather than a man they loved. Still Jane and Elizabeth were able to stick to what they believed and found love in the end despite of the drawbacks that their lack of aristocratic status (and dowry) made them encounter...', 'Pride and Prejudice.jpg', 'Romance, Fiction', 'http://bit.ly/3b7DmQ0'),
(24, 'Ronggeng Dukuh Paruk', 'Ahmad Tohari', '116', 'January 2003', 'Semangat Dukuh Paruk kembali menggeliat sejak Srintil dinobatkan menjadi ronggeng baru, menggantikan ronggeng terakhir yang mati dua belas tahun yang lalu. Bagi pedukuhan yang kecil, miskin, terpencil dan bersahaja itu, ronggeng adalah perlambang. Tanpanya dukuh itu merasakah kehilangan jati diri.\r\nDengan segera Srintil menjadi tokoh yang amat terkenal dan digandrungi. Cantik dan menggoda. Semua ingin pernah bersama ronggeng itu. Dari kaula biasa hingga pekabat-pejabat desa maupun kabupaten...', 'Ronggeng Dukuh Paruk.jpg', 'Novel, Fiction', 'http://bit.ly/36YWexg'),
(25, 'Sang Pemimpi', 'Andrea Hirata', '158', '2006', 'Sang Pemimpi adalah sebuah lantunan kisah kehidupan yang memesona dan akan membuat Anda percaya akan tenaga cinta, percaya pada kekuatan mimpi dan pengorbanan, lebih dari itu, akan membuat Anda percaya kepada Tuhan. Andrea akan membawa Anda berkelana menerobos sudut-sudut pemikiran di mana Anda akan menemukan pandangan yang berbeda tentang nasib, tantangan intelektualitas, dan kegembiraan yang meluap-luap, sekaligus kesedihan yang mengharu biru.', 'Sang Pemimpi.jpg', 'Novel, Fiction', 'http://bit.ly/37YrZrw'),
(26, 'Sitti Nurbaya : Kasih Tak Sampai', 'Marah Rusli', '383', '1922', 'Marah Rusli adalah contoh sastrawan besar Indonesia yang benar-benar melampaui zamannya. Ia terus hidup, bersama keindahan cinta Sitti Nurbaya dan Samsulbahri, bersama kenangan dan kebencian orang-orang terhadap peringai Datunk Meringgih yang licik, akan tetapi sekaligus memesona.\r\nBerkali-kali buku Sitti Nurbaya dibaca, berkali-kali pula ditemukan keindahan yang berbeda. Berkali-kali novel ini diperbincangkan, berkali-kali pula ditemukan misteri yang tak sama. Benarkah Samsulbahri adalah tokoh yang baik? Mengapa Datuk Meringgih yang digambarkan jahat pada akhir cerita menjadi patriot yang membela tanah air, dan kemudian wafat dengan darah membasahi ibu pertiwi? Siapakah sesungguhnya yang menjadi pahlawan?...', 'Sitti Nurbaya.jpg', 'Novel, History, Fiction', 'http://bit.ly/36Ry33L'),
(27, 'The Adventures of Tom Sawyer', 'Mark Twain', '246', '1875', 'An adventure story for children, The Adventures of Tom Sawyer is a fun-filled book that shows life along the Mississippi River in the 1840s. Written by Mark Twain, the book shows masterfully-done satire, racism, childhood, and the importance of loyalty and courage- no matter the cost...', 'The Adventures of Tom Sawyer.jpg', 'Adventures, Fiction', 'http://bit.ly/37X9pQD'),
(29, 'The Broken Wings', 'Kahlil Gibran', '29', '1912', 'This is the exquisitely tender story of love that beats desperately against the taboos of Oriental tradition. With great sensitivity, Gibran describes his passion as a youth for Selma Karamy, the girl of Beirut who first unfolded to him the secrets of love. But it is a love that is doomed by a social convention which forces Selma into marriage with another man. Portraying the happiness and infinite sorrow of his relationship with Selma, Gibran at the same time probes the spiritual meaning of human existence with profound compassion...', 'The Broken Wings.jpg', 'Poetry, Fiction', 'http://bit.ly/2OqlrdQ'),
(30, 'The Call of Chtulhu', 'H. P. Lovecraft', '28', '1926', 'One of the feature stories of the Cthulhu Mythos, H.P. Lovecraft\'s \'the Call of Cthulhu\' is a harrowing tale of the weakness of the human mind when confronted by powers and intelligences from beyond our world...', 'The Call of Cthulhu.jpg', 'Fantasy, Horror, Fiction', 'http://bit.ly/3b3KGw9'),
(32, 'The Count of Monte Cristo', 'Alexandre Dumas', '824', '1844', 'Marseille, France, 1815. It is Edmond Dantes\' wedding day. But his enemies have other plans, and Edmond is arrested and sent to the terrible island prison of Chateau d\'If. For fourteen long years he waits for the right moment to escape. And now Edmond is a rich man, with many disguises, and a new name. The count of Monte Cristo begins his revenge...', 'The Count of Monte Cristo.jpg', 'Novel, Fiction, History', 'http://bit.ly/31uqaQP'),
(33, 'The Little Prince', 'Antoine de Saint-Exupéry', '68', '6 April 1943', 'Moral allegory and spiritual autobiography, The Little Prince is the most translated book in the French language. With a timeless charm it tells the story of a little boy who leaves the safety of his own tiny planet to travel the universe, learning the vagaries of adult behaviour through a series of extraordinary encounters. His personal odyssey culminates in a voyage to Earth and further adventures...', 'The Little Prince.jpg', 'Fantasy, Fiction, Children', 'http://bit.ly/37RP7Il'),
(34, 'The Prophet', 'Kahlil Gibran', '72', '1923', ' Kahlil Gibran’s masterpiece, The Prophet, is one of the most beloved classics of our time. Published in 1923, it has been translated into more than twenty languages, and the American editions alone have sold more than nine million copies.\r\nThe Prophet is a collection of poetic essays that are philosophical, spiritual, and, above all, inspirational. Gibran’s musings are divided into twenty-eight chapters covering such sprawling topics as love, marriage, children, giving, eating and drinking, work, joy and sorrow, housing, clothes, buying and selling, crime and punishment, laws, freedom, reason and passion, pain, self-knowledge, teaching, friendship, talking, time, good and evil, prayer, pleasure, beauty, religion, and death...', 'The Prophet.jpg', 'Philosophy, Poetry', 'http://bit.ly/371x8y5'),
(36, 'Dilan: Dia Adalah Dilanku Tahun 1990', 'Pidi Baiq', '333', 'Oktober 2015', '\"Milea, kamu cantik, tapi aku belum mencintaimu. Enggak tahu kalau sore. Tunggu aja\" (Dilan 1990)\r\n\"Milea, jangan pernah bilang ke aku ada yang menyakitimu, nanti, besoknya, orang itu akan hilang.\" (Dilan 1990)\r\n\"Cinta sejati adalah kenyamanan, kepercayaan, dan dukungan. Kalau kamu tidak setuju, aku tidak peduli.\" ', 'Dilan 1.jpg', 'Romance, Fiction', 'http://bit.ly/2GTgbuQ'),
(37, 'Dilan Bagian Kedua: Dia Adalah Dilanku Tahun 1991', 'Pidi Baiq', '345', ' July 2015', '\"Jika aku berkata bahwa aku mencintainya, maka itu adalah sebuah pernyataan yang sudah cukup lengkap.\"\r\n―Milea\r\n\"Senakal-nakalnya anak geng motor, Lia, mereka shalat pada waktu ujian praktek Agama.\"\r\n―Dilan', 'Dilan 2.jpg', 'Romance, Fiction', 'http://bit.ly/36UBLKe'),
(38, 'Milea', 'Pidi Baiq', '355', '31 Agustus 2016', '“Dilan memberi penggambaran lain dari sebuah penaklukan cinta & bagaimana indahnya cinta sederhana anak zaman dahulu.”\r\n@refaniris\r\n“Cuma satu yang kuinginkan, aku ingin cowok seperti Dilan.”\r\n@_SLovaFC\r\n“Dilan brengsek! Dia selalu tahu caranya menjadi pusat perhatian, bahkan ketika jadi buku, setiap serinya selalu ditunggu.”\r\n@Tedy_Pensil', 'Milea.jpg', 'Romance, Fiction', 'http://bit.ly/2GW7uzO'),
(39, '11:11', 'Fiersa Besari', '301', 'November 2018', 'Orang bilang, jodoh takkan ke mana. Aku rasa mereka keliru. Jodoh akan kemana-mana terlebih dahulu sebelum akhirnya menetap. Ketika waktunya telah tiba, ketika segala rasa sudah tidak bisa lagi dilawan, yang bisa kita lakukan hanyalah merangkul tanpa perlu banyak kompromi...', '11.11.jpg', 'Fiction', 'http://bit.ly/2OzU4hu'),
(40, 'Arah Langkah', 'Fiersa Besari ', '169', '3 May 2018', 'Bulan April, tahun 2013, berawal dengan niat dan tujuan yang berbeda—salah satunya karena hati yang terluka, tiga pengelana memulai sebuah perjalanan menyusuri daerah-daerah di Indonesia. Lewat cara yang seru tapi menantang, mereka tidak hanya menyaksikan langsung keindahan negeri ini, mereka juga harus menghadapi pertarungan dengan kegelisahan yang dibawa masing-masing...', 'Arah Langkah.jpg', 'Fiction', 'http://bit.ly/31FLUt1'),
(41, 'Konspirasi Alam Semesta', 'Fiersa Besari', '246', '13 April 2017', 'Seperti apakah warna cinta? Apakah merah muda mewakili rekahannya, ataukah kelabu mewakili pecahannya?', 'Konspirasi Alam Semesta.jpg', 'Fiction', 'http://bit.ly/2OCypFs'),
(42, 'Catatan Juang', 'Fiersa Besari', '310', 'November 2017', 'Seseorang yang akan menemani setiap langkahmu dengan satu kebaikan kecil setiap harinya.\r\nTertanda,\r\nJuang...', 'Catatan Juang.jpg', 'Fiction', 'http://bit.ly/39kvOrg'),
(43, 'Garis Waktu', 'Fiersa Besari', '218', 'September 2016', 'Pada sebuah garis waktu yang merangkak maju, akan ada saatnya kau bertemu dengan satu orang yang mengubah hidupmu untuk selamanya. Kemudian, satu orang tersebut akan menjadi bagian terbesar dalam agendamu. Dan hatimu takkan memberikan pilihan apa pun kecuali jatuh cinta, biarpun logika terus berkata bahwa risiko dari jatuh cinta adalah terjerembab di dasar nestapa...', 'Garis Waktu.jpg', 'Fiction, Romance', 'http://bit.ly/3botyBd'),
(44, 'Friendzone: Lempar Kode Sembunyi Hati', 'Alnira', '306', '5 Februari 2018', 'Kata ‘friendzone’ tidak ada dalam kamus seorang Andira Ramadhani, apalagi dia dan keempat sahabatnya yang lain sudah membuat perjanjian untuk tidak saling jatuh cinta. Namun, kedekataan dan kenyamanan yang terjalin membuat hatinya berubah. Dira mencintai sahabatnya sendiri. Saat dia berusaha untuk menghilangkan perasaan cintanya, cowok yang ditaksir Dira malah selalu bertingkah aneh, dengan mengeluarkan kode-kode yang membuat Dira menebak-nebak tentang perasaan cowok itu padanya. Namun, ketika Dira berharap perasaanya berbalas, cowok itu malah menghilang tanpa kabar...', 'Friendzone.jpg', 'Fiction, Romance', ' http://bit.ly/2H6V7Bi'),
(45, 'Dilanika', 'Alnira', '508', '1 Agustus 2016', 'Menikah bagi seorang Dilan Andra Wiratama hanyalah menambah sumber masalah baru di kehidupannya. Membiarkan seorang wanita asing memasuki kehidupannya malah akan membuat hidupnya semakin kacau. Tapi keinginan sang adik memintanya untuk menikah tak dapat ditolaknya.', 'Dilanika.jpg', 'Romance, Fiction', 'http://bit.ly/389mXZj'),
(46, 'Nerdy Girl', 'Alnira', '402', '30 Mei 2016', 'Dijuluki cupu dan kuper, maniak drama korea, fans berat Yesung Super Junior dan menginginkan menjadi seperti Harry Potter. Itulah sosok yang menggambarkan Aihara Dianita. Hidup penuh dengan khayalan dan selalu menjadi bahan ejekan sang kakak...', 'Nerdy Girl.jpg', 'Romance , Fiction', 'http://bit.ly/2vgnz0G'),
(47, 'Crazy Waiting', 'Alnira', '267', 'Mei 2017', 'Keysha menyimpan rasa cintanya sejak lama kepada Devan, kakak dari sahabatnya. Selama ini Keysha tidak punya keberanian untuk mengatakan langsung kepada Devan. Dia takut menerima penolakan dari pria pujaannya itu. Apalagi Devan dikenal sebagai pribadi yang pendiam dan juga sulit untuk didekati. Selama belasan tahun Keysa menyimpan sendiri perasaannya selama ini, hingga di suatu hari orangtua Devan memintanya untuk menjadi menantu mereka. Ada perasaan senang dalam diri Keysha mendengar hal itu, tapi itu semua tidak bertahan lama karena melihat Devan yang seolah enggan untuk menerima perjodohan ini...', 'Crazy Waiting.jpg', 'Romance, Fiction', 'http://bit.ly/2ODuDvf'),
(48, 'Happen For A Reason', 'Alnira', '358', '2017', 'Ica percaya kalau cintanya pada Wildan tidak akan pernah berubah. Itu juga yang membuat Ica yakin untuk menikah dengan Wildan. Tapi ternyata pernikahan tidak semudah yang mereka bayangkan', 'Happen For A Reason.jpg', 'Romance, Fiction', 'http://bit.ly/2SFP8sH'),
(49, 'Crazy Proposal', 'Alnira', '199', 'Mei 2017', 'Apa yang akan Terjadi ketika dua orang terlibat perjodohan tanpa Cinta?\r\nApalagi pertemuan mereka yang membuat mereka tidak menyukai satu sama lain...', 'Crazy Proposal.jpg', 'Romance, Fiction', 'http://bit.ly/2vcPKxG'),
(50, 'Soulmate', 'Alnira', '271', '1 Agustus 2016', 'Hidup Alaric Edgar Pratama, yang awalnya tenang tanpa badai, kini harus luluh lantah setelah keluarganya selalu menanyakan pertanyaan yang sama. Kapan nikah?...', 'Soulmate.jpg', 'Romance, Fiction', 'http://bit.ly/3bfTGOR'),
(51, 'Jodoh untuk Mira', 'Alnira', '279', 'September 2017', 'Almira--gadis yang bercita-cita menjadi dokter, lalu banting setir menjadi guru bimbingan konseling--pernah merasakan cinta monyet pada usia empat belas tahun. Namun kala itu, Mira harus patah hati karena pujaannya hanya menganggapnya adik. Kesedihan Mira bertambah saat Akradani Lawardi, cinta pertamanya, menghilang tanpa jejak sehari setelah ulang tahunnya yang ke tujuh belas...', 'Jodoh untuk Mira.jpg', 'Romance, Fiction', 'http://bit.ly/38bwcZ0'),
(52, 'Perahu Kertas', 'Dee Lestari', '455', '29 Agustus 2009', 'Namanya Kugy. Mungil, pengkhayal, dan berantakan. Dari benaknya, mengalir untaian dongeng indah. Keenan belum pernah bertemu manusia seaneh itu.', 'Perahu Kertas.jpg', 'Romance, Fiction', 'http://bit.ly/39iKIhO'),
(53, 'Rectoverso', 'Dee Lestari', '148', '1 Juli 2008', 'Dewi Lestari yang bernama pena Dee, kali ini hadir dengan mahakarya unik dan pertama di Indonesia. \"Rectoverso\" merupakan hibrida dari fiksi dan musik, terdiri dari sebelas cerita pendek dan sebelas lagu yang bisa dinikmati secara terpisah maupun bersama-sama. Keduanya saling melengkapi bagaikan dua imaji yang seolah berdiri sendiri tapi sesungguhnya merupakan satu kesatuan. Inilah cermin dari dua dunia Dewi Lestari yang ia ekspresikan dalam napas kreatifitas tunggal bertajuk \"Rectoverso\". Dengar fiksinya. Baca musiknya. Lengkapi penghayatan anda dan temukanlah sebuah pengalaman baru...', 'Rectoverso.jpg', 'Fiction, Romance', 'http://bit.ly/2uvQqhz'),
(54, 'Madre: Kumpulan Cerita', 'Dee Lestari ', '53', 'Juni 2011', '“Apa rasanya jika sejarah kita berubah dalam sehari? Darah saya mendadak seperempatTionghoa, Nenek saya seorang penjual roti, dan dia, Bersama kakek yang tidak saya kenal, Mewariskan anggota keluarga baru yang tidak pernah saya tahu: Madre.” Terdiri dari 13 prosa dan karya fiksi, Madre merupakan kumpulan karya Dee selama lima tahun terakhir. Untaian kisah apik ini menyuguhkan berbagai tema: perjuangan sebuah toko roti kuno, dialog antara ibu dan janinnya, dilema antara cinta dan persahabatan, sampai tema seperti reinkarnasi dan kemerdekaan sejati...', 'Madre.jpg', 'Fiction', 'http://bit.ly/2H7QFSR'),
(55, 'Filosofi Kopi', 'Dee Lestari', '98', '2007', 'Pemaknaan kembali kembali kopi, Buddha, Herman, surat tak tarkirimkan, cinta sejenis yang manis atau apa pun, membuktikan Dee tetap memesona. Kalau kemarin panitia Nobel sastra masih maju mundur dengan nama Pramoedya, sekarang bisa memaknai kembali, melalui karya-karya ini...', 'Filosofi Kopi.jpg', 'Fiction', ' http://bit.ly/2S9MfB8'),
(57, 'Komet Minor', 'Tere Liye ', '377', 'Maret 2019', 'Buku ini adalah versi unedited version, naskah original sebelum diedit dan direvisi oleh redaksi Penerbit. Jika kalian hendak memiliki fisik cetaknya, baru terbit Maret 2019.\r\nPertarungan melawan Si Tanpa Mahkota akan berakhir di sini. Siapapun yang menang, semua berakhir di sini, di klan Komet Minor, tempat aliansi Para Pemburu pernah dibentuk, dan pusaka hebat pernah diciptakan...', 'Komet Minor.jpg', 'Fiction, Fantasy', 'http://bit.ly/2tIJSfi'),
(58, 'Ceros dan Batozar', 'Tere Liye ', '380', '28 Mei 2018', 'Awalnya kami hanya mengikuti karyawisata biasa seperti murid-murid sekolah lain. Hingga Ali, dengan kegeniusan dan keisengannya, memutuskan menyelidiki sebuah ruangan kuno. Kami tiba di bagian dunia paralel lainnya, menemui petarung kuat, mendapat kekuatan baru serta teknik-teknik menakjubkan...', 'Ceros dan Batozar.jpg', 'Fiction, Fantasy, Adventure', 'http://bit.ly/39mDf1r'),
(59, 'Komet', 'Tere Liye', '386', '28 Mei 2018', 'Setelah “musuh besar” kami lolos, dunia paralel dalam situasi genting. Hanya soal waktu, pertempuran besar akan terjadi. Bagaimana jika ribuan petarung yang bisa menghilang, mengeluarkan petir, termasuk teknologi maju lainnya muncul di permukaan Bumi? Tidak ada yang bisa membayangkan kekacauan yang akan terjadi. Situasi menjadi lebih rumit lagi saat Ali, pada detik terakhir, melompat ke portal menuju Klan Komet. Kami bertiga tersesat di klan asing untuk mencari pusaka paling hebat di dunia paralel...', 'Komet.jpg', 'Fiction, Fantasy', 'http://bit.ly/379pYrs'),
(60, 'Bulan', 'Tere Liye ', '401', '12 Maret 2015', 'Namanya Seli, usianya 15 tahun, kelas sepuluh. Dia sama seperti remaja yang lain. Menyukai hal yang sama, mendengarkan lagu-lagu yang sama, pergi ke gerai fast food, menonton serial drama, film, dan hal-hal yang disukai remaja...', 'Bulan.jpg', 'Fiction, Fantasy', 'http://bit.ly/39fz47t'),
(61, 'Bintang', 'Tere Liye', '395', '12 Juni 2017', 'Kami bertiga teman baik. Remaja, murid kelas sebelas. Penampilan kami sama seperti murid SMA lainnya. Tapi kami menyimpan rahasia besar.\r\nNamaku Raib, aku bisa menghilang. Seli, teman semejaku, bisa mengeluarkan petir dari telapak tangannya. Dan Ali, si biang kerok sekaligus si genius, bisa berubah menjadi beruang raksasa. Kami bertiga kemudian bertualang ke dunia paralel yang tidak diketahui banyak orang, yang disebut Klan Bumi, Klan Bulan, Klan Matahari, dan Klan Bintang. Kami bertemu tokoh-tokoh hebat. Penduduk klan lain...', 'Bintang.jpg', 'Fiction, Fantasy', 'http://bit.ly/39jsEnW'),
(62, 'Matahari', 'Tere Liye', '231', '25 Juli 2016', 'Namanya Ali, 15 tahun, kelas X. Jika saja orangtuanya mengizinkan, seharusnya dia sudah duduk di tingkat akhir ilmu fisika program doktor di universitas ternama. Ali tidak menyukai sekolahnya, guru-gurunya, teman-teman sekelasnya. Semua membosankan baginya. Tapi sejak dia mengetahui ada yang aneh pada diriku dan Seli, teman sekelasnya, hidupnya yang membosankan berubah seru. Aku bisa menghilang, dan Seli bisa mengeluarkan petir. Ali sendiri punya rahasia kecil. Dia bisa berubah menjadi beruang raksasa. Kami bertiga kemudian bertualang ke tempat-tempat menakjubkan. Namanya Ali. Dia tahu sejak dulu dunia ini tidak sesederhana yang dilihat orang. Dan di atas segalanya, dia akhirnya tahu persahabatan adalah hal yang paling utama...', 'Matahari.jpg', 'Fiction, Fantasy', 'http://bit.ly/31DCT3z'),
(63, 'Moga Bunda Disayang Allah', 'Tere Liye ', '373', '2007', 'Diangkat dari salah satu kisah nyata paling mengharukan, ditulis kembali dari salah satu film terbaik sepanjang masa...', 'Moga Bunda Disayang Allah.jpg', 'Fiction', 'http://bit.ly/3bvpPCa'),
(64, 'Negeri Di Ujung Tanduk', 'Tere Liye ', '361', 'April 2013', 'Di Negeri di Ujung Tanduk kehidupan semakin rusak, bukan karena orang jahat semakin banyak, tapi semakin banyak orang yang memilih tidak peduli lagi.\r\nDi Negeri di Ujung Tanduk, para penipu menjadi pemimpin, para pengkhianat menjadi pujaan, bukan karena tidak ada lagi yang memiliki teladan, tapi mereka memutuskan menutup mata dan memilih hidup bahagia sendirian...', 'Negeri Di Ujung Tanduk.jpg', 'Fiction', 'http://bit.ly/38alGkW'),
(65, 'Harry Potter and the Philosopher \'s Stone', 'J. K Rowling', '181', '1 November 2003', 'Harry Potter\'s life is miserable. His parents are dead and he\'s stuck with his heartless relatives, who force him to live in a tiny closet under the stairs. But his fortune changes when he receives a letter that tells him the truth about himself: he\'s a wizard. A mysterious visitor rescues him from his relatives and takes him to his new home, Hogwarts School of Witchcraft and Wizardry...', 'Harry Potter and The Philosophers Stone.jpg', 'Fiction, Fantasy', 'http://bit.ly/377VSo8'),
(66, 'Harry Potter and the Chamber of Secrets', 'J. K Rowling', '190', '2 Juli 1998', 'The Dursleys were so mean and hideous that summer that all Harry Potter wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he\'s packing his bags, Harry receives a warning from a strange, impish creature named Dobby who says that if Harry Potter returns to Hogwarts, disaster will strike', 'Harry Potter and the Chamber of Secrets.jpg', 'Fiction, Fantasy', 'http://bit.ly/2tKjBxe'),
(67, 'Harry Potter and the Prisoner of Azkaban', 'J.K Rowling', '290', '1 Mei 2004', 'Harry Potter\'s third year at Hogwarts is full of new dangers. A convicted murderer, Sirius Black, has broken out of Azkaban prison, and it seems he\'s after Harry. Now Hogwarts is being patrolled by the dementors, the Azkaban guards who are hunting Sirius. But Harry can\'t imagine that Sirius or, for that matter, the evil Lord Voldemort could be more frightening than the dementors themselves, who have the terrible power to fill anyone they come across with aching loneliness and despair...', 'Harry Potter and the Prisoner of Azkaban.jpg', 'Fiction, Fantasy', 'http://bit.ly/2S7VcL7'),
(68, 'Harry Potter and the Goblet of Fire', 'J. K Rowling', '424', '28 September 2002', 'Harry Potter is midway through his training as a wizard and his coming of age. Harry wants to get away from the pernicious Dursleys and go to the International Quidditch Cup. He wants to find out about the mysterious event that\'s supposed to take place at Hogwarts this year, an event involving two other rival schools of magic, and a competition that hasn\'t happened for a hundred years. He wants to be a normal, fourteen-year-old wizard. But unfortunately for Harry Potter, he\'s not normal - even by wizarding standards. And in his case, different can be deadly.', 'Harry Potter and the Goblet of Fire.jpg', 'Fiction, Fantasy', 'http://bit.ly/3blw5fs'),
(69, 'Harry Potter and the Order of the Phoenix', 'J. K Rownling', '1 September 2004', '552', 'There is a door at the end of a silent corridor. And it’s haunting Harry Pottter’s dreams. Why else would he be waking in the middle of the night, screaming in terror?\r\nHarry has a lot on his mind for this, his fifth year at Hogwarts: a Defense Against the Dark Arts teacher with a personality like poisoned honey; a big surprise on the Gryffindor Quidditch team; and the looming terror of the Ordinary Wizarding Level exams. But all these things pale next to the growing threat of He-Who-Must-Not-Be-Named---a threat that neither the magical government nor the authorities at Hogwarts can stop.', 'Harry Potter and the Order of the Phoenix.jpg', 'Fiction, Fantasy', 'http://bit.ly/2UveCvg'),
(70, 'Harry Potter and the Half-Blood Prince', 'J. K Rowling', '388', '16 September 2006', 'When Harry Potter and the Half-Blood Prince opens, the war against Voldemort has begun. The Wizarding world has split down the middle, and as the casualties mount, the effects even spill over onto the Muggles. Dumbledore is away from Hogwarts for long periods, and the Order of the Phoenix has suffered grievous losses. And yet, as in all wars, life goes on.Harry, Ron, and Hermione, having passed their O.W.L. level exams, start on their specialist N.E.W.T. courses. Sixth-year students learn to Apparate, losing a few eyebrows in the process. Teenagers flirt and fight and fall in love. Harry becomes captain of the Gryffindor Quidditch team, while Draco Malfoy pursues his own dark ends. And classes are as fascinating and confounding as ever, as Harry receives some extraordinary help in Potions from the mysterious Half-Blood Prince.', 'Harry Potter and the Half-Blood Prince.jpg', 'Fiction, Fantasy', 'http://bit.ly/2H1LDr1'),
(71, 'Harry Potter and the Deathly Hallows', 'J. K Rowling', '398', '21 Juli 2007', 'Harry Potter is leaving Privet Drive for the last time. But as he climbs into the sidecar of Hagrid’s motorbike and they take to the skies, he knows Lord Voldemort and the Death Eaters will not be far behind.\r\nThe protective charm that has kept him safe until now is broken. But the Dark Lord is breathing fear into everything he loves. And he knows he can’t keep hiding.\r\nTo stop Voldemort, Harry knows he must find the remaining Horcruxes and destroy them.\r\nHe will have to face his enemy in one final battle...', 'Harry Potter and the Deathly Hallows.jpg', 'Fiction, Fantasy', 'http://bit.ly/31FBGZU');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nonfiksi`
--

CREATE TABLE `nonfiksi` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `halaman` varchar(100) NOT NULL,
  `publish` varchar(100) NOT NULL,
  `sinopsis` varchar(1000) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nonfiksi`
--

INSERT INTO `nonfiksi` (`id`, `judul`, `penulis`, `halaman`, `publish`, `sinopsis`, `gambar`, `genre`, `link`) VALUES
(1, 'Catatan Seorang Demonstran', 'Soe Hok Gie', '262', 'May 1983', 'Buku yang berisi pemikiran - pemikiran (alm.) Soe Hok Gie, mahasiswa Jurusan Sejarah FSUI. Disusun lewat pengumpulan karya - karya tulisan Gie, baik di jurnal hariannya, maupun dari tulisan - tulisannya di koran nasional.\r\nmenarik untuk dibaca. terlebih lagi lewat penggambarannya sebagai mahasiswa pada era orde lama, Gie dapat membawa kita menyelami kehidupan rakyat Indonesia sekitar tahun 1960-an...', 'Catatan Seorang Demonstran.jpg', 'Biography, Non-Fiction', 'http://bit.ly/388BRPu'),
(2, 'On the Origin of Species ', 'Charles Darwin', '361', '24 November 1859', 'Darwin\'s theory of natural selection issued a profound challenge to orthodox thought and belief: no being or species has been specifically created; all are locked into a pitiless struggle for existence, with extinction looming for those not fitted for the task...', 'On the Origin of Species.jpg', 'Science, Non-Fiction', 'http://bit.ly/2RR81YU'),
(3, 'Catch and Kill', 'Ronan Farrow', '159', 'October 15th 2019', 'In a dramatic account of violence and espionage, Pulitzer Prize-winning investigative reporter Ronan Farrow exposes serial abusers and a cabal of powerful interests hell-bent on covering up the truth, at any cost...', 'Catch and Kill.jpg', 'Non-Fiction, Crime', 'http://bit.ly/38XTZMe'),
(4, 'A Brief History of Time', 'Stephen Hawking', '171', '1 April 1988', 'In the ten years since its publication in 1988, Stephen Hawking\'s classic work has become a landmark volume in scientific writing, with more than nine million copies in forty languages sold worldwide...', 'A Brief History of Time.jpg', 'Science, Non-Fiction', 'http://bit.ly/2GUKktY'),
(5, 'Eat, Pray, Love', 'Elizabeth Gilbert', '352', '16 Februari 2006', 'A celebrated writer\'s irresistible, candid, and eloquent account of her pursuit of worldly pleasure, spiritual devotion, and what she really wanted out of life...', 'Eat, Pray, Love.jpg', 'Non-Fiction, Memoir', 'http://bit.ly/39adLUD'),
(6, 'Educated', 'Tara Westover', '174', '20 Februari 2018', 'Tara Westover was 17 the first time she set foot in a classroom. Born to survivalists in the mountains of Idaho, she prepared for the end of the world by stockpiling home-canned peaches and sleeping with her \"head-for-the-hills bag\". In the summer she stewed herbs for her mother, a midwife and healer, and in the winter she salvaged in her father\'s junkyard...', 'Educated.jpg', 'Non-Fiction, Memoir', 'http://bit.ly/371z8q5'),
(7, 'Elon Musk: Tesla, SpaceX, and the Quest for a Fantastic Future', 'Ashlee Vance', '266', '3 Maret 2015', 'Elon Musk, the entrepreneur and innovator behind SpaceX, Tesla, and SolarCity, sold one of his internet companies, PayPal, for $1.5 billion. Ashlee Vance captures the full spectacle and arc of the genius\'s life and work, from his tumultuous upbringing in South Africa and flight to the United States to his dramatic technical innovations and entrepreneurial pursuits...', 'Elon Musk Tesla, SpaceX, and the Quest for a Fantastic Future.jpg', 'Non-Fiction, Biography', 'http://bit.ly/39hpiBZ'),
(8, 'In Cold Blood', 'Truman Capote', '214', '1965', 'On November 15, 1959, in the small town of Holcomb, Kansas, four members of the Clutter family were savagely murdered by blasts from a shotgun held a few inches from their faces. There was no apparent motive for the crime, and there were almost no clues...', 'In Cold Blood.jpg', 'Non-Fiction, Crime', 'http://bit.ly/2H4Fx9r'),
(12, 'Quiet: The Power of Introverts in a World That Can\'t Stop Talking', 'Susan Cain', '194', '24 Januari 2012', 'At least one-third of the people we know are introverts. They are the ones who prefer listening to speaking; who innovate and create but dislike self-promotion; who favor working on their own over working in teams. It is to introverts—Rosa Parks, Chopin, Dr. Seuss, Steve Wozniak—that we owe many of the great contributions to society...', 'Quiet The Power of Introverts in a World That Can\'t Stop Talking.jpg', 'Non-Fiction, Psychology', 'http://bit.ly/36XshOj'),
(13, 'Steve Jobs ', 'Walter Isaacson', '400', '24 Oktober 2011', 'From the author of the bestselling biographies of Benjamin Franklin and Albert Einstein, this is the exclusive, New York Times bestselling biography of Apple co-founder Steve Jobs...', 'Steve Jobs.jpg', 'Non-Fiction, Biography', 'http://bit.ly/31nRNel'),
(14, 'Stiff: The Curious Lives of Human Cadavers', 'Mary Roach', '131', '2004', 'Stiff is an oddly compelling, often hilarious exploration of the strange lives of our bodies postmortem. For two thousand years, cadavers—some willingly, some unwittingly—have been involved in science\'s boldest strides and weirdest undertakings. In this fascinating account, Mary Roach visits the good deeds of cadavers over the centuries and tells the engrossing story of our bodies when we are no longer with them...', 'Stiff The Curious Lives of Human Cadavers.jpg', 'Non-Fiction, Science', 'http://bit.ly/2UjbxOO'),
(15, 'The Glass Castle', 'Jeannette Walls', '138', '17 Januari 2006', 'A tender, moving tale of unconditional love in a family that, despite its profound flaws, gave the author the fiery determination to carve out a successful life on her own terms...', 'The Glass Castle.jpg', 'Non-Fiction, Memoir', 'http://bit.ly/2u9b3jI'),
(16, 'The God Delusion', 'Richard Dawkins', '396', '18 Oktober 2006', 'A preeminent scientist - and the world\'s most prominent atheist - asserts the irrationality of belief in God, and the grievous harm religion has inflicted on society, from the Crusades to 9/11...', 'The God Delusion.jpg', 'Non-Fiction', 'http://bit.ly/31vMJ7S'),
(17, 'Tasauf Modern', 'Buya Hamka', '251', '1939', 'uku Tasauf Modern ini ditulis oleh Almarhum Hamka sekitar tahun 30-an, sebagai karangan bersambung dalam majalah Pedoman Masyarakat yang terbit di Medan dengan Hamka sendiri sebagai pemimpin redaksi. Setelah selesai pemuatan dalam majalah, atas permintaan pembaca Tasauf Modern diterbitkan sebagai sebuah buku untuk pertama kali tahun 1939...', 'Tasauf Moderen.jpg', 'Religion, Non-Fiction', 'http://bit.ly/31DC3DX'),
(18, 'Pribadi dan Martabat Buya Prof. Dr. Hamka', 'Rusydi Hamka', '406', 'Desember 1981', '-', 'Buya Hamka Pribadi dan Martabat.jpg', 'Biography, Non-Fiction', 'http://bit.ly/2H1IJ5A'),
(19, 'Tasauf dari Abad ke Abad', 'Buya Hamka', '204', '1952', '-', 'Tasauf dari Abad ke Abad.jpg', 'Religion, Non-Fiction', 'http://bit.ly/3bmiHI8'),
(20, 'Semua Manusia Bersaudara', 'Mahatma Gandhi', '124', '1958', 'Ahimsa atau pantang kekerasan adalah cara paling ampuh yang tersedia bagi umat manusia. Paham ini jauh lebih ampuh dibanding dengan senjata penghancur terhebat yang pernah diciptakan oleh akal manusia.', 'Semua Manusia Bersaudara.jpg', 'Philosophy, Non-Fiction', 'http://bit.ly/2vc9XDQ'),
(21, 'Aksi Massa', 'Tan Malaka', '123', 'Mei 2000', 'Bangsa Indonesia yang sejati dari dulu sampai sekarang masih tetap menjadi budak belian yang penurut, bulan-bulanan dari perampok-perampok bangsa asing. Bangsa Indonesia yang sejati belum mempunyai riwayat sendiri selain perbudakan. Hanya aksi massa yang bisa membebaskannya...', 'Aksi Massa.jpg', 'Non-Fiction', 'http://bit.ly/2H5VsUJ'),
(22, 'Catatan Pinggir 1', 'Goenawan Mohamad', '1002', '1982', 'Untuk Majalah Tempo, tiap minggu Goenawan Mohamad menulis \"Catatan Pinggir\".\r\nRubrik \"Catatan Pinggir\" sebagai semacam komentar, tapi juga semacam gumam, seperti kalau kita berbicara sendiri atau mencoret-coretkan kalimat di kertas kosong di tengah suara orang ramai. Atau semacam marginalia: catatan-catatan yang kita torehkan di tepi halaman buku yang sedang kita baca. Dari situlah nama \"Catatan Pinggir\" sebenarnya ditemukan: percikan pikiran pendek dan cepat di antara lalu lintas ide dan peristiwa-peristiwa...', 'Catatan Pinggir 1.jpg', 'Non-Fiction', 'http://bit.ly/2Sr8l0Z'),
(23, 'Catatan Pinggir 2', 'Goenawan Mohamad', '842', '1994', '-', 'Catatan Pinggir 2.jpg', 'Non-Fiction', 'http://bit.ly/2S89VWq'),
(24, 'Catatan Pinggir 3', 'Goenawan Mohamad', '686', '1991', '-', 'Catatan Pinggir 3.jpg', 'Non-Fiction', 'http://bit.ly/2veLAp0'),
(25, 'Catatan Pinggir 4', 'Goenawan Mohamad', '644', '1991', '-', 'Catatan Pinggir 4.jpg', 'Non-Fiction', 'http://bit.ly/38dVd60'),
(26, 'Catatan Pinggir 5', 'Goenawan Mohamad', '699', '2002', '-', 'Catatan Pinggir 5.jpeg', 'Non-Fiction', 'http://bit.ly/2usR0wF'),
(27, 'Catatan Pinggir 6', 'Goenawan Mohamad', '455', '2006', '-', 'Catatan Pinggir 6.jpg', 'Non-Fiction', 'http://bit.ly/2S87IdF'),
(28, 'Catatan Pinggir 7', 'Goenawan Mohamad', '437', '2006', '-', 'Catatan Pinggir 7.jpg', 'Non -Fiction', 'http://bit.ly/2ODtpA9'),
(29, 'Catatan Pinggir 8', 'Goenawan Mohamad', '468', '2011', '-', 'Catatan Pinggir 8.jpg', 'Non-Fiction', 'http://bit.ly/2UwNyvD'),
(30, 'Catatan Pinggir 9', 'Goenawan Mohamad', '800', '2011', '-', 'Catatan Pinggir 9.jpg', 'Non-Fiction', 'http://bit.ly/2Sr8KR3'),
(31, 'Catatan Pinggir 10', 'Goenawan Mohamad', '460', '2012', '-', 'Catatan Pinggir 10.jpg', 'Non-Fiction', 'http://bit.ly/2UC9BRA'),
(32, 'Dibawah Bendera Revolusi : Jilid 1', 'Sukarno', '624', '1960', '“Berikan aku 1000 orangtua niscaya akan kucabut semeru dari akarnya, berikan aku 1 pemuda niscaya akan kuguncangkan dunia.”(Bung Karno)\r\nSekali Lagi: Bukan ”Jangan Banyak Bicara, Bekerjalah.” tetapi ”Banyak Bicara, Banyak Bekerja!” (Bung Karno “Fikiran Rakyat”, 1933)...', 'Dibawah Bendera Revolusi Jilid 1.jpg', 'Non-Fiction', 'http://bit.ly/39fKdoO'),
(33, 'Madilog', 'Tan Malaka ', '388', '1946', 'Ditulis di Rajawati dekat pabrik sepatu Kalibata, Cililitan, Jakarta. Di sini saya berdiam dari 15 Juli 1942 sampai pertengahan tahun 1943. Mempelajari keadaan kota dan kampung Indonesia yang lebih dari 20 tahun ditinggalkan.', 'Madilog.jpg', 'Non-Fiction, Philosophy', 'http://bit.ly/2H7G7Dk'),
(34, 'Mantappu Jiwa', 'Jerome Polin Sijabat', '224', '19 Agustus 2019', 'Bukan!\r\nKata orang, selama masih hidup, manusia akan terus menghadapi masalah demi masalah. Dan itulah yang akan kuceritakan dalam buku ini, yaitu bagaimana aku menghadapi setiap persoalan di dalam hidupku. Dimulai dari aku yang lahir dekat dengan hari meletusnya kerusuhan di tahun 1998, bagaimana keluargaku berusaha menyekolahkanku dengan kondisi ekonomi yang terbatas, sampai pada akhirnya aku berhasil mendapatkan beasiswa penuh S1 di Jepang...', 'Mantappu Jiwa.jpg', 'Non-Fiction', 'http://bit.ly/2H6nQ9e'),
(35, 'The Art of War', 'Sun Tzu', '184', '500', 'Twenty-Five Hundred years ago, Sun Tzu wrote this classic book of military strategy based on Chinese warfare and military thought. Since that time, all levels of military have used the teaching on Sun Tzu to warfare and civilization have adapted these teachings for use in politics, business and everyday life. The Art of War is a book which should be used to gain advantage of opponents in the boardroom and battlefield alike.', 'The Art of War.jpg', 'Philosophy, Non-Fiction', 'http://bit.ly/2tvQpKc'),
(36, 'The Communist Manifesto', 'Karl Marx and Friedrich Engels', '68', '21 Febuari 1848', 'Landasan Teori mengenai komunisme oleh Karl Marx and Friedrich Engels', 'The Communist Manifesto.jpg', 'Philosophy, Non-Fiction', 'http://bit.ly/2txksBi'),
(37, 'Words of Paradise', 'Jalāl ad-Dīn', '55', '1 Febuari 2004', 'Illustrated with miniatures and borders from ancient Islamic scripts, this volume features 55 poems from the works of Jalaluddin Rumi. Rumi was a 13th-century Persian mystic who believed that all human beings can, if they surrender themselves to the power of love, live in a condition of infinite bliss. Raficq Abdulla uses rhythm and powerful imagery to recreate the ecstatic state which Rumi considered so crucual to reach enlightenment...', 'Words of Paradise.jpg', 'Poetry, Non-Fiction, Religion', 'http://bit.ly/2H5Vqw5'),
(38, 'Mystical Poems of Rumi', 'Jalāl ad-Dīn', '440', '1 Januari 1968', 'My verse resembles the bread of Egypt—night passes over it, and you cannot eat it any more. Devour it the moment it is fresh, before the dust settles upon it. Its place is the warm climate of the heart; in this world it dies of cold. Like a fish it quivered for an instant on dry land, another moment and you see it is cold. Even if you eat it imagining it is fresh, it is necessary to conjure up many images. What you drink is really your own imagination; it is no old tale, my good man....', 'Mystical poems of Rūmī.jpg', 'Poetry, Non-Fiction, Religion', 'http://bit.ly/2OS72HB'),
(39, 'Ubur-ubur Lembur', 'Raditya Dika', '244', '1 Febuari 2018', 'Hal kedua yang gue nggak sempat kasih tahu Iman: jadi orang yang dikenal publik harus tahan dengan asumsi-asumsi orang. Misalnya, orang-orang penuh dengan asumsi yang salah. Gue kurusan dikit, dikomentarin orang yang baru ketemu, ‘Bang Radit, kurusan, deh. Buat film baru, ya?’ Gue geleng, ‘Enggak.’ Gue bilang, ‘Emang lagi diet aja.’ Dia malah balas bilang, ‘Ah, bohong! Paling abis putus cinta, kan?’...', 'Ubur-Ubur Lembur.jpg', 'Non-Fiction, Humor', 'http://bit.ly/2H1L8gD'),
(40, 'Koala Kumal', 'Raditya Dika', '92', '17 Januari 2015', 'Memasuki tahun kesepuluh sebagai penulis, Raditya Dika melahirkan karya terbarunya Koala Kumal. Masih mengusung genre yang sama—kisah-kisah komedi yang didasarkan pada pengalaman si penulis, kali ini lewat Koala Kumal, Raditya Dika mengajak pembacanya berbicara tentang hubungan yang ‘patah’. Mulai dari renggangnya hubungan pertemanan, perasaan yang berubah kepada orang yang sama, hubungan orangtua dan anak, hingga patah hati terhebat yang mengubah cara pandang terhadap cinta...', 'Koala Kumal.jpg', 'Non-Fiction, Humor', 'http://bit.ly/389bLfz');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelas` int(11) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `nis` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `kelas`, `jurusan`, `nis`, `gambar`) VALUES
(2, 'Arief Renaldianto', 13, 'Teknik Komputer Jaringan', '1614891', 'antok.jpg'),
(3, 'Iktifar Sukma Nanda', 13, 'Teknik Komputer Jaringan', '1614892', 'pandul.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ttl` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `ttl`) VALUES
(13, 'dimas okva', '12345678', 'dimasokva@gmail.com', '18/10/2001'),
(14, 'yono', '$2y$10$yJ/cKIqw87yh18f4hzudmelqzoffmbopZ6xJuOdr0NM', 'yono@gmail.com', '12/12/2001'),
(15, 'pandul', '$2y$10$SOJRP1/K9x9IGZO0QSBI3u5VrIL268Q7aJYf5eSut5z', 'pandul@gmail.com', '12/12/2000'),
(16, 'dos', 'dos', 'dos@gmail.com', '13/13/1323'),
(17, 'asu', 'asu', 'asu@gmail.com', '12/12/2002'),
(18, 'dimas', 'babi', 'dimasbabi@gmail.com', '12/12/2012'),
(19, 'asdf', 'plmoknijb', 'asdf@gmail.com', '2001/08/21'),
(20, 'test1', 'test1', 'test1@gmail.com', '01/01/2001');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bookpop1`
--
ALTER TABLE `bookpop1`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bookpop2`
--
ALTER TABLE `bookpop2`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bse`
--
ALTER TABLE `bse`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fiksi`
--
ALTER TABLE `fiksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nonfiksi`
--
ALTER TABLE `nonfiksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `bookpop1`
--
ALTER TABLE `bookpop1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `bookpop2`
--
ALTER TABLE `bookpop2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `bse`
--
ALTER TABLE `bse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT untuk tabel `fiksi`
--
ALTER TABLE `fiksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT untuk tabel `nonfiksi`
--
ALTER TABLE `nonfiksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
