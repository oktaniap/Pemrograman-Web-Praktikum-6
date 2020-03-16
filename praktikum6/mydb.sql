-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16 Mar 2020 pada 06.57
-- Versi Server: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku_tamu`
--

CREATE TABLE `buku_tamu` (
  `ID_BT` int(10) NOT NULL,
  `NAMA` varchar(200) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `ISI` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku_tamu`
--

INSERT INTO `buku_tamu` (`ID_BT`, `NAMA`, `EMAIL`, `ISI`) VALUES
(1, 'Ana', 'ana@gmail.com', 'Surabaya'),
(2, 'Firli', 'firli@gmail.com', 'Sidoarjo'),
(3, 'Dragon', 'dragon@gmail.com', 'Sidoarjo'),
(4, 'Rinai', 'rinai@gmail.com', 'Kediri'),
(5, 'Rembo', 'rembo@gmail.com', 'Gresik'),
(6, 'Messi', 'messi@gmail.com', 'Tulungagung'),
(18, 'Messi', 'messi@gmail.com', 'Tulungagung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `liga`
--

CREATE TABLE `liga` (
  `id` int(6) UNSIGNED NOT NULL,
  `kode` varchar(3) NOT NULL,
  `negara` varchar(30) DEFAULT NULL,
  `champion` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `liga`
--

INSERT INTO `liga` (`id`, `kode`, `negara`, `champion`) VALUES
(1, 'Eng', 'English', 3),
(2, 'Spa', 'Spanyol', 3),
(3, 'Jer', 'Jerman', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
  ADD PRIMARY KEY (`ID_BT`);

--
-- Indexes for table `liga`
--
ALTER TABLE `liga`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `liga`
--
ALTER TABLE `liga`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
