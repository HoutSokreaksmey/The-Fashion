-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2020 at 09:42 AM
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
(3, 'Couple', 1, '2020-07-29 21:48:41', '2020-07-29 21:48:41'),
(4, 'Accessories', 1, '2020-08-01 09:44:57', '2020-08-01 09:44:57'),
(5, 'Brands', 1, '2020-08-01 09:45:09', '2020-08-01 09:45:09');

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
(55, '795366 Printed letters Leggings autumn stretch pants', 'OP795366', 14, '1596121953.jpg', 2, 18, 1, '2020-07-30 08:11:04', '2020-07-30 08:12:32'),
(56, '667880 Sexy tube top dress summer new fashion bag hip big code nightclub womens club party princess', 'CS667880', 15, '1596295959.jpg', 2, 9, 1, '2020-08-01 08:30:45', '2020-08-01 08:32:39'),
(57, '605084 Super fairy fairy skirt net red retro thin waist tie bow two wear sexy strap cake dress', 'CS605084', 17, '1596295978.jpg', 2, 9, 1, '2020-08-01 08:31:32', '2020-08-01 08:32:57'),
(58, '479839 New Fashion Sweet Couple Shirt', 'NC479839', 12, '1596296053.jpg', 3, 9, 1, '2020-08-01 08:34:13', '2020-08-01 08:34:13'),
(59, '619005 Autumn new Korean version of the loose thin waist long sleeve chiffon shirt v collar wild lantern sleeves ruffled shirt', 'CS619005', 16, '1596296220.jpg', 2, 10, 1, '2020-08-01 08:37:00', '2020-08-01 08:37:00'),
(60, '886923 Autumn new womens leak clavicle shirt mesh hollow Korean version of the pullover sweater womens long-sleeved', 'CS886923', 13, '1596296250.jpg', 2, 10, 1, '2020-08-01 08:37:29', '2020-08-01 08:37:29'),
(61, '823504 Hosting service live on the mirror nightclub women''s autumn and winter new womens sexy lace stitching', 'CS823504', 14, '1596296287.jpg', 2, 10, 1, '2020-08-01 08:38:07', '2020-08-01 08:38:07'),
(62, '325250 Lady single-breasted line skirt', 'CSK325250', 15, '1596296576.jpg', 2, 11, 1, '2020-08-01 08:42:56', '2020-08-01 08:42:56'),
(63, '310955 Korean women plaid bodice skirt', 'CSK310955', 17, '1596296640.jpg', 2, 11, 1, '2020-08-01 08:43:59', '2020-08-01 08:43:59'),
(64, '359822 Buckskin high waist package hip skirt', 'CSK359822', 13, '1596296706.jpg', 2, 11, 1, '2020-08-01 08:45:06', '2020-08-01 08:45:06'),
(65, '198246 spring new mens high-top canvas shoes Korean trend sports casual shoes fashion trend shoes', 'SSH307932', 15, '1596297043.jpg', 1, 1, 1, '2020-08-01 08:50:42', '2020-08-01 08:50:42'),
(66, '214936 Little white shoes mens summer new Korean version of the trend of white board shoes wild sports', 'SSH214936', 14, '1596297081.jpg', 1, 1, 1, '2020-08-01 08:51:20', '2020-08-01 08:51:20'),
(67, '886923 Autumn new womens leak clavicle shirt mesh hollow Korean version of the pullover sweater womens long-sleeved', 'CS886923', 15, '1596423481.jpg', 2, 14, 1, '2020-08-02 19:58:01', '2020-08-02 19:58:01'),
(68, '619005 Autumn new Korean version of the loose thin waist long sleeve chiffon shirt v collar wild lantern sleeves ruffled shirt', 'CS619005', 15, '1596423514.jpg', 2, 14, 1, '2020-08-02 19:58:34', '2020-08-02 19:58:34'),
(69, '875144 Watch female ins style cool personality trend student simple casual atmosphere art forest retro', 'BW875144', 10, '1596423616.jpg', 2, 15, 1, '2020-08-02 20:00:16', '2020-08-02 20:00:16'),
(70, '217907 new style rhinestone bracelet watch female student Korean fashion full diamond British watch', 'BW217907', 8, '1596423644.jpg', 2, 15, 1, '2020-08-02 20:00:44', '2020-08-02 20:00:44'),
(71, '757458 Temperament dress summer sexy nightclub dress v-neck slim slimming irregular hips sleeveless', 'CS757458', 12, '1596423745.jpg', 2, 16, 1, '2020-08-02 20:02:24', '2020-08-02 20:02:24'),
(72, '667880 Sexy tube top dress summer new fashion bag hip big code nightclub womens club party princess', 'CS667880', 20, '1596423774.jpg', 2, 16, 1, '2020-08-02 20:02:54', '2020-08-02 20:02:54'),
(73, '340781 Package hip high waist short skirt', 'OSK340781', 14, '1596423869.jpg', 2, 17, 1, '2020-08-02 20:04:29', '2020-08-02 20:04:29'),
(74, '346380 Wool Fish Tail Skirt', 'OSK346380', 13, '1596423900.jpg', 2, 17, 1, '2020-08-02 20:05:00', '2020-08-02 20:05:00'),
(75, '289290 Women elastic waist trousers pants', 'OP289290', 17, '1596424036.jpg', 2, 18, 1, '2020-08-02 20:07:15', '2020-08-02 20:07:15'),
(76, '238118 Leggings Winter Long Pants', 'OP238118', 20, '1596424057.jpg', 2, 18, 1, '2020-08-02 20:07:37', '2020-08-02 20:07:37'),
(77, '113708 The new long section Korean cute girls wallet', 'FB113708', 8, '1596424296.jpg', 2, 19, 1, '2020-08-02 20:11:35', '2020-08-02 20:11:35'),
(78, '691786 The new Korean version of the triple crown of love wallet', 'BB691786', 9, '1596424321.jpg', 2, 19, 1, '2020-08-02 20:12:01', '2020-08-02 20:12:01'),
(79, '341671 Korean version retro matte buckle purse', 'SW341671', 11, '1596424345.jpg', 2, 19, 1, '2020-08-02 20:12:24', '2020-08-02 20:12:24'),
(80, '813634 Long section clutch envelope purse', 'FB813634', 12, '1596424380.jpg', 2, 19, 1, '2020-08-02 20:12:59', '2020-08-02 20:12:59'),
(81, '918412 Schoolbag female Korean version of Harajuku ulzzang high school college students junior high school', 'EB918412', 12, '1596424502.jpg', 2, 20, 1, '2020-08-02 20:15:02', '2020-08-02 20:15:02'),
(82, '685946 School bag female Korean version of high school students junior high school student backpack', 'EB685946', 12, '1596424550.jpg', 2, 20, 1, '2020-08-02 20:15:50', '2020-08-02 20:15:50'),
(83, '652039 Good-looking portable school bag female Korean version of Harajuku ulzzang high school', 'EB652039', 14, '1596424579.jpg', 2, 20, 1, '2020-08-02 20:16:18', '2020-08-02 20:16:18'),
(84, '477264 ins style schoolbag female Korean version of the forest Harajuku ulzzang high school college', 'EB477264', 13, '1596424647.jpg', 2, 20, 1, '2020-08-02 20:17:27', '2020-08-02 20:17:27'),
(85, '555545 Autumn and winter high waist jeans', 'CP555545', 15, '1596424762.jpg', 2, 21, 1, '2020-08-02 20:19:21', '2020-08-02 20:19:21'),
(86, '593702 Female nine pants stretch thin skinny pants', 'CP593702', 15, '1596424789.jpg', 2, 21, 1, '2020-08-02 20:19:48', '2020-08-02 20:19:48'),
(87, '598703 Waist large size loose casual Slim thin feet pants', 'CP598703', 13, '1596424882.jpg', 2, 21, 1, '2020-08-02 20:21:21', '2020-08-02 20:21:21'),
(88, '691686 Shuangkou high waist was thin women''s jeans', 'CP691686', 15, '1596424906.jpg', 2, 21, 1, '2020-08-02 20:21:45', '2020-08-02 20:21:45'),
(89, '46792 Men''s smooth buckle leather belt', 'SB46792', 17, '1596426005.jpg', 1, 2, 1, '2020-08-02 20:39:24', '2020-08-02 20:40:04'),
(90, '444504 Teenager mens watches personality trendy men cool ins wind female trend big dial super large', 'BW444504', 14, '1596426081.jpg', 1, 3, 1, '2020-08-02 20:41:20', '2020-08-02 20:41:20'),
(91, '048428 Couple sports watch pair of men and women middle school students retro Hong Kong style', 'BW048428', 20, '1596426108.jpg', 1, 3, 1, '2020-08-02 20:41:48', '2020-08-02 20:41:48'),
(93, '23960 Summer elastic men''s casual pants', 'JP23960', 15, '1596426346.jpg', 1, 4, 1, '2020-08-02 20:45:45', '2020-08-02 20:45:45'),
(94, '691262 Japanese summer men''s casual pants', 'CP691262', 15, '1596426368.jpg', 1, 4, 1, '2020-08-02 20:46:08', '2020-08-02 20:46:08'),
(95, '295380 Mens Long Sleeve T-Shirt Round Neck Trend Early Autumn Handsome Thin Sweatshirt Youth Student', 'BS295380', 15, '1596426494.jpg', 1, 5, 1, '2020-08-02 20:48:13', '2020-08-02 20:48:13'),
(96, '040953 Summer mens collar led short-sleeved t-shirt lapel collar POLO shirt young mens Korean Slim half-sleeved', 'BS040953', 12, '1596426519.jpg', 1, 5, 1, '2020-08-02 20:48:38', '2020-08-02 20:48:38'),
(97, '842674 Short-sleeved cotton round neck suit', 'BS842674', 14, '1596426607.jpg', 1, 6, 1, '2020-08-02 20:50:07', '2020-08-02 20:50:07'),
(98, '400202 Men cotton leisure sports suits', 'BS400202', 14, '1596426635.jpg', 1, 6, 1, '2020-08-02 20:50:35', '2020-08-02 20:50:35'),
(99, '777054 Genuine business men''s leather wallet', 'SW777054', 13, '1596426705.jpg', 1, 7, 1, '2020-08-02 20:51:44', '2020-08-02 20:51:44'),
(100, '139278 Pilar chain Clutch authentic business wallet', 'SW139278', 12, '1596426725.jpg', 1, 7, 1, '2020-08-02 20:52:05', '2020-08-02 20:52:05'),
(101, '197908 Tide brand backpack male vintage sense schoolbag female ins tide cool Harajuku style Korean', 'EB197908', 13, '1596426798.jpg', 1, 8, 1, '2020-08-02 20:53:17', '2020-08-02 20:53:17'),
(102, '197908 Tide brand backpack male vintage sense schoolbag female ins tide cool Harajuku style Korean', 'EB197908', 13, '1596426823.jpg', 1, 8, 1, '2020-08-02 20:53:43', '2020-08-02 20:53:43'),
(103, '114752 Summer Korean trend lover couple suits', 'NC114752', 12, '1596428688.jpg', 3, 22, 1, '2020-08-02 21:24:47', '2020-08-02 21:24:47'),
(104, '479839 New Fashion Sweet Couple Shirt', 'NC479839', 13, '1596428719.jpg', 3, 22, 1, '2020-08-02 21:25:19', '2020-08-02 21:25:19'),
(105, '477264 ins style schoolbag female Korean version of the forest Harajuku ulzzang high school college', 'SSH995797', 12, '1596429854.jpg', 3, 22, 1, '2020-08-02 21:44:14', '2020-08-02 21:44:14'),
(106, '995554 new summer Korean trend mens shoes all-match personality cloth shoes mandarin duck canvas', 'NC154684', 15, '1596429904.jpg', 3, 22, 1, '2020-08-02 21:45:03', '2020-08-02 21:45:03'),
(107, '477264 ins style schoolbag female Korean version of the forest Harajuku ulzzang high school college', 'SSH847441', 12, '1596430150.jpg', 3, 23, 1, '2020-08-02 21:49:09', '2020-08-02 21:49:09'),
(108, '477264 ins style schoolbag female Korean version of the forest Harajuku ulzzang high school college', 'SSH995797', 14, '1596430177.jpg', 3, 23, 1, '2020-08-02 21:49:36', '2020-08-02 21:49:36'),
(109, '995797 new summer Korean trend mens shoes all-match personality cloth shoes mandarin duck canvas', 'SSH995797', 20, '1596430200.jpg', 3, 23, 1, '2020-08-02 21:50:00', '2020-08-02 21:50:00'),
(110, '477264 ins style schoolbag female Korean version of the forest Harajuku ulzzang high school college', 'SSH995797', 17, '1596430221.jpg', 3, 23, 1, '2020-08-02 21:50:20', '2020-08-02 21:50:20'),
(111, '477264 ins style schoolbag female Korean version of the forest Harajuku ulzzang high school college', 'SW60462', 17, '1596430352.jpg', 3, 24, 1, '2020-08-02 21:52:31', '2020-08-02 21:52:31'),
(112, '995797 new summer Korean trend mens shoes all-match personality cloth shoes mandarin duck canvas', 'SW60462', 15, '1596430372.jpg', 3, 24, 1, '2020-08-02 21:52:51', '2020-08-02 21:52:51'),
(113, '75992 Playboy men''s buckle leather belt', 'SW982031', 17, '1596430393.jpg', 3, 15, 1, '2020-08-02 21:53:13', '2020-08-02 21:53:13'),
(114, '995797 new summer Korean trend mens shoes all-match personality cloth shoes mandarin duck canvas', 'SW139278', 15, '1596430445.jpg', 3, 24, 1, '2020-08-02 21:54:04', '2020-08-02 21:54:04'),
(115, '139278 Pilar chain Clutch authentic business walleta', 'SW341671', 20, '1596430561.jpg', 3, 24, 1, '2020-08-02 21:56:01', '2020-08-02 21:56:01'),
(120, '477264 ins style schoolbag female Korean version of the forest Harajuku ulzzang high school college', 'SW60462', 20, '1596431268.jpg', 3, 25, 1, '2020-08-02 22:07:47', '2020-08-02 22:07:47'),
(121, '995797 new summer Korean trend mens shoes all-match personality cloth shoes mandarin duck canvas', 'SSH847405', 17, '1596431288.jpg', 3, 25, 1, '2020-08-02 22:08:08', '2020-08-02 22:08:08'),
(122, '995797 new summer Korean trend mens shoes all-match personality cloth shoes mandarin duck canvas', 'SW139278', 17, '1596431315.jpg', 3, 25, 1, '2020-08-02 22:08:34', '2020-08-02 22:08:34'),
(123, '477264 ins style schoolbag female Korean version of the forest Harajuku ulzzang high school college', 'SSH995797', 15, '1596431336.jpg', 3, 25, 1, '2020-08-02 22:08:55', '2020-08-02 22:08:55'),
(124, '80880 Colorful LED mushroom with intelligent sensor control nightlights', 'SL80880', 15, '1596442169.jpg', 4, 26, 1, '2020-08-03 01:09:28', '2020-08-03 01:09:28'),
(125, '03909 Cutties light bulb', 'SL03909', 13, '1596442196.jpg', 4, 26, 1, '2020-08-03 01:09:56', '2020-08-03 01:09:56'),
(126, '69090 Human touch sensor control LED nighlight', 'SL69090', 14, '1596442218.jpg', 4, 26, 1, '2020-08-03 01:10:17', '2020-08-03 01:10:17'),
(127, '91304 Energy-saving LED light', 'SL91304', 13, '1596442437.jpg', 4, 26, 1, '2020-08-03 01:13:57', '2020-08-03 01:13:57'),
(128, '936020 Three-dimensional cute strawberry suitable for iPhonex/xs/se mobile phone case Apple', 'PC936020', 3, '1596443134.jpg', 4, 27, 1, '2020-08-03 01:25:33', '2020-08-03 01:25:33'),
(129, '858705 Cartoon couple suitable for 11Pro/Max Apple X/XS/XR/SE mobile phone case iPhone7p', 'PC858705', 4, '1596443160.jpg', 4, 27, 1, '2020-08-03 01:26:00', '2020-08-03 01:26:00'),
(130, '856629 Super cute cartoon for iPhone11promax mobile phone case XR Apple SE2 skin texture', 'PC856629', 3, '1596443509.jpg', 4, 27, 1, '2020-08-03 01:31:49', '2020-08-03 01:31:49'),
(131, '846905 ins Korean style color wristband for iPhonexs/11promax mobile phone case Apple 7p/8plus', 'PC846905', 6, '1596443554.jpg', 4, 27, 1, '2020-08-03 01:32:34', '2020-08-03 01:32:34'),
(132, '892657 new Apple notebook MacBook Pro 15 inch A1990 computer case shell cover accessories', 'MC892657', 17, '1596444376.jpg', 4, 28, 1, '2020-08-03 01:46:15', '2020-08-03 01:46:15'),
(133, '999859A Macbookpro protective case 13.3 inch macair shell 15 ultra-thin 12 creative Apple laptop case', 'MC999859A', 20, '1596444420.jpg', 4, 28, 1, '2020-08-03 01:46:59', '2020-08-03 01:46:59'),
(134, '942314D Macbook12 inch pro protective shell air shell 13 inch ultra-thin 15 inch matte Apple computer notebook', 'MC942314D', 14, '1596444582.jpg', 4, 28, 1, '2020-08-03 01:49:41', '2020-08-03 01:49:41'),
(135, '942314C Macbook12 inch pro protective shell air shell 13 inch ultra-thin 15 inch matte Apple computer notebook', 'MC942314C', 17, '1596444608.jpg', 4, 28, 1, '2020-08-03 01:50:07', '2020-08-03 01:50:07'),
(136, '988335 AirPods Pro protective sleeve airpodspro shell sleeve ipods Apple 3rd generation wireless Bluetooth', 'AC988335', 7, '1596444670.jpg', 4, 29, 1, '2020-08-03 01:51:09', '2020-08-03 01:51:09'),
(137, '942918 Japanese three-dimensional star Delu Duffy bear suitable for AirPods Pro protective sleeve', 'AC942918', 8, '1596444695.jpg', 4, 29, 1, '2020-08-03 01:51:34', '2020-08-03 01:51:34'),
(138, '942918 Japanese three-dimensional star Delu Duffy bear suitable for AirPods Pro protective sleeve', 'AC942918', 9, '1596444758.jpg', 4, 29, 1, '2020-08-03 01:52:37', '2020-08-03 01:52:37'),
(139, '928823 Silicone stereo cute bear suitable for airpods2 protective cover Apple wireless Bluetooth headset', 'AC928823', 7, '1596444786.jpg', 4, 29, 1, '2020-08-03 01:53:06', '2020-08-03 01:53:06'),
(140, '924334 Japan and South Korea new mini5 silicone shell cartoon 2018 ipad9.7 inch air2 protective', 'IP924334', 10, '1596445048.jpg', 4, 30, 1, '2020-08-03 01:57:28', '2020-08-03 01:57:28'),
(141, '931652 Apple ipad 9.7 cartoon air2 protective cover ipd3 all-inclusive anti-fall mini4 mini 2 hibernation', 'IP931652', 12, '1596445077.jpg', 4, 30, 1, '2020-08-03 01:57:57', '2020-08-03 01:57:57'),
(142, '931652 Apple ipad 9.7 cartoon air2 protective cover ipd3 all-inclusive anti-fall mini4 mini 2 hibernation', 'IP931652', 11, '1596445111.jpg', 4, 30, 1, '2020-08-03 01:58:30', '2020-08-03 01:58:30'),
(143, '872945 pink leopard ipad 9.7 inch air2 protective cover iapd3 cute cartoon mini4 shell sleep new', 'IP872945', 12, '1596445142.jpg', 4, 30, 1, '2020-08-03 01:59:01', '2020-08-03 01:59:01'),
(144, '477264 ins style schoolbag female Korean version of the forest Harajuku ulzzang high school college', 'SW139278', 17, '1596514347.jpg', 5, 31, 1, '2020-08-03 21:12:26', '2020-08-03 21:12:26'),
(145, '477264 ins style schoolbag female Korean version of the forest Harajuku ulzzang high school college', 'SN123', 20, '1596514365.jpg', 5, 31, 1, '2020-08-03 21:12:45', '2020-08-03 21:12:45'),
(146, '75992 Playboy men''s buckle leather belt', 'SSH995797', 14, '1596514394.jpg', 5, 31, 1, '2020-08-03 21:13:14', '2020-08-03 21:13:14'),
(147, '995797 new summer Korean trend mens shoes all-match personality cloth shoes mandarin duck canvas', 'SSH847405', 14, '1596514411.jpg', 5, 31, 1, '2020-08-03 21:13:31', '2020-08-03 21:13:31'),
(148, '477264 ins style schoolbag female Korean version of the forest Harajuku ulzzang high school college', 'SW341671', 20, '1596514836.jpg', 5, 32, 1, '2020-08-03 21:20:36', '2020-08-03 21:20:36'),
(149, '995797 new summer Korean trend mens shoes all-match personality cloth shoes mandarin duck canvas', 'SW60462', 17, '1596514855.jpeg', 5, 32, 1, '2020-08-03 21:20:54', '2020-08-03 21:20:54'),
(150, '995797 new summer Korean trend mens shoes all-match personality cloth shoes mandarin duck canvas', 'SW341671', 14, '1596514872.jpg', 5, 32, 1, '2020-08-03 21:21:12', '2020-08-03 21:21:12'),
(151, '995797 new summer Korean trend mens shoes all-match personality cloth shoes mandarin duck canvas', 'SW139278', 20, '1596514893.jpg', 5, 32, 1, '2020-08-03 21:21:33', '2020-08-03 21:21:33'),
(152, '995797 new summer Korean trend mens shoes all-match personality cloth shoes mandarin duck canvas', 'SW60462', 20, '1596516388.jpg', 5, 33, 1, '2020-08-03 21:46:28', '2020-08-03 21:46:28'),
(153, '995797 new summer Korean trend mens shoes all-match personality cloth shoes mandarin duck canvas', 'AB123', 17, '1596516420.jpg', 5, 33, 1, '2020-08-03 21:47:00', '2020-08-03 21:47:00'),
(154, 'Product Gucci', 'SSH847405', 20, '1596516476.jpg', 5, 33, 1, '2020-08-03 21:47:56', '2020-08-03 21:47:56'),
(155, 'Product Gucci 2', 'GC 2', 20, '1596516509.jpg', 5, 33, 1, '2020-08-03 21:48:29', '2020-08-03 21:48:29'),
(156, '15552 Luis Vuitton', 'LV545611', 20, '1596516660.jpg', 5, 34, 1, '2020-08-03 21:51:00', '2020-08-03 21:51:00'),
(157, '217907 new style rhinestone bracelet watch female student Korean fashion full diamond British watch', 'LV545611555', 20, '1596516689.jpg', 5, 34, 1, '2020-08-03 21:51:28', '2020-08-03 21:51:28'),
(158, '113708 The new long section Korean cute girls wallet', 'LV122544', 20, '1596516769.jpg', 5, 34, 1, '2020-08-03 21:52:48', '2020-08-03 21:52:48'),
(159, '139278 Pilar chain Clutch authentic business wallet', 'LV55256', 20, '1596516802.jpg', 5, 34, 1, '2020-08-03 21:53:22', '2020-08-03 21:53:22');

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
(18, 'Pants', 2, 1, '2020-07-30 06:25:28', '2020-07-30 06:25:28'),
(19, 'Wallet', 2, 1, '2020-08-02 20:08:56', '2020-08-02 20:08:56'),
(20, 'Backpack', 2, 1, '2020-08-02 20:09:27', '2020-08-02 20:09:27'),
(21, 'Jean', 2, 1, '2020-08-02 20:09:42', '2020-08-02 20:09:42'),
(22, 'Suit', 3, 1, '2020-08-02 21:23:13', '2020-08-02 21:23:13'),
(23, 'Shoes', 3, 1, '2020-08-02 21:48:08', '2020-08-02 21:48:08'),
(24, 'Watch', 3, 1, '2020-08-02 21:48:20', '2020-08-02 21:48:20'),
(25, 'Shirt', 3, 1, '2020-08-02 21:58:54', '2020-08-02 21:58:54'),
(26, 'Light', 4, 1, '2020-08-03 00:59:51', '2020-08-03 00:59:51'),
(27, 'Case', 4, 1, '2020-08-03 01:24:20', '2020-08-03 01:24:20'),
(28, 'MacBook Case', 4, 1, '2020-08-03 01:39:05', '2020-08-03 01:39:05'),
(29, 'AirPods Case', 4, 1, '2020-08-03 01:39:16', '2020-08-03 01:39:16'),
(30, 'iPadCase', 4, 1, '2020-08-03 01:54:31', '2020-08-03 01:54:31'),
(31, 'Burberry', 5, 1, '2020-08-03 21:07:16', '2020-08-03 21:07:16'),
(32, 'Chanel', 5, 1, '2020-08-03 21:15:58', '2020-08-03 21:15:58'),
(33, 'Gucci', 5, 1, '2020-08-03 21:24:08', '2020-08-03 21:24:08'),
(34, 'Luis Vuitton', 5, 1, '2020-08-03 21:25:48', '2020-08-03 21:25:48');

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
(3, 'So Phearin', 'rin@gmail.com', NULL, '$2y$10$Gyg4qUWyX90nnNI27YRRjeDsQWvDduXvRHvZtsfUeWjdPA1SQS0xC', NULL, '2020-07-30 08:21:49', '2020-07-30 08:45:24'),
(4, 'Ratha', 'ratha@gmail.com', NULL, '$2y$10$wkNnOzgF5iIPgy6BdIcPZuUr4Ixiz16UdH19jl5vLKzNB8GDOzY0W', NULL, '2020-08-01 10:15:31', '2020-08-01 10:15:31'),
(5, 'Dell Ratke', 'fschultz@example.com', '2020-08-04 00:41:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dNaVIVPdXH', '2020-08-04 00:41:32', '2020-08-04 00:41:32'),
(6, 'Evangeline Corwin III', 'blaze.raynor@example.com', '2020-08-04 00:41:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Fx87VbCp2E', '2020-08-04 00:41:32', '2020-08-04 00:41:32'),
(7, 'Kacey Doyle', 'camila42@example.org', '2020-08-04 00:41:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lt3JELmPs1', '2020-08-04 00:41:32', '2020-08-04 00:41:32'),
(8, 'Sabrina Bogan', 'vjohnson@example.net', '2020-08-04 00:41:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sutca9GPse', '2020-08-04 00:41:32', '2020-08-04 00:41:32'),
(9, 'Gia Pfeffer', 'smitham.rosina@example.org', '2020-08-04 00:41:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BCDTb7yFCd', '2020-08-04 00:41:32', '2020-08-04 00:41:32'),
(10, 'Lavinia Bergnaum', 'ppaucek@example.org', '2020-08-04 00:41:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UeXzKUemzx', '2020-08-04 00:41:32', '2020-08-04 00:41:32'),
(11, 'Jody Kerluke', 'eliezer85@example.net', '2020-08-04 00:41:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9kX2s0e4TY', '2020-08-04 00:41:32', '2020-08-04 00:41:32'),
(12, 'Izaiah Connelly', 'bernhard.shanon@example.org', '2020-08-04 00:41:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I3DkkqoXyz', '2020-08-04 00:41:32', '2020-08-04 00:41:32'),
(13, 'Orville Bins DDS', 'ckeeling@example.org', '2020-08-04 00:41:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uYkKmv2NGL', '2020-08-04 00:41:32', '2020-08-04 00:41:32'),
(14, 'Jean Hickle', 'elva.fritsch@example.com', '2020-08-04 00:41:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ydI4bIKJ5e', '2020-08-04 00:41:32', '2020-08-04 00:41:32'),
(15, 'Lorenzo Hoeger', 'stamm.rudolph@example.com', '2020-08-04 00:41:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fAELucSlzA', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(16, 'Prof. Stacey Stehr', 'zkling@example.net', '2020-08-04 00:41:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ayOVJteGhD', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(17, 'Ms. Amira Hartmann II', 'xlesch@example.org', '2020-08-04 00:41:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FWuHkwsgxp', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(18, 'Davion Larson', 'urempel@example.net', '2020-08-04 00:41:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DRpNjNJJ4S', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(19, 'Trinity Schoen Jr.', 'qparker@example.org', '2020-08-04 00:41:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OKZJywaW7Z', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(20, 'Miss Alisha Kemmer', 'cronin.katarina@example.net', '2020-08-04 00:41:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rauh57Mqyr', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(21, 'Katharina Hahn', 'luciano16@example.net', '2020-08-04 00:41:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6G6By0QLN1', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(22, 'Chandler Gorczany', 'weston.harris@example.net', '2020-08-04 00:41:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z4VFnjKNEP', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(23, 'Mr. Tyrell Kiehn MD', 'oreilly.hope@example.org', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZeNPYCyBZY', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(24, 'Demarco Connelly', 'kim.lang@example.com', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ggz9FPDmgm', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(25, 'Mr. Merlin Medhurst', 'kraig.windler@example.com', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gQHUIucuOu', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(26, 'Breanne Koelpin III', 'cgrimes@example.com', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'U1JQ340Vk9', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(27, 'Miss Arianna Padberg I', 'perry18@example.org', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '08gh9G2zed', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(28, 'Miss Eula Hoppe', 'smith.charlie@example.org', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RtBStgggpF', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(29, 'Prof. Idell Wilkinson', 'anissa.crooks@example.com', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AzwcNxqLn5', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(30, 'Mrs. Samara Ullrich I', 'koch.juliet@example.com', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vFle2UM0D3', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(31, 'Misty Predovic', 'johnston.alfonzo@example.com', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OvO63LyXBJ', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(32, 'Kurt Denesik', 'giovanny41@example.com', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8pG1xFI6Ma', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(33, 'Sidney King', 'ireichert@example.com', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mbd9Csuv1P', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(34, 'Hassan Hayes', 'valentin50@example.org', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'u2is3I09VW', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(35, 'Mr. Arely Beahan', 'wgorczany@example.com', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jv8NpHqA2m', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(36, 'Mrs. Amalia Kulas', 'hcronin@example.org', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lOBRLUDUrT', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(37, 'Lenore Collins', 'kcremin@example.net', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'j3PSE3vYdO', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(38, 'Mrs. Lyla Funk PhD', 'rebecca25@example.net', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xtdGmXmSF8', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(39, 'Americo Schamberger', 'gavin22@example.net', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '89Yyp9AlXs', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(40, 'Arianna Witting', 'brennon12@example.net', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LYNhHMSjTW', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(41, 'Telly Hane I', 'ggrant@example.com', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vTfiQny1oc', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(42, 'Myrna Romaguera', 'damore.jamarcus@example.org', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'u9bdg0h7GA', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(43, 'Brett Schumm PhD', 'sammy88@example.org', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ayKPP3uWlT', '2020-08-04 00:41:33', '2020-08-04 00:41:33'),
(44, 'Dr. Forrest Mayert', 'marcelo78@example.org', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'so7ESyYzet', '2020-08-04 00:41:34', '2020-08-04 00:41:34'),
(45, 'Tobin Bednar PhD', 'augustine60@example.org', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kHZRq6RDUZ', '2020-08-04 00:41:34', '2020-08-04 00:41:34'),
(46, 'Rocio Jerde', 'lang.angelina@example.net', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BB5Wgcy9sk', '2020-08-04 00:41:34', '2020-08-04 00:41:34'),
(47, 'Prof. Heather Pagac II', 'streich.constantin@example.com', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8TBKE7Ljco', '2020-08-04 00:41:34', '2020-08-04 00:41:34'),
(48, 'Mr. Barry Goodwin', 'troy73@example.net', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kMVSAtt5qK', '2020-08-04 00:41:34', '2020-08-04 00:41:34'),
(49, 'Mrs. Octavia Kuphal V', 'west.danyka@example.org', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EoqQpSEMZx', '2020-08-04 00:41:34', '2020-08-04 00:41:34'),
(50, 'Mr. Carlos Beahan I', 'little.melvin@example.com', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ogSn2E0TH3', '2020-08-04 00:41:34', '2020-08-04 00:41:34'),
(51, 'Justine Beier', 'carter87@example.net', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WXsDm0ITu3', '2020-08-04 00:41:34', '2020-08-04 00:41:34'),
(52, 'Eugene O''Keefe IV', 'bessie.koepp@example.net', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mmjBUkebSm', '2020-08-04 00:41:34', '2020-08-04 00:41:34'),
(53, 'Brittany Satterfield', 'maybelle.donnelly@example.org', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aygO4zxUuF', '2020-08-04 00:41:34', '2020-08-04 00:41:34'),
(54, 'Tatyana Gutkowski', 'carolina97@example.net', '2020-08-04 00:41:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iNEVj4OZrH', '2020-08-04 00:41:34', '2020-08-04 00:41:34');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
