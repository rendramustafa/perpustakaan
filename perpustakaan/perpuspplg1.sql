-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 11, 2026 at 07:04 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpuspplg1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `idbuku` int NOT NULL,
  `judul` varchar(100) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_buku`
--

INSERT INTO `tbl_buku` (`idbuku`, `judul`, `pengarang`, `penerbit`, `created_at`, `update_at`) VALUES
(1, 'Rubahhhhhh', 'AUFAsss', 'PT KETOK', '2026-04-01 07:07:57', NULL),
(2, 'dffgf', 'ddvf', 'fdffd', '2026-05-11 03:06:54', NULL),
(4, '6ytrgvdvsddc', 'bgfbb', 'hrefeggg', '2026-04-08 07:10:13', NULL),
(6, 'fggnnh', 'ddgfgbb', 'rgfgfg', '2026-05-11 03:06:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_peminjaman`
--

CREATE TABLE `tbl_peminjaman` (
  `idpinjam` int NOT NULL,
  `idpetugas` int NOT NULL,
  `idsiswa` int NOT NULL,
  `idbuku` int NOT NULL,
  `waktupinjam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_peminjaman`
--

INSERT INTO `tbl_peminjaman` (`idpinjam`, `idpetugas`, `idsiswa`, `idbuku`, `waktupinjam`, `updated_at`) VALUES
(2, 1, 11, 1, '2026-05-11 03:00:15', NULL),
(3, 3, 12, 1, '2026-05-11 03:01:18', NULL),
(12, 1, 11, 1, '2026-05-11 07:02:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_petugas`
--

CREATE TABLE `tbl_petugas` (
  `idpetugas` int NOT NULL,
  `namapetugas` varchar(100) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_petugas`
--

INSERT INTO `tbl_petugas` (`idpetugas`, `namapetugas`, `hp`, `username`, `password`, `created_at`, `update_at`) VALUES
(1, 'ye', '08122334432', 'admin', 'admin123', '2026-04-22 01:56:26', NULL),
(3, 'ddddv', '16256862', 'dav', '', '2026-04-22 07:31:41', NULL),
(4, 'ddfd', '243433', 're', '', '2026-04-22 07:37:15', NULL),
(5, 'vfgfv', '45334534', 'ere', '', '2026-05-11 03:03:48', NULL),
(6, 'efrfr', '243434', 'erfer', '', '2026-05-11 04:56:03', NULL),
(7, 'dfff', '2333344', 'dsdd', '', '2026-05-11 04:56:21', NULL),
(8, 'sdddff', '32234333', '213344', 'rr', '2026-05-11 06:13:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `idsiswa` int NOT NULL,
  `nis` varchar(20) NOT NULL,
  `namasiswa` varchar(100) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`idsiswa`, `nis`, `namasiswa`, `kelas`, `alamat`, `hp`, `created_at`, `updated_at`) VALUES
(11, '4888577', 'rrdgg', 'rdfer', 'drerwe', '123345', '2026-04-13 04:56:00', NULL),
(12, '2343', 'fvvfv', 'fgefvv', 'ffffdf', '324342', '2026-04-22 02:04:01', NULL),
(16, '3345', 'vfvv', 'fvfd', 'fffd', '1324', '2026-05-11 02:41:25', NULL),
(17, '123443', 'dvfdfv', 'dffv', 'fdd', '345454', '2026-05-11 03:05:52', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`idbuku`);

--
-- Indexes for table `tbl_peminjaman`
--
ALTER TABLE `tbl_peminjaman`
  ADD PRIMARY KEY (`idpinjam`),
  ADD KEY `idbuku` (`idbuku`),
  ADD KEY `idsiswa` (`idsiswa`),
  ADD KEY `idpetugas` (`idpetugas`);

--
-- Indexes for table `tbl_petugas`
--
ALTER TABLE `tbl_petugas`
  ADD PRIMARY KEY (`idpetugas`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`idsiswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  MODIFY `idbuku` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_peminjaman`
--
ALTER TABLE `tbl_peminjaman`
  MODIFY `idpinjam` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_petugas`
--
ALTER TABLE `tbl_petugas`
  MODIFY `idpetugas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `idsiswa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_peminjaman`
--
ALTER TABLE `tbl_peminjaman`
  ADD CONSTRAINT `tbl_peminjaman_ibfk_1` FOREIGN KEY (`idbuku`) REFERENCES `tbl_buku` (`idbuku`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tbl_peminjaman_ibfk_2` FOREIGN KEY (`idsiswa`) REFERENCES `tbl_siswa` (`idsiswa`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tbl_peminjaman_ibfk_3` FOREIGN KEY (`idpetugas`) REFERENCES `tbl_petugas` (`idpetugas`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
