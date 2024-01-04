-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2024 pada 03.39
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `indomart`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `id_toko` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `jumlah_barang` int(150) NOT NULL,
  `harga_barang` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `id_toko`, `nama_barang`, `jumlah_barang`, `harga_barang`) VALUES
(1, 1, 'INDOMIE KARI/.AYAM PG90', 12, '3700'),
(2, 1, 'INDOMIE REAL AYM L100', 14, '5000'),
(3, 1, 'NU GREEN FA ORG 330', 15, '4500'),
(4, 1, 'POP MIE AYAM 75G', 11, '4700'),
(5, 1, 'TORABIKA CRMY.LAT 5S', 7, '8900'),
(6, 1, 'H&S A/D CI AN&BLC 160', 3, '27900'),
(7, 1, 'SEDAAP MII SOTO 5\'S', 4, '12500'),
(8, 1, 'ULTRA UHT CHOCO 250M', 7, '6200'),
(9, 1, 'ULTRA UHT STRAW 250M', 5, '6200'),
(10, 1, 'INDOMI GOLING SPC 80', 19, '2600');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama_karyawan` varchar(11) NOT NULL,
  `alamat` varchar(11) NOT NULL,
  `no_hp` text NOT NULL,
  `shift` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `alamat`, `no_hp`, `shift`) VALUES
(1, 'dimas', 'jl. pucung', '085877778989', 'malam'),
(2, 'kurniawan', 'jl. kuli', '089990807657', 'pagi'),
(3, 'budi', 'jl. merkuri', '087765467765', 'siang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `harga_jual` int(255) NOT NULL,
  `tunai` int(255) NOT NULL,
  `diskon` int(255) NOT NULL,
  `total_harga` int(255) NOT NULL,
  `kembalian` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_penjualan`, `harga_jual`, `tunai`, `diskon`, `total_harga`, `kembalian`) VALUES
(1, 1, 84800, 100000, 500, 84300, 15700);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `harga_barang` decimal(10,0) NOT NULL,
  `tanggal_pembelian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_barang`, `id_karyawan`, `nama_barang`, `jumlah_barang`, `harga_barang`, `tanggal_pembelian`) VALUES
(1, 1, 3, 'INDOMIE KARI/.AYAM PG90', 1, '3700', '2002-09-20'),
(2, 2, 3, 'INDOMIE KARI/.AYAM PG90', 1, '3700', '2002-09-20'),
(3, 2, 3, 'INDOMIE REAL AYM L100', 1, '5000', '2002-09-20'),
(4, 3, 3, 'NU GREEN FA ORG 330', 1, '4700', '2002-09-20'),
(5, 4, 3, 'POP MIE AYAM 75G', 1, '4500', '2002-09-20'),
(6, 5, 3, 'TORABIKA CRMY.LAT 5S', 1, '8900', '2002-09-20'),
(7, 7, 3, 'SEDAAP MII SOTO 5\'S', 1, '12500', '2002-09-20'),
(8, 8, 3, 'ULTRA UHT CHOCO 250M', 1, '6200', '2002-09-20'),
(9, 9, 3, 'ULTRA UHT STRAW 250M', 1, '6200', '2002-09-20'),
(10, 10, 3, 'INDOMI GOLING SPC 80', 2, '2600', '2002-09-20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` varchar(255) NOT NULL,
  `no_telp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `no_telp`) VALUES
(1, 'INDOMART', 'JL. WOLTERINGISIDI, GENUKSARI, GENUK , SEKARANG, SEMARANG, 50231', '08574097714');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_toko` (`id_toko`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_penjualan` (`id_penjualan`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_karyawan` (`id_karyawan`);

--
-- Indeks untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_toko`) REFERENCES `toko` (`id_toko`);

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_penjualan`) REFERENCES `penjualan` (`id_penjualan`);

--
-- Ketidakleluasaan untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
