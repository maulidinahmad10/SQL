-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jul 2023 pada 06.03
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan_ahmad`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `Id-anggota` int(15) NOT NULL,
  `nama-anggota` varchar(50) NOT NULL,
  `alamat-anggota` text NOT NULL,
  `pekerjaan` char(50) NOT NULL,
  `nis-anggota` int(50) NOT NULL,
  `no-telpon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`Id-anggota`, `nama-anggota`, `alamat-anggota`, `pekerjaan`, `nis-anggota`, `no-telpon`) VALUES
(1, 'Afdal_keraman', 'medan', 'mahasiswa', 606, '822647645'),
(2, 'Fadil khairul', 'NTT', 'mahasiswa', 5261, '813653537'),
(3, 'Egi pratama', 'Sulawesi', 'pengusaha', 1837, '852635356'),
(4, 'Eky iskandar', 'Aceh', 'karyawan caffe', 1110, '852652628'),
(5, 'Ario syahputra', 'Maluku', 'wirausaha', 6745, '822654765');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `Id-anggota` int(5) NOT NULL,
  `nama-buku` char(25) NOT NULL,
  `nama-peminjam` varchar(50) NOT NULL,
  `no.buku` int(5) NOT NULL,
  `pengarang` varchar(25) NOT NULL,
  `denda-rusak/hillang` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`Id-anggota`, `nama-buku`, `nama-peminjam`, `no.buku`, `pengarang`, `denda-rusak/hillang`) VALUES
(1, 'jigokuraku', 'Eky iskandar', 53, 'Yūji Kaku', 'Seharga buku tersebut.'),
(2, 'Funiculi funicula', 'Fadil khairul', 67, 'Toshikazu Kawaguchi', 'Seharga buku tersebut.'),
(3, 'SPY family', 'Egi pratama', 13, 'ENDOU TATSUYA', 'Seharga buku tersebut.'),
(4, '172 Days', 'Ario syahputra', 6, 'Nadzira shafa', 'Seharga buku tersebut.'),
(5, 'Tentang kamu', 'Afdal keraman', 23, 'Tere liye', 'Seharga buku tersebut.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `donatur`
--

CREATE TABLE `donatur` (
  `nama-donatur` varchar(50) NOT NULL,
  `alamat-donatur` text NOT NULL,
  `bukti-donatur` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `donatur`
--

INSERT INTO `donatur` (`nama-donatur`, `alamat-donatur`, `bukti-donatur`) VALUES
('Eko kurniawan', 'Kalimantan', 'Terlampir cek (300.000)'),
('Ilham cecep', 'Jawa timur', 'Terlampir cek (420.000)'),
('Aria coleng', 'bali', 'Terlampir cek (150.000)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kerlambatan`
--

CREATE TABLE `kerlambatan` (
  `keterlambatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kerlambatan`
--

INSERT INTO `kerlambatan` (`keterlambatan`) VALUES
('Hari 3 (RP.2000)'),
('Hari 1 (RP.500)'),
('Hari 5 (RP.4000)'),
('Hari 2 (RP.1000)'),
('Hari 7 (Rp.5500)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `no` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `biaya` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`no`, `nama`, `tanggal`, `status`, `biaya`) VALUES
(1, 'Afdal keraman', '13 maret 2019', 'Mahasiswa', '10.000'),
(2, 'Fadil khairul', '25 maret 2019', 'Mahasiswa', '10.000'),
(3, 'Egi pratama', '23 maret 2019', 'Pengusaha', '10.000'),
(4, 'Eky iskandar', '17 maret 2019', 'Karyawan caffe', '10.000'),
(5, 'Ario syahputra', '16 maret 2019', 'Wirausaha', '10.000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`Id-anggota`);

--
-- Indeks untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
