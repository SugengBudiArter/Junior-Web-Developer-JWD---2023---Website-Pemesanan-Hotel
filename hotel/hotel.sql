-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 11:27 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id_History` int(11) NOT NULL,
  `Nama_Pemesan` text NOT NULL,
  `JenisKelamin` text NOT NULL,
  `Nomor_Identitas` text NOT NULL,
  `Tipe_Kamar` text NOT NULL,
  `Tanggal_Pesan` date NOT NULL,
  `Durasi_Menginap` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `Total_Bayar` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id_History`, `Nama_Pemesan`, `JenisKelamin`, `Nomor_Identitas`, `Tipe_Kamar`, `Tanggal_Pesan`, `Durasi_Menginap`, `diskon`, `Total_Bayar`) VALUES
(50, 'Sugeng Dwi Budi Priantoro', 'Laki-laki', '4444444444444444', 'Kamar Executive', '2023-11-28', 4, 10, 3680000),
(51, 'sugeng budi', 'Perempuan', '3232323232323223', 'Kamar Deluxe', '2023-11-14', 1, 0, 500000),
(52, 'inem', 'Perempuan', '3243243252534654', 'Kamar Deluxe', '2023-11-21', 10, 10, 4580000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id_History`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id_History` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
