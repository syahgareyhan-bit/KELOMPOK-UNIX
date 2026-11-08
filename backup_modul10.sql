-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 08, 2026 at 03:22 PM
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
-- Database: `db_motomind`
--

-- --------------------------------------------------------

--
-- Table structure for table `bengkel`
--

CREATE TABLE `bengkel` (
  `id_bengkel` varchar(20) NOT NULL,
  `nama_bengkel` varchar(100) NOT NULL,
  `alamat` text,
  `no_telepon` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bengkel`
--

INSERT INTO `bengkel` (`id_bengkel`, `nama_bengkel`, `alamat`, `no_telepon`) VALUES
('BKL-001', 'Planet Ban - Taman 2', 'Jl. Kapuas No. 1, Madiun', '08170006055');

-- --------------------------------------------------------

--
-- Table structure for table `detail_servis`
--

CREATE TABLE `detail_servis` (
  `no_servis` varchar(20) NOT NULL,
  `id_jenis_servis` varchar(20) NOT NULL,
  `catatan` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `detail_servis`
--

INSERT INTO `detail_servis` (`no_servis`, `id_jenis_servis`, `catatan`) VALUES
('SRV-2026-003', 'SRV-TYP-01', 'Cek injeksi'),
('SRV-2026-004', 'SRV-TYP-02', 'Tambal ban tubeless'),
('SRV-2026-005', 'SRV-TYP-01', 'Pembersihan CVT'),
('SRV-2026-006', 'SRV-TYP-02', 'Ganti kampas belakang'),
('SRV-2026-007', 'SRV-TYP-01', 'Ganti bohlam LED'),
('SRV-2026-008', 'SRV-TYP-02', 'Ganti aki kering'),
('SRV-2026-009', 'SRV-TYP-01', 'Tune up standar'),
('SRV-2026-010', 'SRV-TYP-02', 'Penggantian v-belt set'),
('SRV-2026-011', 'SRV-TYP-01', 'Ganti oli mesin'),
('SRV-2026-012', 'SRV-TYP-02', 'Servis dinamo stater'),
('SRV-2026-013', 'SRV-TYP-01', 'Ganti gir set'),
('SRV-2026-014', 'SRV-TYP-02', 'Ganti kampas kopling'),
('SRV-2026-015', 'SRV-TYP-01', 'Pembersihan karbu'),
('SRV-2026-016', 'SRV-TYP-02', 'Ganti ban luar belakang'),
('SRV-2026-017', 'SRV-TYP-01', 'Cek spull & kiprok'),
('SRV-2026-018', 'SRV-TYP-02', 'Ganti busi NGK'),
('SRV-2026-019', 'SRV-TYP-01', 'Ganti kampas ganda'),
('SRV-2026-020', 'SRV-TYP-02', 'Ganti roller CVT'),
('SRV-2026-021', 'SRV-TYP-01', 'Servis rutin 10k'),
('SRV-2026-022', 'SRV-TYP-02', 'Ganti oli gardan matic'),
('SRV-2026-024', 'SRV-TYP-02', 'Ganti filter udara'),
('SRV-2026-025', 'SRV-TYP-01', 'Pengecekan kelistrikan total'),
('SRV-2026-026', 'SRV-TYP-02', 'Ganti oli MPX 1'),
('SRV-2026-027', 'SRV-TYP-01', 'Ganti piringan cakram'),
('SRV-2026-028', 'SRV-TYP-02', 'Penyetelan rantai roda'),
('SRV-2026-029', 'SRV-TYP-01', 'Servis besar turun mesin ringan'),
('SRV-2026-030', 'SRV-TYP-02', 'Ganti lampu depan'),
('SRV-2026-050', 'SRV-TYP-02', 'Servis ringan');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_servis`
--

CREATE TABLE `jenis_servis` (
  `id_jenis_servis` varchar(20) NOT NULL,
  `nama_servis` varchar(100) NOT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `estimasi_menit` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jenis_servis`
--

INSERT INTO `jenis_servis` (`id_jenis_servis`, `nama_servis`, `kategori`, `estimasi_menit`) VALUES
('SRV-TYP-01', 'Ganti Oli Mesin (X-Ray)', 'Oli & Pelumas', 15),
('SRV-TYP-02', 'Servis Ringan / Tune Up', 'Mesin', 30),
('SRV-TYP-03', 'Ganti Ban Belakang Tubeless', 'Kaki-kaki', 20);

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `plat_nomor` varchar(20) NOT NULL,
  `merek` varchar(50) NOT NULL,
  `tipe_motor` varchar(50) NOT NULL,
  `tahun_produksi` int DEFAULT NULL,
  `id_pelanggan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`plat_nomor`, `merek`, `tipe_motor`, `tahun_produksi`, `id_pelanggan`) VALUES
('AE-1001-AA', 'Honda', 'Vario 160', 2023, 'PLG-001'),
('AE-1002-BB', 'Yamaha', 'NMAX', 2022, 'PLG-002'),
('AE-1003-CC', 'Honda', 'BeAT', 2023, 'PLG-003'),
('AE-1005-EE', 'Yamaha', 'Aerox', 2024, 'PLG-005'),
('AE-1006-FF', 'Honda', 'Scoopy', 2023, 'PLG-006'),
('AE-1007-GG', 'Yamaha', 'PCX', 2022, 'PLG-007'),
('AE-1008-HH', 'Honda', 'Genio', 2021, 'PLG-008'),
('AE-1009-II', 'Suzuki', 'Satria FU', 2020, 'PLG-009'),
('AE-1010-JJ', 'Yamaha', 'Lexi', 2024, 'PLG-010'),
('AE-1011-KK', 'Honda', 'Vario 125', 2023, 'PLG-011'),
('AE-1012-LL', 'Yamaha', 'Mio M3', 2021, 'PLG-012'),
('AE-1013-MM', 'Honda', 'CB150R', 2022, 'PLG-013'),
('AE-1014-NN', 'Yamaha', 'Vixion', 2020, 'PLG-014'),
('AE-1015-OO', 'Kawasaki', 'W175', 2023, 'PLG-015'),
('AE-1016-PP', 'Honda', 'Revo', 2019, 'PLG-016'),
('AE-1017-QQ', 'Yamaha', 'FreeGo', 2022, 'PLG-017'),
('AE-1018-RR', 'Honda', 'Supra GTR', 2021, 'PLG-018'),
('AE-1019-SS', 'Suzuki', 'GSX-R150', 2022, 'PLG-019'),
('AE-1020-TT', 'Yamaha', 'Fazzio', 2024, 'PLG-020'),
('AE-1021-UU', 'Honda', 'PCX 160', 2023, 'PLG-021'),
('AE-1022-VV', 'Yamaha', 'XSR 155', 2023, 'PLG-022'),
('AE-1023-WW', 'Honda', 'Verza', 2020, 'PLG-023'),
('AE-1025-YY', 'Honda', 'Super Cub', 2021, 'PLG-025'),
('AE-1026-ZZ', 'Yamaha', 'Grand Filano', 2024, 'PLG-026'),
('AE-1027-AB', 'Honda', 'Sonic 150R', 2021, 'PLG-027'),
('AE-1028-BC', 'Yamaha', 'MT-15', 2022, 'PLG-028'),
('AE-1029-CD', 'Honda', 'Adv 160', 2023, 'PLG-029'),
('AE-1030-DE', 'Suzuki', 'Nex II', 2020, 'PLG-030'),
('AE-1031-EF', 'Honda', 'Blade', 2019, 'PLG-031');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(20) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `no_whatsapp` varchar(20) DEFAULT NULL,
  `tanggal_daftar` date DEFAULT NULL,
  `total_layanan_servis` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `no_whatsapp`, `tanggal_daftar`, `total_layanan_servis`) VALUES
