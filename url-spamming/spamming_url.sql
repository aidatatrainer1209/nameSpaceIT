-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2022 at 07:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spamming_url`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(28, '2014_10_12_000000_create_users_table', 1),
(29, '2014_10_12_100000_create_password_resets_table', 1),
(30, '2019_08_19_000000_create_failed_jobs_table', 1),
(31, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(32, '2022_07_26_063422_shorten_url', 1);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'helalhussaincse@gmail.com_Token', 'be93e8d6da77bb48c1aab66d08765f56e46884f8fdcf8316c41f6e9277c735ce', '[\"*\"]', NULL, '2022-07-26 11:21:27', '2022-07-26 11:21:27');

-- --------------------------------------------------------

--
-- Table structure for table `shorten_url`
--

CREATE TABLE `shorten_url` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shorten_url`
--

INSERT INTO `shorten_url` (`id`, `url`, `slug`, `current_time`, `created_at`, `updated_at`) VALUES
(1, 'fvdv', 'w7cq41', '1658848212', '2022-07-26 09:10:13', '2022-07-26 09:10:13'),
(2, 'sdf', 'fwfd2g', '1658848301', '2022-07-26 09:11:42', '2022-07-26 09:11:42'),
(3, 'fgfg', 'cfz0zq', '1658848401', '2022-07-26 09:13:21', '2022-07-26 09:13:21'),
(4, 'fdfgfdf', '03z26x', '1658848624', '2022-07-26 09:17:06', '2022-07-26 09:17:06'),
(5, 'wd', 'kthe4w', '1658848757', '2022-07-26 09:19:18', '2022-07-26 09:19:18'),
(6, 'fdfd', '05os5w', '1658848878', '2022-07-26 09:21:19', '2022-07-26 09:21:19'),
(7, 'sfs', 's94fps', '1658848972', '2022-07-26 09:22:53', '2022-07-26 09:22:53'),
(8, 'sas', 'edarto', '1658849013', '2022-07-26 09:23:33', '2022-07-26 09:23:33'),
(9, 'ff', '4tn1zz', '1658849060', '2022-07-26 09:24:21', '2022-07-26 09:24:21'),
(10, 'dsdfv', 'u95zsb', '1658849321', '2022-07-26 09:28:42', '2022-07-26 09:28:42'),
(11, 'dddf', 'sbcba0', '1658849334', '2022-07-26 09:28:54', '2022-07-26 09:28:54'),
(12, 'dddf', 'tl5vyd', '1658849337', '2022-07-26 09:28:58', '2022-07-26 09:28:58'),
(13, 'dddf', 'rizpbw', '1658849340', '2022-07-26 09:29:03', '2022-07-26 09:29:03'),
(14, 'fgfbf', 'hmplmv', '1658849655', '2022-07-26 09:34:16', '2022-07-26 09:34:16'),
(15, 'fgfbf', 'q30t4s', '1658849658', '2022-07-26 09:34:19', '2022-07-26 09:34:19'),
(16, 'fgfbf', 'xj0nys', '1658849659', '2022-07-26 09:34:19', '2022-07-26 09:34:19'),
(17, 'fgfbf', 'm9qx3e', '1658849660', '2022-07-26 09:34:21', '2022-07-26 09:34:21'),
(18, 'xfvfxvxvxffv', 'dej6in', '1658849677', '2022-07-26 09:34:38', '2022-07-26 09:34:38'),
(19, 'xfvfxvxvxffv', 'bspumx', '1658849684', '2022-07-26 09:34:44', '2022-07-26 09:34:44'),
(20, 'xfvfxvxvxffv', 'o25nm8', '1658849692', '2022-07-26 09:34:54', '2022-07-26 09:34:54'),
(21, 'fefe', 'slvjhb', '1658849738', '2022-07-26 09:35:39', '2022-07-26 09:35:39'),
(22, 'fefe', 'n5p8rl', '1658849744', '2022-07-26 09:35:45', '2022-07-26 09:35:45'),
(23, 'fefe', 'y9vwj1', '1658849754', '2022-07-26 09:35:55', '2022-07-26 09:35:55'),
(24, 'yjhmvjgh', 'k1eqht', '1658849784', '2022-07-26 09:36:25', '2022-07-26 09:36:25'),
(25, 'uygjh', '8y3ghy', '1658849790', '2022-07-26 09:36:31', '2022-07-26 09:36:31'),
(26, 'uygjh', '0a5200', '1658849791', '2022-07-26 09:36:36', '2022-07-26 09:36:36'),
(27, 'uygjh', '152mh9', '1658849792', '2022-07-26 09:36:37', '2022-07-26 09:36:37'),
(28, 'uygjh', '3qdqn4', '1658849797', '2022-07-26 09:36:38', '2022-07-26 09:36:38'),
(29, 'gdfvf', '2zy594', '1658849949', '2022-07-26 09:39:10', '2022-07-26 09:39:10'),
(30, 'efef', 'oml372', '1658849958', '2022-07-26 09:39:18', '2022-07-26 09:39:18'),
(31, 'efef', 'jcrlj0', '1658849964', '2022-07-26 09:39:24', '2022-07-26 09:39:24'),
(32, 'fgghfg', '9ndgpn', '1658849979', '2022-07-26 09:39:39', '2022-07-26 09:39:39'),
(33, 'fgghfg', 'm4ww71', '1658849985', '2022-07-26 09:39:46', '2022-07-26 09:39:46'),
(34, 'fgghfg', 'po338z', '1658850002', '2022-07-26 09:40:03', '2022-07-26 09:40:03'),
(35, 'vrfgewref', 'kl2bwy', '1658852027', '2022-07-26 10:13:48', '2022-07-26 10:13:48'),
(36, 'vrfgewref', 'bdk9f7', '1658852033', '2022-07-26 10:13:54', '2022-07-26 10:13:54'),
(37, 'vrfgewref', 'g0l6cs', '1658852036', '2022-07-26 10:13:57', '2022-07-26 10:13:57'),
(38, 'http://localhost/phpmyadmin/', 'sd8g1a', '1658852157', '2022-07-26 10:15:57', '2022-07-26 10:15:57'),
(39, 'http://localhost/phpmyadmin/', 'jt24fy', '1658852161', '2022-07-26 10:16:02', '2022-07-26 10:16:02'),
(40, 'http://localhost/phpmyadmin/', 'jdtdrz', '1658852165', '2022-07-26 10:16:06', '2022-07-26 10:16:06'),
(41, 'http://localhost/phpmyadmin/', 'ttoktx', '1658852184', '2022-07-26 10:16:24', '2022-07-26 10:16:24'),
(42, 'https://www.google.com/search?q=window.location.href+block&rlz=1C1CHBF_enBD1008BD1008&oq=window.location.href++block&aqs=chrome..69i57.6304j0j7&sourceid=chrome&ie=UTF-8', 'los1hf', '1658852204', '2022-07-26 10:16:45', '2022-07-26 10:16:45'),
(43, 'https://www.google.com/search?q=window.location.href+block&rlz=1C1CHBF_enBD1008BD1008&oq=window.location.href++block&aqs=chrome..69i57.6304j0j7&sourceid=chrome&ie=UTF-8', 'fohirt', '1658852208', '2022-07-26 10:16:49', '2022-07-26 10:16:49'),
(44, 'http://localhost/phpmyadmin/', 'ffvdc3', '1658852439', '2022-07-26 10:20:40', '2022-07-26 10:20:40'),
(45, 'http://localhost/phpmyadmin/', 'zvk7ow', '1658852443', '2022-07-26 10:20:43', '2022-07-26 10:20:43'),
(46, 'http://localhost/phpmyadmin/', 'pr13an', '1658852445', '2022-07-26 10:20:46', '2022-07-26 10:20:46'),
(47, 'http://localhost/phpmyadmin/', 'viy85v', '1658852943', '2022-07-26 10:29:04', '2022-07-26 10:29:04'),
(48, 'http://localhost/phpmyadmin/', 'kz8w5o', '1658852949', '2022-07-26 10:29:10', '2022-07-26 10:29:10'),
(49, 'http://localhost/phpmyadmin/', 'z26qhf', '1658852954', '2022-07-26 10:29:15', '2022-07-26 10:29:15'),
(50, 'http://localhost/phpmyadmin/index.php?route=/database/structure&db=spamming_url', 'bma066', '1658853160', '2022-07-26 10:32:41', '2022-07-26 10:32:41'),
(51, 'http://localhost/phpmyadmin/index.php?route=/database/structure&db=spamming_url', '0o5d42', '1658853179', '2022-07-26 10:33:00', '2022-07-26 10:33:00'),
(52, 'http://localhost/phpmyadmin/index.php?route=/database/structure&db=spamming_url', 'c', '1658853183', '2022-07-26 10:33:04', '2022-07-26 10:33:04'),
(53, 'http://localhost/phpmyadmin/index.php?route=/sql&db=spamming_url&table=shorten_url&pos=0', 'ey8r41', '1658853332', '2022-07-26 10:35:35', '2022-07-26 10:35:35'),
(54, 'http://localhost/phpmyadmin/index.php?route=/sql&db=spamming_url&table=shorten_url&pos=0', 'bdd1hr', '1658853338', '2022-07-26 10:35:38', '2022-07-26 10:35:38'),
(55, 'http://localhost/phpmyadmin/index.php?route=/sql&db=spamming_url&table=shorten_url&pos=0', 'fboxox', '1658853341', '2022-07-26 10:35:41', '2022-07-26 10:35:41'),
(56, 'http://localhost/phpmyadmin/index.php?route=/sql&db=spamming_url&table=shorten_url&pos=0', '8ryd83', '1658853412', '2022-07-26 10:36:53', '2022-07-26 10:36:53'),
(57, 'http://localhost/phpmyadmin/index.php?route=/sql&db=spamming_url&table=shorten_url&pos=0', '6hgm6n', '1658853416', '2022-07-26 10:36:57', '2022-07-26 10:36:57'),
(58, 'http://localhost/phpmyadmin/index.php?route=/sql&db=spamming_url&table=shorten_url&pos=0', 'e3ojzf', '1658853420', '2022-07-26 10:37:01', '2022-07-26 10:37:01'),
(59, 'http://localhost/phpmyadmin/index.php?route=/sql&db=spamming_url&table=shorten_url&pos=0', 'qgs99i', '1658854177', '2022-07-26 10:49:38', '2022-07-26 10:49:38'),
(60, 'http://localhost/phpmyadmin/index.php?route=/sql&db=spamming_url&table=shorten_url&pos=0', 'kedd44', '1658854180', '2022-07-26 10:49:41', '2022-07-26 10:49:41'),
(61, 'http://localhost/phpmyadmin/index.php?route=/sql&db=spamming_url&table=shorten_url&pos=0', '6h2qan', '1658854183', '2022-07-26 10:49:43', '2022-07-26 10:49:43'),
(62, 'http://localhost/phpmyadmin/index.php?route=/sql&db=spamming_url&table=shorten_url&pos=0', 'q8qq1j', '1658854302', '2022-07-26 10:51:43', '2022-07-26 10:51:43'),
(63, 'http://localhost/phpmyadmin/index.php?route=/sql&db=spamming_url&table=shorten_url&pos=0', 'wyd4h9', '1658854304', '2022-07-26 10:51:45', '2022-07-26 10:51:45'),
(64, 'http://localhost/phpmyadmin/index.php?route=/sql&db=spamming_url&table=shorten_url&pos=0', 'lakzw4', '1658854306', '2022-07-26 10:51:47', '2022-07-26 10:51:47'),
(65, 'http://www.cricbuzz.com/', 'bf52hu', '1658854408', '2022-07-26 10:53:29', '2022-07-26 10:53:29'),
(66, 'http://www.cricbuzz.com/', '60x23r', '1658854411', '2022-07-26 10:53:31', '2022-07-26 10:53:31'),
(67, 'http://www.cricbuzz.com/', '5nqe2g', '1658854413', '2022-07-26 10:53:34', '2022-07-26 10:53:34'),
(68, 'http://www.cricbuzz.com/', 'wsrtbb', '1658854425', '2022-07-26 10:53:46', '2022-07-26 10:53:46'),
(69, 'http://www.cricbuzz.com/', '5q7g1a', '1658854466', '2022-07-26 10:54:27', '2022-07-26 10:54:27'),
(70, 'http://www.cricbuzz.com/', '8vv2ho', '1658854484', '2022-07-26 10:54:45', '2022-07-26 10:54:45'),
(71, 'http://www.cricbuzz.com/', 'e8qny4', '1658854486', '2022-07-26 10:54:47', '2022-07-26 10:54:47'),
(72, 'http://www.cricbuzz.com/', 'ke7fkh', '1658854488', '2022-07-26 10:54:49', '2022-07-26 10:54:49'),
(73, 'http://www.cricbuzz.com/', 'mpysr5', '1658854547', '2022-07-26 10:55:48', '2022-07-26 10:55:48'),
(74, 'http://www.cricbuzz.com/', '7sysj9', '1658854550', '2022-07-26 10:55:51', '2022-07-26 10:55:51'),
(75, 'http://www.cricbuzz.com/', 'k1n62d', '1658854552', '2022-07-26 10:55:53', '2022-07-26 10:55:53'),
(76, 'http://www.cricbuzz.com/', 'yxh7r3', '1658854578', '2022-07-26 10:56:19', '2022-07-26 10:56:19'),
(77, 'http://www.cricbuzz.com/', 'btdp72', '1658854631', '2022-07-26 10:57:12', '2022-07-26 10:57:12'),
(78, 'http://www.cricbuzz.com/', 'zxzmad', '1658855072', '2022-07-26 11:04:33', '2022-07-26 11:04:33'),
(79, 'http://www.cricbuzz.com/', 'c8313h', '1658855074', '2022-07-26 11:04:35', '2022-07-26 11:04:35'),
(80, 'http://www.cricbuzz.com/', 'xnza8n', '1658855076', '2022-07-26 11:04:37', '2022-07-26 11:04:37'),
(81, 'http://www.cricbuzz.com/', '28nr96', '1658855111', '2022-07-26 11:05:12', '2022-07-26 11:05:12'),
(82, 'http://www.cricbuzz.com/', 'zi52mq', '1658855278', '2022-07-26 11:07:59', '2022-07-26 11:07:59'),
(83, 'http://www.cricbuzz.com/', 'rkjh6w', '1658855418', '2022-07-26 11:10:19', '2022-07-26 11:10:19'),
(84, 'delay', '5fnjc2', '1658855505', '2022-07-26 11:11:46', '2022-07-26 11:11:46'),
(85, 'http://localhost/phpmyadmin/index.php?route=/sql&db=spamming_url&table=shorten_url&pos=0', '5mtsdx', '1658855524', '2022-07-26 11:12:05', '2022-07-26 11:12:05'),
(86, 'http://localhost/phpmyadmin/index.php?route=/sql&db=spamming_url&table=shorten_url&pos=0', 'hsjnpr', '1658855535', '2022-07-26 11:12:16', '2022-07-26 11:12:16'),
(87, 'http://localhost/phpmyadmin/index.php?route=/sql&db=spamming_url&table=shorten_url&pos=0', 'p5seat', '1658855539', '2022-07-26 11:12:23', '2022-07-26 11:12:23'),
(88, 'http://localhost/phpmyadmin/index.php?route=/sql&db=spamming_url&table=shorten_url&pos=0', 'ptfqyq', '1658855767', '2022-07-26 11:16:08', '2022-07-26 11:16:08'),
(89, 'http://localhost/phpmyadmin/index.php?route=/sql&db=spamming_url&table=shorten_url&pos=0', 'y3ykqp', '1658855769', '2022-07-26 11:16:10', '2022-07-26 11:16:10'),
(90, 'http://localhost/phpmyadmin/index.php?route=/sql&db=spamming_url&table=shorten_url&pos=0', 'rsq0a9', '1658855772', '2022-07-26 11:16:14', '2022-07-26 11:16:14'),
(91, 'http://localhost/phpmyadmin/index.php?route=/sql&db=spamming_url&table=shorten_url&pos=0', 'bltpmf', '1658855845', '2022-07-26 11:17:26', '2022-07-26 11:17:26'),
(92, 'http://localhost/phpmyadmin/index.php?route=/sql&db=spamming_url&table=shorten_url&pos=0', 'jgd8e6', '1658855848', '2022-07-26 11:17:29', '2022-07-26 11:17:29'),
(93, 'http://localhost/phpmyadmin/index.php?route=/sql&db=spamming_url&table=shorten_url&pos=0', '2lv3rf', '1658855850', '2022-07-26 11:17:31', '2022-07-26 11:17:31'),
(94, 'http://localhost/phpmyadmin/index.php?route=/sql&db=spamming_url&table=shorten_url&pos=0', '4u5f3r', '1658856056', '2022-07-26 11:20:57', '2022-07-26 11:20:57'),
(95, 'http://localhost/phpmyadmin/index.php?route=/sql&db=spamming_url&table=shorten_url&pos=0', 'wh2dkf', '1658856092', '2022-07-26 11:21:32', '2022-07-26 11:21:32'),
(96, 'http://www.cricbuzz.com/cricket-series/2627/bangladesh-premier-league-2017/points-table', 'z5y4c3', '1658856169', '2022-07-26 11:22:50', '2022-07-26 11:22:50'),
(97, 'http://www.cricbuzz.com/cricket-series/2627/bangladesh-premier-league-2017/points-table', 'a9ogea', '1658856187', '2022-07-26 11:23:08', '2022-07-26 11:23:08'),
(98, 'http://www.cricbuzz.com/cricket-series/2627/bangladesh-premier-league-2017/points-table', 'r5tnk1', '1658856198', '2022-07-26 11:23:19', '2022-07-26 11:23:19'),
(99, 'http://www.cricbuzz.com/cricket-series/2627/bangladesh-premier-league-2017/points-table', '5rq6m8', '1658856232', '2022-07-26 11:23:53', '2022-07-26 11:23:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'helalhussaincse@gmail.com', NULL, '$2y$10$MYQrw9hmzOnD76k.Cgsznenu1KlZtJ/f4kSeB3g2htZ1fpvC0D/aW', NULL, '2022-07-26 11:21:26', '2022-07-26 11:21:26');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `shorten_url`
--
ALTER TABLE `shorten_url`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shorten_url`
--
ALTER TABLE `shorten_url`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
