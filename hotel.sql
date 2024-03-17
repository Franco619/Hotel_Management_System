-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 17, 2024 at 08:21 AM
-- Server version: 8.2.0
-- PHP Version: 8.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
CREATE TABLE IF NOT EXISTS `bookings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `rooms_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `check_in` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_out` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_rooms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_night` double(8,2) NOT NULL DEFAULT '0.00',
  `actual_price` double(8,2) NOT NULL DEFAULT '0.00',
  `subtotal` double(8,2) NOT NULL DEFAULT '0.00',
  `discount` int NOT NULL DEFAULT '0',
  `total_price` double(8,2) NOT NULL DEFAULT '0.00',
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transation_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_room_lists`
--

DROP TABLE IF EXISTS `booking_room_lists`;
CREATE TABLE IF NOT EXISTS `booking_room_lists` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `booking_id` int DEFAULT NULL,
  `room_id` int DEFAULT NULL,
  `room_number_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_areas`
--

DROP TABLE IF EXISTS `book_areas`;
CREATE TABLE IF NOT EXISTS `book_areas` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_areas`
--

INSERT INTO `book_areas` (`id`, `image`, `short_title`, `main_title`, `short_desc`, `link_url`, `created_at`, `updated_at`) VALUES
(1, 'upload/bookarea/1792012756072791.jpg', 'short_titles', 'main_titles', 'short_titles', 'elufgo3iu1fgoi3u1g', NULL, '2024-02-27 00:16:05');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

