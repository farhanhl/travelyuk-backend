-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 29, 2024 at 01:14 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hare6487_harapanjaya`
--
CREATE DATABASE IF NOT EXISTS `hare6487_harapanjaya` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `hare6487_harapanjaya`;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Jakarta', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(2, 'Surabaya', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(3, 'Bandung', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(4, 'Medan', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(5, 'Bekasi', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(6, 'Tangerang', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(7, 'Depok', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(8, 'Semarang', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(9, 'Palembang', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(10, 'Makassar', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(11, 'Bogor', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(12, 'Malang', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(13, 'Yogyakarta', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(14, 'Pekanbaru', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(15, 'Denpasar', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(16, 'Banjarmasin', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(17, 'Pontianak', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(18, 'Samarinda', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(19, 'Balikpapan', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(20, 'Padang', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(21, 'Manado', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(22, 'Mataram', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(23, 'Ambon', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(24, 'Batam', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(25, 'Kendari', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(26, 'Jambi', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(27, 'Palu', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(28, 'Sorong', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(29, 'Mamuju', '2024-06-28 18:14:42', '2024-06-28 18:14:42'),
(30, 'Palangkaraya', '2024-06-28 18:14:42', '2024-06-28 18:14:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_24_134942_create_cities_table', 1),
(6, '2024_06_24_140402_create_schedules_table', 1),
(7, '2024_06_24_141202_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `schedule_id` bigint UNSIGNED NOT NULL,
  `pax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  `is_payment_accepted` tinyint(1) NOT NULL DEFAULT '0',
  `is_refund` tinyint(1) NOT NULL DEFAULT '0',
  `is_refund_accepted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint UNSIGNED NOT NULL,
  `origin_city_id` bigint UNSIGNED NOT NULL,
  `destination_city_id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `departure_time` time NOT NULL,
  `bus_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_telfon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `nama_lengkap`, `jenis_kelamin`, `nomor_telfon`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'aryoencok@gmail.com', 'admin', 'Aryo Yudho', 'Laki-laki', '6282298036316', 1, '2024-06-28 18:14:42', '2024-06-28 18:14:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_schedule_id_foreign` (`schedule_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_origin_city_id_foreign` (`origin_city_id`),
  ADD KEY `schedules_destination_city_id_foreign` (`destination_city_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_schedule_id_foreign` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_destination_city_id_foreign` FOREIGN KEY (`destination_city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `schedules_origin_city_id_foreign` FOREIGN KEY (`origin_city_id`) REFERENCES `cities` (`id`);
--
-- Database: `pks`
--
CREATE DATABASE IF NOT EXISTS `pks` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `pks`;

-- --------------------------------------------------------

--
-- Table structure for table `desas`
--

CREATE TABLE `desas` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `desas`
--

INSERT INTO `desas` (`id`, `name`, `kecamatan_id`, `created_at`, `updated_at`) VALUES
(1, 'WANAHERANG', 1, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(2, 'BOJONGKULUR', 1, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(3, 'CIANGSANA', 1, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(4, 'GUNUNG PUTRI', 1, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(5, 'BOJONGNANGKA', 1, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(6, 'TLAJUNGUDIK', 1, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(7, 'CICADAS', 1, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(8, 'CIKEAS UDIK', 1, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(9, 'NAGRAK', 1, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(10, 'KRANGGAN', 1, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(11, 'PUSPASARI', 2, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(12, 'CITEUREUP', 2, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(13, 'LEUWINUTUG', 2, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(14, 'TAJUR', 2, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(15, 'SANJA', 2, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(16, 'KR. ASEM TIMUR', 2, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(17, 'TARIKOLOT', 2, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(18, 'GUNUNGSARI', 2, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(19, 'TANGKIL', 2, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(20, 'SUKAHATI', 2, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(21, 'HAMBALANG', 2, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(22, 'PASIRMUKTI', 2, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(23, 'KARANG ASEM BARAT', 2, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(24, 'PUSPANEGARA', 2, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(25, 'GUNUNGGEULIS', 3, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(26, 'CILEBUT TIMUR', 3, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(27, 'CILEBUT BARAT', 3, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(28, 'CIBANON', 3, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(29, 'NAGRAK', 3, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(30, 'SUKATANI', 3, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(31, 'SUKARAJA', 3, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(32, 'CIKEAS', 3, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(33, 'PASIR JAMBU', 3, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(34, 'CIMANDALA', 3, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(35, 'CIJUJUNG', 3, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(36, 'CADASNGAMPAR', 3, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(37, 'PASIRLAJA', 3, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(38, 'PASIR ANGIN', 4, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(39, 'MEKAR SARI', 4, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(40, 'MAMPIR', 4, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(41, 'DAYEUH', 4, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(42, 'GANDOANG', 4, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(43, 'JATISARI', 4, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(44, 'CILEUNGSI KIDUL', 4, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(45, 'IPEUCANG', 4, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(46, 'SITUSARI', 4, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(47, 'CIPENJO', 4, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(48, 'LIMUSNUNGGAL', 4, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(49, 'CILEUNGSI', 4, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(50, 'SUKAMAJU', 5, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(51, 'SIRNAGALIH', 5, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(52, 'SINGAJAYA', 5, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(53, 'SUKASIRNA', 5, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(54, 'SUKANEGARA', 5, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(55, 'SUKAMANAH', 5, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(56, 'WENINGGALIH', 5, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(57, 'CIBODAS', 5, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(58, 'JONGGOL', 5, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(59, 'BENDUNGAN', 5, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(60, 'SINGASARI', 5, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(61, 'BALEKAMBANG', 5, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(62, 'SUKAJAYA', 5, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(63, 'SUKAGALIH', 5, '2024-01-18 00:27:46', '2024-01-18 00:27:46');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatans`
--

CREATE TABLE `kecamatans` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kecamatans`
--

INSERT INTO `kecamatans` (`id`, `name`, `lat`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'GUNUNGPUTRI', '-6.428865', '106.924057', '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(2, 'CITEUREUP', '-6.482500', '106.873993', '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(3, 'SUKARAJA', '-6.610811', '106.848862', '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(4, 'CILEUNGSI', '-6.405975', '106.994896', '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(5, 'JONGGOL', '-6.468177', '107.055686', '2024-01-18 00:27:46', '2024-01-18 00:27:46');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatans`
--

CREATE TABLE `kegiatans` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_caleg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_peserta` int NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan_id` bigint UNSIGNED NOT NULL,
  `desa_id` bigint UNSIGNED NOT NULL,
  `dokumentasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kegiatans`
--

INSERT INTO `kegiatans` (`id`, `nama_kegiatan`, `no_surat`, `nama_caleg`, `jenis_kegiatan`, `jumlah_peserta`, `keterangan`, `kecamatan_id`, `desa_id`, `dokumentasi`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'tes', 'tes', 'tes', 'Pertemuan tatap muka', 123, '321', 3, 29, 'WRaRx8SdHl4CavCIbJFqH9LPOofGneoazoI2aleL.jpg', 1, '2024-01-18 00:55:16', '2024-01-18 00:55:16'),
(2, 'Pembagian sembako merata', '10001/2024/1111', 'Akhmad Syaikhu', 'Pertemuan tatap muka', 1000, 'Pembagian Sembako kepada para Warga', 1, 4, NULL, 3, '2024-01-18 02:38:23', '2024-01-18 02:38:23'),
(3, 'Bakti Sosial', '1234322', 'Amin', 'Pertemuan tatap muka', 200, 'kskksksm', 2, 25, '1PpLxtOzq2fdinjY0PT1rnwJ8PZni2336cDxyu6q.jpg', 3, '2024-01-18 12:37:50', '2024-01-18 12:39:16'),
(4, 'Kampanye Tatap Muka', '12344555', 'Fakhri', 'Pertemuan tatap muka', 1234, 'kampanyee', 3, 34, '7Cb6wdr7cx0bsV4XyGFIsZBjbV2y6Zwa6ix3BgpK.jpg', 2, '2024-01-29 21:54:16', '2024-01-29 21:54:16'),
(5, 'asd', 'asd', 'Andika', 'Pemasangan alat peraga di tempat umum', 123, '321', 1, 3, NULL, 1, '2024-02-09 22:41:05', '2024-02-09 22:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2023_12_22_062944_create_kegiatans_table', 1),
(4, '2024_01_18_015200_create_kecamatans_table', 1),
(5, '2024_01_18_015208_create_desas_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_telfon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_admin`, `alamat`, `no_telfon`, `created_at`, `updated_at`) VALUES
(1, 'Andika', 'andika123@gmail.com', '$2y$12$sAijlxQP667.dKOQdUUKyuy6asbif490E3shRdXuIDGFax0M/V0jq', '0', NULL, NULL, '2024-01-18 00:27:46', '2024-02-01 09:27:32'),
(2, 'Fakhri', 'fakhri123@gmail.com', '$2y$12$JHYU4czjVl7D3kUPeCJF..eF7UjcWnkVeo8Nt788tvMbJw5T3Aobm', '0', NULL, NULL, '2024-01-18 00:27:46', '2024-01-18 00:27:46'),
(3, 'Alif', 'alif123@gmail.com', '$2y$12$HGF8ogeZL7/x2c1sZHYUL.Lr1uFamZJEzDB0vHwE0zmG4FPb/DWYi', '0', NULL, NULL, '2024-01-18 00:27:46', '2024-02-01 09:22:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `desas`
--
ALTER TABLE `desas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `desas_kecamatan_id_foreign` (`kecamatan_id`);

--
-- Indexes for table `kecamatans`
--
ALTER TABLE `kecamatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatans`
--
ALTER TABLE `kegiatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `desas`
--
ALTER TABLE `desas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `kecamatans`
--
ALTER TABLE `kecamatans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kegiatans`
--
ALTER TABLE `kegiatans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `desas`
--
ALTER TABLE `desas`
  ADD CONSTRAINT `desas_kecamatan_id_foreign` FOREIGN KEY (`kecamatan_id`) REFERENCES `kecamatans` (`id`) ON DELETE CASCADE;
--
-- Database: `sgb`
--
CREATE DATABASE IF NOT EXISTS `sgb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `sgb`;

-- --------------------------------------------------------

--
-- Table structure for table `ac`
--

CREATE TABLE `ac` (
  `id` int NOT NULL,
  `asset_no` varchar(100) NOT NULL,
  `kode_ac` varchar(100) NOT NULL,
  `merk` varchar(100) NOT NULL,
  `indoor_type` varchar(100) NOT NULL,
  `outdoor_type` varchar(100) NOT NULL,
  `sn` varchar(100) NOT NULL,
  `mfd` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `pk` varchar(100) NOT NULL,
  `cost_center` varchar(100) NOT NULL,
  `pr_no` varchar(100) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `tanggal_service` varchar(100) NOT NULL,
  `jam` varchar(100) NOT NULL,
  `kompressor` varchar(100) NOT NULL,
  `keterangan_kompressor` varchar(100) NOT NULL,
  `evaporator` varchar(100) NOT NULL,
  `keterangan_evaporator` varchar(100) NOT NULL,
  `kondensor` varchar(100) NOT NULL,
  `keterangan_kondensor` varchar(100) NOT NULL,
  `electrical_board` varchar(100) NOT NULL,
  `keterangan_electrical_board` varchar(100) NOT NULL,
  `perbaikan_oleh` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ac`
--

INSERT INTO `ac` (`id`, `asset_no`, `kode_ac`, `merk`, `indoor_type`, `outdoor_type`, `sn`, `mfd`, `kategori`, `pk`, `cost_center`, `pr_no`, `item_code`, `pekerjaan`, `tanggal_service`, `jam`, `kompressor`, `keterangan_kompressor`, `evaporator`, `keterangan_evaporator`, `kondensor`, `keterangan_kondensor`, `electrical_board`, `keterangan_electrical_board`, `perbaikan_oleh`) VALUES
(1, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'Repair', '2023-10-10', '10:55', 'OK', 'tes', 'NG', 'tes1', 'OK', 'tes2', 'NG', 'tes3', 'ujang'),
(2, '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '', '', '00:00:00.000000', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `id_bagian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `bagian` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `id_bagian`, `password`, `nama`, `bagian`) VALUES
(3, '12345', 'farhan21', 'Farhan Hadi Lutfi', 'User'),
(4, '123456', 'farhan123', 'Admin', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ac`
--
ALTER TABLE `ac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ac`
--
ALTER TABLE `ac`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
