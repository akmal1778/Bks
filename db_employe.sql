-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Mar 2025 pada 20.41
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_employe`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_karyawan`
--

CREATE TABLE `data_karyawan` (
  `NIK` int(11) NOT NULL,
  `NAMA` varchar(30) NOT NULL,
  `JABATAN` varchar(30) NOT NULL,
  `LOCATION` varchar(30) NOT NULL,
  `STATUS` varchar(30) NOT NULL,
  `NAMA_OUTLET` varchar(30) NOT NULL,
  `TGL_MASUK` date NOT NULL,
  `TGL_AKHIR` date DEFAULT NULL,
  `ALAMAT_EMAIL` varchar(30) NOT NULL,
  `PHOTO` varchar(255) NOT NULL,
  `AREA` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_karyawan`
--

INSERT INTO `data_karyawan` (`NIK`, `NAMA`, `JABATAN`, `LOCATION`, `STATUS`, `NAMA_OUTLET`, `TGL_MASUK`, `TGL_AKHIR`, `ALAMAT_EMAIL`, `PHOTO`, `AREA`) VALUES
(1013100522, 'Fafa Fachrizal', 'Cinema Manager', 'CInema', 'PERMANENT', 'COURTS KHI BEKASI', '2025-03-22', '2045-09-09', 'fachrizal0390@gmail.com', 'http://localhost/employe/uploads/files/a5w7fu0_xskng6o.jpeg', 'BEKASI 1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_outlet`
--

CREATE TABLE `db_outlet` (
  `Outlet_code` int(11) NOT NULL,
  `Nama_outlet` varchar(30) NOT NULL,
  `Area` varchar(30) NOT NULL,
  `Region` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `id` int(11) NOT NULL,
  `SCORE` varchar(255) NOT NULL,
  `GRADE` varchar(255) NOT NULL,
  `KETERANGAN` varchar(255) NOT NULL,
  `Outlet` varchar(255) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `Area` varchar(255) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `NIK` varchar(255) NOT NULL,
  `Jobdesk` varchar(255) NOT NULL,
  `Tanggal_Kontrak_Pertama` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `PenilaianKe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penilaian`
--

INSERT INTO `penilaian` (`id`, `SCORE`, `GRADE`, `KETERANGAN`, `Outlet`, `Location`, `Area`, `Nama`, `NIK`, `Jobdesk`, `Tanggal_Kontrak_Pertama`, `Status`, `PenilaianKe`) VALUES
(1, '8', 'B', 'LULUS', 'COURTS KHI BEKASI', 'CInema', 'BEKASI 1', 'Ali Sudrajat', '1072101883', 'Technical Team Lead', '01/01/2025', 'PERMANENT', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Administrator'),
(2, 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_permissions`
--

CREATE TABLE `role_permissions` (
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `action_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `role_permissions`
--

INSERT INTO `role_permissions` (`permission_id`, `role_id`, `page_name`, `action_name`) VALUES
(39, 1, 'data_karyawan', 'list'),
(40, 1, 'data_karyawan', 'view'),
(41, 1, 'data_karyawan', 'add'),
(42, 1, 'data_karyawan', 'edit'),
(43, 1, 'data_karyawan', 'editfield'),
(44, 1, 'data_karyawan', 'delete'),
(45, 1, 'data_karyawan', 'import_data'),
(46, 1, 'user', 'list'),
(47, 1, 'user', 'view'),
(48, 1, 'user', 'add'),
(49, 1, 'user', 'edit'),
(50, 1, 'user', 'editfield'),
(51, 1, 'user', 'delete'),
(52, 1, 'user', 'import_data'),
(53, 1, 'db_outlet', 'list'),
(54, 1, 'db_outlet', 'view'),
(55, 1, 'db_outlet', 'add'),
(56, 1, 'db_outlet', 'edit'),
(57, 1, 'db_outlet', 'editfield'),
(58, 1, 'db_outlet', 'delete'),
(59, 1, 'user', 'userregister'),
(60, 1, 'user', 'accountedit'),
(61, 1, 'user', 'accountview'),
(62, 1, 'role_permissions', 'list'),
(63, 1, 'role_permissions', 'view'),
(64, 1, 'role_permissions', 'add'),
(65, 1, 'role_permissions', 'edit'),
(66, 1, 'role_permissions', 'editfield'),
(67, 1, 'role_permissions', 'delete'),
(68, 1, 'roles', 'list'),
(69, 1, 'roles', 'view'),
(70, 1, 'roles', 'add'),
(71, 1, 'roles', 'edit'),
(72, 1, 'roles', 'editfield'),
(73, 1, 'roles', 'delete'),
(74, 1, 'penilaian', 'list'),
(75, 1, 'penilaian', 'view'),
(76, 1, 'penilaian', 'add'),
(77, 1, 'penilaian', 'edit'),
(78, 1, 'penilaian', 'editfield'),
(79, 1, 'penilaian', 'delete'),
(80, 1, 'penilaian', 'aspek'),
(81, 2, 'user', 'userregister'),
(82, 2, 'user', 'accountedit'),
(83, 2, 'user', 'accountview'),
(84, 2, 'penilaian', 'list'),
(85, 2, 'penilaian', 'view'),
(86, 2, 'penilaian', 'add'),
(87, 2, 'penilaian', 'edit'),
(88, 2, 'penilaian', 'editfield'),
(89, 2, 'penilaian', 'delete'),
(90, 2, 'penilaian', 'aspek');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `nik` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2025-06-23 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL,
  `user_role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`nik`, `user_name`, `password`, `email`, `photo`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`, `user_role_id`) VALUES
(1, 'AKMAL', '$2y$10$zeCslA8KLbUBtRTbkPl6Ju2Elu/YUEBNwrjGvnkZepLhP/Mbevryu', 'akmalazag2@gmail.com', 'http://localhost/employe/uploads/files/k604azrqtenc58d.jpg', 'bc2393ddcece4b2847b35f90a595e6ae', NULL, '2025-06-23 00:00:00', NULL, 1),
(2, 'Ulan Tania Sari', '$2y$10$OM4qVg45H.IgMfwNZXt.Xu2YRTQBG7GCNudQo8BpX7uq12naC/.NK', 'fachrizal0390@gmail.com', 'http://localhost/employe/uploads/files/ysbe8phrnki21lm.jpg', NULL, NULL, '2025-06-23 00:00:00', NULL, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_karyawan`
--
ALTER TABLE `data_karyawan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indeks untuk tabel `db_outlet`
--
ALTER TABLE `db_outlet`
  ADD PRIMARY KEY (`Outlet_code`);

--
-- Indeks untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indeks untuk tabel `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`nik`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_karyawan`
--
ALTER TABLE `data_karyawan`
  MODIFY `NIK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1013100523;

--
-- AUTO_INCREMENT untuk tabel `db_outlet`
--
ALTER TABLE `db_outlet`
  MODIFY `Outlet_code` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `nik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
