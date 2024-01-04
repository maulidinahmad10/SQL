-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2024 pada 04.33
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko ahmad2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `harga_beli` decimal(10,2) NOT NULL,
  `harga_jual` decimal(10,2) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga_beli`, `harga_jual`, `stok`) VALUES
(1, 'Telur Ayam/kg', 10000.00, 12000.00, 50),
(2, 'Gula Pasir/kg', 12500.00, 15000.00, 50),
(3, 'Kecap Manis 60 ml/dus', 120000.00, 140000.00, 50),
(4, 'Minyak Goreng 1 L', 14000.00, 16000.00, 50),
(5, 'Sampo Renceng', 9800.00, 11800.00, 50),
(6, 'Mie Instan Soto / dus', 96000.00, 116000.00, 50),
(7, 'Mie Instan Goreng / dus', 102000.00, 122000.00, 50),
(8, 'Garam / bungkus', 2500.00, 3000.00, 50),
(9, 'Makanan Bayi Renceng', 77000.00, 88000.00, 50),
(10, 'sosis', 2000.00, 3000.00, 50);

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama`, `jabatan`, `email`, `no_hp`) VALUES
(1, 'Agus', 'Pegawai', 'agus@example.com', '081234567890'),
(2, 'Budi', 'Manajer', 'budi@example.com', '082145678901'),
(3, 'Cici', 'Kasir', 'cici@example.com', '083856789012');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `tanggal_pembayaran` date NOT NULL,
  `no_nota` varchar(255) NOT NULL,
  `jumlah_bayar` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `tanggal_pembayaran`, `no_nota`, `jumlah_bayar`) VALUES
(1, '2023-02-28', '28/02/2023', 50000.00),
(2, '2023-02-28', '28/02/2023', 62500.00),
(3, '2023-02-28', '28/02/2023', 120000.00),
(4, '2023-02-28', '28/02/2023', 140000.00),
(5, '2023-02-28', '28/02/2023', 98000.00),
(6, '2023-02-28', '28/02/2023', 96000.00),
(7, '2023-02-28', '28/02/2023', 102000.00),
(8, '2023-02-28', '28/02/2023', 25000.00),
(9, '2023-02-28', '28/02/2023', 77000.00),
(10, '2023-02-28', '28-02-2023', 4000.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(11) NOT NULL,
  `tanggal_penjualan` date NOT NULL,
  `no_nota` varchar(255) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id`, `tanggal_penjualan`, `no_nota`, `id_barang`, `id_karyawan`) VALUES
(1, '2023-10-26', '26/10/2023', 1, 1),
(2, '2023-10-26', '26-10-2023', 2, 1),
(3, '2023-10-26', '26-10-2023', 3, 1),
(4, '2023-10-26', '26-10-2023', 4, 1),
(5, '2023-10-26', '26-10-2023', 5, 1),
(6, '2023-10-26', '26-10-2023', 6, 1),
(7, '2023-10-26', '26-10-2023', 7, 1),
(8, '2023-10-26', '26-10-2023', 8, 1),
(9, '2023-10-26', '26-10-2023', 9, 1),
(10, '2023-10-26', '26-10-2023', 10, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telepon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id`, `nama_toko`, `alamat`, `no_telepon`) VALUES
(1, 'Toko ahmad2', 'Jl. Raya Solo - Yogyakarta No. 231, Sleman, Yogyakarta', '081234567890');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_karyawan` (`id_karyawan`);

--
-- Indeks untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `toko`
--
ALTER TABLE `toko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

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
