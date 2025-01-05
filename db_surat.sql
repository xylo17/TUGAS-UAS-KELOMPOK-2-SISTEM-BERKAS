-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jan 2025 pada 18.35
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_surat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_Nomor` int(11) NOT NULL,
  `Id_Pengguna` varchar(255) NOT NULL,
  `Nama_Pengguna` varchar(50) NOT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Photo` varchar(500) NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2025-04-03 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_Nomor`, `Id_Pengguna`, `Nama_Pengguna`, `Password`, `Photo`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`) VALUES
(2, '03tple005', 'kelompok 6', '$2y$10$3NAyKw7r9cXO/jgkkFeEGeCPJn6.k30j4f7TK9j8sdMYqE0T4Aid2', 'http://localhost/appsuratmasukkeluar/uploads/files/8n94iqlbp_curzj.jpg', NULL, NULL, '2025-04-03 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `No_Agenda` int(11) NOT NULL,
  `Tanggal_Surat` date NOT NULL,
  `Tujuan_Surat` varchar(255) NOT NULL,
  `No_Surat` varchar(255) NOT NULL,
  `Perihal` varchar(255) NOT NULL,
  `File_Surat` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `surat_keluar`
--

INSERT INTO `surat_keluar` (`No_Agenda`, `Tanggal_Surat`, `Tujuan_Surat`, `No_Surat`, `Perihal`, `File_Surat`) VALUES
(1, '0000-00-00', 'Tangerang', '123456', 'Kerja Kelompok', 'http://localhost/appsuratmasukkeluar/uploads/files/sl3z7eab5ng_4f2.doc'),
(2, '2024-12-31', 'surabaya', '123123', 'kerjasama', 'http://localhost/appsuratmasukkeluar/uploads/files/81eqfxc7hzvwpt6.docx');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `No_Agenda` int(11) NOT NULL,
  `No_Surat` varchar(255) NOT NULL,
  `Tanggal_Surat` date NOT NULL,
  `Tanggal_Terima` datetime NOT NULL,
  `Asal_Surat` varchar(255) NOT NULL,
  `Perihal` varchar(255) NOT NULL,
  `File_Surat` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `surat_masuk`
--

INSERT INTO `surat_masuk` (`No_Agenda`, `No_Surat`, `Tanggal_Surat`, `Tanggal_Terima`, `Asal_Surat`, `Perihal`, `File_Surat`) VALUES
(1, '123456', '2024-12-30', '2024-12-31 12:00:00', 'Tangerang', 'Kerjasama', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_Nomor`);

--
-- Indeks untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`No_Agenda`);

--
-- Indeks untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`No_Agenda`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_Nomor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `No_Agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `No_Agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
