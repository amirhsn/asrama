-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 06:35 PM
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
-- Database: `asrama_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `kamar_tersedia`
--

CREATE TABLE `kamar_tersedia` (
  `id` int(11) NOT NULL,
  `no_kamar` int(11) NOT NULL,
  `kapasitas` varchar(255) NOT NULL,
  `fasilitas` varchar(255) NOT NULL,
  `tarif` varchar(255) NOT NULL,
  `booked_by` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kamar_tersedia`
--

INSERT INTO `kamar_tersedia` (`id`, `no_kamar`, `kapasitas`, `fasilitas`, `tarif`, `booked_by`, `status`) VALUES
(1, 1, '1 orang', 'AC, kamar mandi dalam', '800.000', NULL, 'available'),
(2, 2, '1 orang', 'AC, kamar mandi dalam', '700.000', NULL, 'available'),
(3, 3, '4 orang', 'AC', '900.000', NULL, 'available'),
(4, 4, '2 orang', 'AC', '500.000', NULL, 'available'),
(5, 5, '1 orang', 'Kipas angin', '300.000', 1, 'available'),
(6, 6, '3 orang', 'Kipas angin, kamar mandi luar', '600.000', NULL, 'available'),
(7, 12, '2 orang', 'AC, kamar mandi dalam', '900.000', NULL, 'available'),
(8, 18, '1 orang', 'AC, kamar mandi dalam', '750.000', 2, 'available'),
(9, 23, '3 orang', '', '500.000', NULL, 'available'),
(10, 25, '3 orang', '', '500.000', NULL, 'available'),
(11, 32, '3 orang', '', '500.000', NULL, 'available'),
(12, 35, '3 orang', '', '500.000', NULL, 'available'),
(13, 36, '1 orang', '', '200.000', NULL, 'available'),
(15, 40, '1 orang', 'AC', '300.000', NULL, 'available');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nim` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `username`, `password`) VALUES
(1, 'David', 123456, 'david', 'david123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kamar_tersedia`
--
ALTER TABLE `kamar_tersedia`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_kamar` (`no_kamar`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nim` (`nim`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kamar_tersedia`
--
ALTER TABLE `kamar_tersedia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
