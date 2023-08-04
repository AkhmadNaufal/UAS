-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 04, 2023 at 10:55 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21105536_root`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_user`, `id_kategori`, `slug_berita`, `judul_berita`, `isi`, `status_berita`, `jenis_berita`, `keywords`, `gambar`, `hits`, `tanggal_post`, `tanggal`) VALUES
(6, 1, 4, 'pelepasan-pkl-putra', 'Pelepasan PKL Putra ', '<p>Pelepasan PKL Putra angkatan 2021 UNIB VVIP</p>', 'Publish', 'Berita', 'PKL UNIB', '1691136488_da9efdd16d62f1fc2e63.jpg', 0, '0000-00-00 00:00:00', '2023-08-04 08:08:08'),
(7, 1, 4, 'pelepasan-pkl-putri', 'Pelepasan PKL Putri <3 ', '<p>Pelepasan PKL Putri UNIB &lt;3</p>', 'Publish', 'Berita', 'PKL UNIB PI', '1691136540_1a8391fe7fefacd26788.jpg', 0, '0000-00-00 00:00:00', '2023-08-04 08:09:00'),
(8, 1, 4, 'taujihat-irsyadad-dan-doa-pengasuh-khr-ahmad-azaim-ibrahimy-ssy-mh-dalam-penutupan-pembekalan-pkl-2023', 'TAUJIHAT, IRSYADAD DAN DOA PENGASUH KHR. AHMAD AZAIM IBRAHIMY, S.SY, MH DALAM PENUTUPAN PEMBEKALAN PKL 2023', '<h2>TAUJIHAT, IRSYADAD DAN DOA PENGASUH KHR. AHMAD AZAIM IBRAHIMY, S.SY, MH DALAM PENUTUPAN PEMBEKALAN PKL 2023</h2><p>&nbsp;</p>', 'Publish', 'Berita', 'Penutupan PKL', '1691131889_4dca03ae077eba18cf54.jpg', 0, '2023-08-04 01:51:29', '2023-08-04 06:51:29'),
(9, 1, 4, 'saintek-award-night', 'Saintek Award Night ', '<p><span style=\"color:rgb(0,0,0);\">Saintek Award Night adalah rangkaian kegiatan tahunan yang diselenggarakan oleh Badan Eksekutif Mahasiswa Fakultas Sains dan Teknologi Universitas Ibrahimy sebagai salah satu wujud rasa tanggung jawab dalam menciptakan dan meningkatkan Kedisiplinan dan Prestasi mahasiswa, Saintek Awards diharapkan dapat menjadi starting point dalam menggali ide kreatif dan inovatif mahasiswa, terutama pada bidang sains dan teknologi.</span></p>', 'Publish', 'Berita', 'Saintek Award Night ', '1691143215_ffdbb6953c5a6bfaa3b6.jpg', 0, '2023-08-04 05:00:15', '2023-08-04 10:00:15'),
(10, 1, 4, 'mahasiswa-mti-ikuti-acara-muhadaroh-ammah-bersama-syekh-ridho', 'Mahasiswa MTI Ikuti Acara Muhadaroh ‘Ammah Bersama Syekh Ridho', '<p><span style=\"color:rgb(153,153,153);\">Mahasiswa MTI Ikuti Acara Muhadaroh ‘Ammah Bersama Syekh Ridho.</span></p><p><span style=\"color:rgb(153,153,153);\">Mahasiswa Universitas Ibrahimy mengikuti kegiatan yang diadakan oleh Madrasah Ta’hiliyah Ibrahimy (MTI) Ahad kemarin, (19/12). Acara tersebut adalah kegiatan </span><i>Muhadaroh ‘Ammah </i><span style=\"color:rgb(153,153,153);\">(Kuliah Umum) bersama Syekh Ridho Muhammad Abdullah Azab selaku guru tugas dari Universitas al-Azhar Cairo Mesir yang ditugaskan di pondok pesantren Salafiyah Syafi’iyah Sukorejo.</span></p>', 'Publish', 'Berita', 'Mahasiswa MTI ', '1691143674_d121af21e416ea8265d5.jpg', 0, '2023-08-04 05:07:54', '2023-08-04 10:07:54'),
(11, 1, 4, 'pemerintah-kerajaan-thailand-sambut-peserta-kkn-dan-ppl-universitas-ibrahimy', 'Pemerintah Kerajaan Thailand, Sambut Peserta KKN dan PPL Universitas Ibrahimy', '<p>Peserta KKN dan PPL Internasional <strong>Unviersitas Ibrahimy</strong> diterima secara Resmi oleh Pemerintah kerajaan Thailand melalui dinas Pendidikan dan Pemerintah Provensi &nbsp;Narathiwat thailand, turut hadir Kepala Dinas Masing-Masing Kabupaten, Gubernur Narathiwat konsulat Jenderal Perwakilan RI Songkla Thailand.</p><p>Penyambutan terhadap 3 Orang Mahasiswa peserta KKN dan PPL Universitas Ibrahimy dilaksanakan di Aula Darussalam School Narathiwat Bersama 70 Orang Mahasiswa dari 17 Perguruan Tinggi di Indonesia, serta didampingi oleh pendamping dari masing-masing Perguruan Tinggi sejumlah 17 Pendamping.</p>', 'Publish', 'Berita', 'Pemerintah Kerajaan Thailand, Sambut Peserta KKN dan PPL Universitas Ibrahimy', '1691144075_c9ba26529eafce114340.jpg', 0, '2023-08-04 05:14:35', '2023-08-04 10:14:35');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `id_user`, `slug_kategori`, `nama_kategori`, `urutan`, `hits`, `tanggal`) VALUES
(1, 0, 'Kursus-Web', 'Kursus Web', 1, 0, '2020-03-17 00:56:44'),
(2, 0, 'Kursus-Ilmu-Komputer', 'Kursus Ilmu Komputer', 2, 0, '2023-08-04 03:02:16'),
(3, 0, 'Kursus-Desain-Web', 'Kursus Desain Web', 3, 0, '2023-08-04 06:52:03'),
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_user` (`id_user`);

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
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `berita_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `berita_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
