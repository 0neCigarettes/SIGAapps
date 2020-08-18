-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2020 at 02:10 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gis_spbu`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kecamatan`
--

CREATE TABLE `tbl_kecamatan` (
  `id_kec` int(11) NOT NULL,
  `kd_kec` varchar(15) NOT NULL,
  `nama_kec` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kecamatan`
--

INSERT INTO `tbl_kecamatan` (`id_kec`, `kd_kec`, `nama_kec`) VALUES
(17, '35224', 'Bumi Waras'),
(20, '35112', 'Kedaton'),
(21, '35153', 'Kemiling'),
(22, '35142', 'Labuhan Ratu'),
(23, '35152', 'Langkapura'),
(24, '35241', 'Panjang'),
(25, '35144', 'Rajabasa'),
(27, '35131', 'Sukarame'),
(29, '35151', 'Tanjung Karang Barat'),
(31, '35121', 'Tanjung Karang Timur'),
(32, '35141', 'Tanjung Senang'),
(33, '35232', 'Teluk Betung Barat'),
(34, '35221', 'Teluk Betung Selatan'),
(35, '35231', 'Teluk Betung Timur'),
(36, '35211', 'Teluk Betung Utara'),
(37, '35123', 'Way Halim'),
(38, '35127', 'Enggal'),
(39, '35119', 'Tanjung Karang Pusat'),
(40, '35133', 'Kedamaian'),
(41, '35245', 'Sukabumi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_spbu`
--

CREATE TABLE `tbl_spbu` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(155) NOT NULL,
  `kd_kec` varchar(15) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `gambar` varchar(50) DEFAULT NULL,
  `lati` double NOT NULL,
  `longi` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_spbu`
--

INSERT INTO `tbl_spbu` (`id`, `nama`, `alamat`, `kd_kec`, `deskripsi`, `gambar`, `lati`, `longi`) VALUES
(232, 'Apotek Enggal', 'Jalan Raden Intan No.122 Tanjung Karang Pusat, Pelita, Engal, Kota Bandar Lampung, Lampung 35213', '35127', 'Open AT:\r\nMonday, 7AM–12AM\r\nTuesday, 7AM–12AM\r\nWednesday, 7AM–12AM\r\nThursday, 7AM–12AM\r\nFriday, 7AM–12AM\r\nSaturday, 7AM–12AM\r\nSunday, 7AM–12AM', 'apotek_enggal.jpg', -5.4202781, 105.2578988);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `password` varchar(55) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `level` enum('admin','user') NOT NULL,
  `ADAD` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `password`, `username`, `email`, `photo`, `level`, `ADAD`) VALUES
(1, 'Hanantri Pustpita Dewi', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'hana@gmail.com', '-', 'admin', '2020-03-25'),
(2, 'User', '202cb962ac59075b964b07152d234b70', 'user', 'user@gmail.com', '-', 'user', '0000-00-00'),
(3, 'Bram', '25d55ad283aa400af464c76d713c07ad', '12345678', 'bram@gmail.com', '', 'admin', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_kecamatan`
--
ALTER TABLE `tbl_kecamatan`
  ADD PRIMARY KEY (`id_kec`),
  ADD UNIQUE KEY `kd_kecamatan` (`kd_kec`);

--
-- Indexes for table `tbl_spbu`
--
ALTER TABLE `tbl_spbu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kd_kec` (`kd_kec`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_kecamatan`
--
ALTER TABLE `tbl_kecamatan`
  MODIFY `id_kec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `tbl_spbu`
--
ALTER TABLE `tbl_spbu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_spbu`
--
ALTER TABLE `tbl_spbu`
  ADD CONSTRAINT `tbl_spbu_ibfk_1` FOREIGN KEY (`kd_kec`) REFERENCES `tbl_kecamatan` (`kd_kec`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
