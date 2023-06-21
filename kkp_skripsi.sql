-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2023 at 06:10 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kkp_skripsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen_pembimbing`
--

CREATE TABLE `dosen_pembimbing` (
  `nip` varchar(10) NOT NULL,
  `Nama` varchar(35) DEFAULT NULL,
  `Departemen` varchar(40) DEFAULT NULL,
  `Jabatan` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen_pembimbing`
--

INSERT INTO `dosen_pembimbing` (`nip`, `Nama`, `Departemen`, `Jabatan`) VALUES
('225110', 'Zulfikar Khoirul', 'Lingkungan', 'Dosen'),
('225123', 'Dimas Syaputra', 'Informatika', 'Kaprodi'),
('225124', 'Bambang Suryanto', 'Informatika', 'Dosen'),
('225125', 'Widodo Kusuma', 'Akutansi', 'Dosen'),
('225126', 'Ling Sunarti', 'Agama', 'Dosen'),
('225127', 'Sudjarwo', 'Hukum', 'Dosen'),
('225128', 'Joko Susilo', 'Matematika', 'Dosen');

-- --------------------------------------------------------

--
-- Table structure for table `kkp`
--

CREATE TABLE `kkp` (
  `id` varchar(10) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `judul` varchar(100) NOT NULL,
  `id_p` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kkp`
--

INSERT INTO `kkp` (`id`, `nim`, `nip`, `tgl_mulai`, `tgl_selesai`, `judul`, `id_p`) VALUES
('678901', '31221010', '225125', '2022-04-04', '2022-06-05', 'Analisis Sumber Dan Penggunaan Modal Kerja di PT.Indofood', '66789'),
('678911', '31221994', '225126', '2021-03-01', '2021-06-06', 'Analisis Risk dan Return Saham Syariah Tahun 2021 ( Study Perbandingan Saham Indeks Saham Syariah In', '66785'),
('678912', '31222320', '225124', '2023-07-10', '2023-09-11', 'PERANCANGAN SISTEM INFORMASI PENILAIAN KINERJA BULANAN PEGAWAI BERBASIS WEB ', '66788'),
('678913', '31223036', '225123', '2023-02-20', '2023-04-23', 'Perancangan Sistem Informasi Data Kepegawaian Metode Waterfall', '66786'),
('678914', '31223127', '225110', '2024-01-08', '2024-03-09', 'Pengembangan Sistem Pengolahan Limbah Cair Industri dengan Metode Elektrokoagulasi', '66789'),
('678915', '31223364', '225128', '2023-06-19', '2023-08-21', 'Kajian Perbandingan Kinerja Algoritma PageRank dan HITS dalam Menentukan Halaman Web Terpopuler pada', '66787'),
('678916', '31224576', '225127', '2021-04-05', '2021-06-07', 'ANALISIS KASUS TINDAK PIDANA KORUPSI YANG DILAKUKAN OLEH KARYAWAN', '66788'),
('678917', '31224760', '225127', '2022-08-01', '2022-10-03', 'ANALISA HUKUM PIDANA DAN KRIMINOLOGI TERHADAP PUTUSAN HAKIM SEBELUM DAN SESUDAH BERLAKUNYA UNDANG-UN', '66786'),
('678918', '31227893', '225123', '2023-09-25', '2023-11-26', 'PERANCANGAN SISTEM INFORMASI KEUANGAN EKSPOR IMPOR BERBASIS WEBSITE ', '66785'),
('678919', '31229943', '225128', '2021-03-01', '2021-06-02', 'Analisis Perbandingan Metode Regresi Linear Sederhana dan Berganda pada Data Aktual dan Simulas', '66787');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(10) NOT NULL,
  `Nama` varchar(35) DEFAULT NULL,
  `Jurusan` varchar(30) DEFAULT NULL,
  `Angkatan` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `Nama`, `Jurusan`, `Angkatan`) VALUES
('31221010', 'Muhammad Raehan', 'Akuntansi', '2021'),
('31221994', 'Thoriq Azhar', 'Agama Islam', '2020'),
('31222320', 'Muhammad Radja', 'Informatika', '2022'),
('31223036', 'Kumara Davin', 'Informatika', '2021'),
('31223127', 'Nandika Ilham', 'Lingkungan', '2023'),
('31223364', 'Micola Pangestu', 'Matematika', '2022'),
('31224576', 'Akram Farrasanto', 'Hukum', '2020'),
('31224760', 'Putri Wahyuningsi ', 'Hukum', '2021'),
('31227893', 'Rian Fauzi', 'Informatika', '2022'),
('31229943', 'Adel Putri', 'Matematika', '2020');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id_p` varchar(10) NOT NULL,
  `nama_perusahaan` varchar(35) DEFAULT NULL,
  `alamat` varchar(45) DEFAULT NULL,
  `kontak` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`id_p`, `nama_perusahaan`, `alamat`, `kontak`) VALUES
