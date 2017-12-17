-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 17 Des 2017 pada 02.02
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kegiatan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `no` int(11) NOT NULL,
  `id_kegiatan` varchar(30) NOT NULL,
  `nama_kegiatan` varchar(100) NOT NULL,
  `waktu_kegiatan` datetime NOT NULL,
  `tempat_kegiatan` varchar(50) NOT NULL,
  `sifat_kegiatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kegiatan`
--

INSERT INTO `kegiatan` (`no`, `id_kegiatan`, `nama_kegiatan`, `waktu_kegiatan`, `tempat_kegiatan`, `sifat_kegiatan`) VALUES
(1, '1', 'rapat', '2017-10-31 00:00:00', 'ruang rapat', 'rutin mingguan'),
(2, 'AD123', 'jalan', '2017-12-31 00:00:00', 'R12', 'rapat'),
(3, 'ASD', '', '0000-00-00 00:00:00', '', 'Rapat Rutin'),
(4, 'ASQW', 'kerja', '2018-01-18 00:00:00', 'R34', 'Rapat Rutin'),
(5, '', '', '2018-05-24 00:00:00', '', 'Rapat Rutin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
