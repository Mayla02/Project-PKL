-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2023 at 12:35 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latihan1`
--

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id_fakultas` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id_fakultas`, `nama`) VALUES
(1, 'Fakultas Keperawatan dan Ilmu Kesehatan'),
(2, 'Fakultas Farmasi'),
(3, 'Fakultas Teknik'),
(4, 'Fakultas Keguruan dan Ilmu Pendidikan'),
(5, 'Fakultas Psikologi'),
(6, 'Fakultas Agama Islam'),
(7, 'Pasca Sarjana');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `iduser` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mhs` int(100) NOT NULL,
  `nim` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `prodi` varchar(100) NOT NULL,
  `fakultas` varchar(100) NOT NULL,
  `predikat` varchar(100) NOT NULL,
  `kompetisi` varchar(100) NOT NULL,
  `bidang` varchar(100) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `sertifikat` varchar(100) NOT NULL,
  `dokumentasi` varchar(100) NOT NULL,
  `surattugas` varchar(100) NOT NULL,
  `lomba` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mhs`, `nim`, `nama`, `prodi`, `fakultas`, `predikat`, `kompetisi`, `bidang`, `jenis`, `sertifikat`, `dokumentasi`, `surattugas`, `lomba`) VALUES
(8, '2055201110031', 'Siti Nadya Mayla', 's1 informatika', 'teknik', 'juara 1', 'lokal', 'akademik', 'individu', 'ada', 'ada', 'ada', 'LOMBA CIPTA PUISI'),
(9, '', '', '', '', '', '', '', '', '', '', '', ''),
(10, '2055201110009', 'Ayudia Eka Nurani ', 's1 informatika', 'teknik', 'juara 1', 'nasional', 'Non Akademik', 'individu', 'ada', 'ada', 'ada', 'LOMBA KALIGRAFI'),
(11, '2055201110039', 'Ahmad Baihaki', 'S1 Keperawatan', 'Fakultas Keperawatan dan Ilmu Kesehatan', 'Juara 1', 'Nasional', 'Akademik', 'Akademik', 'ada', 'ada', 'ada', 'LOMBA PROGRAMMING');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `nama`) VALUES
(1, 'Program Profesi Ners'),
(2, 'Program Profesi Bidan'),
(3, 'S1 Keperawatan'),
(4, 'S1 Kebidanan'),
(5, 'D4 Keperawatan Anestesiologi'),
(6, 'D3 Kebidanan'),
(7, 'D3 Keperawatan'),
(8, 'S1 Farmasi'),
(9, 'D3 Farmasi'),
(10, 'S1 Teknik Sipil'),
(11, 'S1 Informatika'),
(12, 'S1 Arsitektur'),
(13, 'S1 Perencanaan Wilayah dan Kota'),
(14, 'S1 Pendidikan Bahasa Indonesia'),
(15, 'S1 Pendidikan Bahasa Inggris'),
(16, 'S1 Pendidikan Matematika'),
(17, 'S1 Psikologi'),
(18, 'S1 Pendikan Islam Anak Usia Dini'),
(19, 'S1 Perbankan Syariah'),
(20, 'Magister Ilmu Keperawatan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`iduser`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mhs`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id_fakultas` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `iduser` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mhs` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