('66785', 'Unilever', 'Bandung', '081325647889'),
('66786', 'Sidomuncul', 'Makassar', '089866534018'),
('66787', 'PLN', 'Bekasi', '081941352662'),
('66788', 'Pertamina', 'Tanggerang', '081351677741'),
('66789', 'Indofood', 'Jakarta', '081461358261');

-- --------------------------------------------------------

--
-- Table structure for table `skripsi`
--

CREATE TABLE `skripsi` (
  `id` varchar(10) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `tgl_selesai` date NOT NULL,
  `nim` varchar(10) NOT NULL,
  `nip` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skripsi`
--

INSERT INTO `skripsi` (`id`, `judul`, `tgl_selesai`, `nim`, `nip`) VALUES
('78739', 'Analisis Dinamik Model Matematika Penyebaran Geng di Masyarakat', '2022-06-02', '31229943', '225128'),
('787530', 'Intensitas Suku Bunga di Bidang Keuangan dan Akuntansi.', '2023-02-06', '31221010', '225125'),
('787531', 'Nilai-Nilai Pendidikan Akhlak Dalam Al-Qur\'an', '2022-07-09', '31221994', '225126'),
('787532', 'Algoritma Genetika Ganda untuk Capacitated Vehicle Routing Problem', '2024-04-15', '31222320', '225124'),
('787533', 'Pembangunan Aplikasi Penyusunan Jadwal Kuliah Menggunakan Algoritma Semut', '2023-08-08', '31223036', '225123'),
('787534', 'Analisis Kandungan Mikroplastik Di Sungai ', '2025-01-02', '31223127', '225110'),
('787535', 'Model Matematika Inventory Lot Sizing dengan Pemiihan Supplier', '2024-09-05', '31223364', '225128'),
('787536', 'Undang-undang bisnis melawan korupsi di dalam perusahaan', '2022-05-20', '31224576', '225127'),
('787537', 'Sidang kasus di Pengadilan Hak Asasi Manusia Internasional ', '2023-11-12', '31224760', '225127'),
('787538', 'Karakterisasi Kelengkapan Ruang Metrik Melalui Eksistensi titik tetap', '2024-03-18', '31227893', '225123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen_pembimbing`
--
ALTER TABLE `dosen_pembimbing`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `kkp`
--
ALTER TABLE `kkp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nim` (`nim`),
  ADD KEY `nip` (`nip`),
  ADD KEY `id_p` (`id_p`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id_p`);

--
-- Indexes for table `skripsi`
--
ALTER TABLE `skripsi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nim` (`nim`),
  ADD KEY `nip` (`nip`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kkp`
--
ALTER TABLE `kkp`
  ADD CONSTRAINT `kkp_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`),
  ADD CONSTRAINT `kkp_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `dosen_pembimbing` (`nip`),
  ADD CONSTRAINT `kkp_ibfk_3` FOREIGN KEY (`id_p`) REFERENCES `perusahaan` (`id_p`);

--
-- Constraints for table `skripsi`
--
ALTER TABLE `skripsi`
  ADD CONSTRAINT `skripsi_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`),
  ADD CONSTRAINT `skripsi_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `dosen_pembimbing` (`nip`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