DROP TABLE IF EXISTS `facilities`;
CREATE TABLE IF NOT EXISTS `facilities` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `rooms_id` int NOT NULL,
  `facility_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `rooms_id`, `facility_name`, `created_at`, `updated_at`) VALUES
(84, 5, 'Smoke alarms', '2024-03-16 08:31:35', '2024-03-16 08:31:35'),
(85, 5, 'Laundry & Dry Cleaning', '2024-03-16 08:31:35', '2024-03-16 08:31:35'),
(86, 5, 'Hair dryer', '2024-03-16 08:31:35', '2024-03-16 08:31:35'),
(87, 5, NULL, '2024-03-16 08:31:35', '2024-03-16 08:31:35'),
(88, 7, 'Safety box', '2024-03-17 01:09:06', '2024-03-17 01:09:06'),
(89, 7, 'Wake-up service', '2024-03-17 01:09:06', '2024-03-17 01:09:06'),
(90, 7, 'Slippers', '2024-03-17 01:09:07', '2024-03-17 01:09:07'),
(91, 7, 'Wake-up service', '2024-03-17 01:09:07', '2024-03-17 01:09:07'),
(92, 7, 'Safety box', '2024-03-17 01:09:07', '2024-03-17 01:09:07'),
(93, 7, 'Electronic door lock', '2024-03-17 01:09:07', '2024-03-17 01:09:07'),
(94, 6, NULL, '2024-03-17 01:09:53', '2024-03-17 01:09:53'),
(95, 6, NULL, '2024-03-17 01:09:53', '2024-03-17 01:09:53'),
(96, 6, 'Smoke alarms', '2024-03-17 01:09:53', '2024-03-17 01:09:53'),
(97, 6, NULL, '2024-03-17 01:09:53', '2024-03-17 01:09:53'),
(98, 6, 'Work Desk', '2024-03-17 01:09:53', '2024-03-17 01:09:53'),
(99, 4, 'Wake-up service', '2024-03-17 01:10:33', '2024-03-17 01:10:33'),
(100, 4, 'Laundry & Dry Cleaning', '2024-03-17 01:10:33', '2024-03-17 01:10:33'),
(101, 4, 'Rain Shower', '2024-03-17 01:10:33', '2024-03-17 01:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_24_023727_create_teams_table', 2),
(6, '2024_02_26_185715_create_book_areas_table', 3),
(7, '2024_02_27_012539_create_room_types_table', 4),
(8, '2024_02_28_091102_create_rooms_table', 5),
(9, '2024_02_28_091128_create_facilities_table', 5),
(10, '2024_02_28_091159_create_multi_images_table', 5),
(11, '2024_03_06_090636_create_room_numbers_table', 6),
(12, '2024_03_11_074804_create_bookings_table', 7),
(13, '2024_03_11_080143_create_room_book_dates_table', 7),
(14, '2024_03_13_013152_create_booking_room_lists_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `multi_images`
--

DROP TABLE IF EXISTS `multi_images`;
CREATE TABLE IF NOT EXISTS `multi_images` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `rooms_id` int NOT NULL,
  `multi_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_images`
--

INSERT INTO `multi_images` (`id`, `rooms_id`, `multi_img`, `created_at`, `updated_at`) VALUES
(10, 4, '202403070224PREMIER-SINGLE-Room-Photo-Singel.jpg', '2024-03-07 01:24:52', '2024-03-07 01:24:52'),
(11, 4, '202403070224PREMIER-SINGLE-Room-Photo-Singel2.jpg', '2024-03-07 01:24:52', '2024-03-07 01:24:52'),
(12, 4, '202403070224PREMIER-SINGLE-Room-Photo-Singel4.jpg', '2024-03-07 01:24:52', '2024-03-07 01:24:52'),
(13, 5, '202403130302Executive-Suite-Photo2.jpg', '2024-03-13 02:02:14', '2024-03-13 02:02:14'),
(14, 5, '202403130302Executive-Suite-Photo3.jpg', '2024-03-13 02:02:14', '2024-03-13 02:02:14'),
(15, 5, '202403130302suite-main-1.jpg', '2024-03-13 02:02:14', '2024-03-13 02:02:14'),
(16, 6, '202403130305double-main-1.jpg', '2024-03-13 02:05:17', '2024-03-13 02:05:17'),
(17, 6, '202403130305super-premier-deluxe-main-Photo2.jpg', '2024-03-13 02:05:17', '2024-03-13 02:05:17'),
(18, 6, '202403130305super-premier-deluxe-main-Photo3.jpg', '2024-03-13 02:05:17', '2024-03-13 02:05:17'),
(19, 7, '202403130308Premier-Deluxe-Twin-main-Photo3.jpg', '2024-03-13 02:08:05', '2024-03-13 02:08:05');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$12$uaDLUiVyr3adbPVLplmmjuHKyhPkFZNlZmvp6Cff3ICn2sqRSXglC', '2024-02-22 07:15:24'),
('user@gmail.com', '$2y$12$WQglM82BiZBbBGAtPAF62evLuqvPQXHdT8.IYqA5ZmqbVqfFxxg0i', '2024-01-30 13:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `roomtype_id` int NOT NULL,
  `total_adult` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_child` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_capacity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bed_style` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int NOT NULL DEFAULT '0',
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `roomtype_id`, `total_adult`, `total_child`, `room_capacity`, `image`, `price`, `size`, `view`, `bed_style`, `discount`, `short_desc`, `description`, `status`, `created_at`, `updated_at`) VALUES
(4, 10, '04', '01', '02', '1792832482713958.jpg', '100', '120', 'Sea View', 'Twin Bed', 10, 'nmssdbljdvsblkjvdsblkjvdsblkdskdlvn', '<p>evJQKBLwkjbeekwvljblewkjblkewbjevw</p>', 1, NULL, '2024-03-17 01:10:33'),
(5, 11, '03', '02', '04', '1793378414202732.jpg', '200', '250', 'Hill View', 'Queen Bed', 10, 'Book Now\r\nDouble Bed Suits With Royal Express and Super Duplex Feelings', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore</p>', 1, NULL, '2024-03-16 08:31:35'),
(6, 12, '01', '02', '04', '1793378607232237.jpg', '250', '120', 'Sea View', 'King Bed', 10, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore</p>', 1, NULL, '2024-03-17 01:09:53'),
(7, 13, '02', '01', '03', '1793378783008900.jpg', '250', '200', 'Sea View', 'King Bed', 10, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore</p>', 1, NULL, '2024-03-17 01:09:06');

-- --------------------------------------------------------

--
-- Table structure for table `room_book_dates`
--

DROP TABLE IF EXISTS `room_book_dates`;
CREATE TABLE IF NOT EXISTS `room_book_dates` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `booking_id` int DEFAULT NULL,
  `room_id` int DEFAULT NULL,
  `book_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_numbers`
--

DROP TABLE IF EXISTS `room_numbers`;
CREATE TABLE IF NOT EXISTS `room_numbers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `rooms_id` int NOT NULL,
  `room_type_id` int NOT NULL,
  `room_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_numbers`
