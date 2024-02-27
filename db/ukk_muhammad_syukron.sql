-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2024 at 03:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk_muhammad.syukron`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `albumid` int(11) NOT NULL,
  `namaalbum` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggaldibuat` date NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`albumid`, `namaalbum`, `deskripsi`, `tanggaldibuat`, `userid`) VALUES
(49, 'Anggota Kru Topi Jerami One Piece', 'Foro Seputar Anggota Kru Topi Jerami', '2024-02-27', 10);

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `fotoid` int(11) NOT NULL,
  `judulfoto` varchar(255) NOT NULL,
  `deskripsifoto` text NOT NULL,
  `tanggalunggah` date NOT NULL,
  `lokasifile` varchar(255) NOT NULL,
  `albumid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `jumlahlike` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`fotoid`, `judulfoto`, `deskripsifoto`, `tanggalunggah`, `lokasifile`, `albumid`, `userid`, `jumlahlike`) VALUES
(32, 'Monkey D. Luffy', 'Bounty: 1.500.000.000  Monkey D. Luffy adalah kapten dari kelompok Topi Jerami.  Dia adalah pemakan Buah Iblis Gomu Gomu yang membuat tubuhnya lentur seperti karet. Dia dapat memanipulasi berbagai bagian tubuhnya untuk meluncurkan serangan ke musuh.  Dia juga dapat memanfaatkan sifat karet tubuhnya ini untuk menggunakan wujud unik Gear 2, Gear 3, dan Gear 4, yang membantu Luffy menghadapi musuh yang lebih kuat.  Luffy juga adalah salah satu dari sedikit orang yang bisa menggunakan tiga jenis Haki, yaitu Haoshoku, Kenbunshoku, dan Busoshoku.  Luffy bahkan bisa mengalirkan Haoshoku Haki ke serangan mulai dari alur Onigashima. ', '2024-02-27', '250248857_monkey-d-luffy.jpg', 49, 10, 1),
(33, 'Roronoa Zoro', 'Bounty: 320.000.000  Roronoa Zoro adalah kru Topi Jerami yang paling pertama ikut Luffy.  Dia tidak makan Buah Iblis, tapi kemampuan berpedangnya serta ketangguhan dan kekuatan fisiknya sangat luar biasa.  Fungsi utama Zoro dalam kru adalah saat bertarung, karena dia biasanya dapat jatah melawan orang terkuat kedua di kelompok musuh. Ada juga pihak-pihak yang menganggap Zoro adalah orang nomor dua di kelompok Topi Jerami.  Zoro awalnya dikonfirmasi punya Busoshoku dan Kenbunshoku Haki. Alur Onigashima lalu memberi petunjuk kalau Zoro juga tanpa sadar punya Haoshoku Haki. ', '2024-02-27', '1802452070_roronoa-zoro.jpg', 49, 10, 1),
(34, 'Nami', 'ounty: 66.000.000  Nami adalah navigator Topi Jerami.  Dari segi kekuatan fisik, Nami mungkin termasuk yang paling lemah di kelompok. Tapi dia adalah anggota yang sangat penting. Tanpa skill navigasi Nami, bisa jadi Topi Jerami gak akan bisa sampai sejauh ini. Terutama di perairan Grand Line yang kondisinya fantastis.  Nami biasanya bertarung dengan Clima-Tact, yang sudah beberapa kali di-upgrade. Kemampuan senjata unik ini, dipadukan dengan kecerdikan Nami dan pengetahuannya soal cuaca, bisa membantu Nami mengatasi musuh.  Setelah Zeus menyatu dengan Clima-Tact, senjata ini jadi makin ngeri. Senjata Nami itu kini dapat berubah wujud, dan petir yang Nami luncurkan jadi bisa memburu musuh karena Zeus membantunya. ', '2024-02-27', '121297370_nami.jpg', 49, 10, 1),
(35, 'Usopp', 'Bounty: 200.000.000  Usopp adalah sniper Topi Jerami yang bisa diandalkan. Dia dapat meluncurkan tembakan yang mustahil dilakukan orang biasa dengan sangat akurat.  Dia juga memiliki berbagai persenjataan menarik seperti Pop Green dan Kabuto. Bahkan dia yang pertama menciptakan Clima-Tact untuk digunakan Nami.  Haki Usopp yang mulai berkembang adalah Kenbunshoku Haki. Dengan Kenbunshoku Haki ini Usopp dapat merasakan aura dari target, yang membuat ia bisa meluncurkan tembakan dengan akurat meski ia tidak bisa melihat sasaran.  Ini sangat berguna saat dia menolong Luffy dan Law dari Sugar di Dressrosa. ', '2024-02-27', '229216226_usopp.jpg', 49, 10, 1),
(36, 'Sanji', 'Bounty: 330.000.000  Sanji adalah koki handal di Topi Jerami. Kalau soal kemampuan memasak, dia terasa sebagai salah satu koki terhebat yang pernah diperlihatkan di One Piece.   Sanji juga adalah salah satu petarung terkuat Topi Jerami. Dia memiliki berbagai jurus tendangan yang dahsyat. Ia juga memiliki kecepatan tinggi dan bisa bermanuver di udara.  Sudah dikonfirmasi juga kalau Sanji memiliki Kenbunshoku dan Busoshoku Haki.  Kekuatan Sanji terasa semakin berkembang di alur Wano. Awalnya dia menggunakan Raid Suit yang bisa membuat dia menghilang, dan meningkatkan ketangguhannya serta kekuatan fisiknya jika ia memakainya.  Lalu tubuh Sanji pun mulai berkembang menjadi seperti saudara-saudaranya, hingga ia memiliki kulit keras yang bisa menghancurkan pedang, dan tubuh yang bisa sembuh sendiri dari masalah seperti patah tulang. ', '2024-02-27', '200377577_sanji.jpg', 49, 10, 1),
(37, 'Tony Tony Chopper', 'Bounty: 100  Tony Tony Chopper adalah rusa yang memakan Hito Hito no Mi sehingga ia memperoleh akal manusia.  Dia sekarang jadi dokter cerdas yang sangat bisa diandalkan untuk Topi Jerami.   Chopper juga bisa bertransformasi. Dia memiliki tiga wujud standar, yang pertama Brain Point, wujud kecil Chopper yang biasa ia gunakan sehari-hari, dimana dia bisa lebih efektif menggunakan otaknya.  Lalu Walk Point yang membuat Chopper terlihat lebih mirip rusa, karena di wujud ini Chopper bergerak dengan empat kaki.  Lalu Heavy Point, wujud \"manusia\" Chopper dimana dia terlihat seperti manusia kekar.  Chopper memperoleh wujud ekstra dengan memanfaatkan Rumble Ball, dimana dia bisa menggunakan Guard Point, Horn Point, Jumping Point, Arm Point, dan setelah time skip, ada pula Kung Fu Point.  Chopper juga bisa menjadi monster besar dengan wujud Monster Point. Awalnya Chopper jadi monster tak terkendali dengan Monster Point, tapi setelah time skip ia bisa mengendalikannya. ', '2024-02-27', '761005881_tony-tony-chopper.jpg', 49, 10, 1),
(38, 'Nico Robin', 'Bounty: 130.000.000  Nico Robin memiliki skill yang sangat berguna untuk menemukan One Piece. Dia itu salah satu orang tersisa yang bisa membaca Poneglyph. Saat ini, harapan terbesar untuk menerjemahkan petunjuk arah dari empat Road Poneglyph ya dia.   CP0 pun sekarang sampai mengincar Nico Robin.   Robin juga adalah pemakan Hana Hana no Mi yang bisa dia gunakan dengan efektif. Tangan yang ia munculkan bisa dalam sekejap menghabisi banyak musuh.   Robin juga uniknya memiliki wujud Demonio Fleur yang membuat dia terlihat seperti iblis, dengan sayap, tanduk, dan taring. Wujud ini cukup kuat untuk mengalahkan Black Maria, seorang Tobi Roppo.  Uniknya, Robin terungkap juga mempelajari Fishman Karate. Teknik Fishman Karate yang sudah Robin kuasai adalah serangan telapak tangan. ', '2024-02-27', '500418300_nico-robin.jpg', 49, 10, 1),
(39, 'Franky', 'Bounty: 94.000.000  Franky adalah pembuat kapal yang sangat jago. Kalau soal membuat dan memperbaiki kapal, dia sangat bisa diandalkan.   Dia juga jago membuat benda seperti jembatan. Dia bahkan bisa menciptakan jembatan yang sudah dikasih hiasan dalam waktu sekejap saja.  Tubuh cyborg Franky juga memiliki berbagai fungsi dan persenjataan yang membuat dia sulit ditaklukkan.  Salah satu bukti kekuatan Franky adalah pertarungannya melawan Sasaki dari Tobi Roppo.  Seorang pemakan Ancient Zoan biasanya sulit ditaklukkan tanpa Haki. Namun Franky bisa mengalahkan Sasaki dengan persenjataan-persenjataan canggihnya.   Kemenangan Franky dari musuh seperti Sasaki dan Senor Pink, yang biasanya terjadi dalam situasi duel satu lawan satu pula, seperti menunjukkan kalau meski level kekuatannya tidak setingkat Trio Monster, ia masih bisa diandalkan untuk menghadapi musuh tangguh. ', '2024-02-27', '645019114_franky.jpg', 49, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `komentarid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `isikomentar` text NOT NULL,
  `tanggalkomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komentarfoto`
