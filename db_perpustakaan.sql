-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Apr 2019 pada 19.30
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.0.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(8) NOT NULL,
  `nis` varchar(25) NOT NULL,
  `nama` varchar(27) NOT NULL,
  `tempat` varchar(27) NOT NULL,
  `tgl_lahir` datetime NOT NULL,
  `kelas` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nis`, `nama`, `tempat`, `tgl_lahir`, `kelas`) VALUES
(1, '1234567800', 'lancelot', 'majalengka', '2019-03-11 00:00:00', '10'),
(2, '1234567801', 'karina', 'majalengka', '2019-03-11 00:00:00', '10'),
(3, '1234567802', 'natalia', 'majalengka', '2019-03-11 00:00:00', '10'),
(4, '1234567803', 'zilong', 'majalengka', '2019-03-11 00:00:00', '10'),
(5, '1234567804', 'selena', 'majalengka', '2019-03-11 00:00:00', '10'),
(6, '1234567805', 'akai', 'majalengka', '2019-03-11 00:00:00', '10'),
(7, '1234567806', 'layla', 'majalengka', '2019-03-11 00:00:00', '10'),
(8, '1234567807', 'claude', 'majalengka', '2019-03-11 00:00:00', '10'),
(9, '1234567808', 'miya', 'majalengka', '2019-03-11 00:00:00', '10'),
(10, '1234567809', 'gusion', 'majalengka', '2019-03-11 00:00:00', '10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(8) NOT NULL,
  `id_rak` int(8) NOT NULL,
  `id_genre` int(8) NOT NULL,
  `judul` varchar(53) NOT NULL,
  `pengarang` varchar(35) NOT NULL,
  `tgl` date NOT NULL,
  `jml` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `id_rak`, `id_genre`, `judul`, `pengarang`, `tgl`, `jml`) VALUES
('19A40001', 1, 5, 'Theory Newton', 'J.G', '2019-03-08', 1),
('19A40002', 1, 5, 'Matematika diskret', 'o.n', '2019-03-08', 1),
('19A40003', 1, 5, 'Kalkulus', 'lop', '2019-03-08', 1),
('19A40004', 1, 5, 'Kalkulus lanjut', 'junk', '2019-03-08', 1),
('19A40005', 1, 5, 'Probabilitas', 'rand', '2019-03-08', 1),
('19A40006', 1, 5, 'Statistika', 'Lisa', '2019-03-08', 1),
('19A40007', 1, 5, 'Fisika dasar', 'kope', '2019-03-08', 1),
('19A40008', 1, 5, 'Gelombang', 'Rone', '2019-03-08', 1),
('19A40009', 1, 5, 'Elekra', 'Iwe', '2019-03-08', 1),
('19A40010', 1, 5, 'Termadinamika', 'J.G', '2019-03-08', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `denda`
--

CREATE TABLE `denda` (
  `id_denda` int(8) NOT NULL,
  `telat` varchar(25) NOT NULL,
  `biaya` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `denda`
--

INSERT INTO `denda` (`id_denda`, `telat`, `biaya`) VALUES
(1, '1 minggu', 5000),
(2, '2 minggu', 7000),
(3, '1 bulan', 10000),
(4, 'lebih 1 bulan', 20000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `genre`
--

CREATE TABLE `genre` (
  `id_genre` int(8) NOT NULL,
  `genre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `genre`
--

