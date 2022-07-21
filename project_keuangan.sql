-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Sep 2021 pada 16.14
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_keuangan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank`
--

CREATE TABLE `bank` (
  `bank_id` int(11) NOT NULL,
  `bank_nama` varchar(255) NOT NULL,
  `bank_nomor` varchar(255) NOT NULL,
  `bank_pemilik` varchar(255) NOT NULL,
  `bank_saldo` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `bank`
--

INSERT INTO `bank` (`bank_id`, `bank_nama`, `bank_nomor`, `bank_pemilik`, `bank_saldo`) VALUES
(1, 'BPD JATENG', '', 'UPTD PUSKESMAS CEPIRING', 235667531);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hutang`
--

CREATE TABLE `hutang` (
  `hutang_id` int(11) NOT NULL,
  `hutang_tanggal` date NOT NULL,
  `hutang_nominal` int(11) NOT NULL,
  `hutang_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `hutang`
--

INSERT INTO `hutang` (`hutang_id`, `hutang_tanggal`, `hutang_nominal`, `hutang_keterangan`) VALUES
(2, '2019-06-01', 10000, 'Setor\r\n\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori`) VALUES
(18, 'Capeng'),
(19, 'KIR Kesehatan'),
(20, 'Persalinan'),
(21, 'Ambulance'),
(22, 'Tindakan medik'),
(23, 'KB'),
(24, 'KIA'),
(25, 'Tindakan Lab'),
(26, 'Tindakan Gigi'),
(27, 'Belanja renovasi talang dan atap ruang tunggu'),
(28, 'Belanja pemasangan ventilasi dapur dan gudang'),
(29, 'Belanja pengecetan, keramik, eternit, dapur, dan gudang'),
(30, 'Belanja Pengelola kebersihan'),
(31, 'Belanja PDAM'),
(32, 'Belanja telpon/internet'),
(33, 'belanja listrik'),
(34, 'Belanja makan minum'),
(35, 'Keur umum'),
(36, 'ambulance pra rujuk'),
(37, 'IVA'),
(38, 'Belanja Pengisian tab gas dapur'),
(39, 'Belanja Fotocopy'),
(40, 'Belanja Solar'),
(41, 'Belanja Pertamax'),
(42, 'Belanja selang dan tab gas'),
(44, 'Belanja makan minum akomodasi pasien'),
(46, 'Belanja makan minum rapat managemen'),
(47, 'Belanja Figura'),
(48, 'Belanja ATK'),
(49, 'Belanja alat dan bahan kebersihan'),
(50, 'Belanja makan minum keg Prolanis Juni'),
(52, 'Belanja suku cadang ambulance'),
(53, 'Belanja servis ambulance'),
(54, 'Belanja pengelola kebersihan sampah medis juni'),
(55, 'renovasi pemasangan keramik depan R Rontgen'),
(56, 'renovasi plafon depan R Rontgen'),
(57, 'renovasi depan gudang bg selatan dan selokan'),
(58, 'renovasi tempat jemuran dan selokan'),
(59, 'renovasi peninggian jalan'),
(60, 'belanja barcode scanner'),
(61, 'perbaikan jendela dan pintu UGD'),
(62, 'Pemasangan Akrilik UGD'),
(64, 'Belanja Servis Kipas'),
(65, 'Pembuatan pos jaga'),
(66, 'Belanja materai'),
(67, 'Belanja kasur busa lipat dan bantal'),
(68, 'Belanja alat pel dan refill'),
(69, 'Belanja honor instruktur senam karyawan'),
(70, 'Belanja honor pegawai BLUD '),
(71, 'Belanja makan minum rapat panitia rekrutmen TPK'),
(72, 'Belanja cuci ambulance'),
(73, 'Kapitasi JKN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `piutang`
--

CREATE TABLE `piutang` (
  `piutang_id` int(11) NOT NULL,
  `piutang_tanggal` date NOT NULL,
  `piutang_nominal` int(11) NOT NULL,
  `piutang_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `piutang`
--

INSERT INTO `piutang` (`piutang_id`, `piutang_tanggal`, `piutang_nominal`, `piutang_keterangan`) VALUES
(1, '2019-06-22', 1000000, 'Hutang oleh rahman'),
(3, '2019-06-23', 70000, 'Hutang oleh jony untuk belu pulsa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_tanggal` date NOT NULL,
  `transaksi_jenis` enum('Pengeluaran','Pemasukan') NOT NULL,
  `transaksi_kategori` int(11) NOT NULL,
  `transaksi_nominal` int(11) NOT NULL,
  `transaksi_keterangan` text NOT NULL,
  `transaksi_bank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_tanggal`, `transaksi_jenis`, `transaksi_kategori`, `transaksi_nominal`, `transaksi_keterangan`, `transaksi_bank`) VALUES
(40, '2021-06-02', 'Pemasukan', 20, 3000000, '', 1),
(41, '2021-06-02', 'Pemasukan', 35, 1236000, '', 1),
(83, '2021-06-02', 'Pemasukan', 18, 300000, '', 1),
(149, '2021-06-02', 'Pengeluaran', 27, 4384000, '', 1),
(150, '2021-06-04', 'Pemasukan', 18, 300000, '', 1),
(151, '2021-06-04', 'Pemasukan', 19, 155000, '', 1),
(152, '2021-06-05', 'Pemasukan', 37, 370000, '', 1),
(153, '2021-06-05', 'Pemasukan', 22, 1500000, '', 1),
(154, '2021-06-05', 'Pengeluaran', 39, 574800, '', 1),
(155, '2021-06-05', 'Pengeluaran', 40, 200000, '', 1),
(156, '2021-06-05', 'Pengeluaran', 72, 150000, '', 1),
(157, '2021-06-05', 'Pengeluaran', 41, 300000, '', 1),
(158, '2021-06-05', 'Pengeluaran', 42, 200000, '', 1),
(160, '2021-06-07', 'Pemasukan', 25, 200000, '', 1),
(161, '2021-06-07', 'Pemasukan', 20, 2650000, '', 1),
(162, '2021-06-07', 'Pemasukan', 24, 450000, '', 1),
(163, '2021-06-07', 'Pemasukan', 26, 1200000, '', 1),
(164, '2021-06-07', 'Pemasukan', 23, 150000, '', 1),
(165, '2021-06-07', 'Pengeluaran', 44, 2424500, '', 1),
(167, '2021-06-07', 'Pengeluaran', 32, 696356, '', 1),
(168, '2021-06-08', 'Pemasukan', 24, 150000, '', 1),
(169, '2021-06-08', 'Pemasukan', 18, 350000, '', 1),
(170, '2021-06-08', 'Pemasukan', 36, 3000000, '', 1),
(171, '2021-06-08', 'Pengeluaran', 30, 300000, '', 1),
(172, '2021-06-08', 'Pengeluaran', 31, 463493, '', 1),
(173, '2021-06-08', 'Pengeluaran', 38, 88000, '', 1),
(174, '2021-06-09', 'Pemasukan', 21, 2450000, '', 1),
(175, '2021-06-09', 'Pemasukan', 24, 480000, '', 1),
(176, '2021-06-09', 'Pengeluaran', 48, 2570000, '', 1),
(177, '2021-06-11', 'Pemasukan', 20, 3000000, '', 1),
(178, '2021-06-11', 'Pemasukan', 37, 455000, '', 1),
(179, '2021-06-11', 'Pemasukan', 25, 800000, '', 1),
(180, '2021-06-11', 'Pengeluaran', 50, 1650000, '', 1),
(181, '2021-06-11', 'Pengeluaran', 52, 600000, '', 1),
(182, '2021-06-11', 'Pengeluaran', 53, 400000, '', 1),
(189, '2021-06-16', 'Pemasukan', 21, 1500000, '', 1),
(190, '2021-06-16', 'Pemasukan', 18, 360000, '', 1),
(191, '2021-06-16', 'Pemasukan', 37, 1050000, '', 1),
(192, '2021-06-16', 'Pemasukan', 26, 400000, '', 1),
(193, '2021-06-16', 'Pemasukan', 23, 100000, '', 1),
(194, '2021-06-17', 'Pemasukan', 73, 150000000, '', 1),
(195, '2021-06-18', 'Pengeluaran', 60, 1650000, '', 1),
(196, '2021-06-18', 'Pengeluaran', 61, 235000, '', 1),
(197, '2021-06-21', 'Pemasukan', 35, 1500000, '', 1),
(198, '2021-06-21', 'Pemasukan', 23, 250000, '', 1),
(199, '2021-06-21', 'Pemasukan', 36, 1500000, '', 1),
(200, '2021-06-21', 'Pemasukan', 26, 860000, '', 1),
(201, '2021-06-21', 'Pengeluaran', 62, 2145450, '', 1),
(202, '2021-06-21', 'Pengeluaran', 64, 220000, '', 1),
(203, '2021-06-21', 'Pengeluaran', 66, 430000, '', 1),
(204, '2021-06-21', 'Pengeluaran', 39, 142000, '', 1),
(205, '2021-06-21', 'Pengeluaran', 67, 475000, '', 1),
(206, '2021-06-28', 'Pemasukan', 35, 1300000, '', 1),
(207, '2021-06-28', 'Pemasukan', 20, 2000000, '', 1),
(208, '2021-06-28', 'Pengeluaran', 68, 710000, '', 1),
(209, '2021-06-28', 'Pengeluaran', 69, 450000, '', 1),
(210, '2021-06-30', 'Pemasukan', 25, 1000000, '', 1),
(211, '2021-06-30', 'Pemasukan', 26, 500000, '', 1),
(212, '2021-06-30', 'Pemasukan', 18, 60000, '', 1),
(213, '2021-06-30', 'Pengeluaran', 71, 420000, '', 1),
(214, '2021-06-30', 'Pengeluaran', 70, 5530000, '', 1),
(215, '2021-06-30', 'Pengeluaran', 67, 650000, '', 1),
(216, '2021-06-30', 'Pengeluaran', 54, 1333370, '', 1),
(217, '2021-06-30', 'Pengeluaran', 55, 2375000, '', 1),
(218, '2021-06-30', 'Pengeluaran', 56, 1933000, '', 1),
(219, '2021-06-30', 'Pengeluaran', 57, 8754000, '', 1),
(220, '2021-06-30', 'Pengeluaran', 58, 6454500, '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(100) NOT NULL,
  `user_username` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_foto` varchar(100) DEFAULT NULL,
  `user_level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_foto`, `user_level`) VALUES
(1, 'Slamet', 'admin', '0192023a7bbd73250516f069df18b500', '482937136_avatar.png', 'administrator'),
(6, 'Septi', 'manajemen', 'cc2bd8f09bb88b5dd20f9b432631b8ca', '', 'manajemen');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indeks untuk tabel `hutang`
--
ALTER TABLE `hutang`
  ADD PRIMARY KEY (`hutang_id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `piutang`
--
ALTER TABLE `piutang`
  ADD PRIMARY KEY (`piutang_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bank`
--
ALTER TABLE `bank`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `hutang`
--
ALTER TABLE `hutang`
  MODIFY `hutang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT untuk tabel `piutang`
--
ALTER TABLE `piutang`
  MODIFY `piutang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
