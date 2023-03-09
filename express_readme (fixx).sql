-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 09, 2023 at 01:14 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `express_readme`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(100) DEFAULT NULL,
  `penulis` varchar(100) DEFAULT NULL,
  `tahun_buku` varchar(5) DEFAULT NULL,
  `kategori_buku` varchar(255) DEFAULT NULL,
  `sinopsis_buku` varchar(500) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `liked_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `penulis`, `tahun_buku`, `kategori_buku`, `sinopsis_buku`, `gambar`, `liked_by`) VALUES
(1, 'Angkasa dan 56 Hari Vol.1', 'Deshtasya WDP', '2020', 'Buku terbaru', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ab, error quod quis sed illum, in quaerat sequi inventore veritatis doloribus expedita sapiente maiores at atque modi deserunt! Aut odit saepe repudiandae laboriosam blanditiis quidem maxime exercitationem reprehenderit dolorum.', 'http://localhost:4000/assets/book3.png', '1'),
(2, 'Cerita Rakyat Nusantara', 'Tim EFK', '2020', 'Buku cerita', 'Buku seri Cerita Rakyat Nusantara mengajakmu menemukan pesan-pesan moral pada cerita-cerita rakyat. Ikutlah bertualang ke seluruh wilayah nusantara melalui cerita-cerita menarik dalam buku ini', 'http://localhost:4000/assets/book1.png', '1'),
(3, 'Menelusuri Jejak Islam Nusantara', 'Dr.KH. Ahmad Mukri Aji, M.A. Dr. Syarifah Gustiawati Mukri, M.E.I. Zahrotunni’mah, S.Ag., M.S.I.', '2020', 'Buku sejarah', 'Islam Nusantara merupakan isu nasional yang telah menimbulkan perdebatan antarkalangan umat Islam. Perdebatan tersebut harus disikapi dengan baik dan dimaknai dengan penuh kebijaksanaan sehingga tidak terjadi konflik yang berkepanjangan.', 'http://localhost:4000/assets/book5.jpeg', '1'),
(4, 'Angkasa dan 56 Hari', 'Destashya Wdp', '2020', 'Buku Novel', 'Sebuah takdir mempertemukan Nadine Jedvanna dengan cinta pertamanya. Sebuah kata sapa sederhana, “Hai”, mengawali kisah cinta Nadine dan seorang pria bernama Angkasa Dirgantara, yang juga merupakan sahabat masa kecilnya.', 'http://localhost:4000/assets/book3.png', '1'),
(5, 'Cerita Rakyat Nusantara Vol.1', 'Tim EFK', '2020', 'Buku yang sering dibaca', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ab, error quod quis sed illum, in quaerat sequi inventore veritatis doloribus expedita sapiente maiores at atque modi deserunt! Aut odit saepe repudiandae laboriosam blanditiis quidem maxime exercitationem reprehenderit dolorum.', 'http://localhost:4000/assets/book1.png', '1'),
(6, 'Cerita Rakyat Nusantara Vol.2', 'Tim EFK', '2020', 'Buku yang sering dibaca', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ab, error quod quis sed illum, in quaerat sequi inventore veritatis doloribus expedita sapiente maiores at atque modi deserunt! Aut odit saepe repudiandae laboriosam blanditiis quidem maxime exercitationem reprehenderit dolorum.', 'http://localhost:4000/assets/book1.png', '1'),
(8, 'Angkasa dan 56 Hari Vol.2', 'Deshtasya WDP', '2020', 'Buku terbaru', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ab, error quod quis sed illum, in quaerat sequi inventore veritatis doloribus expedita sapiente maiores at atque modi deserunt! Aut odit saepe repudiandae laboriosam blanditiis quidem maxime exercitationem reprehenderit dolorum.', 'http://localhost:4000/assets/book3.png', '1'),
(10, 'Cerita Rakyat Nusantara Vol.1', 'Tim EFK', '2020', 'Buku terbaru', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ab, error quod quis sed illum, in quaerat sequi inventore veritatis doloribus expedita sapiente maiores at atque modi deserunt! Aut odit saepe repudiandae laboriosam blanditiis quidem maxime exercitationem reprehenderit dolorum.', 'http://localhost:4000/assets/book1.png', '1'),
(11, 'Cerita Rakyat Nusantara Vol.2', 'Tim EFK', '2020', 'Buku terbaru', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ab, error quod quis sed illum, in quaerat sequi inventore veritatis doloribus expedita sapiente maiores at atque modi deserunt! Aut odit saepe repudiandae laboriosam blanditiis quidem maxime exercitationem reprehenderit dolorum.', 'http://localhost:4000/assets/book1.png', '1'),
(12, 'Angkasa dan 56 Hari Vol.1', 'Deshtasya WDP', '2020', 'Buku yang sering dibaca', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ab, error quod quis sed illum, in quaerat sequi inventore veritatis doloribus expedita sapiente maiores at atque modi deserunt! Aut odit saepe repudiandae laboriosam blanditiis quidem maxime exercitationem reprehenderit dolorum.', 'http://localhost:4000/assets/book3.png', '1'),
(13, 'Angkasa dan 56 Hari Vol.2', 'Deshtasya WDP', '2020', 'Buku yang sering dibaca', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ab, error quod quis sed illum, in quaerat sequi inventore veritatis doloribus expedita sapiente maiores at atque modi deserunt! Aut odit saepe repudiandae laboriosam blanditiis quidem maxime exercitationem reprehenderit dolorum.', 'http://localhost:4000/assets/book3.png', '1');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `judul_buku` varchar(100) DEFAULT NULL,
  `penulis` varchar(100) DEFAULT NULL,
  `tahun_buku` varchar(5) DEFAULT NULL,
  `kategori_buku` varchar(255) DEFAULT NULL,
  `sinopsis_buku` varchar(350) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `liked_by` varchar(50) DEFAULT NULL,
  `waktu_pinjam` varchar(100) DEFAULT NULL,
  `halaman_dibaca` varchar(100) DEFAULT NULL,
  `pinjam_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`id`, `id_buku`, `judul_buku`, `penulis`, `tahun_buku`, `kategori_buku`, `sinopsis_buku`, `gambar`, `liked_by`, `waktu_pinjam`, `halaman_dibaca`, `pinjam_by`) VALUES