--

INSERT INTO `room_numbers` (`id`, `rooms_id`, `room_type_id`, `room_no`, `status`, `created_at`, `updated_at`) VALUES
(4, 4, 10, '11024', 'Active', '2024-03-07 01:25:04', '2024-03-07 01:25:04'),
(5, 7, 13, '11025', 'Active', '2024-03-13 02:13:02', '2024-03-13 02:13:02'),
(6, 7, 13, '11026', 'Active', '2024-03-13 02:13:15', '2024-03-13 02:13:15'),
(7, 7, 13, '11027', 'Active', '2024-03-13 02:13:27', '2024-03-13 02:13:27'),
(9, 6, 12, '2201', 'Active', '2024-03-13 02:14:21', '2024-03-13 02:14:21'),
(10, 6, 12, '2202', 'Active', '2024-03-13 02:14:33', '2024-03-13 02:14:33'),
(11, 6, 12, '2203', 'Select Status...', '2024-03-13 02:14:43', '2024-03-13 02:14:43'),
(12, 5, 11, '3301', 'Active', '2024-03-13 02:17:14', '2024-03-13 02:17:14'),
(13, 5, 11, '3302', 'Active', '2024-03-13 02:17:23', '2024-03-13 02:17:23'),
(14, 5, 11, '3303', 'Active', '2024-03-13 02:17:34', '2024-03-13 02:17:34'),
(15, 5, 11, '3304', 'Active', '2024-03-13 02:17:44', '2024-03-13 02:17:44'),
(16, 4, 10, '11030', 'Active', '2024-03-13 02:18:17', '2024-03-13 02:18:17'),
(17, 7, 13, '11028', 'Active', '2024-03-17 01:42:23', '2024-03-17 01:42:23');

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

DROP TABLE IF EXISTS `room_types`;
CREATE TABLE IF NOT EXISTS `room_types` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(10, 'PREMIER SINGLE', '2024-03-07 01:23:18', NULL),
(11, 'Executive Suite', '2024-03-13 01:58:27', NULL),
(12, 'Premier Delux twin', '2024-03-13 02:03:26', NULL),
(13, 'SUPER PREMIER DELUX', '2024-03-13 02:06:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE IF NOT EXISTS `teams` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `image`, `name`, `position`, `facebook`, `created_at`, `updated_at`) VALUES
(5, 'upload/team/1791973708066656.jpg', 'Franco', 'Software Developer', 'https://www.facebook.com', '2024-02-26 13:55:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$P5UNhu.GB5lsDffTTyYce.vMs7cSgYmD9Ncn6VXDIsfC3ZZXmE2/G', '202402240411Picture3.jpg', '+237673779048', 'Mile4 , limbe', 'admin', 'active', NULL, NULL, '2024-02-24 03:11:05'),
(2, 'User', 'user@gmail.com', NULL, '$2y$12$gezSYI76PW3K5KdGW7Fc.uJXh4j7Ajc8bAPGWexhgN5QjNTsVAIMC', '202402240057dv.jpg', '+23767377904', 'Mile4 , limbe', 'user', 'active', NULL, NULL, '2024-02-24 00:28:23'),
(4, 'Frankline', 'success@gmail.com', NULL, '$2y$12$XVz/rjiHqkdbL8Xv1I/Bg.slKlCI5XzuPXCmCHSDbEDPphdhdH.3G', NULL, NULL, NULL, 'user', 'active', NULL, '2024-02-23 01:31:13', '2024-02-23 01:31:13');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