INSERT INTO `genre` (`id_genre`, `genre`) VALUES
(1, 'Misteri'),
(2, 'Karya ilmiah'),
(3, 'Novel Fiksi'),
(4, 'Kesehatan'),
(5, 'MIPA'),
(6, 'Sejarah'),
(7, 'Geografi'),
(8, 'Tata negara'),
(9, 'Seni'),
(10, 'Budaya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_pinjam` int(25) NOT NULL,
  `id_buku` varchar(8) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `jml_buku` int(25) NOT NULL,
  `status` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_pinjam`, `id_buku`, `tgl_pinjam`, `tgl_kembali`, `jml_buku`, `status`) VALUES
(1, '19A40001', '2019-03-11', '2019-03-18', 1, 'pinjam'),
(2, '19A40001', '2019-03-11', '2019-03-18', 1, 'pinjam'),
(3, '19A40001', '2019-03-11', '2019-03-18', 1, 'pinjam'),
(4, '19A40001', '2019-03-11', '2019-03-18', 1, 'pinjam'),
(5, '19A40001', '2019-03-11', '2019-03-18', 1, 'pinjam'),
(6, '19A40001', '2019-03-11', '2019-03-18', 1, 'pinjam'),
(7, '19A40001', '2019-03-11', '2019-03-18', 1, 'pinjam'),
(8, '19A40001', '2019-03-11', '2019-03-18', 1, 'pinjam'),
(9, '19A40001', '2019-03-11', '2019-03-18', 1, 'pinjam'),
(10, '19A40001', '2019-03-11', '2019-03-18', 1, 'pinjam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_kembali` int(25) NOT NULL,
  `id_buku` varchar(8) NOT NULL,
  `id_denda` int(8) NOT NULL,
  `tgl_jatuh_tempo` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `status` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengembalian`
--

INSERT INTO `pengembalian` (`id_kembali`, `id_buku`, `id_denda`, `tgl_jatuh_tempo`, `tgl_kembali`, `status`) VALUES
(11, '19A40001', 1, '2019-03-18', '2019-03-26', 'kembali'),
(12, '19A40002', 1, '2019-03-18', '2019-03-26', 'kembali'),
(13, '19A40003', 1, '2019-03-18', '2019-03-26', 'kembali'),
(14, '19A40004', 1, '2019-03-18', '2019-03-26', 'kembali'),
(15, '19A40005', 1, '2019-03-18', '2019-03-26', 'kembali'),
(16, '19A40006', 1, '2019-03-18', '2019-03-26', 'kembali'),
(17, '19A40007', 1, '2019-03-18', '2019-03-26', 'kembali'),
(18, '19A40008', 1, '2019-03-18', '2019-03-26', 'kembali'),
(19, '19A40009', 1, '2019-03-18', '2019-03-26', 'kembali'),
(20, '19A40010', 1, '2019-03-18', '2019-03-26', 'kembali');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(8) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `level` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama`, `tgl_lahir`, `level`) VALUES
(1, 'jhonson', 'admin', 'jhonson', '2019-03-11', 1),
(2, 'grock', 'admin', 'grock', '2019-03-11', 1),
(3, 'mino', 'admin', 'mino', '2019-03-11', 1),
(4, 'hilda', 'admin', 'hilda', '2019-03-11', 1),
(5, 'kaja', 'admin', 'kaja', '2019-03-11', 1),
(6, 'lollita', 'admin', 'lollita', '2019-03-11', 1),
(7, 'moscov', 'admin', 'moscov', '2019-03-11', 1),
(8, 'kagura', 'admin', 'kagura', '2019-03-11', 1),
(9, 'leo', 'admin', 'leo', '2019-03-11', 1),
(10, 'martis', 'admin', 'martis', '2019-03-11', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rak`
--

CREATE TABLE `rak` (
  `id_rak` int(8) NOT NULL,
  `kode_rak` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rak`
--

INSERT INTO `rak` (`id_rak`, `kode_rak`) VALUES
(1, 'A00B1001'),
(2, 'A00B1002'),
(3, 'A00B1003'),
(4, 'A00B1004'),
(5, 'A00B1005'),
(7, 'A00B1006'),
(8, 'A00B1007'),
(9, 'A00B1008'),
(10, 'A00B1009'),
(11, 'A00B1010');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_petugas` int(8) NOT NULL,
  `id_pinjam` int(25) NOT NULL,
  `id_kembali` int(25) NOT NULL,
  `id_anggota` int(8) NOT NULL,
  `barcode` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_petugas`, `id_pinjam`, `id_kembali`, `id_anggota`, `barcode`) VALUES
(1, 1, 1, 11, 1, 1787654345),
(2, 1, 2, 12, 2, 1234285648),
(3, 1, 3, 13, 3, 1956473874),
(4, 1, 4, 14, 3, 1298736372),
(5, 1, 5, 15, 5, 1711832412),
(6, 1, 6, 16, 6, 1213348271),
(7, 1, 7, 17, 7, 2147483647),
(8, 1, 8, 18, 8, 1927482929),
(9, 1, 9, 19, 9, 1847586921),
(10, 1, 10, 20, 10, 1787345975);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `fkbuku_id_genre` (`id_genre`),
  ADD KEY `fkbuku_id_rak` (`id_rak`);

--
-- Indeks untuk tabel `denda`
--
ALTER TABLE `denda`
  ADD PRIMARY KEY (`id_denda`);

--
-- Indeks untuk tabel `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_pinjam`),
  ADD KEY `fk_id_buku` (`id_buku`) USING BTREE;

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_kembali`),
  ADD KEY `fkpengembalian_id_denda` (`id_denda`),
  ADD KEY `fkpengembalian_id_buku` (`id_buku`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `rak`
--
ALTER TABLE `rak`
  ADD PRIMARY KEY (`id_rak`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `fktransaksi_id_anggota` (`id_anggota`),
  ADD KEY `fktransaksi_id_petugas` (`id_petugas`),
  ADD KEY `fktransaksi_id_pinjam` (`id_pinjam`),
  ADD KEY `fktransaksi_id_kembali` (`id_kembali`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `denda`
--
ALTER TABLE `denda`
  MODIFY `id_denda` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `genre`
--
ALTER TABLE `genre`
  MODIFY `id_genre` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_pinjam` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_kembali` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `rak`
--
ALTER TABLE `rak`
  MODIFY `id_rak` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `fkbuku_id_genre` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`),
  ADD CONSTRAINT `fkbuku_id_rak` FOREIGN KEY (`id_rak`) REFERENCES `rak` (`id_rak`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `fkpeminjaman_id_buku` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);

--
-- Ketidakleluasaan untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD CONSTRAINT `fkpengembalian_id_buku` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `fkpengembalian_id_denda` FOREIGN KEY (`id_denda`) REFERENCES `denda` (`id_denda`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fktransaksi_id_anggota` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`),
  ADD CONSTRAINT `fktransaksi_id_kembali` FOREIGN KEY (`id_kembali`) REFERENCES `pengembalian` (`id_kembali`),
  ADD CONSTRAINT `fktransaksi_id_petugas` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`),
  ADD CONSTRAINT `fktransaksi_id_pinjam` FOREIGN KEY (`id_pinjam`) REFERENCES `peminjaman` (`id_pinjam`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
