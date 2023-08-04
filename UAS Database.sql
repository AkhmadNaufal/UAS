-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2023 at 09:06 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javawebmedia_cifour`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `status_berita` varchar(20) NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `keywords` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_user`, `id_kategori`, `slug_berita`, `judul_berita`, `isi`, `status_berita`, `jenis_berita`, `keywords`, `gambar`, `hits`, `tanggal_post`, `tanggal`) VALUES
(6, 1, 4, 'pelepasan-pkl', 'Pelepasan PKL', '<p>Pelepasan PKL angkatan 2021 UNIB</p>', 'Publish', 'Berita', 'PKL UNIB', '1691118448_0137c80df56faadb7452.jpg', 0, '2023-08-03 22:07:28', '2023-08-04 03:07:28'),
(7, 1, 4, 'pelepasan-pkl-putri', 'Pelepasan PKL Putri', '<p>Pelepasan PKL Putri UNIB</p>', 'Publish', 'Berita', 'PKL UNIB PI', '1691129526_dfc7afeedb85dac09d0e.jpg', 0, '2023-08-04 01:12:06', '2023-08-04 06:12:06'),
(8, 1, 4, 'taujihat-irsyadad-dan-doa-pengasuh-khr-ahmad-azaim-ibrahimy-ssy-mh-dalam-penutupan-pembekalan-pkl-2023', 'TAUJIHAT, IRSYADAD DAN DOA PENGASUH KHR. AHMAD AZAIM IBRAHIMY, S.SY, MH DALAM PENUTUPAN PEMBEKALAN PKL 2023', '<p>TAUJIHAT, IRSYADAD DAN DOA PENGASUH KHR. AHMAD AZAIM IBRAHIMY, S.SY, MH DALAM PENUTUPAN PEMBEKALAN PKL 2023</p>', 'Publish', 'Berita', 'Penutupan PKL', '1691132190_f3e0fd70e2c93609a75f.jpg', 0, '2023-08-04 01:56:30', '2023-08-04 06:56:30');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `id_user`, `slug_kategori`, `nama_kategori`, `urutan`, `hits`, `tanggal`) VALUES
(1, 0, 'Kursus-Web', 'Kursus Web', 1, 0, '2020-03-17 00:56:44'),
(2, 0, 'Kursus-Ilmu-Komputer', 'Kursus Ilmu Komputer', 2, 0, '2023-08-04 03:02:16'),
(3, 0, 'Kursus-Desain-Web', 'Kursus Desain Web', 3, 0, '2023-08-04 03:02:30'),
(4, 0, 'UNIB', 'UNIB', 4, 0, '2023-08-04 03:06:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`, `tanggal`) VALUES
(1, 'Naufal UNIB', 'Naufal@gmail.com', 'Naufal', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Admin', '2023-08-04 03:00:55'),
(2, 'Saintek UNIB', 'UNIB@gmail.com', 'UNIB', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Admin', '2023-08-04 03:00:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