('PLG-001', 'Rehan Prasetya', '085123456781', '2026-09-01', 2),
('PLG-002', 'Budi Pratama', '085123456782', '2026-09-05', 1),
('PLG-003', 'Siti Rahma', '085123456783', '2026-09-10', 1),
('PLG-005', 'Dwi Santoso', '085123456785', '2025-01-20', 3),
('PLG-006', 'Eko Wijaya', '085123456786', '2025-01-22', 5),
('PLG-007', 'Rina Lestari', '085123456787', '2025-01-25', 2),
('PLG-008', 'Dewi Saputra', '085123456788', '2025-01-28', 1),
('PLG-009', 'Andi Utami', '085123456789', '2025-02-01', 6),
('PLG-010', 'Fajar Hidayat', '085123456790', '2025-02-03', 0),
('PLG-011', 'Joko Susilo', '085123456791', '2025-02-05', 3),
('PLG-012', 'Maya Anggraini', '085123456792', '2025-02-08', 2),
('PLG-013', 'Bayu Pratama', '085123456793', '2025-02-10', 4),
('PLG-014', 'Fitri Handayani', '085123456794', '2025-02-12', 1),
('PLG-015', 'Rizky Ramadhan', '085123456795', '2025-02-15', 0),
('PLG-016', 'Siska Permata', '085123456796', '2025-02-18', 7),
('PLG-017', 'Dimas Pangestu', '085123456797', '2025-02-20', 2),
('PLG-018', 'Putri Wulandari', '085123456798', '2025-02-22', 3),
('PLG-019', 'Gilang Pratama', '085123456799', '2025-02-25', 1),
('PLG-020', 'Nia Ramadhani', '085123456800', '2025-02-28', 5),
('PLG-021', 'Agus Setiawan', '085123456801', '2025-03-02', 0),
('PLG-022', 'Indah Permatasari', '085123456802', '2025-03-05', 2),
('PLG-023', 'Hendra Gunawan', '085123456803', '2025-03-07', 3),
('PLG-024', 'Wahyudi Saputra', '085123456804', '2025-03-10', 1),
('PLG-025', 'Reni Anggraeni', '085123456805', '2025-03-12', 4),
('PLG-026', 'Yudi Setiawan', '085123456806', '2025-03-15', 2),
('PLG-027', 'Lestari Wulandari', '085123456807', '2025-03-18', 0),
('PLG-028', 'Doni Kusuma', '085123456808', '2025-03-20', 6),
('PLG-029', 'Mega Lestari', '085123456809', '2025-03-22', 1),
('PLG-030', 'Taufik Hidayat', '085123456810', '2025-03-25', 3),
('PLG-031', 'Arif Budiman', '085123456811', '2025-03-28', 2),
('PLG-032', 'Sartika Ningsih', '085123456812', '2025-04-01', 5),
('PLG-033', 'Rian Hidayat', '085123456813', '2025-04-03', 0),
('PLG-034', 'Anita Rahmawati', '085123456814', '2025-04-05', 1),
('PLG-035', 'Yoga Pratama', '085123456815', '2025-04-08', 4),
('PLG-036', 'Sri Lestari', '085123456816', '2025-04-10', 2),
('PLG-037', 'Doni Setiawan', '085123456817', '2025-04-12', 3),
('PLG-038', 'Wati Kusuma', '085123456818', '2025-04-15', 1),
('PLG-039', 'Bambang Supriyadi', '085123456819', '2025-04-18', 0),
('PLG-040', 'Ratna Sari', '085123456820', '2025-04-20', 8),
('PLG-041', 'Joko Purnomo', '085123456821', '2025-04-22', 2),
('PLG-042', 'Lia Marlina', '085123456822', '2025-04-25', 1),
('PLG-043', 'Feri Irawan', '085123456823', '2025-04-28', 4),
('PLG-044', 'Diana Puspita', '085123456824', '2025-05-01', 3),
('PLG-045', 'Heri Susanto', '085123456825', '2025-05-03', 0),
('PLG-046', 'Tuti Alawiyah', '085123456826', '2025-05-05', 2),
('PLG-047', 'Roni Wijaya', '085123456827', '2025-05-08', 5),
('PLG-048', 'Nining Suryani', '085123456828', '2025-05-10', 1),
('PLG-049', 'Agus Prayitno', '085123456829', '2025-05-12', 3),
('PLG-050', 'Yuni Astuti', '085123456830', '2025-05-15', 2),
('PLG-051', 'Denny Kurniawan', '085123456831', '2025-05-18', 0),
('PLG-052', 'Siti Aminah', '085123456832', '2025-05-20', 4),
('PLG-053', 'Eko Prasetyo', '085123456833', '2025-05-22', 1),
('PLG-054', 'Rika Handayani', '085123456834', '2025-05-25', 3),
('PLG-055', 'Dedi Mulyadi', '085123456835', '2025-05-28', 2),
('PLG-056', 'Wahyuni', '085123456836', '2025-06-01', 6),
('PLG-057', 'Hendrik Saputra', '085123456837', '2025-06-03', 0),
('PLG-058', 'Nurul Hidayah', '085123456838', '2025-06-05', 2),
('PLG-059', 'Iwan Setiawan', '085123456839', '2025-06-08', 1),
('PLG-060', 'Fitriana', '085123456840', '2025-06-10', 4),
('PLG-061', 'Agung Nugroho', '085123456841', '2025-06-12', 3),
('PLG-062', 'Desi Ratnasari', '085123456842', '2025-06-15', 0),
('PLG-063', 'Yanto Supriyanto', '085123456843', '2025-06-18', 2),
('PLG-064', 'Kartika Wati', '085123456844', '2025-06-20', 5),
('PLG-065', 'Budi Santoso', '085123456845', '2025-06-22', 1),
('PLG-066', 'Mimin Mintarsih', '085123456846', '2025-06-25', 3),
('PLG-067', 'Imam Syafi i', '085123456847', '2025-06-28', 2),
('PLG-068', 'Siti Rohmah', '085123456848', '2025-07-01', 0),
('PLG-069', 'Acep Hermawan', '085123456849', '2025-07-03', 4),
('PLG-070', 'Endang Setyawati', '085123456850', '2025-07-05', 1),
('PLG-071', 'Fajar Sidik', '085123456851', '2025-07-08', 3),
('PLG-072', 'Gita Gutawa', '085123456852', '2025-07-10', 2),
('PLG-073', 'Hadi Ismanto', '085123456853', '2025-07-12', 0),
('PLG-074', 'Iis Dahlia', '085123456854', '2025-07-15', 5),
('PLG-075', 'Junaedi', '085123456855', '2025-07-18', 1),
('PLG-076', 'Kiki Fatmala', '085123456856', '2025-07-20', 2),
('PLG-077', 'Lukman Hakim', '085123456857', '2025-07-22', 4),
('PLG-078', 'Marlina', '085123456858', '2025-07-25', 0),
('PLG-079', 'Nanang Hidayat', '085123456859', '2025-07-28', 3),
('PLG-080', 'Oki Setiana', '085123456860', '2025-08-01', 1),
('PLG-081', 'Panji Petualang', '085123456861', '2025-08-03', 2),
('PLG-082', 'Qori Sandioriva', '085123456862', '2025-08-05', 6),
('PLG-083', 'Rudi Tabuti', '085123456863', '2025-08-08', 0),
('PLG-084', 'Siskaeee', '085123456864', '2025-08-10', 3),
('PLG-085', 'Tukul Arwana', '085123456865', '2025-08-12', 1),
('PLG-086', 'Ussy Sulistiawaty', '085123456866', '2025-08-15', 4),
('PLG-087', 'Vicky Prasetyo', '085123456867', '2025-08-18', 2),
('PLG-088', 'Wulan Guritno', '085123456868', '2025-08-20', 0),
('PLG-089', 'Xaverius', '085123456869', '2025-08-22', 5),
('PLG-090', 'Yati Octavia', '085123456870', '2025-08-25', 1),
('PLG-091', 'Zainal Abidin', '085123456871', '2025-08-28', 2),
('PLG-092', 'Adinda Azani', '085123456872', '2025-09-01', 3),
('PLG-093', 'Billy Syahputra', '085123456873', '2025-09-03', 0),
('PLG-094', 'Cinta Laura', '085123456874', '2025-09-05', 4),
('PLG-095', 'Desta Mahendra', '085123456875', '2025-09-08', 1),
('PLG-096', 'Enzy Storia', '085123456876', '2025-09-10', 2),
('PLG-097', 'Felicya Angelista', '085123456877', '2025-09-12', 3),
('PLG-098', 'Gading Marten', '085123456878', '2025-09-15', 0),
('PLG-099', 'Hesti Purwadinata', '085123456879', '2025-09-18', 2),
('PLG-100', 'Iqbaal Ramadhan', '085123456880', '2025-09-20', 1),
('PLG-101', 'Indah Permatasari', '087654367654', '2025-09-20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pengingat_servis`
--

CREATE TABLE `pengingat_servis` (
  `id_pengingat` varchar(20) NOT NULL,
  `jenis_pengingat` varchar(50) DEFAULT NULL,
  `tanggal_jatuh_tempo` date DEFAULT NULL,
  `status_pengingat` varchar(30) DEFAULT NULL,
  `plat_nomor` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `servis`
--

CREATE TABLE `servis` (
  `no_servis` varchar(20) NOT NULL,
  `tanggal_servis` date NOT NULL,
  `jam_servis` time DEFAULT NULL,
  `asal_pendaftaran` varchar(50) DEFAULT NULL,
  `status_servis` varchar(30) DEFAULT NULL,
  `keluhan` text,
  `hasil_pemeriksaan` text,
  `waktu_selesai` time DEFAULT NULL,
  `plat_nomor` varchar(20) DEFAULT NULL,
  `id_bengkel` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `servis`
--

INSERT INTO `servis` (`no_servis`, `tanggal_servis`, `jam_servis`, `asal_pendaftaran`, `status_servis`, `keluhan`, `hasil_pemeriksaan`, `waktu_selesai`, `plat_nomor`, `id_bengkel`) VALUES
('SRV-2026-003', '2026-10-03', '09:00:00', 'Aplikasi MotoMind', 'Proses', 'Mesin kasar', NULL, NULL, 'AE-1003-CC', 'BKL-001'),
('SRV-2026-004', '2026-10-04', '11:30:00', 'Datang Langsung', 'Selesai', 'Ban bocor halus', NULL, NULL, 'AE-1005-EE', 'BKL-001'),
('SRV-2026-005', '2026-10-05', '13:00:00', 'Aplikasi MotoMind', 'Selesai', 'Servis CVT', NULL, NULL, 'AE-1006-FF', 'BKL-001'),
('SRV-2026-006', '2026-10-06', '08:00:00', 'Datang Langsung', 'Selesai', 'Ganti kampas rem', NULL, NULL, 'AE-1007-GG', 'BKL-001'),
('SRV-2026-007', '2026-10-07', '14:20:00', 'Aplikasi MotoMind', 'Proses', 'Lampu depan mati', NULL, NULL, 'AE-1008-HH', 'BKL-001'),
('SRV-2026-008', '2026-10-08', '09:45:00', 'Datang Langsung', 'Selesai', 'Ganti aki', NULL, NULL, 'AE-1009-II', 'BKL-001'),
('SRV-2026-009', '2026-10-09', '10:00:00', 'Aplikasi MotoMind', 'Selesai', 'Tune up berkala', NULL, NULL, 'AE-1010-JJ', 'BKL-001'),
('SRV-2026-010', '2026-10-10', '15:10:00', 'Datang Langsung', 'Proses', 'Ganti v-belt', NULL, NULL, 'AE-1011-KK', 'BKL-001'),
('SRV-2026-011', '2026-10-11', '08:30:00', 'Aplikasi MotoMind', 'Selesai', 'Ganti oli', NULL, NULL, 'AE-1012-LL', 'BKL-001'),
('SRV-2026-012', '2026-10-11', '09:15:00', 'Datang Langsung', 'Selesai', 'Stater berat', NULL, NULL, 'AE-1013-MM', 'BKL-001'),
('SRV-2026-013', '2026-10-12', '10:00:00', 'Aplikasi MotoMind', 'Selesai', 'Ganti rantai', NULL, NULL, 'AE-1014-NN', 'BKL-001'),
('SRV-2026-014', '2026-10-12', '11:00:00', 'Datang Langsung', 'Proses', 'Kopling selip', NULL, NULL, 'AE-1015-OO', 'BKL-001'),
('SRV-2026-015', '2026-10-13', '13:30:00', 'Aplikasi MotoMind', 'Selesai', 'Servis karbu', NULL, NULL, 'AE-1016-PP', 'BKL-001'),
('SRV-2026-016', '2026-10-13', '14:00:00', 'Datang Langsung', 'Selesai', 'Ganti ban luar', NULL, NULL, 'AE-1017-QQ', 'BKL-001'),
('SRV-2026-017', '2026-10-14', '08:45:00', 'Aplikasi MotoMind', 'Proses', 'Kelistrikan redup', NULL, NULL, 'AE-1018-RR', 'BKL-001'),
('SRV-2026-018', '2026-10-14', '09:30:00', 'Datang Langsung', 'Selesai', 'Ganti busi', NULL, NULL, 'AE-1019-SS', 'BKL-001'),
('SRV-2026-019', '2026-10-15', '10:00:00', 'Aplikasi MotoMind', 'Selesai', 'Ganti kampas kopling', NULL, NULL, 'AE-1020-TT', 'BKL-001'),
('SRV-2026-020', '2026-10-15', '15:00:00', 'Datang Langsung', 'Selesai', 'Cek CVT', NULL, NULL, 'AE-1021-UU', 'BKL-001'),
('SRV-2026-021', '2026-10-16', '08:15:00', 'Aplikasi MotoMind', 'Selesai', 'Servis rutin', NULL, NULL, 'AE-1022-VV', 'BKL-001'),
('SRV-2026-022', '2026-10-16', '09:00:00', 'Datang Langsung', 'Selesai', 'Ganti oli gardan', NULL, NULL, 'AE-1023-WW', 'BKL-001'),
('SRV-2026-024', '2026-10-17', '11:15:00', 'Datang Langsung', 'Selesai', 'Ganti filter udara', NULL, NULL, 'AE-1025-YY', 'BKL-001'),
('SRV-2026-025', '2026-10-18', '13:00:00', 'Aplikasi MotoMind', 'Selesai', 'Cek kelistrikan', NULL, NULL, 'AE-1026-ZZ', 'BKL-001'),
('SRV-2026-026', '2026-10-18', '14:00:00', 'Datang Langsung', 'Selesai', 'Ganti oli mesin', NULL, NULL, 'AE-1027-AB', 'BKL-001'),
('SRV-2026-027', '2026-10-19', '08:30:00', 'Aplikasi MotoMind', 'Proses', 'Ganti kampas rem', NULL, NULL, 'AE-1028-BC', 'BKL-001'),
('SRV-2026-028', '2026-10-19', '09:45:00', 'Datang Langsung', 'Selesai', 'Setel rantai', NULL, NULL, 'AE-1029-CD', 'BKL-001'),
('SRV-2026-029', '2026-10-20', '10:00:00', 'Aplikasi MotoMind', 'Selesai', 'Servis besar', NULL, NULL, 'AE-1030-DE', 'BKL-001'),
('SRV-2026-030', '2026-10-20', '15:20:00', 'Datang Langsung', 'Selesai', 'Ganti bohlam', NULL, NULL, 'AE-1031-EF', 'BKL-001'),
('SRV-2026-050', '2026-10-10', '09:00:00', 'Aplikasi MotoMind', 'Proses', 'Rem berdecit', NULL, NULL, 'AE-1001-AA', 'BKL-001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bengkel`
--
ALTER TABLE `bengkel`
  ADD PRIMARY KEY (`id_bengkel`);

--
-- Indexes for table `detail_servis`
--
ALTER TABLE `detail_servis`
  ADD PRIMARY KEY (`no_servis`,`id_jenis_servis`),
  ADD KEY `fk_detail_servis_jenis` (`id_jenis_servis`);

--
-- Indexes for table `jenis_servis`
--
ALTER TABLE `jenis_servis`
  ADD PRIMARY KEY (`id_jenis_servis`);

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`plat_nomor`),
  ADD KEY `fk_kendaraan_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pengingat_servis`
--
ALTER TABLE `pengingat_servis`
  ADD PRIMARY KEY (`id_pengingat`),
  ADD KEY `fk_pengingat_kendaraan` (`plat_nomor`);

--
-- Indexes for table `servis`
--
ALTER TABLE `servis`
  ADD PRIMARY KEY (`no_servis`),
  ADD KEY `fk_servis_kendaraan` (`plat_nomor`),
  ADD KEY `fk_servis_bengkel` (`id_bengkel`),
  ADD KEY `idx_servis_tanggal` (`tanggal_servis`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_servis`
--
ALTER TABLE `detail_servis`
  ADD CONSTRAINT `fk_detail_servis_jenis` FOREIGN KEY (`id_jenis_servis`) REFERENCES `jenis_servis` (`id_jenis_servis`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_detail_servis_servis` FOREIGN KEY (`no_servis`) REFERENCES `servis` (`no_servis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD CONSTRAINT `fk_kendaraan_pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengingat_servis`
--
ALTER TABLE `pengingat_servis`
  ADD CONSTRAINT `fk_pengingat_kendaraan` FOREIGN KEY (`plat_nomor`) REFERENCES `kendaraan` (`plat_nomor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `servis`
--
ALTER TABLE `servis`
  ADD CONSTRAINT `fk_servis_bengkel` FOREIGN KEY (`id_bengkel`) REFERENCES `bengkel` (`id_bengkel`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_servis_kendaraan` FOREIGN KEY (`plat_nomor`) REFERENCES `kendaraan` (`plat_nomor`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