(8, 1, 'Cerita Rakyat Nusantara', 'Tim EFK', '2020', 'Sejarah', 'Buku seri Cerita Rakyat Nusantara mengajakmu menemukan pesan-pesan moral pada cerita-cerita rakyat. Ikutlah bertualang ke seluruh wilayah nusantara melalui cerita-cerita menarik dalam buku ini', 'http://localhost:4000/assets/book1.png', '1', '2023-03-07 00:00:00', '1', 1),
(9, 1, 'Angkasa dan 56 Hari', 'Destasya WDP', '2020', 'Novel', 'Sebuah takdir mempertemukan Nadine Jedvanna dengan cinta pertamanya. Sebuah kata sapa sederhana, “Hai”, mengawali kisah cinta Nadine dan seorang pria bernama angkasa', 'http://localhost:4000/assets/book3.png', '1', '2023-03-07 00:00:00', '1', 1),
(10, 1, 'Cerita Islam Nusantara', 'Tim EFK', '2020', 'Sejarah', 'Buku seri Cerita Islam Nusantara mengajakmu menemukan pesan-pesan moral pada cerita-cerita rakyat. Ikutlah bertualang ke seluruh wilayah nusantara melalui cerita-cerita menarik dalam buku ini', 'http://localhost:4000/assets/book2.png', '1', '2023-03-07 00:00:00', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`) VALUES
(5, 'rizky dharma andika raya', 'rizkydharma02@gmail.com', 'rizkytampanea'),
(6, 'alvitto aprilian gumay', 'alvittoaag@proton.me', 'alvittotampanea');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
