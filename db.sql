-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2020 at 09:45 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `akademik1`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nobp` int(11) NOT NULL PRIMARY KEY,
  `nama` varchar(50) NOT NULL,
  `jalan` varchar(50) NOT NULL,
  `kelurahan` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kabupaten` varchar(50) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `fakultas` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nobp`, `nama`, `jalan`, `kelurahan`, `kecamatan`, `kabupaten`, `provinsi`, `fakultas`, `jurusan`) VALUES ('1811082008', 'Salsabila Delaisya Permana', 'soekarno hatta ', 'balai nan duo', 'payakumbuh barat', 'payakumbuh', 'Sumatera Barat', 'Teknologi Informasi', 'Teknologi Rekayasa Perangkat Lunak');

INSERT INTO `mahasiswa` (`nobp`, `nama`, `jalan`, `kelurahan`, `kecamatan`, `kabupaten`, `provinsi`, `fakultas`, `jurusan`) VALUES ('1811081012', 'Lannia Prissila Ayu', 'by pass', 'sungai sapih', 'kuranji', 'padang', 'Sumatera Barat', 'Teknologi Informasi', 'Teknologi Rekayasa Perangkat Lunak');


-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matakuliah` (
`id_matkul` int(11) NOT NULL PRIMARY KEY,
  `matakuliah` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matakuliah` (`id_matkul`, `nama`) VALUES
(3001, 'Project web'),
(3002, 'Artificial Intelegence');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `nobp` int(11) NOT NULL,
  `id_matkul` int(11) NOT NULL,
  `nilai` float NOT NULL,
  `semester` varchar(10) NOT NULL,
  CONSTRAINT nobp FOREIGN KEY (nobp) REFERENCES mahasiswa (nobp),
CONSTRAINT id_matkul FOREIGN KEY (id_matkul) REFERENCES matakuliah (id_matkul)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`nobp`, `id_matkul`, `nilai`, `semester`) VALUES
(1811081012, 3001, 3.75, '5'),
(1811081012, 3002, 3.75, '5'),
(1811082008, 3001, 3.75, '5'),
(1811082008, 3002, 3.75, '5');



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;