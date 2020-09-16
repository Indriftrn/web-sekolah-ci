-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2020 at 04:55 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web-sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_berita`
--

CREATE TABLE `tbl_berita` (
  `id_berita` int(11) NOT NULL,
  `judul_berita` varchar(255) DEFAULT NULL,
  `slug_berita` varchar(255) DEFAULT NULL,
  `isi_berita` text DEFAULT NULL,
  `gambar_berita` varchar(30) DEFAULT NULL,
  `tgl_berita` date NOT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_berita`
--

INSERT INTO `tbl_berita` (`id_berita`, `judul_berita`, `slug_berita`, `isi_berita`, `gambar_berita`, `tgl_berita`, `id_user`) VALUES
(20, 'Juara 2 Utama Paskibra Sarakti SMPN 2 Pamarican di LKBB MAN 4 Ciamis.', 'juara-2-utama-paskibra-sarakti-smpn-2-pamarican-di-lkbb-man-4-ciamis', '<p>Kegiatan LKBB di MAN 4 Ciamis, Paskibra Sarakti SMPN 2 Pamarican mendapatkan Juara 2 utama, Juara 1 Variasi Formasi, Juara 2 PBB Murni, Juara 2 Danton dan perdana memakai kostum ciri khas Paskibra Sarakti SMPN 2 Pamarican.</p>\r\n', '3.png', '2020-09-15', 1),
(21, 'SMPN 2 PAMARICAN SARAT DENGAN BERBAGAI PRESTASI', 'smpn-2-pamarican-sarat-dengan-berbagai-prestasi', '<p>Berbagai kendala di dunia pendidikan tentunya pastiDadang tapi bagaimana pula seorang pimpinan/Kepala suatu Instansi dapat menyikapinya dengan baik dan bijak.</p>\r\n\r\n<p>Lain halnya di SMPN 2 Pamarican yang di Kepalai oleh Drs Dadang Supriatna MPd bahwasannya kendala itu tak jadi halangan untuk terus menciptakan Kegiatan Belajar Mengajar (KBM) yang berkualitas serta soliditas antar sesama pengajar dan staf perlu tetap di jaga.</p>\r\n\r\n<p>Berikut pernyataan Kepsek Dadang &ldquo;dari hasil Kerja keras semua pihak tersebut, SMPN 2 Pamarican ini yang jumlah siswanya 507 orang telah menorehkan hasil yang positif dan berbagai perlombaan pun terus di ikutinya, alhasil berbagai prestasi telah di raih oleh para siswanya&rdquo;.</p>\r\n\r\n<p>Seperti berbagai prestasi yang baru baru ini di ikuti para siswanya di Tingkat Kabupaten Ciamis, dapat menyabet Juara 1 OSN Matematika oleh Billy Dwi Artazyba, Juara 1 Dongeng oleh Permadi Gunawan, Juara 2 Biantara oleh Aditia Nurohman, Juara 2 Lompat Jauh oleh Wulan Pasha, dan Juara 2 pula LCC oleh Aditia Nurohman, Rifki P, Maya Nuraisah. Dan masih banyak prestasi lainnya.</p>\r\n\r\n<p>Selain itu untuk lebih meningkatkan pembinaan karakter siswa terutama dalam ilmu ke Agamaan, SMPN 2 Pamarican ini sedang membangun Mesjid Sekolah yang dananya bersumber dari para donatur dan infak para siswanya itu sendiri.</p>\r\n\r\n<p>Dan pungkas Kepsek Dadang S, intinya segala sesuatu harus dengan niat, tekad, serta kemauan yang kuat dibarengi pula oleh ber Do&rsquo;a serta perencanaan yang matang pula, supaya hasilnya dapat memuaskan.</p>\r\n', 'penghargaan.png', '2020-09-15', 1),
(23, 'Juara 2 Utama Paskibra Sarakti SMPN 2 Pamarican di LKBB SMKN 1 BANJAR.', 'juara-2-utama-paskibra-sarakti-smpn-2-pamarican-di-lkbb-smkn-1-banjar', '<p>Kegiatan LKBB di SMKN 1 BANJAR, Paskibra Sarakti SMPN 2 Pamarican mendapatkan Juara 2 utama, Juara 1 Variasi Formasi, Juara 2 PBB Murni, Juara 2 Danton dan perdana memakai kostum ciri khas Paskibra Sarakti SMPN 2 Pamarican</p>\r\n', 'penghargaan21.png', '2020-09-15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_file`
--

CREATE TABLE `tbl_file` (
  `id_file` int(11) NOT NULL,
  `ket_file` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_file`
--

INSERT INTO `tbl_file` (`id_file`, `ket_file`, `file`) VALUES
(13, 'Materi PAI', 'PAI.rar'),
(14, 'Materi B.Indonesia', 'B__INDONESIA.rar'),
(15, 'Materi PKN', 'PKN.rar'),
(16, 'Materi IPS', 'IPS.rar'),
(17, 'Materi IPA', 'IPA.rar'),
(18, 'Materi B.Inggris', 'B_INGGRIS_(1).rar'),
(20, 'Absen Siswa 2021-2021', 'ABSEN_2020-2021.xlsx');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_foto`
--

CREATE TABLE `tbl_foto` (
  `id_foto` int(11) NOT NULL,
  `id_gallery` int(11) NOT NULL,
  `ket_foto` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_foto`
--

INSERT INTO `tbl_foto` (`id_foto`, `id_gallery`, `ket_foto`, `foto`) VALUES
(3, 1, 'a', ''),
(4, 2, 'b', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id_gallery` int(11) NOT NULL,
  `nama_gallery` text NOT NULL,
  `sampul` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id_gallery`, `nama_gallery`, `sampul`) VALUES
(8, 'Kegiatan Paskibra', 'paskibra.jpg'),
(9, 'Latihan Kesenian', 'kesenian.jpg'),
(10, 'Kegiatan Jalan Santai', 'jalan_santai.jpg'),
(11, 'Pelantikan Penggalang', 'pramuka.jpg'),
(12, 'Kegiatan Upacara Bendera', 'upacara.jpg'),
(13, 'Drum Band', 'drum_band.jpg'),
(14, 'Perlombaan Bola Voly', 'bola_voly.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id_guru` int(11) NOT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `nama_guru` varchar(25) DEFAULT NULL,
  `tempat_lahir` varchar(15) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `id_mapel` int(2) DEFAULT NULL,
  `pendidikan` varchar(5) DEFAULT NULL,
  `foto_guru` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`id_guru`, `nip`, `nama_guru`, `tempat_lahir`, `tgl_lahir`, `id_mapel`, `pendidikan`, `foto_guru`) VALUES
(8, '19620812 199202 1 001', 'AIP, S.Ag', 'Tasikmalaya', '1962-08-12', 15, 'S1', 'AIP2_S_Ag1.png'),
(10, '19630303 199412 1 002', 'AMA SETIANA, S.Pd', 'Ciamis', '1963-03-23', 2, 'S1', 'AMA_SETIANA,_S_Pd.png'),
(11, '19721212 201408 2 001', 'CHODIATI, S.Pd', 'Cilacap', '1972-12-12', 4, 'S1', 'CHODIATI,_S_Pd1.png'),
(12, '19720726 200701 2 006', 'CUCU NURAENI, S.Pd', 'Ciamis', '1972-07-26', 13, 'S1', 'CUCU_NURAENI,_S_Pd1.png'),
(13, '19650919 198703 1 006', 'DADI RUSNADI, S.Pd', 'Ciamis', '1965-09-19', 4, 'S1', 'DADI_RUSNADI,_S_Pd1.png'),
(14, '19690825 199802 2 003', 'Dra. IIN HERLINA', 'Kawali', '1969-08-25', 9, 'S1', 'Dra__IIN_HERLINA1.png'),
(15, '19640717 199802 2 001', 'Dra. ENTIN FATIMAH', 'Tasikmalaya', '1964-07-17', 1, 'S1', 'Dra__ENTIN_FATIMAH1.png'),
(16, '19640729 199111 1 001', 'Drs. SUPANDI', 'Ciamis', '1964-07-29', 13, 'S1', 'Drs__SUPANDI1.png'),
(17, '19640116 201409 1 001', 'HAEDIN, S.Pd.I', 'Ciamis', '1964-01-16', 11, 'S1', 'HAEDIN,_S_Pd1.png'),
(20, '19651009 198703 2 007', 'HENI SURYANI, S.Pd', 'Ciamis', '1965-10-09', 8, 'S1', 'HENI_SURYANI,_S_Pd.png'),
(21, '19670410 199412 1 005', 'IMAN SULAEMAN, M.Pd', 'Ciamis', '1967-04-10', 8, 'S2', 'IMAN_SULAEMAN,_M_Pd.png'),
(22, '19690209 199702 2 003', 'TITI SANTIANA, S.Pd', 'Cirebon', '1969-02-09', 9, 'S1', 'Hj__TITI_SANTIANA,_S_Pd.png'),
(23, '19690711 199412 2 004', 'LILIS HERLIANI, S.Pd', 'Ciamis', '1969-07-11', 10, 'S1', 'LILIS_HERLIANI,_S_Pd.png'),
(24, '19690110 199412 2 004', 'SUNARTI, S.Pd.Mat', 'Kediri', '1969-01-10', 1, 'S1', 'SUNARTI,_S_Pd.png'),
(25, '19660417 199903 2 001', 'SUTARMI TUNING C, S.Pd', 'Ngawi', '1966-04-17', 2, 'S1', 'SUTARMI_TUNING,_C_S_Pd.png'),
(26, '19601112 198112 2 001', 'SUMARYATI SAF\'AN, S.Pd', 'Tasikmalaya', '1960-11-12', 10, 'S1', 'SUMARYATI_SAFAN,_S_Pd.png'),
(27, '19711125 199412 2 001', 'IKA KARTIKA', 'Ciamis', '1971-11-25', 11, 'D3', 'IKA_KARTIKA.png'),
(28, '19710502 199903 2 005', 'WINWIN NURWIANI, S.Pd', 'Ciamis', '1971-05-02', 12, 'S1', 'Hj__WINWIN_NURWIANTI,_S_Pd.png'),
(29, '19770924 200312 2 004', 'Hj. IIS SUMIATI, S.Pd', 'Tasikmalaya', '1977-09-24', 2, 'S1', 'Hj__IIS_SUMIATI,_S_Pd.png'),
(30, '19701012 200212 2 001', 'SRI YUDHA YANTI, S.Pd', 'Ciamis', '1970-10-12', 4, 'S1', 'SRI_YUDHA_YANTI,_S_Pd.png'),
(31, '19661107 200701 1 007', 'SUNIA, S.Pd', 'Ciamis', '1966-11-07', 13, 'S1', 'SUNIA,_S_Pd.png'),
(32, '19810909 201101 2 001', 'TITA KURNIASARI, ST', 'Ciamis', '1981-09-09', 13, 'S1', 'TITA_KURNIASARI,_ST.png'),
(33, '-', 'SYARIFAH SOPYANI, S.Pd', 'Ciamis', '0000-00-00', 9, 'S1', 'SYARIFAH_SOPYANI,_S_Pd1.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mapel`
--

CREATE TABLE `tbl_mapel` (
  `id_mapel` int(2) NOT NULL,
  `nama_mapel` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_mapel`
--

INSERT INTO `tbl_mapel` (`id_mapel`, `nama_mapel`) VALUES
(1, 'MATEMATIKA'),
(2, 'BAHASA INDONESIA'),
(4, 'BAHASA INGGRIS'),
(7, 'TIK'),
(8, 'PJOK'),
(9, 'IPS'),
(10, 'SENI BUDAYA'),
(11, 'BAHASA SUNDA'),
(12, 'PKN'),
(13, 'IPA'),
(14, 'PRAKARYA'),
(15, 'PAI');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `judul_pengumuman` varchar(255) DEFAULT NULL,
  `isi_pengumuman` text DEFAULT NULL,
  `tgl` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`id_pengumuman`, `judul_pengumuman`, `isi_pengumuman`, `tgl`) VALUES
(1, 'UTS', 'Diberitahukan kepada seluruh siswa dan siswi SMKN 1 PADAHERANG bahwa ujian dimulai pada tanggal 1 januari 2020.', '2020-09-01'),
(3, 'Libur Semester', 'Libur Semester dari tanggal sekian dan terima kasih', '2020-09-02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(1) NOT NULL,
  `nama_sekolah` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `kepala_sekolah` varchar(25) DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `foto_kepsek` varchar(255) DEFAULT NULL,
  `visi` text DEFAULT NULL,
  `misi` text DEFAULT NULL,
  `sejarah` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `nama_sekolah`, `alamat`, `no_telp`, `kepala_sekolah`, `nip`, `foto_kepsek`, `visi`, `misi`, `sejarah`) VALUES
(1, 'SMP NEGERI 2 PAMARICAN', 'Jln. Raya Kertahayu No. 247', '0265650406', 'DEDI SUHYADI, S.Pd., M.Pd', '19620707 198902 1 00', 'dedi.png', 'Berkualitas dalam pelayanan, tanggap terhadap pembaharuan, damai dalam kebersamaan dan sukses penyelenggaraan pendidikan.', 'Mewujudkan pelayanan pendidikan yang berkualitas dan profesional.\r\nMengembangkan dan mensosialisasikan setiap pembaharuan pendikan.\r\nMenciptakan lingkungan kerja yang demokratis, kreatif, dispilin, tertib, bersih, berwibawa dan damai.\r\nMengingkatkan dan mengembangkan profesionalisme personal guna menghasilkan sumber daya manusia yang berkualitas.', 'Alasan didirikannya SMPN 2 Pamarican karena pada saat itu di daerah Desa Kertahayu belum adanya sekolah menengah, jika masyarakat harus bersekolah ke pamarican atau banjar tentunya jaraknya sangat jauh. \r\n\r\nSMPN 2 Pamarican mulai beroperasi pada sekitar tahun 1992, dan baru diresmikan kenegriannya pada tahun 1994.Pada saat itu siswa yang bersekolah di SMPN 2 Pamarican belum begitu banyak. Baru hanya sekitar 3 Rombel.dan makin lama makin banyak siswa yang masuk ke SMPN 2 Pamarican, sampai sekarang sudah ada sekitar 23  Rombel yang terdiri dari 32 peserta didik di setiap kelasnya.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(15) DEFAULT NULL,
  `nisn` varchar(15) DEFAULT NULL,
  `nama_siswa` varchar(25) DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id_siswa`, `nis`, `nisn`, `nama_siswa`, `jenis_kelamin`, `kelas`) VALUES
(41, '18197131', '0063883131', 'Yusuf Arifin', 'L', 'IX E'),
(42, '18197123', '0053497093', 'Tedi Saprudin', 'L', 'IX E'),
(43, '18197122', '0053422234', 'Taupik Nur Hikmat', 'L', 'IX E'),
(44, '19208184', '0', 'Silvia Ramayanti', 'L', 'IX E'),
(45, '18197116', '0059235928', 'Shella Gustiyani', 'P', 'IX E'),
(46, '18197110', '0053773078', 'Salsabila', 'P', 'IX E'),
(47, '18197107', '0061755881', 'Rizki Maulana', 'L', 'IX E'),
(48, '18197102', '0053807558', 'Rifa Abdul Falah', 'P', 'IX E'),
(49, '18197099', '0066470661', 'Reni Haryani', 'P', 'IX E'),
(50, '18197092', '0069469483', 'Puput Karmelita', 'P', 'IX E'),
(51, '18197085', '0059642221', 'Muhammad Agil Agus Salim', 'L', 'IX E'),
(52, '19208186', '0', 'Ibnu Khaidir', 'L', 'IX E'),
(53, '18197066', '0068612338', 'Heri Sidik Febrian', 'L', 'IX E'),
(54, '18197063', '0051288522', 'Hendra Mardiana', 'L', 'IX E'),
(55, '18197056', '0061084000', 'Fiqkri Mohamad Noor', 'L', 'IX E'),
(56, '18197054', '0034322228', 'Farhan Frediyana', 'L', 'IX E'),
(57, '18197043', '0054667799', 'Desi Nur Hanipah', 'P', 'IX E'),
(58, '18197035', '0057876468', 'Cindi Apriliani', 'P', 'IX E'),
(59, '18197028', '0047247010', 'Asep Hidayat', 'L', 'IX E'),
(60, '18197027', '0064146692', 'Arsila Naila Husna', 'P', 'IX E'),
(61, '18197025', '0059552069', 'Ari Mulyana', 'L', 'IX E'),
(63, '18197020', '0053155285', 'Andhika Pratama', 'L', 'IX E'),
(64, '18197138', '0029253414', 'Aji Setiaji', 'L', 'IX E'),
(65, '18197006', '0057007681', 'Adi Ruhiat', 'L', 'IX E'),
(66, '18198146', '0063734762', 'Ade Kurniawan', 'L', 'IX E'),
(67, '18197128', '0056460531', 'Wahyu Lesmana', 'L', 'IX D'),
(68, '18197120', '0062380338', 'Suci Rahmawati', 'P', 'IX D'),
(69, '18197119', '0054494159', 'Siti Nuraisah', 'P', 'IX D'),
(70, '18197113', '0067458300', 'Satya Permana', 'L', 'IX D'),
(71, '18197112', '0059751585', 'Sarah Amelia', 'P', 'IX D'),
(72, '18197140', '0052486296', 'Rizki Nova Fajari', 'L', 'IX D'),
(73, '18197106', '0059534267', 'Rizki Aditia Kurniawan', 'L', 'IX D'),
(74, '18197105', '0061926513', 'Rio Paiz Pauzan', 'L', 'IX D'),
(75, '18197139', '0068326428', 'Resta Marlina', 'P', 'IX D'),
(76, '18197098', '0069635710', 'Rayani Agustin', 'P', 'IX D'),
(77, '18197095', '0057074462', 'Putry Marhamah Suryaman', 'P', 'IX D'),
(78, '18197088', '0055222710', 'Nurlia Ramdani', 'P', 'IX D'),
(79, '18197081', '0067257750', 'Maulana Rizki', 'L', 'IX D'),
(80, '18197070', '0053930514', 'Imron Maulana', 'L', 'IX D'),
(81, '18197064', '0054753423', 'Hendri Firmansyah', 'L', 'IX D'),
(82, '18197060', '0073890782', 'Gungun Gunawan', 'L', 'IX D'),
(83, '18197142', '0057024661', 'Fiona Nurahmawati', 'P', 'IX D'),
(84, '18197053', '0056891631', 'Fajar Ismail Azhari', 'L', 'IX D'),
(85, '18197052', '0061491839', 'Endang Allifa Aulya', 'P', 'IX D'),
(86, '18197042', '0059499873', 'Desi Anjela', 'P', 'IX D'),
(87, '18197148', '0068797045', 'Candra Hasan Bastian', 'L', 'IX D'),
(88, '18197033', '0069078475', 'Bunga Shovi Navita', 'P', 'IX D'),
(89, '18197026', '0052446803', 'Arif Rosdiana', 'L', 'IX D'),
(90, '18197022', '0052340264', 'Ani Nuraeni', 'P', 'IX D'),
(91, '18197143', '0059411999', 'Angga Permana', 'L', 'IX D'),
(92, '18197015', '0053144443', 'Agus Taryana', 'L', 'IX D'),
(93, '18197004', '0057676464', 'Adi Hilmansyah', 'L', 'IX D'),
(94, '18197002', '0059500779', 'Abdul Holik', 'L', 'IX D'),
(95, '18197132', '0059212325', 'Yusuf Cahya Gumilar', 'L', 'IX C'),
(96, '18197127', '0069248950', 'Wahyu Cahyaningsih', 'L', 'IX C'),
(97, '18197125', '0065853316', 'Vanny Yulianita Effendi', 'P', 'IX C'),
(98, '18197117', '0066050432', 'Siti Agustin', 'P', 'IX C'),
(99, '18197111', '0077241812', 'Sania Naysheila', 'P', 'IX C'),
(100, '18197108', '0063643735', 'Rizky Januar', 'L', 'IX C'),
(101, '18197101', '0043080352', 'Rian Aria Anggara', 'L', 'IX C'),
(102, '18197097', '0057270611', 'Raya Irhan Luzy', 'L', 'IX C'),
(103, '18197093', '0056161333', 'Putri Dea Arum Novianti', 'P', 'IX C'),
(104, '18197091', '0051082371', 'Pujianti Zahwa', 'P', 'IX C'),
(105, '18197083', '0063534145', 'Muhamad Agustiar', 'L', 'IX C'),
(106, '18197082', '0062138607', 'Melsi Lintang Restiani', 'P', 'IX C'),
(107, '18197080', '0061331486', 'Marvelinshema.D.P', 'P', 'IX C'),
(108, '18197078', '0058880591', 'Lia Aulia', 'P', 'IX C'),
(109, '18197077', '0067049711', 'Leo Nendra Ramadani', 'L', 'IX C'),
(110, '18197058', '0057635458', 'Fuad Abd Rozak', 'L', 'IX C'),
(111, '18197050', '0064949984', 'Elin Lisnawati', 'P', 'IX C'),
(112, '18197046', '0054487290', 'Dimas Yusuf Rhamadany', 'L', 'IX C'),
(113, '18197031', '0051767403', 'Ayu Widianingsih', 'P', 'IX C'),
(114, '18197029', '0069723741', 'Asep Pratama', 'L', 'IX C'),
(115, '18197024', '0068570741', 'Ardiansyah', 'L', 'IX C'),
(116, '18197019', '0068193195', 'Amanda Apriliani', 'P', 'IX C'),
(117, '18197016', '0046825985', 'Aldi Diana', 'L', 'IX C'),
(118, '18197011', '0062750305', 'Agil Anggara', 'P', 'IX C'),
(119, '18197010', '0063328482', 'Afrizal Putra Pratama', 'L', 'IX C'),
(120, '18197003', '0061125898', 'Ade Latip', 'L', 'IX C'),
(121, '18197129', '0078315998', 'Yudi Nugraha', 'L', 'IX B'),
(122, '18197121', '0003254047', 'Sutiawan', 'L', 'IX B'),
(123, '18197114', '0062728517', 'Selpi Nuraeni', 'P', 'IX B'),
(124, '18197109', '0054318497', 'Safitri', 'P', 'IX B'),
(125, '18197103', '0054040891', 'Rifqi Anwar Faizin', 'L', 'IX C'),
(126, '18197087', '0055751309', 'Niar Ratnasari', 'P', 'IX B'),
(127, '18197086', '0062591335', 'Muhammad Fiqri Febrian', 'L', 'IX B'),
(128, '18197074', '0065901287', 'Jihan Selpia Lestari', 'P', 'IX B'),
(129, '18197072', '0056323891', 'Irja Abdussalam', 'L', 'IX B'),
(130, '18197069', '0065139652', 'Imas Masitoh', 'P', 'IX B'),
(131, '18197068', '0048776675', 'Iman Badruzzaman', 'L', 'IX B'),
(132, '18197067', '0057621096', 'Ilham Saputra', 'L', 'IX B'),
(133, '18197059', '0065470323', 'Gita Maesari', 'P', 'IX B'),
(134, '18197057', '0065513230', 'Firda Pradita Rahma', 'P', 'IX B'),
(135, '18197051', '0057723743', 'Eliza Nurpatonah', 'P', 'IX B'),
(136, '18197048', '0059560053', 'Dira Fazira', 'P', 'IX B'),
(137, '18197047', '0059534703', 'Dini Walidaeni', 'P', 'IX B'),
(138, '18197044', '0061851291', 'Devia Sandy Aulia', 'P', 'IX B'),
(139, '18197041', '0057711436', 'Derli Adrianto', 'L', 'IX B'),
(140, '20217148', '0044767021', 'Deni', 'L', 'IX B'),
(141, '18197037', '0068233892', 'Dani Darmawan', 'L', 'IX B'),
(142, '18197030', '0054398661', 'Ayu Sucita', 'P', 'IX B'),
(143, '18197021', '0057496241', 'Andi Maulana', 'L', 'IX B'),
(144, '18197017', '0065988721', 'Alfi Rifaldi', 'L', 'IX B'),
(145, '18197013', '0062796533', 'Agus Sakib Rahmadani', 'L', 'IX B'),
(146, '18197005', '0046452785', 'Adi Jayanto', 'L', 'IX B'),
(147, '18197130', '0058569050', 'Yunan Iswandi', 'L', 'IX A'),
(148, '18197126', '0066188872', 'Vina Anjarsari', 'P', 'IX A'),
(149, '18197124', '0055298945', 'Tia Rahmadani', 'P', 'IX A'),
(150, '18197118', '0054763224', 'Siti Marwah', 'P', 'IX A'),
(151, '18197115', '0061830172', 'Septiyana Mulyawati', 'P', 'IX A'),
(152, '18197104', '0053739709', 'Riki Samsul', 'L', 'IX A'),
(153, '18197100', '0054884321', 'Reza Pramesthia Putri Ari', 'L', 'IX A'),
(154, '18197094', '0061596132', 'Putri Sri Wahyuni', 'P', 'IX A'),
(155, '18197090', '0052159598', 'Pipit Widyawati', 'P', 'IX A'),
(156, '18197089', '0051654067', 'Pajar Mubarok', 'L', 'IX A'),
(157, '18197079', '0066424192', 'Listiyani', 'P', 'IX A'),
(158, '18197076', '0052278023', 'Kholiq Nasruloh', 'L', 'IX A'),
(159, '18197075', '0069873332', 'Julianto', 'L', 'IX A'),
(160, '18197073', '0056664594', 'Jevri Rahman', 'L', 'IX A'),
(161, '18197071', '0064094938', 'Irfan Nuralamsyah', 'L', 'IX A'),
(162, '18197065', '0065050270', 'Hendrik', 'L', 'IX A'),
(163, '18197061', '0057328896', 'Hani Handayani', 'P', 'IX A'),
(164, '18197049', '0055193128', 'Ega Zuanda', 'L', 'IX A'),
(165, '18197045', '0058590247', 'Dhania Amanda', 'P', 'IX A'),
(166, '18197040', '0058159928', 'Deri Maolana', 'L', 'IX A'),
(167, '18197039', '0061239695', 'Demi', 'L', 'IX A'),
(168, '18197038', '0062969272', 'Dede Trisno', 'L', 'IX A'),
(169, '18197036', '0054407993', 'Dadan Ramdani', 'L', 'IX A'),
(170, '18197032', '0056493732', 'Bayu Wibowo', 'L', 'IX A'),
(171, '18197018', '0069793790', 'Alyssa Vega Anatasya', 'L', 'IX A'),
(172, '18197014', '0066543539', 'Agus Salman Firdaus', 'L', 'IX A'),
(173, '18197012', '0054110726', 'Agus Mulyana', 'L', 'IX A'),
(174, '18197009', '0046876239', 'Adli Putra Nurbani', 'L', 'IX A'),
(175, '18197008', '0054002897', 'Adit Nugraha', 'L', 'IX A'),
(176, '18197007', '0064671381', 'Adinda Tri Kartika', 'P', 'IX A'),
(177, '18197001', '0052609533', 'Aan Anita', 'P', 'IX A');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(2) NOT NULL,
  `nama_user` varchar(25) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `level` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `username`, `password`, `level`) VALUES
(1, 'indri', 'admin', 'admin', 1),
(2, 'fitriani', 'user', 'user', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_berita`
--
ALTER TABLE `tbl_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `tbl_file`
--
ALTER TABLE `tbl_file`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `tbl_foto`
--
ALTER TABLE `tbl_foto`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_berita`
--
ALTER TABLE `tbl_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_file`
--
ALTER TABLE `tbl_file`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_foto`
--
ALTER TABLE `tbl_foto`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  MODIFY `id_mapel` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
