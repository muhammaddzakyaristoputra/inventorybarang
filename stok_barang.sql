-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jul 2024 pada 18.17
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stok_barang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0fh0via5b77f8pp5prcuslvjmpi9fe04', '::1', 1721708548, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732313730383534383b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31383a22666f746f313731383835373739322e6a7067223b),
('3t0nmdbk5ilquqmohlhjqte9et3stin4', '::1', 1721709532, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732313730393533323b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31383a22666f746f313731383835373739322e6a7067223b737563636573737c733a33383a22446174612070656e6a75616c616e20626572686173696c20646974616d6261686b616e2e2e2e223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d),
('m0b42l92a32pb19hre58tc3u7gq01co5', '::1', 1721709635, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732313730393533323b5573657249447c733a313a2231223b557365727c733a31333a2241646d696e6973747261746f72223b6c6576656c7c733a353a2261646d696e223b666f746f7c733a31383a22666f746f313731383835373739322e6a7067223b737563636573737c733a33383a22446174612070656e6a75616c616e20626572686173696c20646974616d6261686b616e2e2e2e223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `kode_barang` varchar(6) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL DEFAULT 0,
  `harga` double NOT NULL,
  `active` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_barang`
--

INSERT INTO `tbl_barang` (`kode_barang`, `nama_barang`, `brand`, `stok`, `harga`, `active`) VALUES
('000001', 'Public Low Black 38', 'Ventela', 3, 210000, 'Y'),
('000002', 'Public Low Black 39', 'Ventela', 4, 210000, 'Y'),
('000003', 'Public Low Black 40', 'Ventela', 3, 210000, 'Y'),
('000004', 'Public Low Black 41', 'Ventela', 5, 210000, 'Y'),
('000005', 'Public Low Black 42', 'Ventela', 3, 210000, 'Y'),
('000006', 'Public Low Black 43', 'Ventela', 3, 210000, 'Y'),
('000007', 'Public Low Black 44', 'Ventela', 2, 210000, 'Y'),
('000008', 'Public High Black 38', 'Ventela', 3, 220000, 'Y'),
('000009', 'Public High Black 39', 'Ventela', 0, 220000, 'Y'),
('000010', 'Public High Black 40', 'Ventela', 5, 220000, 'Y'),
('000011', 'Public High Black 41', 'Ventela', 5, 220000, 'Y'),
('000012', 'Public High Black 42', 'Ventela', 3, 220000, 'Y'),
('000013', 'Public High Black 43', 'Ventela', 2, 220000, 'Y'),
('000014', 'Public High Black 44', 'Ventela', 2, 220000, 'Y'),
('000015', 'Public Low Cream 38', 'Ventela', 2, 210000, 'Y'),
('000016', 'Public Low Cream 39', 'Ventela', 3, 210000, 'Y'),
('000017', 'Public Low Cream 40', 'Ventela', 5, 210000, 'Y'),
('000018', 'Public Low Cream 41', 'Ventela', 5, 210000, 'Y'),
('00019', 'Public Low Cream 42', 'Ventela', 4, 210000, 'Y'),
('00020', 'Public Low Cream 43', 'Ventela', 3, 210000, 'Y'),
('00021', 'Public Low Cream 44', 'Ventela', 3, 210000, 'Y'),
('00022', 'Public High Cream 38', 'Ventela', 3, 220000, 'Y'),
('00023', 'Public High Cream 39', 'Ventela', 2, 220000, 'Y'),
('00024', 'Public High Cream 40', 'Ventela', 5, 220000, 'Y'),
('00025', 'Public High Cream 41', 'Ventela', 4, 220000, 'Y'),
('00026', 'Public High Cream 42', 'Ventela', 5, 220000, 'Y'),
('00027', 'Public High Cream 43', 'Ventela', 1, 220000, 'Y'),
('00028', 'Public High Cream 44', 'Ventela', 3, 220000, 'Y'),
('00029', 'BTS 70s Low BW 38', 'Ventela', 3, 180000, 'Y'),
('00030', 'BTS 70s Low BW 39', 'Ventela', 2, 180000, 'Y'),
('00031', 'BTS 70s Low BW 40', 'Ventela', 5, 180000, 'Y'),
('00032', 'BTS 70s Low BW 41', 'Ventela', 3, 180000, 'Y'),
('00033', 'BTS 70s Low BW 42', 'Ventela', 6, 180000, 'Y'),
('00034', 'BTS 70s Low BW 43', 'Ventela', 3, 180000, 'Y'),
('00035', 'BTS 70s Low BW 44', 'Ventela', 3, 180000, 'Y'),
('00036', 'BTS 70s High BW 38', 'Ventela', 3, 185000, 'Y'),
('00037', 'BTS 70s High BW 39', 'Ventela', 3, 185000, 'Y'),
('00038', 'BTS 70s High BW 40', 'Ventela', 5, 185000, 'Y'),
('00039', 'BTS 70s High BW 41', 'Ventela', 6, 185000, 'Y'),
('00040', 'BTS 70s High BW 42', 'Ventela', 2, 185000, 'Y'),
('00041', 'BTS 70s High BW 43', 'Ventela', 0, 185000, 'Y'),
('00042', 'BTS 70s High BW 44', 'Ventela', 3, 185000, 'Y'),
('00047', 'Ventela BTS 70S 44', 'Ventela', 4, 185000, 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_detail_pembelian`
--

CREATE TABLE `tbl_detail_pembelian` (
  `id_pembelian` varchar(20) NOT NULL,
  `id_barang` varchar(6) NOT NULL,
  `qty` smallint(6) NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_detail_pembelian`
--

INSERT INTO `tbl_detail_pembelian` (`id_pembelian`, `id_barang`, `qty`, `harga`) VALUES
('ID1718181865', '000001', 3, 180000),
('ID1718181865', '000002', 4, 180000),
('ID1718181865', '000003', 5, 180000),
('ID1718181865', '000004', 6, 180000),
('ID1718181865', '000005', 6, 180000),
('ID1718181865', '000006', 3, 180000),
('ID1718181865', '000007', 3, 180000),
('ID1718181865', '000008', 3, 185000),
('ID1718181865', '000009', 3, 185000),
('ID1718181865', '000010', 5, 185000),
('ID1718181865', '000011', 6, 185000),
('ID1718181865', '000012', 6, 185000),
('ID1718181865', '000013', 3, 185000),
('ID1718181865', '000014', 3, 185000),
('ID1718864917', '000015', 3, 180000),
('ID1718864917', '000016', 3, 180000),
('ID1718864917', '000017', 5, 185000),
('ID1718864917', '000018', 6, 180000),
('ID1718864917', '00019', 6, 180000),
('ID1718864917', '00021', 3, 180000),
('ID1718864917', '00022', 3, 185000),
('ID1718864917', '00023', 3, 185000),
('ID1718864917', '00024', 5, 185000),
('ID1718864917', '00025', 6, 185000),
('ID1718864917', '00026', 6, 185000),
('ID1718864917', '00028', 3, 185000),
('ID1718864917', '00027', 3, 185000),
('ID1718864917', '00020', 3, 180000),
('ID1718865201', '00029', 3, 170000),
('ID1718865201', '00030', 3, 170000),
('ID1718865201', '00031', 5, 170000),
('ID1718865201', '00032', 6, 170000),
('ID1718865201', '00033', 6, 170000),
('ID1718865201', '00034', 3, 170000),
('ID1718865201', '00035', 3, 170000),
('ID1718865201', '00036', 3, 175000),
('ID1718865201', '00037', 3, 175000),
('ID1718865201', '00038', 5, 175000),
('ID1718865201', '00039', 6, 175000),
('ID1718865201', '00040', 6, 175000),
('ID1718865201', '00041', 3, 175000),
('ID1718865201', '00042', 3, 175000),
('ID1721708732', '00047', 5, 175000);

--
-- Trigger `tbl_detail_pembelian`
--
DELIMITER $$
CREATE TRIGGER `pembelian_barang` AFTER INSERT ON `tbl_detail_pembelian` FOR EACH ROW BEGIN
	UPDATE tbl_barang b SET b.stok = b.stok + new.qty
    WHERE b.kode_barang = new.id_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_pembelian` AFTER DELETE ON `tbl_detail_pembelian` FOR EACH ROW BEGIN
	UPDATE tbl_barang b SET b.stok = b.stok - old.qty
    WHERE b.kode_barang = old.id_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_detail_penjualan`
--

CREATE TABLE `tbl_detail_penjualan` (
  `id_penjualan` varchar(20) NOT NULL,
  `id_barang` varchar(6) NOT NULL,
  `qty` smallint(6) NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_detail_penjualan`
--

INSERT INTO `tbl_detail_penjualan` (`id_penjualan`, `id_barang`, `qty`, `harga`) VALUES
('ID1718865341', '000004', 1, 210000),
('ID1718865367', '000003', 2, 210000),
('ID1718865391', '00019', 1, 210000),
('ID1718865431', '00041', 1, 185000),
('ID1718865448', '00040', 1, 185000),
('ID1718865572', '000018', 1, 210000),
('ID1718865602', '00040', 1, 185000),
('ID1718865637', '00032', 1, 180000),
('ID1718865666', '00032', 1, 180000),
('ID1718865837', '000015', 1, 210000),
('ID1718865871', '000014', 1, 220000),
('ID1718865911', '000009', 1, 220000),
('ID1718866152', '00040', 1, 185000),
('ID1718866175', '000012', 1, 220000),
('ID1718867639', '00025', 1, 220000),
('ID1718867639', '00026', 1, 220000),
('ID1718867671', '000005', 1, 210000),
('ID1718867717', '000009', 1, 220000),
('ID1718867758', '000007', 1, 210000),
('ID1718867812', '000012', 1, 220000),
('ID1718867812', '00041', 1, 185000),
('ID1718867837', '000012', 1, 220000),
('ID1718867880', '00027', 1, 220000),
('ID1718867956', '00019', 1, 210000),
('ID1718867956', '00023', 1, 220000),
('ID1718868021', '00032', 1, 180000),
('ID1718868051', '00030', 1, 180000),
('ID1718868108', '00041', 1, 185000),
('ID1718868147', '000005', 1, 210000),
('ID1718868202', '00027', 1, 220000),
('ID1718868251', '000011', 1, 220000),
('ID1718868303', '000013', 1, 220000),
('ID1718868318', '00025', 1, 220000),
('ID1718868336', '00040', 1, 185000),
('ID1718868370', '000005', 1, 210000),
('ID1718868370', '000009', 1, 220000),
('ID1721708762', '00047', 1, 185000);

--
-- Trigger `tbl_detail_penjualan`
--
DELIMITER $$
CREATE TRIGGER `penjualan_barang` AFTER INSERT ON `tbl_detail_penjualan` FOR EACH ROW BEGIN
	UPDATE tbl_barang b SET b.stok = b.stok - new.qty
    WHERE b.kode_barang = new.id_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_penjualan` AFTER DELETE ON `tbl_detail_penjualan` FOR EACH ROW BEGIN
	UPDATE tbl_barang b SET b.stok = b.stok + old.qty
    WHERE b.kode_barang = old.id_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pembelian`
--

CREATE TABLE `tbl_pembelian` (
  `id_pembelian` varchar(20) NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `id_supplier` varchar(15) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_pembelian`
--

INSERT INTO `tbl_pembelian` (`id_pembelian`, `tgl_pembelian`, `id_supplier`, `id_user`) VALUES
('ID1718181865', '2024-04-02', 'ID1709109089', 1),
('ID1718864917', '2024-04-04', 'ID1709109089', 1),
('ID1718865201', '2024-04-05', 'ID1709109089', 1),
('ID1721708732', '2024-07-23', 'ID1709109089', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penjualan`
--

CREATE TABLE `tbl_penjualan` (
  `id_penjualan` varchar(20) NOT NULL,
  `nama_pembeli` varchar(30) NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_penjualan`
--

INSERT INTO `tbl_penjualan` (`id_penjualan`, `nama_pembeli`, `tgl_penjualan`, `id_user`) VALUES
('ID1718865341', 'Fikri', '2024-04-02', 1),
('ID1718865367', 'Budi', '2024-04-02', 1),
('ID1718865391', 'Rony', '2024-04-02', 1),
('ID1718865431', 'Ferdy', '2024-04-02', 1),
('ID1718865448', 'Donny', '2024-04-02', 1),
('ID1718865572', 'Diko', '2024-04-05', 1),
('ID1718865602', 'Viko', '2024-04-05', 1),
('ID1718865637', 'Kevin', '2024-04-05', 1),
('ID1718865666', 'Nolan', '2024-04-05', 1),
('ID1718865837', 'Leni', '2024-04-08', 1),
('ID1718865871', 'Jaden', '2024-04-08', 1),
('ID1718865911', 'Billa', '2024-04-08', 1),
('ID1718866152', 'Lana', '2024-04-14', 1),
('ID1718866175', 'Seno', '2024-04-14', 1),
('ID1718867639', 'Reseller Zikri', '2024-04-15', 1),
('ID1718867671', 'Loli', '2024-04-15', 1),
('ID1718867717', 'Jeni', '2024-04-17', 1),
('ID1718867758', 'Surya', '2024-04-18', 1),
('ID1718867812', 'Reseller Zain', '2024-04-18', 1),
('ID1718867837', 'Verdi', '2024-04-18', 1),
('ID1718867880', 'Rido Iman', '2024-04-19', 1),
('ID1718867956', 'Joddy', '2024-04-20', 1),
('ID1718868021', 'Nanda Evan', '2024-04-25', 1),
('ID1718868051', 'Niken ', '2024-04-25', 1),
('ID1718868108', 'Mario Feri', '2024-04-26', 1),
('ID1718868147', 'Roy', '2024-04-26', 1),
('ID1718868202', 'Erik Dani', '2024-04-28', 1),
('ID1718868251', 'Eky Mahen', '2024-04-28', 1),
('ID1718868303', 'Randy', '2024-04-29', 1),
('ID1718868318', 'Jordy', '2024-04-29', 1),
('ID1718868336', 'Saiful', '2024-04-30', 1),
('ID1718868370', 'Bagus Aji', '2024-04-30', 1),
('ID1721708762', 'Budi', '2024-07-23', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `id_supplier` varchar(15) NOT NULL,
  `nama_supplier` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`id_supplier`, `nama_supplier`, `alamat`, `telp`) VALUES
('ID1709109089', 'Ventela Indonesia', 'Jl. Jakarta Raya', '081442556778');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `foto` varchar(50) NOT NULL DEFAULT 'default.jpg',
  `level` enum('admin','pegawai') NOT NULL,
  `active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `fullname`, `password`, `alamat`, `hp`, `foto`, `level`, `active`, `last_login`) VALUES
(1, 'admin', 'Administrator', '$2y$08$BO41OJFfhPPPzjKdWw2I6OyUElK1mkD43UVt1ss6J1xrVUExC1lRy', '', '', 'foto1718857792.jpg', 'admin', 'Y', '2024-07-23 11:22:28'),
(2, 'pegawai', 'Dani Kusuma', '$2y$10$tFwrXnAnCiXg4hv5zv9R6.8wRgStcU7G7rys6J7nGViinoHFqIuF2', 'Jl. Parang Kembang 2 No 4', '085731109355', 'foto1596071469.png', 'pegawai', 'Y', '2024-05-13 10:09:05'),
(6, 'pegawai2', 'Fikri Adam', '$2y$10$mxWpA/S.Pj.p69LDCqwduO2WY0hbzmuwwU3Ax4wlHFdlSiTk5V64m', 'Jl. Parang Kembang 5 No 3', '085731109355', 'foto1595054714.png', 'pegawai', 'Y', '2020-07-22 07:59:43');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indeks untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indeks untuk tabel `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
