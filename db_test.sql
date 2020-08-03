-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2020 at 04:37 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '1596036610.jpg', 1, '2020-07-29 08:30:09', '2020-07-29 08:30:09'),
(2, '1596036616.png', 1, '2020-07-29 08:30:16', '2020-07-29 08:30:16'),
(3, '1596036625.jpg', 1, '2020-07-29 08:30:24', '2020-07-29 08:30:24'),
(4, '1596036631.jpg', 1, '2020-07-29 08:30:31', '2020-07-29 08:30:31'),
(5, '1596036638.jpg', 1, '2020-07-29 08:30:37', '2020-07-29 08:30:37'),
(6, '1596036645.jpg', 1, '2020-07-29 08:30:44', '2020-07-29 08:30:44'),
(7, '1596036653.gif', 1, '2020-07-29 08:30:52', '2020-07-29 08:30:52');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Men', 1, '2020-07-29 07:58:26', '2020-07-29 07:58:26'),
(2, 'Women', 1, '2020-07-29 07:58:33', '2020-07-29 07:59:08'),
(3, 'Couple', 1, '2020-07-29 21:48:41', '2020-07-29 21:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(65, '2014_10_12_000000_create_users_table', 1),
(66, '2014_10_12_100000_create_password_resets_table', 1),
(67, '2019_08_19_000000_create_failed_jobs_table', 1),
(68, '2020_07_19_044246_create_products_table', 1),
(69, '2020_07_19_114350_create_slides_table', 1),
(70, '2020_07_20_032413_create_categories_table', 1),
(71, '2020_07_20_032608_create_sub_categories_table', 1),
(72, '2020_07_25_102631_create_ads_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_code` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` double NOT NULL,
  `product_img` longtext COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `subcategory_id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_code`, `product_price`, `product_img`, `category_id`, `subcategory_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '995797 new summer Korean trend mens shoes all-match personality cloth shoes mandarin duck canvas', 'SSH995797', 17, '1596042914.jpg', 1, 9, 1, '2020-07-29 10:15:14', '2020-07-29 10:15:14'),
(2, '512493 Tide brand cartoon border is suitable for 11pro max mobile phone shell iphone7plus/8/XS', 'PC512493', 4, '1596083733.jpg', 2, 9, 1, '2020-07-29 10:32:40', '2020-07-29 21:35:32'),
(3, '733311 summer new breathable mesh mesh shoes Korean version of the trend of mens shoes wild', 'SSH733311', 15, '1596045340.jpg', 1, 9, 1, '2020-07-29 10:55:40', '2020-07-29 10:55:40'),
(4, '847405 Mens shoes summer breathable thin section deodorant black board shoes student casual', 'SSH847405', 12, '1596045435.jpg', 1, 9, 1, '2020-07-29 10:57:14', '2020-07-29 10:57:14'),
(5, '477264 ins style schoolbag female Korean version of the forest Harajuku ulzzang high school college', 'EB477264', 16, '1596084183.jpg', 2, 9, 1, '2020-07-29 21:43:03', '2020-07-29 21:43:03'),
(6, '114752 Summer Korean trend lover couple suits', 'NC114752', 15, '1596084550.jpg', 3, 10, 1, '2020-07-29 21:49:10', '2020-07-29 21:49:10'),
(7, '085166 Fresh girl small bag new wave Korean version wild messenger bag small daisy chain box', 'LB085166', 15, '1596092999.jpg', 2, 10, 1, '2020-07-30 00:09:58', '2020-07-30 00:09:58'),
(8, '23960 Summer elastic men''s casual pants', 'JP23960', 18, '1596093254.jpg', 1, 11, 1, '2020-07-30 00:14:13', '2020-07-30 00:14:13'),
(9, '75992 Playboy men''s buckle leather belt', 'SW75992', 13, '1596093335.jpg', 1, 11, 1, '2020-07-30 00:15:35', '2020-07-30 00:15:35'),
(10, '122633 Korean men''s long-sleeved shirt', 'CS122633', 14, '1596093485.jpg', 1, 11, 1, '2020-07-30 00:18:04', '2020-07-30 00:18:04'),
(11, '60462 Men vertical section cross-section bills wallet', 'SW60462', 9, '1596093574.jpg', 1, 11, 1, '2020-07-30 00:19:34', '2020-07-30 00:19:34'),
(12, '850262 Tide brand backpack male Korean version of large-capacity travel bag high school college students', 'EB850262', 12, '1596093630.jpg', 1, 11, 1, '2020-07-30 00:20:29', '2020-07-30 00:20:29'),
(13, '921783 Daddy shoes womens summer breathable new foot small lightweight platform net celebrity wild', 'PSH921783', 16, '1596093699.jpg', 2, 10, 1, '2020-07-30 00:21:39', '2020-07-30 00:21:39'),
(14, '941741 Special plus fat XL Korean hooded sweater female spring and autumn thin section fat', 'CS941741', 18, '1596093743.jpg', 2, 10, 1, '2020-07-30 00:22:22', '2020-07-30 00:22:22'),
(15, '799407 Electronic watch men and women couple sports ins super fire unicorn tomato scrambled', 'BW799407', 12, '1596093814.jpg', 2, 10, 1, '2020-07-30 00:23:34', '2020-07-30 00:23:34'),
(16, '995797 new summer Korean trend mens shoes all-match personality cloth shoes mandarin duck canvas', 'SSH995797', 17, '1596101102.jpg', 1, 1, 1, '2020-07-30 02:25:02', '2020-07-30 02:25:02'),
(17, '973264 summer new breathable mesh shoes ins casual sports old fashion shoes Korean version', 'SSH973264', 14, '1596101158.jpg', 1, 1, 1, '2020-07-30 02:25:58', '2020-07-30 02:25:58'),
(18, '847405 Mens shoes summer breathable thin section deodorant black board shoes student casual', 'SSH847405', 10, '1596101213.jpg', 1, 1, 1, '2020-07-30 02:26:52', '2020-07-30 02:26:52'),
(19, '827367 Mens shoes spring new Korean version of the trendy white board shoes wild sports casual shoes', 'SSH827367', 15, '1596101265.jpg', 1, 1, 1, '2020-07-30 02:27:45', '2020-07-30 02:27:45'),
(20, '658964 Summer breathable trend mens shoes wild sports and leisure running mesh net shoes', 'SSH658964', 13, '1596101337.jpg', 1, 1, 1, '2020-07-30 02:28:56', '2020-07-30 02:28:56'),
(21, '32194 Men''s middle-aged business leather belt', 'SSH995797', 12, '1596101446.jpg', 1, 2, 1, '2020-07-30 02:30:46', '2020-07-30 02:30:46'),
(22, '75992 Playboy men''s buckle leather belt', 'SW75992', 14, '1596101530.jpg', 1, 2, 1, '2020-07-30 02:32:09', '2020-07-30 02:32:09'),
(23, '333475 Watch male students children primary school students sports junior high school boys boys', 'BW333475', 11, '1596101592.jpg', 1, 3, 1, '2020-07-30 02:33:12', '2020-07-30 02:33:12'),
(24, '915183 French niche watch simple Korean version student trend temperament waterproof', 'BW915183', 13, '1596101641.jpg', 1, 3, 1, '2020-07-30 02:34:00', '2020-07-30 02:34:00'),
(25, '762240 Summer Korean men''s casual pants', 'CP762240', 15, '1596103203.jpg', 1, 4, 1, '2020-07-30 03:00:03', '2020-07-30 03:00:03'),
(26, '819393 Summer slim stretch pants', 'BP819393', 12, '1596103255.jpg', 1, 4, 1, '2020-07-30 03:00:54', '2020-07-30 03:00:54'),
(27, '027164 Summer cardigan baseball clothing men''s Korean version of the slim youth student', 'BS027164', 13, '1596103337.jpg', 1, 5, 1, '2020-07-30 03:02:16', '2020-07-30 03:02:16'),
(28, '122633 Korean men''s long-sleeved shirt', 'CS122633', 13, '1596103390.jpg', 1, 5, 1, '2020-07-30 03:03:10', '2020-07-30 03:03:10'),
(29, '547150 Summer Men''s short-sleeved T-shirt', 'BS547150', 13, '1596103483.jpg', 1, 6, 1, '2020-07-30 03:04:43', '2020-07-30 03:04:43'),
(30, '607446 Men''s short-sleeved V-neck T-shirt', 'BS607446 (Y8)', 12, '1596103511.jpg', 1, 6, 1, '2020-07-30 03:05:10', '2020-07-30 03:05:10'),
(31, '982031 Genuine multifunction card package wallet', 'SW982031', 10, '1596103564.jpg', 1, 7, 1, '2020-07-30 03:06:04', '2020-07-30 03:06:04'),
(32, '60462 Men vertical section cross-section bills wallet', 'SW60462', 8, '1596103606.jpg', 1, 7, 1, '2020-07-30 03:06:46', '2020-07-30 03:06:46'),
(33, '862195 Tide brand light hollow backpack men''s casual ultralight college student bag female', 'EB862195', 17, '1596103674.jpg', 1, 8, 1, '2020-07-30 03:07:54', '2020-07-30 03:07:54'),
(34, '850262 Tide brand backpack male Korean version of large-capacity travel bag high school college students', 'EB850262', 14, '1596103724.jpg', 1, 8, 1, '2020-07-30 03:08:44', '2020-07-30 03:08:44'),
(35, '853467 Small fragrance luxury small bag new small ck female bag limited western fashion cross-body', 'LB853467', 12, '1596115892.jpg', 2, 12, 1, '2020-07-30 06:31:32', '2020-07-30 06:31:32'),
(36, '853467 Small fragrance luxury small bag new small ck female bag limited western fashion cross-body', 'LB853467', 12, '1596115934.jpg', 2, 12, 1, '2020-07-30 06:32:14', '2020-07-30 06:32:14'),
(37, '764418 Summer luxury bag new trendy saddle bag female fashion net red messenger bag wild', 'LB764418', 15, '1596115980.jpg', 2, 12, 1, '2020-07-30 06:33:00', '2020-07-30 06:33:00'),
(38, '657637 Summer ladies small bags new trendy fashion hit color small square bag wild ins single', 'LB657637', 13, '1596116020.jpg', 2, 12, 1, '2020-07-30 06:33:40', '2020-07-30 06:33:40'),
(39, '606628 Small bag handbags popular new trend summer wild broadband single shoulder messenger bag', 'LB606628', 15, '1596116138.jpg', 2, 12, 1, '2020-07-30 06:35:38', '2020-07-30 06:35:38'),
(40, '615026 Portable small round bag female new Korean fashion simple chic ladies shoulder bag', 'SSH847405', 13, '1596116250.jpg', 2, 12, 1, '2020-07-30 06:37:29', '2020-07-30 06:37:29'),
(41, '923760 Japanese white shoes female new summer thin section breathable net red fashion wild', 'PSH923760', 15, '1596117898.jpg', 2, 13, 1, '2020-07-30 06:49:29', '2020-07-30 07:04:58'),
(42, '916394 Daddy shoes womens breathable mesh face new summer fashion all-match sports shoes', 'PSH916394', 12, '1596117943.jpg', 2, 13, 1, '2020-07-30 07:05:42', '2020-07-30 07:05:42'),
(43, '921783 Daddy shoes womens summer breathable new foot small lightweight platform net celebrity wild', 'PSH921783', 13, '1596118167.jpg', 2, 13, 1, '2020-07-30 07:09:26', '2020-07-30 07:09:26'),
(44, '872172 Little white shoes womens shoes summer new breathable thick-soled shoes Korean version', 'PSH872172', 14, '1596118190.jpg', 2, 13, 1, '2020-07-30 07:09:50', '2020-07-30 07:09:50'),
(45, '850664 Net celebrity old shoes womens summer new breathable feet small thick sole all-match black smart', 'PSH850664', 12, '1596118221.jpg', 2, 13, 1, '2020-07-30 07:10:20', '2020-07-30 07:10:20'),
(46, '379609 new Korean fat mm plus fat XL womens hooded sweater womens autumn loose', 'CS379609', 13, '1596120998.jpg', 2, 14, 1, '2020-07-30 07:56:38', '2020-07-30 07:56:38'),
(47, '999365 waitmore sweater women loose large size spring and autumn Korean long-sleeved', 'CS999365', 13, '1596121069.jpg', 2, 14, 1, '2020-07-30 07:57:48', '2020-07-30 07:57:48'),
(48, '950341 Girlfriends Bracelet Female Student A Pair of Sisters Chain Two Three Four Sen Sweet Fresh', 'BW950341', 11, '1596121181.jpg', 2, 15, 1, '2020-07-30 07:59:40', '2020-07-30 07:59:40'),
(49, '875144 Watch female ins style cool personality trend student simple casual atmosphere art forest retro', 'BW875144', 12, '1596121368.jpg', 2, 15, 1, '2020-07-30 08:02:48', '2020-07-30 08:02:48'),
(50, '883398 Hong Kong style retro fashion temperament summer new casual wild sexy waist was thin', 'CS883398', 12, '1596121501.jpg', 2, 16, 1, '2020-07-30 08:05:01', '2020-07-30 08:05:01'),
(51, '857859 Nightclub sexy fashion Korean women''s princess pettiskirt V-neck waist thin strapless sleeveless', 'CS857859', 17, '1596121542.jpg', 2, 16, 1, '2020-07-30 08:05:41', '2020-07-30 08:05:41'),
(52, '242830 Korean version of the new spring tassel A word skirt', 'OSK242830', 14, '1596121693.jpg', 2, 17, 1, '2020-07-30 08:08:12', '2020-07-30 08:08:12'),
(53, '177146 Korean version of the woolen a word skirt', 'OSK177146', 17, '1596121716.jpg', 2, 17, 1, '2020-07-30 08:08:36', '2020-07-30 08:08:36'),
(54, '763381 stetch self-cultivation zipper long pants', 'OP763381', 18, '1596121933.jpg', 2, 18, 1, '2020-07-30 08:10:38', '2020-07-30 08:12:12'),
(55, '795366 Printed letters Leggings autumn stretch pants', 'OP795366', 14, '1596121953.jpg', 2, 18, 1, '2020-07-30 08:11:04', '2020-07-30 08:12:32');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_name` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `subcategory_name`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shoes', 1, 1, '2020-07-29 07:59:54', '2020-07-29 07:59:54'),
(2, 'Belt', 1, 1, '2020-07-29 08:00:10', '2020-07-29 08:00:25'),
(3, 'Watch', 1, 1, '2020-07-29 08:01:20', '2020-07-29 08:01:20'),
(4, 'Pants', 1, 1, '2020-07-29 08:01:36', '2020-07-29 08:01:36'),
(5, 'Shirt', 1, 1, '2020-07-29 08:02:07', '2020-07-29 08:02:07'),
(6, 'Suit', 1, 1, '2020-07-29 08:02:22', '2020-07-29 08:02:22'),
(7, 'Wallet', 1, 1, '2020-07-29 08:02:44', '2020-07-29 08:02:44'),
(8, 'Backpack', 1, 1, '2020-07-29 08:05:33', '2020-07-29 08:05:33'),
(9, 'New Arrival', 1, 1, '2020-07-29 10:06:02', '2020-07-29 10:06:02'),
(10, 'Popularity', 2, 1, '2020-07-29 10:06:15', '2020-07-29 10:06:15'),
(11, 'Instock', 1, 1, '2020-07-29 10:06:42', '2020-07-29 10:06:42'),
(12, 'Bag', 2, 1, '2020-07-30 06:22:55', '2020-07-30 06:22:55'),
(13, 'Shoes', 2, 1, '2020-07-30 06:23:16', '2020-07-30 06:23:16'),
(14, 'Shirt', 2, 1, '2020-07-30 06:23:46', '2020-07-30 06:23:46'),
(15, 'Watch', 2, 1, '2020-07-30 06:24:30', '2020-07-30 06:24:30'),
(16, 'Dress', 2, 1, '2020-07-30 06:24:47', '2020-07-30 06:24:47'),
(17, 'Skirt', 2, 1, '2020-07-30 06:25:16', '2020-07-30 06:25:16'),
(18, 'Pants', 2, 1, '2020-07-30 06:25:28', '2020-07-30 06:25:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$ZH8f9pw0S5Qpyc7b7YBuoudroZ1.pBoFpnEkCABeHOIqGiXGhTwQG', NULL, '2020-07-29 07:29:17', '2020-07-30 05:59:58'),
(2, 'Smey', 'smey@gmail.com', NULL, '$2y$10$BcIAlAQlnimWFSlxr4FPF.t5sUYwR71BkILjjIJIoWVOIl5KvG.qa', NULL, '2020-07-29 07:32:32', '2020-07-30 08:45:45'),
(3, 'So Phearin', 'rin@gmail.com', NULL, '$2y$10$Gyg4qUWyX90nnNI27YRRjeDsQWvDduXvRHvZtsfUeWjdPA1SQS0xC', NULL, '2020-07-30 08:21:49', '2020-07-30 08:45:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
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
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