--

INSERT INTO `komentarfoto` (`komentarid`, `fotoid`, `userid`, `isikomentar`, `tanggalkomentar`) VALUES
(41, 32, 9, 'keren', '2024-02-27');

-- --------------------------------------------------------

--
-- Table structure for table `likefoto`
--

CREATE TABLE `likefoto` (
  `likeid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tanggallike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likefoto`
--

INSERT INTO `likefoto` (`likeid`, `fotoid`, `userid`, `tanggallike`) VALUES
(160, 32, 10, '2024-02-27');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `email`, `namalengkap`, `alamat`, `role`) VALUES
(9, 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 'user1@gmail.com', 'user1', 'user1', 'user'),
(10, 'syukron', '827ccb0eea8a706c4c34a16891f84e7b', 'muhammadsyukron@gmail.com', 'muhammad syukron', 'desang ngeru', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`fotoid`),
  ADD KEY `albumid` (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`komentarid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`likeid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `albumid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `fotoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `komentarid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `likeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`albumid`) REFERENCES `album` (`albumid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foto_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD CONSTRAINT `komentarfoto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komentarfoto_ibfk_2` FOREIGN KEY (`fotoid`) REFERENCES `foto` (`fotoid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `likefoto`
--
ALTER TABLE `likefoto`
  ADD CONSTRAINT `likefoto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likefoto_ibfk_2` FOREIGN KEY (`fotoid`) REFERENCES `foto` (`fotoid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
