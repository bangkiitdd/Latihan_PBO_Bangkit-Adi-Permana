-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 15, 2026 at 05:58 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_latihan_pbo_ti1c_bangkitadipermana`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_tiket`
--

CREATE TABLE `tabel_tiket` (
  `id_tiket` int NOT NULL,
  `nama_film` varchar(255) NOT NULL,
  `jadwal_tayang` datetime NOT NULL,
  `jumlah_kursi` int NOT NULL,
  `harga_dasar_tiket` decimal(10,2) NOT NULL,
  `jenis_studio` enum('Regular','IMAX','Velvet') NOT NULL,
  `tipe_audio` varchar(50) DEFAULT NULL,
  `lokasi_baris` varchar(10) DEFAULT NULL,
  `kacamata_3d_id` varchar(50) DEFAULT NULL,
  `efek_gerak_fitur` varchar(100) DEFAULT NULL,
  `bantal_selimut_pack` varchar(50) DEFAULT NULL,
  `layanan_butler` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_tiket`
--

INSERT INTO `tabel_tiket` (`id_tiket`, `nama_film`, `jadwal_tayang`, `jumlah_kursi`, `harga_dasar_tiket`, `jenis_studio`, `tipe_audio`, `lokasi_baris`, `kacamata_3d_id`, `efek_gerak_fitur`, `bantal_selimut_pack`, `layanan_butler`) VALUES
(1, 'Avengers: Secret Wars', '2026-06-20 13:00:00', 50, '45000.00', 'Regular', 'Dolby Digital 5.1', 'A-G', NULL, NULL, NULL, NULL),
(2, 'Avengers: Secret Wars', '2026-06-20 15:30:00', 50, '45000.00', 'Regular', 'Dolby Digital 5.1', 'A-G', NULL, NULL, NULL, NULL),
(3, 'Batman: Resurgence', '2026-06-20 14:00:00', 60, '40000.00', 'Regular', 'Stereo 2.0', 'B-H', NULL, NULL, NULL, NULL),
(4, 'Batman: Resurgence', '2026-06-20 18:00:00', 60, '40000.00', 'Regular', 'Stereo 2.0', 'B-H', NULL, NULL, NULL, NULL),
(5, 'Avatar 4', '2026-06-21 12:00:00', 45, '50000.00', 'Regular', 'Dolby Atmos', 'C-F', NULL, NULL, NULL, NULL),
(6, 'Avatar 4', '2026-06-21 16:00:00', 45, '50000.00', 'Regular', 'Dolby Atmos', 'C-F', NULL, NULL, NULL, NULL),
(7, 'Inception 2', '2026-06-22 19:00:00', 55, '45000.00', 'Regular', 'Dolby Digital 5.1', 'A-J', NULL, NULL, NULL, NULL),
(8, 'Avengers: Secret Wars', '2026-06-20 12:00:00', 100, '75000.00', 'IMAX', '12.1 IMAX Dual Laser', 'Row A-N', 'IMAX3D-001', 'Dual Laser Projection', NULL, NULL),
(9, 'Avengers: Secret Wars', '2026-06-20 16:00:00', 100, '75000.00', 'IMAX', '12.1 IMAX Dual Laser', 'Row A-N', 'IMAX3D-002', 'Dual Laser Projection', NULL, NULL),
(10, 'Avatar 4', '2026-06-21 13:00:00', 120, '85000.00', 'IMAX', '12.1 IMAX Sound', 'Row A-P', 'IMAX3D-009', 'High Frame Rate 4K', NULL, NULL),
(11, 'Avatar 4', '2026-06-21 17:30:00', 120, '85000.00', 'IMAX', '12.1 IMAX Sound', 'Row A-P', 'IMAX3D-010', 'High Frame Rate 4K', NULL, NULL),
(12, 'Interstellar: Re-Release', '2026-06-22 14:00:00', 90, '70000.00', 'IMAX', 'IMAX 6-Track', 'Row C-M', NULL, '70mm Film Simulation', NULL, NULL),
(13, 'Interstellar: Re-Release', '2026-06-22 20:00:00', 90, '70000.00', 'IMAX', 'IMAX 6-Track', 'Row C-M', NULL, '70mm Film Simulation', NULL, NULL),
(14, 'Dune: Part Three', '2026-06-23 15:00:00', 110, '80000.00', 'IMAX', '12.1 IMAX Sound', 'Row B-O', NULL, 'Full Aspect Ratio', NULL, NULL),
(15, 'Avengers: Secret Wars', '2026-06-20 20:00:00', 20, '150000.00', 'Velvet', 'Dolby Atmos Premium', 'Sofa A-E', NULL, NULL, 'Premium Pack A (Sutra)', 'Personal Butler Service'),
(16, 'Avengers: Secret Wars', '2026-06-20 22:30:00', 20, '150000.00', 'Velvet', 'Dolby Atmos Premium', 'Sofa A-E', NULL, NULL, 'Premium Pack B', 'Personal Butler Service'),
(17, 'The Great Gatsby 2', '2026-06-21 19:00:00', 16, '130000.00', 'Velvet', 'Harman Kardon Custom', 'Sofa A-D', NULL, NULL, 'Standard Pack', 'Welcome Drink & Food Delivery'),
(18, 'The Great Gatsby 2', '2026-06-21 21:30:00', 16, '130000.00', 'Velvet', 'Harman Kardon Custom', 'Sofa A-D', NULL, NULL, 'Standard Pack', 'Welcome Drink & Food Delivery'),
(19, 'La La Land: Broadway', '2026-06-22 18:30:00', 24, '140000.00', 'Velvet', 'Dolby Atmos Premium', 'Sofa A-F', NULL, NULL, 'Premium Pack A', 'Full Dine-In Butler'),
(20, 'La La Land: Broadway', '2026-06-22 21:00:00', 24, '140000.00', 'Velvet', 'Dolby Atmos Premium', 'Sofa A-F', NULL, NULL, 'Premium Pack A', 'Full Dine-In Butler');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  MODIFY `id_tiket` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
