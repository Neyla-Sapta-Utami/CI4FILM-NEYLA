-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jul 2023 pada 06.59
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_film`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `nama_film` varchar(200) NOT NULL,
  `id_genre` int(11) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `cover` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `film`
--

INSERT INTO `film` (`id`, `nama_film`, `id_genre`, `duration`, `cover`, `created_at`, `updated_at`) VALUES
(1, 'Laskar pelangi', 5, '1 jam 2 menit', '', '2023-07-03 01:38:34', '2023-07-03 01:38:34'),
(11, '5 CM', 2, '1 jam 2 menit', '5CM.jpg', '2023-06-16 06:17:48', '2023-06-16 06:17:48'),
(12, 'The little mermaid', 3, '1 jam 23 menit', 'The little mermaid.jpg', '2023-06-16 06:17:48', '2023-06-16 06:17:48'),
(13, 'Fast X', 4, '2 jam 41 menit', 'FastX.jpg', '2023-06-16 06:17:48', '2023-06-16 06:17:48'),
(14, 'Evil Dead Rise', 1, '1 jam 36 menit', 'evildeadrise.jpg', '2023-06-16 06:17:48', '2023-06-16 06:17:48'),
(15, 'Sewu Dino', 1, '1 jam 5 menit', 'sewudino.jpeg', '2023-06-16 06:17:48', '2023-06-16 06:17:48'),
(16, 'Buya Hamka', 5, '2 jam 2 menit', 'buyahamka.jpg', '2023-06-16 06:17:48', '2023-06-16 06:17:48'),
(17, 'Hello Ghost', 1, '2 jam 20 menit', 'helloghost.jpg', '2023-06-16 06:17:48', '2023-06-16 06:17:48'),
(18, 'Guardian Of The Galaxy Vol.3', 4, '1 jam 21 menit', 'guardianofthegalaxy.jpg', '2023-06-16 06:17:48', '2023-06-16 06:17:48'),
(19, 'Transformer', 4, '2 jam 8 menit', 'transformer.jpg', '2023-06-16 06:17:48', '2023-06-16 06:17:48'),
(20, 'Titanic', 6, '2 jam 3 menit', 'titanic.jpg', '2023-06-16 06:17:48', '2023-06-16 06:17:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `nama_genre` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `genre`
--

INSERT INTO `genre` (`id`, `nama_genre`, `created_at`, `updated_at`) VALUES
(1, 'Horor', '2023-06-22 19:17:38', '2023-06-22 19:17:38'),
(2, 'Adventure', '2023-06-22 19:17:38', '2023-06-22 19:17:38'),
(3, 'Musical', '2023-06-22 19:17:38', '2023-06-22 19:17:38'),
(4, 'Action', '2023-06-22 19:17:38', '2023-06-22 19:17:38'),
(5, 'Drama', '2023-06-22 19:17:38', '2023-06-22 19:17:38'),
(6, 'Romance', '2023-06-22 19:17:38', '2023-06-22 19:17:38');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film` (`id_genre`);

--
-- Indeks untuk tabel `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
