-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2020 at 11:48 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lr_foodlans`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `remember_token` text,
  `image` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `remember_token`, `image`, `role`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'mainAdmin@gmail.com', '$2y$10$rGWh7JQEzqedL.2avJKhmupCyQ/KolICQOkjdAqGCgP807.tMAk/m', NULL, 'admin.png', 1, '2019-11-04 00:00:00', '2019-11-09 12:46:24', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notification`
--

CREATE TABLE `admin_notification` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_notification`
--

INSERT INTO `admin_notification` (`id`, `owner_id`, `user_id`, `order_id`, `message`, `created_at`, `updated_at`) VALUES
(62, 1, 9, 1, 'Dear admin, You have new order #904756 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-03 11:08:12', '2020-02-03 11:08:12'),
(63, 1, 9, 2, 'Dear admin, You have new order #751056 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-07 06:03:34', '2020-02-07 06:03:34'),
(64, 1, 9, 3, 'Dear admin, You have new order #107404 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-07 06:23:07', '2020-02-07 06:23:07'),
(65, 1, 9, 4, 'Dear admin, You have new order #237566 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-07 06:38:21', '2020-02-07 06:38:21'),
(66, 1, 9, 5, 'Dear admin, You have new order #325619 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-07 06:42:41', '2020-02-07 06:42:41'),
(67, 1, 9, 6, 'Dear admin, You have new order #178495 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-07 06:49:50', '2020-02-07 06:49:50'),
(68, 1, 9, 7, 'Dear admin, You have new order #627494 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-07 06:52:58', '2020-02-07 06:52:58'),
(69, 1, 9, 8, 'Dear admin, You have new order #684731 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-07 06:53:38', '2020-02-07 06:53:38'),
(70, 1, 9, 9, 'Dear admin, You have new order #659495 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-07 06:53:57', '2020-02-07 06:53:57'),
(71, 1, 9, 10, 'Dear admin, You have new order #178351 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-07 13:02:04', '2020-02-07 13:02:04'),
(72, 1, 9, 11, 'Dear admin, You have new order #665968 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-07 13:04:38', '2020-02-07 13:04:38'),
(73, 1, 9, 12, 'Dear admin, You have new order #584958 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-07 13:16:38', '2020-02-07 13:16:38'),
(74, 1, 9, 13, 'Dear admin, You have new order #572596 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-07 13:17:32', '2020-02-07 13:17:32'),
(75, 1, 9, 14, 'Dear admin, You have new order #387110 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-07 13:29:40', '2020-02-07 13:29:40'),
(76, 1, 9, 15, 'Dear admin, You have new order #811020 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-07 13:33:15', '2020-02-07 13:33:15'),
(77, 1, 9, 16, 'Dear admin, You have new order #256916 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-07 13:44:19', '2020-02-07 13:44:19'),
(78, 1, 9, 17, 'Dear admin, You have new order #352240 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-07 14:18:57', '2020-02-07 14:18:57'),
(79, 1, 9, 18, 'Dear admin, You have new order #955449 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-07 14:19:36', '2020-02-07 14:19:36'),
(80, 1, 9, 19, 'Dear admin, You have new order #546650 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-07 14:29:58', '2020-02-07 14:29:58'),
(81, 1, 9, 20, 'Dear admin, You have new order #356839 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-08 04:38:39', '2020-02-08 04:38:39'),
(82, 1, 9, 21, 'Dear admin, You have new order #812422 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-08 04:40:20', '2020-02-08 04:40:20'),
(83, 1, 9, 22, 'Dear admin, You have new order #471423 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-08 05:35:38', '2020-02-08 05:35:38'),
(84, 1, 9, 23, 'Dear admin, You have new order #103913 in Food style from bansuri. From Foodlans', '2020-02-08 05:40:58', '2020-02-08 05:40:58'),
(85, 1, 9, 24, 'Dear admin, You have new order #336205 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-08 05:42:58', '2020-02-08 05:42:58'),
(86, 1, 9, 25, 'Dear admin, You have new order #808883 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-08 05:44:25', '2020-02-08 05:44:25'),
(87, 1, 9, 26, 'Dear admin, You have new order #755908 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-08 06:19:40', '2020-02-08 06:19:40'),
(88, 1, 9, 27, 'Dear admin, You have new order #508969 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-08 06:25:44', '2020-02-08 06:25:44'),
(89, 1, 9, 28, 'Dear admin, You have new order #206338 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-08 07:17:32', '2020-02-08 07:17:32'),
(90, 1, 9, 29, 'Dear admin, You have new order #119231 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-08 07:17:57', '2020-02-08 07:17:57'),
(91, 1, 9, 30, 'Dear admin, You have new order #213118 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-08 07:43:07', '2020-02-08 07:43:07'),
(92, 1, 9, 31, 'Dear admin, You have new order #381790 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-08 09:34:12', '2020-02-08 09:34:12'),
(93, 1, 9, 32, 'Dear admin, You have new order #165256 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-08 09:40:55', '2020-02-08 09:40:55'),
(94, 1, 9, 33, 'Dear admin, You have new order #714025 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-10 09:41:43', '2020-02-10 09:41:43'),
(95, 1, 9, 34, 'Dear admin, You have new order #851677 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-10 11:29:24', '2020-02-10 11:29:24'),
(96, 1, 9, 35, 'Dear admin, You have new order #686487 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-10 12:25:23', '2020-02-10 12:25:23'),
(97, 1, 9, 36, 'Dear admin, You have new order #192213 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-10 12:39:23', '2020-02-10 12:39:23'),
(98, 1, 9, 37, 'Dear admin, You have new order #606456 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-10 13:04:41', '2020-02-10 13:04:41'),
(99, 1, 9, 38, 'Dear admin, You have new order #788810 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-10 13:21:54', '2020-02-10 13:21:54'),
(100, 1, 9, 39, 'Dear admin, You have new order #376263 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-10 13:28:56', '2020-02-10 13:28:56'),
(101, 1, 9, 40, 'Dear admin, You have new order #212695 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-10 13:33:14', '2020-02-10 13:33:14'),
(102, 1, 9, 41, 'Dear admin, You have new order #429514 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-10 13:37:24', '2020-02-10 13:37:24'),
(103, 1, 9, 42, 'Dear admin, You have new order #378833 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-10 14:12:27', '2020-02-10 14:12:27'),
(104, 1, 9, 43, 'Dear admin, You have new order #389086 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-11 04:53:47', '2020-02-11 04:53:47'),
(105, 1, 9, 44, 'Dear admin, You have new order #526941 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-11 05:08:02', '2020-02-11 05:08:02'),
(106, 1, 9, 45, 'Dear admin, You have new order #873304 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-11 05:42:43', '2020-02-11 05:42:43'),
(107, 1, 9, 46, 'Dear admin, You have new order #790130 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-11 06:41:22', '2020-02-11 06:41:22'),
(108, 1, 9, 47, 'Dear admin, You have new order #818602 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-11 06:48:13', '2020-02-11 06:48:13'),
(109, 1, 9, 48, 'Dear admin, You have new order #227169 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-11 07:18:48', '2020-02-11 07:18:48'),
(110, 1, 9, 49, 'Dear admin, You have new order #250187 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-11 07:27:15', '2020-02-11 07:27:15'),
(111, 1, 9, 50, 'Dear admin, You have new order #617937 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-11 07:31:00', '2020-02-11 07:31:00'),
(112, 1, 9, 51, 'Dear admin, You have new order #116375 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-11 07:31:08', '2020-02-11 07:31:08'),
(113, 1, 9, 52, 'Dear admin, You have new order #465951 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-11 09:32:35', '2020-02-11 09:32:35'),
(114, 1, 9, 53, 'Dear admin, You have new order #610050 in 24 Pizza Town from bansuri. From Foodlans', '2020-02-11 10:38:41', '2020-02-11 10:38:41');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'BreakFast', '1573046735.jpg', 0, '2019-11-04 08:10:54', '2019-11-06 13:31:49', '0000-00-00 00:00:00'),
(2, 'dessert', '1573046956.jpg', 0, '2019-11-06 13:29:16', '2019-11-06 13:29:16', '0000-00-00 00:00:00'),
(3, 'Snacks', '1573047093.jpg', 0, '2019-11-06 13:31:33', '2019-11-06 13:31:33', '0000-00-00 00:00:00'),
(4, 'Pizza', '1573103671.jpg', 0, '2019-11-07 05:14:31', '2019-11-07 05:14:31', '0000-00-00 00:00:00'),
(5, 'Panjabi', '1573279759.jpg', 0, '2019-11-09 06:09:19', '2019-11-09 06:09:19', '0000-00-00 00:00:00'),
(6, 'chinese', '1573279950.jpeg', 0, '2019-11-09 06:12:30', '2019-11-09 06:12:30', '0000-00-00 00:00:00'),
(7, 'dinner', '1577786479.jpg', 0, '2019-11-30 05:52:30', '2020-02-03 06:26:50', '2020-02-03 06:26:50');

-- --------------------------------------------------------

--
-- Table structure for table `company_setting`
--

CREATE TABLE `company_setting` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `logo` varchar(50) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_setting`
--

INSERT INTO `company_setting` (`id`, `name`, `address`, `location`, `phone`, `email`, `website`, `description`, `logo`, `favicon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Foodlans', '22,GreenLand, Icepark', 'ddd', '8769543456', 'foodlans@gmail.com', 'www.foodlans.com', 'The entire food industry is booming with Application launches and campaigns to generate a user base.\r\nThe restaurant business is in revolutionizing pace. Food chain business is competing in the market with technology but the sure-shot solution is Applicat', '5e0b2c2f93799.png', '5dfb445f9bc30.png', '2019-11-15 00:00:00', '2020-02-06 06:55:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `description` text,
  `type` varchar(50) NOT NULL,
  `discount` int(11) NOT NULL,
  `max_use` int(11) NOT NULL,
  `start_date` varchar(50) NOT NULL,
  `end_date` varchar(50) NOT NULL,
  `use_count` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `name`, `code`, `shop_id`, `description`, `type`, `discount`, `max_use`, `start_date`, `end_date`, `use_count`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'new Year', '5dd3df0377502', 2, 'sfsdff', 'amount', 50, 5, '2020-01-03', '2020-01-22', 5, 0, '2019-11-19 12:24:35', '2020-01-20 09:21:30', '0000-00-00 00:00:00'),
(2, 'offfer', '5dd3ea1be60df', 1, 'sfsdf', 'percentage', 10, 5, '2020-01-31', '2020-02-07', 1, 0, '2019-11-19 13:11:55', '2020-02-03 07:06:35', '2020-02-03 07:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `symbol` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `country`, `currency`, `code`, `symbol`) VALUES
(1, 'Albania', 'Leke', 'ALL', 'Lek'),
(2, 'America', 'Dollars', 'USD', '$'),
(3, 'Afghanistan', 'Afghanis', 'AFN', '؋'),
(4, 'Argentina', 'Pesos', 'ARS', '$'),
(5, 'Aruba', 'Guilders', 'AWG', 'Afl'),
(6, 'Australia', 'Dollars', 'AUD', '$'),
(7, 'Azerbaijan', 'New Manats', 'AZN', '₼'),
(8, 'Bahamas', 'Dollars', 'BSD', '$'),
(9, 'Barbados', 'Dollars', 'BBD', '$'),
(10, 'Belarus', 'Rubles', 'BYR', 'p.'),
(11, 'Belgium', 'Euro', 'EUR', '€'),
(12, 'Beliz', 'Dollars', 'BZD', 'BZ$'),
(13, 'Bermuda', 'Dollars', 'BMD', '$'),
(14, 'Bolivia', 'Bolivianos', 'BOB', '$b'),
(15, 'Bosnia and Herzegovina', 'Convertible Marka', 'BAM', 'KM'),
(16, 'Botswana', 'Pula', 'BWP', 'P'),
(17, 'Bulgaria', 'Leva', 'BGN', 'Лв.'),
(18, 'Brazil', 'Reais', 'BRL', 'R$'),
(19, 'Britain (United Kingdom)', 'Pounds', 'GBP', '£\r\n'),
(20, 'Brunei Darussalam', 'Dollars', 'BND', '$'),
(21, 'Cambodia', 'Riels', 'KHR', '៛'),
(22, 'Canada', 'Dollars', 'CAD', '$'),
(23, 'Cayman Islands', 'Dollars', 'KYD', '$'),
(24, 'Chile', 'Pesos', 'CLP', '$'),
(25, 'China', 'Yuan Renminbi', 'CNY', '¥'),
(26, 'Colombia', 'Pesos', 'COP', '$'),
(27, 'Costa Rica', 'Colón', 'CRC', '₡'),
(28, 'Croatia', 'Kuna', 'HRK', 'kn'),
(29, 'Cuba', 'Pesos', 'CUP', '₱'),
(30, 'Cyprus', 'Euro', 'EUR', '€'),
(31, 'Czech Republic', 'Koruny', 'CZK', 'Kč'),
(32, 'Denmark', 'Kroner', 'DKK', 'kr'),
(33, 'Dominican Republic', 'Pesos', 'DOP ', 'RD$'),
(34, 'East Caribbean', 'Dollars', 'XCD', '$'),
(35, 'Egypt', 'Pounds', 'EGP', '£'),
(36, 'El Salvador', 'Colones', 'SVC', '$'),
(37, 'England (United Kingdom)', 'Pounds', 'GBP', '£'),
(38, 'Euro', 'Euro', 'EUR', '€'),
(39, 'Falkland Islands', 'Pounds', 'FKP', '£'),
(40, 'Fiji', 'Dollars', 'FJD', '$'),
(41, 'France', 'Euro', 'EUR', '€'),
(42, 'Ghana', 'Cedis', 'GHC', 'GH₵'),
(43, 'Gibraltar', 'Pounds', 'GIP', '£'),
(44, 'Greece', 'Euro', 'EUR', '€'),
(45, 'Guatemala', 'Quetzales', 'GTQ', 'Q'),
(46, 'Guernsey', 'Pounds', 'GGP', '£'),
(47, 'Guyana', 'Dollars', 'GYD', '$'),
(48, 'Holland (Netherlands)', 'Euro', 'EUR', '€'),
(49, 'Honduras', 'Lempiras', 'HNL', 'L'),
(50, 'Hong Kong', 'Dollars', 'HKD', '$'),
(51, 'Hungary', 'Forint', 'HUF', 'Ft'),
(52, 'Iceland', 'Kronur', 'ISK', 'kr'),
(53, 'India', 'Rupees', 'INR', '₹'),
(54, 'Indonesia', 'Rupiahs', 'IDR', 'Rp'),
(55, 'Iran', 'Rials', 'IRR', '﷼'),
(56, 'Ireland', 'Euro', 'EUR', '€'),
(57, 'Isle of Man', 'Pounds', 'IMP', '£'),
(58, 'Israel', 'New Shekels', 'ILS', '₪'),
(59, 'Italy', 'Euro', 'EUR', '€'),
(60, 'Jamaica', 'Dollars', 'JMD', 'J$'),
(61, 'Japan', 'Yen', 'JPY', '¥'),
(62, 'Jersey', 'Pounds', 'JEP', '£'),
(63, 'Kazakhstan', 'Tenge', 'KZT', '₸'),
(64, 'Korea (North)', 'Won', 'KPW', '₩'),
(65, 'Korea (South)', 'Won', 'KRW', '₩'),
(66, 'Kyrgyzstan', 'Soms', 'KGS', 'Лв'),
(67, 'Laos', 'Kips', 'LAK', '	₭'),
(68, 'Latvia', 'Lati', 'LVL', 'Ls'),
(69, 'Lebanon', 'Pounds', 'LBP', '£'),
(70, 'Liberia', 'Dollars', 'LRD', '$'),
(71, 'Liechtenstein', 'Switzerland Francs', 'CHF', 'CHF'),
(72, 'Lithuania', 'Litai', 'LTL', 'Lt'),
(73, 'Luxembourg', 'Euro', 'EUR', '€'),
(74, 'Macedonia', 'Denars', 'MKD', 'Ден\r\n'),
(75, 'Malaysia', 'Ringgits', 'MYR', 'RM'),
(76, 'Malta', 'Euro', 'EUR', '€'),
(77, 'Mauritius', 'Rupees', 'MUR', '₹'),
(78, 'Mexico', 'Pesos', 'MXN', '$'),
(79, 'Mongolia', 'Tugriks', 'MNT', '₮'),
(80, 'Mozambique', 'Meticais', 'MZN', 'MT'),
(81, 'Namibia', 'Dollars', 'NAD', '$'),
(82, 'Nepal', 'Rupees', 'NPR', '₹'),
(83, 'Netherlands Antilles', 'Guilders', 'ANG', 'ƒ'),
(84, 'Netherlands', 'Euro', 'EUR', '€'),
(85, 'New Zealand', 'Dollars', 'NZD', '$'),
(86, 'Nicaragua', 'Cordobas', 'NIO', 'C$'),
(87, 'Nigeria', 'Nairas', 'NGN', '₦'),
(88, 'North Korea', 'Won', 'KPW', '₩'),
(89, 'Norway', 'Krone', 'NOK', 'kr'),
(90, 'Oman', 'Rials', 'OMR', '﷼'),
(91, 'Pakistan', 'Rupees', 'PKR', '₹'),
(92, 'Panama', 'Balboa', 'PAB', 'B/.'),
(93, 'Paraguay', 'Guarani', 'PYG', 'Gs'),
(94, 'Peru', 'Nuevos Soles', 'PEN', 'S/.'),
(95, 'Philippines', 'Pesos', 'PHP', 'Php'),
(96, 'Poland', 'Zlotych', 'PLN', 'zł'),
(97, 'Qatar', 'Rials', 'QAR', '﷼'),
(98, 'Romania', 'New Lei', 'RON', 'lei'),
(99, 'Russia', 'Rubles', 'RUB', '₽'),
(100, 'Saint Helena', 'Pounds', 'SHP', '£'),
(101, 'Saudi Arabia', 'Riyals', 'SAR', '﷼'),
(102, 'Serbia', 'Dinars', 'RSD', 'ع.د'),
(103, 'Seychelles', 'Rupees', 'SCR', '₹'),
(104, 'Singapore', 'Dollars', 'SGD', '$'),
(105, 'Slovenia', 'Euro', 'EUR', '€'),
(106, 'Solomon Islands', 'Dollars', 'SBD', '$'),
(107, 'Somalia', 'Shillings', 'SOS', 'S'),
(108, 'South Africa', 'Rand', 'ZAR', 'R'),
(109, 'South Korea', 'Won', 'KRW', '₩'),
(110, 'Spain', 'Euro', 'EUR', '€'),
(111, 'Sri Lanka', 'Rupees', 'LKR', '₹'),
(112, 'Sweden', 'Kronor', 'SEK', 'kr'),
(113, 'Switzerland', 'Francs', 'CHF', 'CHF'),
(114, 'Suriname', 'Dollars', 'SRD', '$'),
(115, 'Syria', 'Pounds', 'SYP', '£'),
(116, 'Taiwan', 'New Dollars', 'TWD', 'NT$'),
(117, 'Thailand', 'Baht', 'THB', '฿'),
(118, 'Trinidad and Tobago', 'Dollars', 'TTD', 'TT$'),
(119, 'Turkey', 'Lira', 'TRY', 'TL'),
(120, 'Turkey', 'Liras', 'TRL', '₺'),
(121, 'Tuvalu', 'Dollars', 'TVD', '$'),
(122, 'Ukraine', 'Hryvnia', 'UAH', '₴'),
(123, 'United Kingdom', 'Pounds', 'GBP', '£'),
(124, 'United States of America', 'Dollars', 'USD', '$'),
(125, 'Uruguay', 'Pesos', 'UYU', '$U'),
(126, 'Uzbekistan', 'Sums', 'UZS', 'so\'m'),
(127, 'Vatican City', 'Euro', 'EUR', '€'),
(128, 'Venezuela', 'Bolivares Fuertes', 'VEF', 'Bs'),
(129, 'Vietnam', 'Dong', 'VND', '₫\r\n'),
(130, 'Yemen', 'Rials', 'YER', '﷼'),
(131, 'Zimbabwe', 'Zimbabwe Dollars', 'ZWD', 'Z$');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `owner_id`, `shop_id`, `image`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 1, 1, '1577250847.jpg', 'ccc', '2019-12-24 13:39:03', '2019-12-25 05:14:07', '0000-00-00 00:00:00'),
(4, 1, 2, '1578029861.jpg', 'aa', '2020-01-03 05:37:41', '2020-01-03 05:37:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `general_setting`
--

CREATE TABLE `general_setting` (
  `id` int(11) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `map_key` varchar(255) DEFAULT NULL,
  `push_notification` int(11) NOT NULL,
  `onesignal_app_id` varchar(255) DEFAULT NULL,
  `onesignal_project_number` varchar(255) DEFAULT NULL,
  `sms_twilio` int(11) NOT NULL,
  `twilio_account_id` varchar(255) DEFAULT NULL,
  `twilio_auth_token` varchar(255) DEFAULT NULL,
  `twilio_phone_number` varchar(50) DEFAULT NULL,
  `mail_notification` int(11) NOT NULL,
  `mail_host` varchar(255) DEFAULT NULL,
  `mail_port` varchar(255) DEFAULT NULL,
  `mail_username` varchar(255) DEFAULT NULL,
  `mail_password` varchar(255) DEFAULT NULL,
  `sender_email` varchar(255) DEFAULT NULL,
  `delivery_charge_amount` int(11) DEFAULT '0',
  `delivery_charge_per` int(11) DEFAULT '0',
  `commission_amount` int(11) NOT NULL DEFAULT '0',
  `commission_per` int(11) NOT NULL DEFAULT '0',
  `user_verify` int(11) NOT NULL,
  `phone_verify` int(11) NOT NULL,
  `email_verify` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_setting`
--

INSERT INTO `general_setting` (`id`, `currency`, `map_key`, `push_notification`, `onesignal_app_id`, `onesignal_project_number`, `sms_twilio`, `twilio_account_id`, `twilio_auth_token`, `twilio_phone_number`, `mail_notification`, `mail_host`, `mail_port`, `mail_username`, `mail_password`, `sender_email`, `delivery_charge_amount`, `delivery_charge_per`, `commission_amount`, `commission_per`, `user_verify`, `phone_verify`, `email_verify`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'FJD', 'AIzaSyCb9lhLYxUnRjSp1oIGl6aAsXLODc3o-f4&libraries=places', 1, '29561882-aa25-43ef-b277-83a677b09524', '900958756549', 1, 'ACdde0d58932fc8c1713f4c251fb2af9f8', '0eb3e1a36ca78c0aec162c0371c91686', '+16618884940', 1, 'smtp.gmail.com', '465', 'mail.thirstydevs@gmail.com', 'Mail.123', 'mail.thirstydevs@gmail.com', 50, 5, 20, 10, 0, 0, 0, '2019-11-15 00:00:00', '2020-02-07 05:50:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `isNew` int(11) NOT NULL,
  `isPopular` int(11) NOT NULL,
  `isVeg` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `name`, `description`, `price`, `category_id`, `shop_id`, `image`, `isNew`, `isPopular`, `isVeg`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Aloo Paratha', 'nothing', 120, 1, 1, '1573048401.jpg', 0, 1, 1, 0, '2019-11-06 11:46:01', '2019-11-09 06:55:38', '0000-00-00 00:00:00'),
(2, 'Sprouts Jalfrezi', 'nothing', 200, 1, 1, '1573048545.jpg', 1, 0, 1, 0, '2019-11-06 13:55:45', '2020-02-05 07:33:35', '0000-00-00 00:00:00'),
(3, 'Margherita', 'nothing', 200, 4, 2, '1573103923.jpg', 1, 1, 1, 0, '2019-11-07 05:18:43', '2019-11-09 06:59:28', '0000-00-00 00:00:00'),
(4, 'Veg Extravaganza', 'nothing', 300, 4, 2, '1573104036.jpg', 1, 0, 0, 0, '2019-11-07 05:20:36', '2019-11-07 05:20:36', '0000-00-00 00:00:00'),
(7, 'Ultimate Gooey Brownies', 'asdasf', 150, 2, 2, '1573106838.jpg', 1, 0, 1, 0, '2019-11-07 06:07:18', '2020-01-04 11:49:59', '0000-00-00 00:00:00'),
(8, 'Veg Hakka Noodles', 'nothing', 200, 6, 3, '1573283528.webp', 0, 1, 1, 0, '2019-11-09 07:12:08', '2019-11-09 07:12:08', '0000-00-00 00:00:00'),
(9, 'Cantonese Chicken Soup', 'nothing', 300, 6, 3, '1573283658.jpg', 1, 0, 0, 0, '2019-11-09 07:14:18', '2019-11-09 07:14:18', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `file`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(3, 'english', 'english.json', '1580901280.png', 1, '2020-02-05 11:14:40', '2020-02-05 11:14:40'),
(4, 'arebic', 'arebic.json', '1580901435.png', 1, '2020-02-05 11:17:15', '2020-02-05 11:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `radius` int(11) DEFAULT NULL,
  `popular` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `name`, `description`, `latitude`, `longitude`, `radius`, `popular`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Rajkot', 'nothing', '22.3039', '70.8022', 50, 0, 0, '2019-11-06 00:00:00', '2019-11-25 10:10:33', '0000-00-00 00:00:00'),
(3, 'Toronto', 'nothing', '43.701280', '-79.395231', 50, 1, 0, '2019-11-07 13:41:30', '2020-02-03 11:40:24', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `user_id`, `driver_id`, `order_id`, `title`, `message`, `image`, `created_at`, `updated_at`) VALUES
(1, 9, NULL, 1, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1574860634.png', '2020-02-03 11:08:12', '2020-02-03 11:08:12'),
(2, NULL, 5, 1, 'Order Request', 'Dear David Brown, You have new request for order #904756 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-03 11:08:12', '2020-02-03 11:08:12'),
(3, NULL, 29, 1, 'Order Request', 'Dear bansi, You have new request for order #904756 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-03 11:08:12', '2020-02-03 11:08:12'),
(4, NULL, 30, 1, 'Order Request', 'Dear john, You have new request for order #904756 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-03 11:08:12', '2020-02-03 11:08:12'),
(5, NULL, 31, 1, 'Order Request', 'Dear mahipal, You have new request for order #904756 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-03 11:08:12', '2020-02-03 11:08:12'),
(6, 9, NULL, 1, 'Order Approved', 'Dear bansuri, Your Order #904756 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-03 11:08:50', '2020-02-03 11:08:50'),
(7, 9, NULL, 2, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1574860634.png', '2020-02-07 06:03:32', '2020-02-07 06:03:32'),
(8, NULL, 5, 2, 'Order Request', 'Dear David Brown, You have new request for order #751056 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:03:34', '2020-02-07 06:03:34'),
(9, NULL, 29, 2, 'Order Request', 'Dear bansi, You have new request for order #751056 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:03:34', '2020-02-07 06:03:34'),
(10, NULL, 30, 2, 'Order Request', 'Dear john, You have new request for order #751056 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:03:34', '2020-02-07 06:03:34'),
(11, NULL, 31, 2, 'Order Request', 'Dear mahipal, You have new request for order #751056 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:03:34', '2020-02-07 06:03:34'),
(12, 9, NULL, 3, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-07 06:23:06', '2020-02-07 06:23:06'),
(13, NULL, 5, 3, 'Order Request', 'Dear David Brown, You have new request for order #107404 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:23:07', '2020-02-07 06:23:07'),
(14, NULL, 29, 3, 'Order Request', 'Dear bansi, You have new request for order #107404 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:23:07', '2020-02-07 06:23:07'),
(15, NULL, 30, 3, 'Order Request', 'Dear john, You have new request for order #107404 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:23:07', '2020-02-07 06:23:07'),
(16, NULL, 31, 3, 'Order Request', 'Dear mahipal, You have new request for order #107404 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:23:07', '2020-02-07 06:23:07'),
(17, 9, NULL, 3, 'Order Approved', 'Dear bansuri, Your Order #107404 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-07 06:23:24', '2020-02-07 06:23:24'),
(18, 9, NULL, 2, 'Order Approved', 'Dear bansuri, Your Order #751056 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-07 06:33:24', '2020-02-07 06:33:24'),
(19, 9, NULL, 4, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-07 06:38:14', '2020-02-07 06:38:14'),
(20, NULL, 5, 4, 'Order Request', 'Dear David Brown, You have new request for order #237566 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:38:21', '2020-02-07 06:38:21'),
(21, NULL, 29, 4, 'Order Request', 'Dear bansi, You have new request for order #237566 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:38:21', '2020-02-07 06:38:21'),
(22, NULL, 30, 4, 'Order Request', 'Dear john, You have new request for order #237566 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:38:21', '2020-02-07 06:38:21'),
(23, NULL, 31, 4, 'Order Request', 'Dear mahipal, You have new request for order #237566 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:38:21', '2020-02-07 06:38:21'),
(24, 9, NULL, 4, 'Order Approved', 'Dear bansuri, Your Order #237566 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-07 06:38:29', '2020-02-07 06:38:29'),
(25, 9, NULL, 5, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-07 06:42:40', '2020-02-07 06:42:40'),
(26, NULL, 5, 5, 'Order Request', 'Dear David Brown, You have new request for order #325619 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:42:41', '2020-02-07 06:42:41'),
(27, NULL, 29, 5, 'Order Request', 'Dear bansi, You have new request for order #325619 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:42:41', '2020-02-07 06:42:41'),
(28, NULL, 30, 5, 'Order Request', 'Dear john, You have new request for order #325619 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:42:41', '2020-02-07 06:42:41'),
(29, NULL, 31, 5, 'Order Request', 'Dear mahipal, You have new request for order #325619 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:42:41', '2020-02-07 06:42:41'),
(30, 9, NULL, 5, 'Order Approved', 'Dear bansuri, Your Order #325619 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-07 06:42:53', '2020-02-07 06:42:53'),
(31, 9, NULL, 6, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-07 06:49:48', '2020-02-07 06:49:48'),
(32, NULL, 5, 6, 'Order Request', 'Dear David Brown, You have new request for order #178495 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:49:50', '2020-02-07 06:49:50'),
(33, NULL, 29, 6, 'Order Request', 'Dear bansi, You have new request for order #178495 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:49:50', '2020-02-07 06:49:50'),
(34, NULL, 30, 6, 'Order Request', 'Dear john, You have new request for order #178495 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:49:50', '2020-02-07 06:49:50'),
(35, NULL, 31, 6, 'Order Request', 'Dear mahipal, You have new request for order #178495 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:49:50', '2020-02-07 06:49:50'),
(36, 9, NULL, 6, 'Order Approved', 'Dear bansuri, Your Order #178495 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-07 06:50:14', '2020-02-07 06:50:14'),
(37, 9, NULL, 7, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-07 06:52:57', '2020-02-07 06:52:57'),
(38, NULL, 5, 7, 'Order Request', 'Dear David Brown, You have new request for order #627494 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:52:58', '2020-02-07 06:52:58'),
(39, NULL, 29, 7, 'Order Request', 'Dear bansi, You have new request for order #627494 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:52:58', '2020-02-07 06:52:58'),
(40, NULL, 30, 7, 'Order Request', 'Dear john, You have new request for order #627494 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:52:59', '2020-02-07 06:52:59'),
(41, NULL, 31, 7, 'Order Request', 'Dear mahipal, You have new request for order #627494 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:52:59', '2020-02-07 06:52:59'),
(42, 9, NULL, 8, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-07 06:53:36', '2020-02-07 06:53:36'),
(43, NULL, 5, 8, 'Order Request', 'Dear David Brown, You have new request for order #684731 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:53:38', '2020-02-07 06:53:38'),
(44, NULL, 29, 8, 'Order Request', 'Dear bansi, You have new request for order #684731 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:53:38', '2020-02-07 06:53:38'),
(45, NULL, 30, 8, 'Order Request', 'Dear john, You have new request for order #684731 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:53:38', '2020-02-07 06:53:38'),
(46, NULL, 31, 8, 'Order Request', 'Dear mahipal, You have new request for order #684731 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:53:38', '2020-02-07 06:53:38'),
(47, 9, NULL, 9, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-07 06:53:56', '2020-02-07 06:53:56'),
(48, NULL, 5, 9, 'Order Request', 'Dear David Brown, You have new request for order #659495 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:53:57', '2020-02-07 06:53:57'),
(49, NULL, 29, 9, 'Order Request', 'Dear bansi, You have new request for order #659495 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:53:57', '2020-02-07 06:53:57'),
(50, NULL, 30, 9, 'Order Request', 'Dear john, You have new request for order #659495 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:53:57', '2020-02-07 06:53:57'),
(51, NULL, 31, 9, 'Order Request', 'Dear mahipal, You have new request for order #659495 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 06:53:57', '2020-02-07 06:53:57'),
(52, 9, NULL, 9, 'Order Approved', 'Dear bansuri, Your Order #659495 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-07 07:17:01', '2020-02-07 07:17:01'),
(53, 9, NULL, 8, 'Order Approved', 'Dear bansuri, Your Order #684731 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-07 12:31:50', '2020-02-07 12:31:50'),
(54, 9, NULL, 10, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-07 13:02:00', '2020-02-07 13:02:00'),
(55, NULL, 5, 10, 'Order Request', 'Dear David Brown, You have new request for order #178351 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:02:04', '2020-02-07 13:02:04'),
(56, NULL, 29, 10, 'Order Request', 'Dear bansi, You have new request for order #178351 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:02:04', '2020-02-07 13:02:04'),
(57, NULL, 30, 10, 'Order Request', 'Dear john, You have new request for order #178351 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:02:04', '2020-02-07 13:02:04'),
(58, NULL, 31, 10, 'Order Request', 'Dear mahipal, You have new request for order #178351 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:02:04', '2020-02-07 13:02:04'),
(59, 9, NULL, 11, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-07 13:04:36', '2020-02-07 13:04:36'),
(60, NULL, 5, 11, 'Order Request', 'Dear David Brown, You have new request for order #665968 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:04:38', '2020-02-07 13:04:38'),
(61, NULL, 29, 11, 'Order Request', 'Dear bansi, You have new request for order #665968 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:04:38', '2020-02-07 13:04:38'),
(62, NULL, 30, 11, 'Order Request', 'Dear john, You have new request for order #665968 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:04:38', '2020-02-07 13:04:38'),
(63, NULL, 31, 11, 'Order Request', 'Dear mahipal, You have new request for order #665968 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:04:38', '2020-02-07 13:04:38'),
(64, 9, NULL, 12, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-07 13:16:36', '2020-02-07 13:16:36'),
(65, NULL, 5, 12, 'Order Request', 'Dear David Brown, You have new request for order #584958 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:16:38', '2020-02-07 13:16:38'),
(66, NULL, 29, 12, 'Order Request', 'Dear bansi, You have new request for order #584958 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:16:38', '2020-02-07 13:16:38'),
(67, NULL, 30, 12, 'Order Request', 'Dear john, You have new request for order #584958 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:16:38', '2020-02-07 13:16:38'),
(68, NULL, 31, 12, 'Order Request', 'Dear mahipal, You have new request for order #584958 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:16:38', '2020-02-07 13:16:38'),
(69, 9, NULL, 13, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-07 13:17:31', '2020-02-07 13:17:31'),
(70, NULL, 5, 13, 'Order Request', 'Dear David Brown, You have new request for order #572596 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:17:32', '2020-02-07 13:17:32'),
(71, NULL, 29, 13, 'Order Request', 'Dear bansi, You have new request for order #572596 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:17:32', '2020-02-07 13:17:32'),
(72, NULL, 30, 13, 'Order Request', 'Dear john, You have new request for order #572596 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:17:32', '2020-02-07 13:17:32'),
(73, NULL, 31, 13, 'Order Request', 'Dear mahipal, You have new request for order #572596 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:17:32', '2020-02-07 13:17:32'),
(74, 9, NULL, 13, 'Order Approved', 'Dear bansuri, Your Order #572596 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-07 13:20:02', '2020-02-07 13:20:02'),
(75, 9, NULL, 12, 'Order Approved', 'Dear bansuri, Your Order #584958 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-07 13:20:06', '2020-02-07 13:20:06'),
(76, 9, NULL, 14, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-07 13:29:38', '2020-02-07 13:29:38'),
(77, NULL, 5, 14, 'Order Request', 'Dear David Brown, You have new request for order #387110 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:29:40', '2020-02-07 13:29:40'),
(78, NULL, 29, 14, 'Order Request', 'Dear bansi, You have new request for order #387110 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:29:40', '2020-02-07 13:29:40'),
(79, NULL, 30, 14, 'Order Request', 'Dear john, You have new request for order #387110 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:29:40', '2020-02-07 13:29:40'),
(80, NULL, 31, 14, 'Order Request', 'Dear mahipal, You have new request for order #387110 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:29:40', '2020-02-07 13:29:40'),
(81, 9, NULL, 14, 'Order Approved', 'Dear bansuri, Your Order #387110 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-07 13:30:41', '2020-02-07 13:30:41'),
(82, 9, NULL, 15, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-07 13:33:13', '2020-02-07 13:33:13'),
(83, NULL, 5, 15, 'Order Request', 'Dear David Brown, You have new request for order #811020 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:33:15', '2020-02-07 13:33:15'),
(84, NULL, 29, 15, 'Order Request', 'Dear bansi, You have new request for order #811020 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:33:15', '2020-02-07 13:33:15'),
(85, NULL, 30, 15, 'Order Request', 'Dear john, You have new request for order #811020 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:33:15', '2020-02-07 13:33:15'),
(86, NULL, 31, 15, 'Order Request', 'Dear mahipal, You have new request for order #811020 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:33:15', '2020-02-07 13:33:15'),
(87, 9, NULL, 15, 'Order Approved', 'Dear bansuri, Your Order #811020 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-07 13:34:01', '2020-02-07 13:34:01'),
(88, 9, NULL, 16, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-07 13:44:18', '2020-02-07 13:44:18'),
(89, NULL, 5, 16, 'Order Request', 'Dear David Brown, You have new request for order #256916 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:44:19', '2020-02-07 13:44:19'),
(90, NULL, 29, 16, 'Order Request', 'Dear bansi, You have new request for order #256916 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:44:19', '2020-02-07 13:44:19'),
(91, NULL, 30, 16, 'Order Request', 'Dear john, You have new request for order #256916 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:44:19', '2020-02-07 13:44:19'),
(92, NULL, 31, 16, 'Order Request', 'Dear mahipal, You have new request for order #256916 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 13:44:20', '2020-02-07 13:44:20'),
(93, 9, NULL, 16, 'Order Approved', 'Dear bansuri, Your Order #256916 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-07 13:46:29', '2020-02-07 13:46:29'),
(94, 9, NULL, 17, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-07 14:18:56', '2020-02-07 14:18:56'),
(95, NULL, 5, 17, 'Order Request', 'Dear David Brown, You have new request for order #352240 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 14:18:57', '2020-02-07 14:18:57'),
(96, NULL, 29, 17, 'Order Request', 'Dear bansi, You have new request for order #352240 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 14:18:57', '2020-02-07 14:18:57'),
(97, NULL, 30, 17, 'Order Request', 'Dear john, You have new request for order #352240 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 14:18:57', '2020-02-07 14:18:57'),
(98, NULL, 31, 17, 'Order Request', 'Dear mahipal, You have new request for order #352240 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 14:18:57', '2020-02-07 14:18:57'),
(99, 9, NULL, 18, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-07 14:19:35', '2020-02-07 14:19:35'),
(100, NULL, 5, 18, 'Order Request', 'Dear David Brown, You have new request for order #955449 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 14:19:36', '2020-02-07 14:19:36'),
(101, NULL, 29, 18, 'Order Request', 'Dear bansi, You have new request for order #955449 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 14:19:36', '2020-02-07 14:19:36'),
(102, NULL, 30, 18, 'Order Request', 'Dear john, You have new request for order #955449 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 14:19:36', '2020-02-07 14:19:36'),
(103, NULL, 31, 18, 'Order Request', 'Dear mahipal, You have new request for order #955449 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 14:19:36', '2020-02-07 14:19:36'),
(104, 9, NULL, 16, 'Order Approved', 'Dear bansuri, Your Order #256916 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-07 14:19:53', '2020-02-07 14:19:53'),
(105, 9, NULL, 12, 'Order Approved', 'Dear bansuri, Your Order #584958 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-07 14:19:57', '2020-02-07 14:19:57'),
(106, 9, NULL, 18, 'Order Approved', 'Dear bansuri, Your Order #955449 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-07 14:22:01', '2020-02-07 14:22:01'),
(107, 9, NULL, 17, 'Order Approved', 'Dear bansuri, Your Order #352240 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-07 14:22:05', '2020-02-07 14:22:05'),
(108, 9, NULL, 19, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-07 14:29:57', '2020-02-07 14:29:57'),
(109, NULL, 5, 19, 'Order Request', 'Dear David Brown, You have new request for order #546650 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 14:29:58', '2020-02-07 14:29:58'),
(110, NULL, 29, 19, 'Order Request', 'Dear bansi, You have new request for order #546650 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 14:29:58', '2020-02-07 14:29:58'),
(111, NULL, 30, 19, 'Order Request', 'Dear john, You have new request for order #546650 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 14:29:58', '2020-02-07 14:29:58'),
(112, NULL, 31, 19, 'Order Request', 'Dear mahipal, You have new request for order #546650 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-07 14:29:58', '2020-02-07 14:29:58'),
(113, 9, NULL, 19, 'Order Approved', 'Dear bansuri, Your Order #546650 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-07 14:30:34', '2020-02-07 14:30:34'),
(114, 9, NULL, 20, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-08 04:38:37', '2020-02-08 04:38:37'),
(115, NULL, 5, 20, 'Order Request', 'Dear David Brown, You have new request for order #356839 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 04:38:39', '2020-02-08 04:38:39'),
(116, NULL, 29, 20, 'Order Request', 'Dear bansi, You have new request for order #356839 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 04:38:39', '2020-02-08 04:38:39'),
(117, NULL, 30, 20, 'Order Request', 'Dear john, You have new request for order #356839 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 04:38:39', '2020-02-08 04:38:39'),
(118, NULL, 31, 20, 'Order Request', 'Dear mahipal, You have new request for order #356839 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 04:38:39', '2020-02-08 04:38:39'),
(119, 9, NULL, 21, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-08 04:40:19', '2020-02-08 04:40:19'),
(120, NULL, 5, 21, 'Order Request', 'Dear David Brown, You have new request for order #812422 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 04:40:20', '2020-02-08 04:40:20'),
(121, NULL, 29, 21, 'Order Request', 'Dear bansi, You have new request for order #812422 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 04:40:20', '2020-02-08 04:40:20'),
(122, NULL, 30, 21, 'Order Request', 'Dear john, You have new request for order #812422 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 04:40:20', '2020-02-08 04:40:20'),
(123, NULL, 31, 21, 'Order Request', 'Dear mahipal, You have new request for order #812422 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 04:40:20', '2020-02-08 04:40:20'),
(124, 9, NULL, 21, 'Order Approved', 'Dear bansuri, Your Order #812422 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-08 05:08:30', '2020-02-08 05:08:30'),
(125, 9, NULL, 20, 'Order Approved', 'Dear bansuri, Your Order #356839 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-08 05:08:39', '2020-02-08 05:08:39'),
(126, 9, NULL, 22, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-08 05:35:38', '2020-02-08 05:35:38'),
(127, NULL, 5, 22, 'Order Request', 'Dear David Brown, You have new request for order #471423 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 05:35:38', '2020-02-08 05:35:38'),
(128, NULL, 29, 22, 'Order Request', 'Dear bansi, You have new request for order #471423 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 05:35:39', '2020-02-08 05:35:39'),
(129, NULL, 30, 22, 'Order Request', 'Dear john, You have new request for order #471423 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 05:35:39', '2020-02-08 05:35:39'),
(130, NULL, 31, 22, 'Order Request', 'Dear mahipal, You have new request for order #471423 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 05:35:39', '2020-02-08 05:35:39'),
(131, 9, NULL, 22, 'Order Approved', 'Dear bansuri, Your Order #471423 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-08 05:36:15', '2020-02-08 05:36:15'),
(132, 9, NULL, 23, 'Order Created', 'Dear bansuri, Your Order is successfully created in Food style. From Foodlans', '1581055777.png', '2020-02-08 05:40:58', '2020-02-08 05:40:58'),
(133, NULL, 5, 23, 'Order Request', 'Dear David Brown, You have new request for order #103913 at shreenathji society ,mavdi main road ,rajkot by Food style. from Foodlans', '1579160492.png', '2020-02-08 05:40:59', '2020-02-08 05:40:59'),
(134, NULL, 29, 23, 'Order Request', 'Dear bansi, You have new request for order #103913 at shreenathji society ,mavdi main road ,rajkot by Food style. from Foodlans', '1579160492.png', '2020-02-08 05:40:59', '2020-02-08 05:40:59'),
(135, NULL, 30, 23, 'Order Request', 'Dear john, You have new request for order #103913 at shreenathji society ,mavdi main road ,rajkot by Food style. from Foodlans', '1579160492.png', '2020-02-08 05:40:59', '2020-02-08 05:40:59'),
(136, NULL, 31, 23, 'Order Request', 'Dear mahipal, You have new request for order #103913 at shreenathji society ,mavdi main road ,rajkot by Food style. from Foodlans', '1579160492.png', '2020-02-08 05:40:59', '2020-02-08 05:40:59'),
(137, 9, NULL, 24, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-08 05:42:57', '2020-02-08 05:42:57'),
(138, NULL, 5, 24, 'Order Request', 'Dear David Brown, You have new request for order #336205 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 05:42:58', '2020-02-08 05:42:58'),
(139, NULL, 29, 24, 'Order Request', 'Dear bansi, You have new request for order #336205 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 05:42:58', '2020-02-08 05:42:58'),
(140, NULL, 30, 24, 'Order Request', 'Dear john, You have new request for order #336205 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 05:42:58', '2020-02-08 05:42:58'),
(141, NULL, 31, 24, 'Order Request', 'Dear mahipal, You have new request for order #336205 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 05:42:58', '2020-02-08 05:42:58'),
(142, 9, NULL, 25, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-08 05:44:24', '2020-02-08 05:44:24'),
(143, NULL, 5, 25, 'Order Request', 'Dear David Brown, You have new request for order #808883 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 05:44:25', '2020-02-08 05:44:25'),
(144, NULL, 29, 25, 'Order Request', 'Dear bansi, You have new request for order #808883 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 05:44:25', '2020-02-08 05:44:25'),
(145, NULL, 30, 25, 'Order Request', 'Dear john, You have new request for order #808883 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 05:44:25', '2020-02-08 05:44:25'),
(146, NULL, 31, 25, 'Order Request', 'Dear mahipal, You have new request for order #808883 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 05:44:25', '2020-02-08 05:44:25'),
(147, 9, NULL, 25, 'Order Approved', 'Dear bansuri, Your Order #808883 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-08 05:46:11', '2020-02-08 05:46:11'),
(148, 9, NULL, 24, 'Order Approved', 'Dear bansuri, Your Order #336205 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-08 05:59:58', '2020-02-08 05:59:58'),
(149, 9, NULL, 23, 'Order Approved', 'Dear bansuri, Your Order #103913 on Food style is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-08 06:12:36', '2020-02-08 06:12:36'),
(150, 9, NULL, 26, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-08 06:19:39', '2020-02-08 06:19:39'),
(151, NULL, 5, 26, 'Order Request', 'Dear David Brown, You have new request for order #755908 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 06:19:40', '2020-02-08 06:19:40'),
(152, NULL, 29, 26, 'Order Request', 'Dear bansi, You have new request for order #755908 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 06:19:40', '2020-02-08 06:19:40'),
(153, NULL, 30, 26, 'Order Request', 'Dear john, You have new request for order #755908 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 06:19:40', '2020-02-08 06:19:40'),
(154, NULL, 31, 26, 'Order Request', 'Dear mahipal, You have new request for order #755908 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 06:19:40', '2020-02-08 06:19:40'),
(155, 9, NULL, 26, 'Order Approved', 'Dear bansuri, Your Order #755908 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-08 06:20:01', '2020-02-08 06:20:01'),
(156, 9, NULL, 27, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-08 06:25:42', '2020-02-08 06:25:42'),
(157, NULL, 5, 27, 'Order Request', 'Dear David Brown, You have new request for order #508969 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 06:25:44', '2020-02-08 06:25:44'),
(158, NULL, 29, 27, 'Order Request', 'Dear bansi, You have new request for order #508969 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 06:25:44', '2020-02-08 06:25:44'),
(159, NULL, 30, 27, 'Order Request', 'Dear john, You have new request for order #508969 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 06:25:44', '2020-02-08 06:25:44'),
(160, NULL, 31, 27, 'Order Request', 'Dear mahipal, You have new request for order #508969 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 06:25:44', '2020-02-08 06:25:44'),
(161, 9, NULL, 27, 'Order Approved', 'Dear bansuri, Your Order #508969 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-08 06:25:58', '2020-02-08 06:25:58'),
(162, 9, NULL, 28, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-08 07:17:31', '2020-02-08 07:17:31'),
(163, NULL, 5, 28, 'Order Request', 'Dear David Brown, You have new request for order #206338 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 07:17:32', '2020-02-08 07:17:32'),
(164, NULL, 29, 28, 'Order Request', 'Dear bansi, You have new request for order #206338 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 07:17:32', '2020-02-08 07:17:32'),
(165, NULL, 30, 28, 'Order Request', 'Dear john, You have new request for order #206338 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 07:17:32', '2020-02-08 07:17:32'),
(166, NULL, 31, 28, 'Order Request', 'Dear mahipal, You have new request for order #206338 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 07:17:32', '2020-02-08 07:17:32'),
(167, 9, NULL, 29, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-08 07:17:56', '2020-02-08 07:17:56'),
(168, NULL, 5, 29, 'Order Request', 'Dear David Brown, You have new request for order #119231 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 07:17:57', '2020-02-08 07:17:57'),
(169, NULL, 29, 29, 'Order Request', 'Dear bansi, You have new request for order #119231 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 07:17:57', '2020-02-08 07:17:57'),
(170, NULL, 30, 29, 'Order Request', 'Dear john, You have new request for order #119231 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 07:17:57', '2020-02-08 07:17:57'),
(171, NULL, 31, 29, 'Order Request', 'Dear mahipal, You have new request for order #119231 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 07:17:57', '2020-02-08 07:17:57'),
(172, 9, NULL, 29, 'Order Approved', 'Dear bansuri, Your Order #119231 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-08 07:18:29', '2020-02-08 07:18:29'),
(173, 9, NULL, 28, 'Order Approved', 'Dear bansuri, Your Order #206338 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-08 07:18:59', '2020-02-08 07:18:59'),
(174, 9, NULL, 30, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-08 07:43:06', '2020-02-08 07:43:06'),
(175, NULL, 5, 30, 'Order Request', 'Dear David Brown, You have new request for order #213118 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 07:43:07', '2020-02-08 07:43:07'),
(176, NULL, 29, 30, 'Order Request', 'Dear bansi, You have new request for order #213118 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 07:43:07', '2020-02-08 07:43:07'),
(177, NULL, 30, 30, 'Order Request', 'Dear john, You have new request for order #213118 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 07:43:07', '2020-02-08 07:43:07'),
(178, NULL, 31, 30, 'Order Request', 'Dear mahipal, You have new request for order #213118 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 07:43:07', '2020-02-08 07:43:07'),
(179, 9, NULL, 30, 'Order Approved', 'Dear bansuri, Your Order #213118 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-08 07:44:53', '2020-02-08 07:44:53'),
(180, 9, NULL, 31, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-08 09:34:11', '2020-02-08 09:34:11'),
(181, NULL, 5, 31, 'Order Request', 'Dear David Brown, You have new request for order #381790 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 09:34:12', '2020-02-08 09:34:12'),
(182, NULL, 29, 31, 'Order Request', 'Dear bansi, You have new request for order #381790 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 09:34:12', '2020-02-08 09:34:12'),
(183, NULL, 30, 31, 'Order Request', 'Dear john, You have new request for order #381790 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 09:34:12', '2020-02-08 09:34:12'),
(184, NULL, 31, 31, 'Order Request', 'Dear mahipal, You have new request for order #381790 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 09:34:12', '2020-02-08 09:34:12'),
(185, 9, NULL, 32, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-08 09:40:54', '2020-02-08 09:40:54'),
(186, NULL, 5, 32, 'Order Request', 'Dear David Brown, You have new request for order #165256 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 09:40:55', '2020-02-08 09:40:55'),
(187, NULL, 29, 32, 'Order Request', 'Dear bansi, You have new request for order #165256 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 09:40:55', '2020-02-08 09:40:55'),
(188, NULL, 30, 32, 'Order Request', 'Dear john, You have new request for order #165256 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 09:40:55', '2020-02-08 09:40:55'),
(189, NULL, 31, 32, 'Order Request', 'Dear mahipal, You have new request for order #165256 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-08 09:40:55', '2020-02-08 09:40:55'),
(190, 9, NULL, 32, 'Order Approved', 'Dear bansuri, Your Order #165256 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-08 09:46:19', '2020-02-08 09:46:19'),
(191, 9, NULL, 31, 'Order Approved', 'Dear bansuri, Your Order #381790 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-08 09:46:23', '2020-02-08 09:46:23'),
(192, 9, NULL, 33, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-10 09:41:42', '2020-02-10 09:41:42'),
(193, NULL, 5, 33, 'Order Request', 'Dear David Brown, You have new request for order #714025 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 09:41:43', '2020-02-10 09:41:43'),
(194, NULL, 29, 33, 'Order Request', 'Dear bansi, You have new request for order #714025 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 09:41:43', '2020-02-10 09:41:43'),
(195, NULL, 30, 33, 'Order Request', 'Dear john, You have new request for order #714025 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 09:41:43', '2020-02-10 09:41:43'),
(196, NULL, 31, 33, 'Order Request', 'Dear mahipal, You have new request for order #714025 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 09:41:43', '2020-02-10 09:41:43'),
(197, 9, NULL, 33, 'Order Approved', 'Dear bansuri, Your Order #714025 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-10 09:43:37', '2020-02-10 09:43:37'),
(198, 9, NULL, 34, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-10 11:29:20', '2020-02-10 11:29:20'),
(199, NULL, 5, 34, 'Order Request', 'Dear David Brown, You have new request for order #851677 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 11:29:24', '2020-02-10 11:29:24'),
(200, NULL, 29, 34, 'Order Request', 'Dear bansi, You have new request for order #851677 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 11:29:24', '2020-02-10 11:29:24'),
(201, NULL, 30, 34, 'Order Request', 'Dear john, You have new request for order #851677 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 11:29:25', '2020-02-10 11:29:25'),
(202, NULL, 31, 34, 'Order Request', 'Dear mahipal, You have new request for order #851677 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 11:29:25', '2020-02-10 11:29:25'),
(203, 9, NULL, 34, 'Order Approved', 'Dear bansuri, Your Order #851677 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-10 11:31:49', '2020-02-10 11:31:49'),
(204, 9, NULL, 35, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-10 12:25:22', '2020-02-10 12:25:22'),
(205, NULL, 5, 35, 'Order Request', 'Dear David Brown, You have new request for order #686487 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 12:25:23', '2020-02-10 12:25:23'),
(206, NULL, 29, 35, 'Order Request', 'Dear bansi, You have new request for order #686487 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 12:25:23', '2020-02-10 12:25:23'),
(207, NULL, 30, 35, 'Order Request', 'Dear john, You have new request for order #686487 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 12:25:23', '2020-02-10 12:25:23'),
(208, NULL, 31, 35, 'Order Request', 'Dear mahipal, You have new request for order #686487 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 12:25:23', '2020-02-10 12:25:23'),
(209, 9, NULL, 35, 'Order Approved', 'Dear bansuri, Your Order #686487 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-10 12:25:48', '2020-02-10 12:25:48'),
(210, 9, NULL, 36, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-10 12:39:22', '2020-02-10 12:39:22'),
(211, NULL, 5, 36, 'Order Request', 'Dear David Brown, You have new request for order #192213 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 12:39:23', '2020-02-10 12:39:23'),
(212, NULL, 29, 36, 'Order Request', 'Dear bansi, You have new request for order #192213 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 12:39:23', '2020-02-10 12:39:23'),
(213, NULL, 30, 36, 'Order Request', 'Dear john, You have new request for order #192213 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 12:39:23', '2020-02-10 12:39:23'),
(214, NULL, 31, 36, 'Order Request', 'Dear mahipal, You have new request for order #192213 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 12:39:23', '2020-02-10 12:39:23'),
(215, 9, NULL, 36, 'Order Approved', 'Dear bansuri, Your Order #192213 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-10 12:40:41', '2020-02-10 12:40:41'),
(216, 9, NULL, 37, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-10 13:04:39', '2020-02-10 13:04:39'),
(217, NULL, 5, 37, 'Order Request', 'Dear David Brown, You have new request for order #606456 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 13:04:41', '2020-02-10 13:04:41'),
(218, NULL, 29, 37, 'Order Request', 'Dear bansi, You have new request for order #606456 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 13:04:41', '2020-02-10 13:04:41'),
(219, NULL, 30, 37, 'Order Request', 'Dear john, You have new request for order #606456 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 13:04:41', '2020-02-10 13:04:41'),
(220, NULL, 31, 37, 'Order Request', 'Dear mahipal, You have new request for order #606456 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 13:04:41', '2020-02-10 13:04:41'),
(221, 9, NULL, 37, 'Order Approved', 'Dear bansuri, Your Order #606456 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-10 13:07:06', '2020-02-10 13:07:06'),
(222, 9, NULL, 38, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-10 13:21:53', '2020-02-10 13:21:53'),
(223, NULL, 5, 38, 'Order Request', 'Dear David Brown, You have new request for order #788810 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 13:21:54', '2020-02-10 13:21:54'),
(224, NULL, 29, 38, 'Order Request', 'Dear bansi, You have new request for order #788810 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 13:21:54', '2020-02-10 13:21:54'),
(225, NULL, 30, 38, 'Order Request', 'Dear john, You have new request for order #788810 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 13:21:54', '2020-02-10 13:21:54'),
(226, NULL, 31, 38, 'Order Request', 'Dear mahipal, You have new request for order #788810 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 13:21:54', '2020-02-10 13:21:54'),
(227, 9, NULL, 38, 'Order Approved', 'Dear bansuri, Your Order #788810 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-10 13:22:50', '2020-02-10 13:22:50');
INSERT INTO `notification` (`id`, `user_id`, `driver_id`, `order_id`, `title`, `message`, `image`, `created_at`, `updated_at`) VALUES
(228, 9, NULL, 39, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-10 13:28:55', '2020-02-10 13:28:55'),
(229, NULL, 5, 39, 'Order Request', 'Dear David Brown, You have new request for order #376263 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 13:28:56', '2020-02-10 13:28:56'),
(230, NULL, 29, 39, 'Order Request', 'Dear bansi, You have new request for order #376263 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 13:28:56', '2020-02-10 13:28:56'),
(231, NULL, 30, 39, 'Order Request', 'Dear john, You have new request for order #376263 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 13:28:56', '2020-02-10 13:28:56'),
(232, NULL, 31, 39, 'Order Request', 'Dear mahipal, You have new request for order #376263 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 13:28:56', '2020-02-10 13:28:56'),
(233, 9, NULL, 39, 'Order Approved', 'Dear bansuri, Your Order #376263 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-10 13:29:19', '2020-02-10 13:29:19'),
(234, 9, NULL, 40, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-10 13:33:13', '2020-02-10 13:33:13'),
(235, NULL, 5, 40, 'Order Request', 'Dear David Brown, You have new request for order #212695 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 13:33:14', '2020-02-10 13:33:14'),
(236, NULL, 29, 40, 'Order Request', 'Dear bansi, You have new request for order #212695 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 13:33:15', '2020-02-10 13:33:15'),
(237, NULL, 30, 40, 'Order Request', 'Dear john, You have new request for order #212695 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 13:33:15', '2020-02-10 13:33:15'),
(238, NULL, 31, 40, 'Order Request', 'Dear mahipal, You have new request for order #212695 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 13:33:15', '2020-02-10 13:33:15'),
(239, 9, NULL, 40, 'Order Approved', 'Dear bansuri, Your Order #212695 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-10 13:34:34', '2020-02-10 13:34:34'),
(240, 9, NULL, 41, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-10 13:37:23', '2020-02-10 13:37:23'),
(241, NULL, 5, 41, 'Order Request', 'Dear David Brown, You have new request for order #429514 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 13:37:25', '2020-02-10 13:37:25'),
(242, NULL, 29, 41, 'Order Request', 'Dear bansi, You have new request for order #429514 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 13:37:25', '2020-02-10 13:37:25'),
(243, NULL, 30, 41, 'Order Request', 'Dear john, You have new request for order #429514 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 13:37:25', '2020-02-10 13:37:25'),
(244, NULL, 31, 41, 'Order Request', 'Dear mahipal, You have new request for order #429514 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 13:37:25', '2020-02-10 13:37:25'),
(245, 9, NULL, 41, 'Order Approved', 'Dear bansuri, Your Order #429514 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-10 13:39:10', '2020-02-10 13:39:10'),
(246, 9, NULL, 42, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-10 14:12:24', '2020-02-10 14:12:24'),
(247, NULL, 5, 42, 'Order Request', 'Dear David Brown, You have new request for order #378833 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 14:12:27', '2020-02-10 14:12:27'),
(248, NULL, 29, 42, 'Order Request', 'Dear bansi, You have new request for order #378833 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 14:12:27', '2020-02-10 14:12:27'),
(249, NULL, 30, 42, 'Order Request', 'Dear john, You have new request for order #378833 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 14:12:27', '2020-02-10 14:12:27'),
(250, NULL, 31, 42, 'Order Request', 'Dear mahipal, You have new request for order #378833 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-10 14:12:27', '2020-02-10 14:12:27'),
(251, 9, NULL, 42, 'Order Approved', 'Dear bansuri, Your Order #378833 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-10 14:13:10', '2020-02-10 14:13:10'),
(252, 9, NULL, 43, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-11 04:53:45', '2020-02-11 04:53:45'),
(253, NULL, 5, 43, 'Order Request', 'Dear David Brown, You have new request for order #389086 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 04:53:47', '2020-02-11 04:53:47'),
(254, NULL, 29, 43, 'Order Request', 'Dear bansi, You have new request for order #389086 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 04:53:47', '2020-02-11 04:53:47'),
(255, NULL, 30, 43, 'Order Request', 'Dear john, You have new request for order #389086 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 04:53:47', '2020-02-11 04:53:47'),
(256, NULL, 31, 43, 'Order Request', 'Dear mahipal, You have new request for order #389086 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 04:53:47', '2020-02-11 04:53:47'),
(257, 9, NULL, 43, 'Order Approved', 'Dear bansuri, Your Order #389086 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-11 04:57:28', '2020-02-11 04:57:28'),
(258, 9, NULL, 44, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-11 05:08:02', '2020-02-11 05:08:02'),
(259, NULL, 5, 44, 'Order Request', 'Dear David Brown, You have new request for order #526941 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 05:08:03', '2020-02-11 05:08:03'),
(260, NULL, 29, 44, 'Order Request', 'Dear bansi, You have new request for order #526941 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 05:08:03', '2020-02-11 05:08:03'),
(261, NULL, 30, 44, 'Order Request', 'Dear john, You have new request for order #526941 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 05:08:03', '2020-02-11 05:08:03'),
(262, NULL, 31, 44, 'Order Request', 'Dear mahipal, You have new request for order #526941 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 05:08:03', '2020-02-11 05:08:03'),
(263, 9, NULL, 44, 'Order Approved', 'Dear bansuri, Your Order #526941 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-11 05:08:45', '2020-02-11 05:08:45'),
(264, 9, NULL, 45, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-11 05:42:41', '2020-02-11 05:42:41'),
(265, NULL, 5, 45, 'Order Request', 'Dear David Brown, You have new request for order #873304 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 05:42:44', '2020-02-11 05:42:44'),
(266, NULL, 29, 45, 'Order Request', 'Dear bansi, You have new request for order #873304 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 05:42:44', '2020-02-11 05:42:44'),
(267, NULL, 30, 45, 'Order Request', 'Dear john, You have new request for order #873304 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 05:42:44', '2020-02-11 05:42:44'),
(268, NULL, 31, 45, 'Order Request', 'Dear mahipal, You have new request for order #873304 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 05:42:44', '2020-02-11 05:42:44'),
(269, 9, NULL, 45, 'Order Approved', 'Dear bansuri, Your Order #873304 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-11 06:08:49', '2020-02-11 06:08:49'),
(270, 9, NULL, 46, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-11 06:41:21', '2020-02-11 06:41:21'),
(271, NULL, 5, 46, 'Order Request', 'Dear David Brown, You have new request for order #790130 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 06:41:23', '2020-02-11 06:41:23'),
(272, NULL, 29, 46, 'Order Request', 'Dear bansi, You have new request for order #790130 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 06:41:23', '2020-02-11 06:41:23'),
(273, NULL, 30, 46, 'Order Request', 'Dear john, You have new request for order #790130 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 06:41:23', '2020-02-11 06:41:23'),
(274, NULL, 31, 46, 'Order Request', 'Dear mahipal, You have new request for order #790130 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 06:41:23', '2020-02-11 06:41:23'),
(275, 9, NULL, 46, 'Order Approved', 'Dear bansuri, Your Order #790130 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-11 06:42:23', '2020-02-11 06:42:23'),
(276, 9, NULL, 47, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-11 06:48:12', '2020-02-11 06:48:12'),
(277, NULL, 5, 47, 'Order Request', 'Dear David Brown, You have new request for order #818602 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 06:48:13', '2020-02-11 06:48:13'),
(278, NULL, 29, 47, 'Order Request', 'Dear bansi, You have new request for order #818602 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 06:48:13', '2020-02-11 06:48:13'),
(279, NULL, 30, 47, 'Order Request', 'Dear john, You have new request for order #818602 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 06:48:13', '2020-02-11 06:48:13'),
(280, NULL, 31, 47, 'Order Request', 'Dear mahipal, You have new request for order #818602 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 06:48:13', '2020-02-11 06:48:13'),
(281, 9, NULL, 47, 'Order Approved', 'Dear bansuri, Your Order #818602 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-11 06:48:43', '2020-02-11 06:48:43'),
(282, 9, NULL, 48, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-11 07:18:47', '2020-02-11 07:18:47'),
(283, NULL, 5, 48, 'Order Request', 'Dear David Brown, You have new request for order #227169 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 07:18:48', '2020-02-11 07:18:48'),
(284, NULL, 29, 48, 'Order Request', 'Dear bansi, You have new request for order #227169 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 07:18:48', '2020-02-11 07:18:48'),
(285, NULL, 30, 48, 'Order Request', 'Dear john, You have new request for order #227169 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 07:18:48', '2020-02-11 07:18:48'),
(286, NULL, 31, 48, 'Order Request', 'Dear mahipal, You have new request for order #227169 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 07:18:48', '2020-02-11 07:18:48'),
(287, 9, NULL, 48, 'Order Approved', 'Dear bansuri, Your Order #227169 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-11 07:19:09', '2020-02-11 07:19:09'),
(288, 9, NULL, 49, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-11 07:27:14', '2020-02-11 07:27:14'),
(289, NULL, 5, 49, 'Order Request', 'Dear David Brown, You have new request for order #250187 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 07:27:15', '2020-02-11 07:27:15'),
(290, NULL, 29, 49, 'Order Request', 'Dear bansi, You have new request for order #250187 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 07:27:15', '2020-02-11 07:27:15'),
(291, NULL, 30, 49, 'Order Request', 'Dear john, You have new request for order #250187 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 07:27:15', '2020-02-11 07:27:15'),
(292, NULL, 31, 49, 'Order Request', 'Dear mahipal, You have new request for order #250187 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 07:27:15', '2020-02-11 07:27:15'),
(293, 9, NULL, 49, 'Order Approved', 'Dear bansuri, Your Order #250187 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-11 07:27:44', '2020-02-11 07:27:44'),
(294, 9, NULL, 50, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-11 07:31:00', '2020-02-11 07:31:00'),
(295, NULL, 5, 50, 'Order Request', 'Dear David Brown, You have new request for order #617937 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 07:31:00', '2020-02-11 07:31:00'),
(296, NULL, 29, 50, 'Order Request', 'Dear bansi, You have new request for order #617937 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 07:31:00', '2020-02-11 07:31:00'),
(297, NULL, 30, 50, 'Order Request', 'Dear john, You have new request for order #617937 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 07:31:00', '2020-02-11 07:31:00'),
(298, NULL, 31, 50, 'Order Request', 'Dear mahipal, You have new request for order #617937 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 07:31:00', '2020-02-11 07:31:00'),
(299, 9, NULL, 51, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-11 07:31:08', '2020-02-11 07:31:08'),
(300, NULL, 5, 51, 'Order Request', 'Dear David Brown, You have new request for order #116375 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 07:31:08', '2020-02-11 07:31:08'),
(301, NULL, 29, 51, 'Order Request', 'Dear bansi, You have new request for order #116375 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 07:31:09', '2020-02-11 07:31:09'),
(302, NULL, 30, 51, 'Order Request', 'Dear john, You have new request for order #116375 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 07:31:09', '2020-02-11 07:31:09'),
(303, NULL, 31, 51, 'Order Request', 'Dear mahipal, You have new request for order #116375 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 07:31:09', '2020-02-11 07:31:09'),
(304, 9, NULL, 51, 'Order Approved', 'Dear bansuri, Your Order #116375 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-11 07:31:36', '2020-02-11 07:31:36'),
(305, 9, NULL, 50, 'Order Approved', 'Dear bansuri, Your Order #617937 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-11 07:31:41', '2020-02-11 07:31:41'),
(306, 9, NULL, 52, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-11 09:32:33', '2020-02-11 09:32:33'),
(307, NULL, 5, 52, 'Order Request', 'Dear David Brown, You have new request for order #465951 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 09:32:35', '2020-02-11 09:32:35'),
(308, NULL, 29, 52, 'Order Request', 'Dear bansi, You have new request for order #465951 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 09:32:35', '2020-02-11 09:32:35'),
(309, NULL, 30, 52, 'Order Request', 'Dear john, You have new request for order #465951 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 09:32:35', '2020-02-11 09:32:35'),
(310, NULL, 31, 52, 'Order Request', 'Dear mahipal, You have new request for order #465951 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 09:32:35', '2020-02-11 09:32:35'),
(311, 9, NULL, 52, 'Order Approved', 'Dear bansuri, Your Order #465951 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-11 09:33:03', '2020-02-11 09:33:03'),
(312, 9, NULL, 53, 'Order Created', 'Dear bansuri, Your Order is successfully created in 24 Pizza Town. From Foodlans', '1581055777.png', '2020-02-11 10:38:40', '2020-02-11 10:38:40'),
(313, NULL, 5, 53, 'Order Request', 'Dear David Brown, You have new request for order #610050 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 10:38:41', '2020-02-11 10:38:41'),
(314, NULL, 29, 53, 'Order Request', 'Dear bansi, You have new request for order #610050 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 10:38:41', '2020-02-11 10:38:41'),
(315, NULL, 30, 53, 'Order Request', 'Dear john, You have new request for order #610050 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 10:38:41', '2020-02-11 10:38:41'),
(316, NULL, 31, 53, 'Order Request', 'Dear mahipal, You have new request for order #610050 at shreenathji society ,mavdi main road ,rajkot by 24 Pizza Town. from Foodlans', '1579160492.png', '2020-02-11 10:38:41', '2020-02-11 10:38:41'),
(317, 9, NULL, 53, 'Order Approved', 'Dear bansuri, Your Order #610050 on 24 Pizza Town is successfully Approved. From Foodlans', '1577256227.jpeg', '2020-02-11 10:42:30', '2020-02-11 10:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `notification_template`
--

CREATE TABLE `notification_template` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `mail_content` text NOT NULL,
  `message_content` text,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_template`
--

INSERT INTO `notification_template` (`id`, `title`, `subject`, `mail_content`, `message_content`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'User Verification', 'User Verification', 'Dear {{name}},<br>&nbsp; &nbsp;<br>&nbsp; &nbsp; Your registration is completed successfully.<br><br>&nbsp; &nbsp; Your Verification code is <b>{{otp}}</b>.<br><br>From {{shop_name}}', 'Dear {{name}}, Your Verification code is {{otp}}. From {{shop_name}}', '1574854450.png', '2019-11-27 11:34:10', '2019-11-27 13:13:54', '0000-00-00 00:00:00'),
(2, 'Forget Password', 'Forget Password', 'Dear {{name}},<br>&nbsp; &nbsp; &nbsp;&nbsp;<br>&nbsp; &nbsp; Your new passowrd is <b>{{password}}</b>.<br><br>From {{shop_name}}<br><br>', 'Dear {{name}},  Your new passowrd is {{password}}. From {{shop_name}}', '1574860457.jpg', '2019-11-27 11:42:00', '2019-11-27 13:14:17', '0000-00-00 00:00:00'),
(3, 'Create Order', 'Create Order', 'Dear {{name}},<br><br>&nbsp; &nbsp;Your Order is successfully created in {{shop}}.<br>&nbsp; &nbsp;<br>&nbsp; &nbsp;Thank you for using our application.<br><br>From {{shop_name}}', 'Dear {{name}}, Your Order is successfully created in {{shop}}. From {{shop_name}}', '1581055777.png', '2019-11-27 13:17:14', '2020-02-07 06:09:37', '0000-00-00 00:00:00'),
(4, 'Cancel Order', 'Cancel Order', 'Dear {{name}},<br><br>&nbsp; &nbsp;Your Order {{order_no}} on {{shop}} is Rejected by Restaurant.<br><br>From {{shop_name}}', 'Dear {{name}}, Your Order {{order_no}} on {{shop}} is Rejected by Restaurant. From {{shop_name}}', '1574861383.png', '2019-11-27 13:27:27', '2020-02-07 10:41:59', '0000-00-00 00:00:00'),
(6, 'Order Arrive', 'Order Arrive', 'Dear {{name}},<br>&nbsp; &nbsp; &nbsp;&nbsp;<br>&nbsp; &nbsp;You have new order {{order_no}} in {{shop}} from {{customer_name}}.<br><br>From {{shop_name}}', 'Dear {{name}}, You have new order {{order_no}} in {{shop}} from {{customer_name}}. From {{shop_name}}', '1574940643.png', '2019-11-28 11:30:43', '2019-12-24 07:42:41', '0000-00-00 00:00:00'),
(7, 'Order Status', 'Order Status', 'Dear {{name}},<br><br>&nbsp; &nbsp;Your Order {{order_no}} on {{shop}} is successfully {{status}}.<br><br>From {{shop_name}}', 'Dear {{name}}, Your Order {{order_no}} on {{shop}} is successfully {{status}}. From {{shop_name}}', '1577256227.jpeg', '2019-12-24 07:38:55', '2019-12-25 06:43:47', '0000-00-00 00:00:00'),
(8, 'Payment Status', 'Payment Status', 'Dear {{name}},<br><br>&nbsp; &nbsp;Your Payment for order {{order_no}} is successfully {{payment_status}}.<br><br>From {{shop_name}}', 'Dear {{name}}, Your Payment for order {{order_no}} is successfully {{payment_status}}. From {{shop_name}}', '1577267855.png', '2019-12-25 09:57:35', '2019-12-25 10:20:56', '0000-00-00 00:00:00'),
(9, 'Order Request', 'Order Request', 'Dear {{name}},<br><br>&nbsp; &nbsp; &nbsp; You have new request for order {{order_no}}&nbsp;at {{user_address}} by {{shop}}.<br><br>from {{shop_name}}<br><br>', 'Dear {{name}}, You have new request for order {{order_no}} at {{user_address}} by {{shop}}. from {{shop_name}}', '1579160492.png', '2020-01-16 07:41:32', '2020-01-16 07:45:37', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00ebfdb9c83c214ed54585dbe6a19efa65300e7b84d860f9cc4dd091a6c7f95904c48a9949495162', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 02:18:16', '2019-12-20 02:18:16', '2020-12-20 07:48:16'),
('01d2c59c3e770ea62c83915977a30effa6bb06d8da094e37dbbd21a2401ed4abc0d9283233ba61e8', 9, 1, 'Foodlans', '[]', 0, '2019-12-30 02:26:09', '2019-12-30 02:26:09', '2020-12-30 07:56:09'),
('03de18ca86f79b407dfb865ee5c0738eaf9bb68a882b2c571a75535f05e94588f2e126ef7dac92e0', 9, 1, 'Foodlans', '[]', 0, '2019-12-16 23:40:55', '2019-12-16 23:40:55', '2020-12-17 05:10:55'),
('04b71585c05bb987157a11ad9952e99fa35dd68b2bdb6617db86313f08328a6e9a719ce36355988c', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 00:09:50', '2019-12-20 00:09:50', '2020-12-20 05:39:50'),
('05233ad9d9e16767c6f19b3a4d5ec591d2a435eb5a06f292f0bd16b9c86779fe47fabebf0dbe77d2', 31, 1, 'Foodlans', '[]', 0, '2020-01-28 00:12:56', '2020-01-28 00:12:56', '2021-01-28 05:42:56'),
('0684882159e867f16bd039f876b185a97b8e8c161d8a786f258d06034ad397bfdc0b0fb28fc65089', 31, 1, 'Foodlans', '[]', 0, '2020-02-01 05:34:13', '2020-02-01 05:34:13', '2021-02-01 11:04:13'),
('077901f4e59be012eb25c67bb0dc93834d87dd97d94d30c67246ecb1bc83418d9d3b4742bb05bb5e', 9, 1, 'Foodlans', '[]', 0, '2020-01-29 06:10:48', '2020-01-29 06:10:48', '2021-01-29 11:40:48'),
('07a0595b96b304f74e099ac0a26ecfb51813cf995196c3a12e10227dee709384a81ac5c790e86157', 9, 1, 'Foodlans', '[]', 0, '2020-01-03 04:45:28', '2020-01-03 04:45:28', '2021-01-03 10:15:28'),
('0828ba0743603e26dc0b7197d90f3bcda1a245997c4e51c204ec09aadb145abeae2dfb2b80601baa', 9, 1, 'Foodlans', '[]', 0, '2019-12-23 01:43:46', '2019-12-23 01:43:46', '2020-12-23 07:13:46'),
('0832e4af4f8c24176036845942213455f67278245f84066c3a69c203c664043c482b53a76af6c3d4', 31, 1, 'Foodlans', '[]', 0, '2020-02-07 23:34:46', '2020-02-07 23:34:46', '2021-02-08 05:04:46'),
('0843256bdd2536b5f165b1d7a4797b3b1fd1c8c1da47b19643eed74b808742867095dfddc679425b', 23, 1, 'Foodlans', '[]', 0, '2020-02-03 01:41:37', '2020-02-03 01:41:37', '2021-02-03 07:11:37'),
('08eae242b6321a2def1fb0aef9a72b8822e761c1292b634d42ea7e6359f36f2e4f5d8e0ed1054385', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 00:40:53', '2019-12-20 00:40:53', '2020-12-20 06:10:53'),
('09b329d4562d9b13228e69d2ea3c97bdf904967e926cca05a6e449c047df9ccc81e8e83ec5914c6f', 9, 1, 'Foodlans', '[]', 0, '2020-02-07 00:52:11', '2020-02-07 00:52:11', '2021-02-07 06:22:11'),
('0a174b985c9159ce9aeb7730e162061771f1e2ffc136fdf6d75b2df071bd86e6fcee522a3903c366', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 07:58:50', '2019-12-19 07:58:50', '2020-12-19 13:28:50'),
('0ab0699691f46880bdf5e921c23cf122e9beaf4c42d16597d89ffb429d750fcf1e4f2c122e52ea61', 31, 1, 'Foodlans', '[]', 0, '2020-01-18 02:24:09', '2020-01-18 02:24:09', '2021-01-18 07:54:09'),
('0bc2aed7252fa04e4687aa4f66c0dce9efd7c3ee9efdd59a5ad14c34359d9b3e7ea36039934df90a', 9, 1, 'Foodlans', '[]', 0, '2020-01-03 04:42:55', '2020-01-03 04:42:55', '2021-01-03 10:12:55'),
('0bdc1ee0bafea3c548bc4b5988a0535eab9b0565c11640ee73ca340a5eab5f66fca13f9b35b2310f', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 00:57:31', '2019-12-19 00:57:31', '2020-12-19 06:27:31'),
('0c17181fa39973fae0fd05d9f8b7f6bb2459cc6d0663c5adb7efb48a96be5411bdb2872a96f6eccb', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 23:20:35', '2019-12-19 23:20:35', '2020-12-20 04:50:35'),
('0da7400685a32c8106db67b1c512849d1a2803d72581cc1960aff7ff776f442bab8b430492cd87e9', 9, 1, 'Foodlans', '[]', 0, '2019-11-18 04:33:29', '2019-11-18 04:33:29', '2020-11-18 10:03:29'),
('0e8ad285d95ac057c768960377e70f7222222824cae0ce6c01f1dd2101261e771175037cdb933c1e', 9, 1, 'Foodlans', '[]', 0, '2020-01-01 08:55:53', '2020-01-01 08:55:53', '2021-01-01 14:25:53'),
('0e8e3efb7b0dd295efd2e0a83ffa0f7b549f95ee50bf601e6d2e9711180b55c91381d86074364bdc', 9, 1, 'Foodlans', '[]', 0, '2020-01-25 01:42:19', '2020-01-25 01:42:19', '2021-01-25 07:12:19'),
('10e6abc483aec1f38111c06cf158bef40515e0c7c9b3c92e30d90f7b56f3fb78b38996f0088e9c61', 31, 1, 'Foodlans', '[]', 0, '2020-01-18 02:13:17', '2020-01-18 02:13:17', '2021-01-18 07:43:17'),
('1144779f2290b62ce6e38e697b173f99eb7f512b8bc7d1ec82cf185c1058d8fe9fadd92c6cde2287', 31, 1, 'Foodlans', '[]', 0, '2020-01-28 23:47:32', '2020-01-28 23:47:32', '2021-01-29 05:17:32'),
('119b42baf1d759ef755875631ae89c9b78fc26718718b7f3b57b907c63b6ca566348050ee525de44', 11, 1, 'Foodlans', '[]', 0, '2020-01-08 01:38:27', '2020-01-08 01:38:27', '2021-01-08 07:08:27'),
('127bf8c2e122436983f932d01a5d009af5dfdf69f6b2cf8153f68edfa87f4a627feafa246586c2e1', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 05:17:33', '2019-12-20 05:17:33', '2020-12-20 10:47:33'),
('128b1f470bc486a087271fe6834173716807e34d6ffb84595878507e513bad9b9a93eb827013c405', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 03:50:29', '2019-12-19 03:50:29', '2020-12-19 09:20:29'),
('12dd8a240bc5d215d95c7fc51f273ba24d2597a4716f21e567bd63543493c3df155b44986376fcd3', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 04:48:27', '2019-12-19 04:48:27', '2020-12-19 10:18:27'),
('13db3d7222295b155efe4ec769e45654e924382b9b5e3b74c722239c56d0af0e2f4f87ef55f64b05', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 03:49:28', '2019-12-19 03:49:28', '2020-12-19 09:19:28'),
('155d0de7a1d9d47a6306c609d33513d97663bc9d1b35e9c184fd81eb4073b5bbaef468a3c71720dc', 31, 1, 'Foodlans', '[]', 0, '2020-01-20 00:12:26', '2020-01-20 00:12:26', '2021-01-20 05:42:26'),
('15ba9626362271245fbacafe69027f4e4a176c6d93418ac7750a7e6b76c63d893b6777aa0b662f5a', 9, 1, 'Foodlans', '[]', 0, '2019-12-27 03:52:26', '2019-12-27 03:52:26', '2020-12-27 09:22:26'),
('176145a4b29f54fdb0b609df2cd57385df09478fd9abad7e8ece2bd26a399f3693dc65befbe86b53', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 04:52:09', '2019-12-19 04:52:09', '2020-12-19 10:22:09'),
('17be4243a18734e00ba0fdee69b6f188cfa29c3769eac4319b3d036d1d01d43a2eae1eb6736ef1dd', 10, 1, 'Foodlans', '[]', 0, '2020-01-03 05:32:40', '2020-01-03 05:32:40', '2021-01-03 11:02:40'),
('18c738999752a9fa220b2ac8d5e8754200dbd3d7e38343dbfc8d8105c305e70601eb86a7213c7cda', 31, 1, 'Foodlans', '[]', 0, '2020-01-29 05:59:55', '2020-01-29 05:59:55', '2021-01-29 11:29:55'),
('18c8689072c7c1c202e0d735ca1e9be348e6785efe8c677acbf4c175e7ef683fac76669d7b874f02', 31, 1, 'Foodlans', '[]', 0, '2020-01-27 06:14:22', '2020-01-27 06:14:22', '2021-01-27 11:44:22'),
('18dbb3269a1c8ab381dbce7958e9efea152c8119e96509b134be5d43a7fe1bddc59ad6dd96932ee7', 31, 1, 'Foodlans', '[]', 0, '2020-01-24 04:11:46', '2020-01-24 04:11:46', '2021-01-24 09:41:46'),
('18e33125e3e8436a185d818315f4f1e50d71849a7a3d2845b06c5e440cabe1f28ed8716769cea7ff', 31, 1, 'Foodlans', '[]', 0, '2020-01-23 04:24:16', '2020-01-23 04:24:16', '2021-01-23 09:54:16'),
('1911e286ffacfc42bb6a3fb125eb8d5128e8eeab9f8aab66102139d2dc3dda6a5d15535f17cade0e', 9, 1, 'Foodlans', '[]', 0, '2019-12-21 08:22:21', '2019-12-21 08:22:21', '2020-12-21 13:52:21'),
('19b68fc3ff6ee3db80089d51951a3778e06a438c0856721991c58aeef6c7ca6446def390e5328072', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 00:10:42', '2019-12-20 00:10:42', '2020-12-20 05:40:42'),
('1b8ffb7a5215197664bc928fb2349555247fbdba3127c0adfe132660a0b0e963a2172709f04ad983', 9, 1, 'Foodlans', '[]', 0, '2020-01-24 01:07:18', '2020-01-24 01:07:18', '2021-01-24 06:37:18'),
('1d4be05de1d6b168aa3374c22af909b577a6694dc14f8beaa084facbfead6e33f64588b03ac6fb70', 5, 1, 'Foodlans', '[]', 0, '2019-12-27 07:35:41', '2019-12-27 07:35:41', '2020-12-27 13:05:41'),
('1df10673f4491b304266258c3242a86041244e815c623780312b92bac114f8b53c35fa9268077a7a', 31, 1, 'Foodlans', '[]', 0, '2020-01-23 04:59:22', '2020-01-23 04:59:22', '2021-01-23 10:29:22'),
('1e8ad705dbefeb4bd1205fcc0a356a2acb1036402d465d9187560bb7f4e13209822aaf46c37613eb', 9, 1, 'Foodlans', '[]', 0, '2020-01-05 00:46:32', '2020-01-05 00:46:32', '2021-01-05 06:16:32'),
('1ed418c81a4c23dc4b21d0d8049cc27735e268f8d7d055e094a7b32854dd8d539e82c54e140cb9fc', 31, 1, 'Foodlans', '[]', 0, '2020-01-24 04:16:10', '2020-01-24 04:16:10', '2021-01-24 09:46:10'),
('1fe1897862cc2a4a288bdf23805924c8b00e16b2e3d200556d406463a04a18460d4b7ea52e4f348b', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 00:05:35', '2019-12-20 00:05:35', '2020-12-20 05:35:35'),
('204ac1216c544baf335811c208b2323389006e5edf28f7ec9e73c477f1a76d7311b346b902cf3504', 31, 1, 'Foodlans', '[]', 0, '2020-01-18 02:27:48', '2020-01-18 02:27:48', '2021-01-18 07:57:48'),
('21afddc2897cbcee13b674b899db3f8ef41acfb8a6decb5ce48687fc478e874ca183ee893d721f5a', 29, 1, 'Foodlans', '[]', 0, '2020-01-18 00:20:02', '2020-01-18 00:20:02', '2021-01-18 05:50:02'),
('228da76c7585404f6d29e9e1aa3544bb6e4d9bdbde1954986b19330ab3414a766c33efa0bdd1c6ac', 9, 1, 'Foodlans', '[]', 0, '2020-01-03 04:51:12', '2020-01-03 04:51:12', '2021-01-03 10:21:12'),
('229429116b349de24170daee5e9e04805b76a19acfb2b6887aca330698ebba5d27df8cdf20177722', 31, 1, 'Foodlans', '[]', 0, '2020-01-22 23:27:25', '2020-01-22 23:27:25', '2021-01-23 04:57:25'),
('22a1e7eb4a5dc21d60e6a2c3ca1a01e270a909a1b238ca2d785832c9d55a921ab544ea709d8049ce', 9, 1, 'Foodlans', '[]', 0, '2019-12-31 05:39:36', '2019-12-31 05:39:36', '2020-12-31 11:09:36'),
('22b8cbcc402e1539cab5c920a7375f74c99655c3f1f0a0a5270b8de2a75ca3d979d03a974e9dfd31', 33, 1, 'Foodlans', '[]', 0, '2020-02-05 08:30:59', '2020-02-05 08:30:59', '2021-02-05 14:00:59'),
('231afb6ec0a1427d5322a5b84b0883b13344d3d399bcf9f093339f910a0710f9bad7325e114dc317', 11, 1, 'Foodlans', '[]', 0, '2020-01-02 06:46:22', '2020-01-02 06:46:22', '2021-01-02 12:16:22'),
('23f2adc29ed7f12b2e1a5beed34f985d23b0832f14d43eb8a4425d828c7ef28d71e7e43609e9d972', 9, 1, 'Foodlans', '[]', 0, '2020-01-08 06:24:01', '2020-01-08 06:24:01', '2021-01-08 11:54:01'),
('25fe7c12f2727328742759ceadf3137a5c0c279c1415f57d54651cec86b5f7cc90f83ed8060ddf13', 29, 1, 'Foodlans', '[]', 0, '2020-01-15 04:15:23', '2020-01-15 04:15:23', '2021-01-15 09:45:23'),
('2613ae15982a73968cf396e0be6358afade378c876560374f132355c950828c62ca1c56f366c170b', 9, 1, 'Foodlans', '[]', 0, '2019-11-18 01:50:41', '2019-11-18 01:50:41', '2020-11-18 07:20:41'),
('2693dccc7611f0cb75b9456a4877bd2fa25df7876f7b2b086d00a633a5b3aac622d3b07c99720145', 9, 1, 'Foodlans', '[]', 0, '2020-02-05 07:07:27', '2020-02-05 07:07:27', '2021-02-05 12:37:27'),
('27d6c0a4c6c05c7f70b7ea3de97af15e913cad6a0ff6354807c5942342f159633788361a9640ddae', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 05:12:09', '2019-12-20 05:12:09', '2020-12-20 10:42:09'),
('27f7b99467671e45c80299558f4c9f960131a91a291aeca93c645fa3d7b5d407ce58fd59429b8c06', 9, 1, 'Foodlans', '[]', 0, '2020-01-03 06:26:52', '2020-01-03 06:26:52', '2021-01-03 11:56:52'),
('29d99c16db2285ad92b99cdfde9e2fae5f703816978a6322e146f89b15eece782058b0702ff5c66c', 31, 1, 'Foodlans', '[]', 0, '2020-01-28 05:43:42', '2020-01-28 05:43:42', '2021-01-28 11:13:42'),
('2a8d9cd0673169f5f00443ddd314f3bde918721c184031d0c2c0c0884e971ba26adff7ef5b38239d', 31, 1, 'Foodlans', '[]', 0, '2020-01-23 05:20:40', '2020-01-23 05:20:40', '2021-01-23 10:50:40'),
('2a981975259cf46be4cafb1c2279a444163057a6beb0ca669ecf00c45911e68057c109eed305fcf6', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 00:14:38', '2019-12-20 00:14:38', '2020-12-20 05:44:38'),
('2aaf48d21ac0cc7f19cdaf086ba5e87db85dde9d986b83453881a228a62aaaa1060f09bc73a40da2', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 01:00:08', '2019-12-19 01:00:08', '2020-12-19 06:30:08'),
('2b4c3a301b8c22603c2854d06f4f67b9b3b311d6952bc100cec2b7247a6280c1e92a8096fc33e073', 9, 1, 'Foodlans', '[]', 0, '2020-01-02 04:38:14', '2020-01-02 04:38:14', '2021-01-02 10:08:14'),
('2bb21c88742795967f1ebf5b09a77c7a3e9a387a67a854ffe207553eab5b9d4dadea5113768002e5', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 00:03:15', '2019-12-20 00:03:15', '2020-12-20 05:33:15'),
('2c4d69349af9af8cd68ad337fbc8103bdd6fab1c982992fed5f7f23fda3da7a7624780a0e1df5b34', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 00:06:39', '2019-12-20 00:06:39', '2020-12-20 05:36:39'),
('2c6c83699c2cc0c1f67585cd28daa909130cbf28a41380fbdd713229dc33ac15f2024f49f7236c49', 31, 1, 'Foodlans', '[]', 0, '2020-02-02 23:16:58', '2020-02-02 23:16:58', '2021-02-03 04:46:58'),
('2c8c212ddafdf1b5355429ee75a111703768b1f37a68b69e06f95dd1cc8b79a7035addb8fd8d2732', 9, 1, 'Foodlans', '[]', 0, '2020-01-09 05:42:29', '2020-01-09 05:42:29', '2021-01-09 11:12:29'),
('2cf96866645c71b100ebe1477d4b3d584e5175c68d0015cb7db06b16784626190930371cd2021751', 31, 1, 'Foodlans', '[]', 0, '2020-01-28 00:46:50', '2020-01-28 00:46:50', '2021-01-28 06:16:50'),
('2d6a865332a8ae58945d1310aa3f582fb0df3e97d882a479e7a5242c5fc7ba3b7ad23e30f1b1334f', 9, 1, 'Foodlans', '[]', 0, '2019-12-23 05:07:32', '2019-12-23 05:07:32', '2020-12-23 10:37:32'),
('2e72253dc1691456ecf9a13e55e87c00b659149e31172e1c1a4853836dcfb9771eba22aacf27506b', 9, 1, 'Foodlans', '[]', 0, '2020-01-25 01:39:26', '2020-01-25 01:39:26', '2021-01-25 07:09:26'),
('2f8b7d579cb50816d307a6f1ac666e2f4b8173d955bd31f750b551df866097cb5afa3cd64ae2f23d', 9, 1, 'Foodlans', '[]', 0, '2020-01-02 04:47:23', '2020-01-02 04:47:23', '2021-01-02 10:17:23'),
('2f9d07eda538702eb92e110adc75fc71e7afdef976e6ef01ac887ef57ed3b281d73522399d11a3c8', 9, 1, 'Foodlans', '[]', 0, '2020-01-04 23:40:41', '2020-01-04 23:40:41', '2021-01-05 05:10:41'),
('2fbcc057ab3ed3cdddd8b4f121c312ff3c9e1f14a44897c1cc4310e29c0dc3da79751fe856320aee', 31, 1, 'Foodlans', '[]', 0, '2020-01-23 07:07:05', '2020-01-23 07:07:05', '2021-01-23 12:37:05'),
('3072faec456775089a1a72870db50c84cd816f167864555d404f7c1d1a4df29a951e089c39671983', 29, 1, 'Foodlans', '[]', 0, '2020-01-18 04:14:36', '2020-01-18 04:14:36', '2021-01-18 09:44:36'),
('3077899329812333a80dbc077120eaaf1037150ccd9a6dfb707c6e630d8cb28ae34be8c9e068e8db', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 04:56:23', '2019-12-19 04:56:23', '2020-12-19 10:26:23'),
('30de4d8d7e5dc0e8ea2f74d020a3bdb6663a0445384a7ac2f9fdc7da023d797f5703ce1874f76c03', 31, 1, 'Foodlans', '[]', 0, '2020-01-18 02:12:46', '2020-01-18 02:12:46', '2021-01-18 07:42:46'),
('31347397c32e27494eff8046765ebe97f0c25991a1cf17fbd3db2003267bb9892035d7ffa78b4901', 9, 1, 'Foodlans', '[]', 0, '2020-01-23 05:48:46', '2020-01-23 05:48:46', '2021-01-23 11:18:46'),
('31aee82095f979211a4fad0f3eddc23cd05b06dc765aa00d87e9a3551b647ca60f5cdc9b78cbe2ba', 9, 1, 'Foodlans', '[]', 0, '2020-01-29 02:13:26', '2020-01-29 02:13:26', '2021-01-29 07:43:26'),
('31ea8f753a44987ddefd85ee477833d28b00911a979210ad629cd5bdd0a6949913cc88aaa1fae5ae', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 07:53:30', '2019-12-19 07:53:30', '2020-12-19 13:23:30'),
('320c1dc97898841824fe5116386e2531bd6094fd0853da2105f7b78a882579392dd2ce0559985aa0', 31, 1, 'Foodlans', '[]', 0, '2020-02-03 01:48:19', '2020-02-03 01:48:19', '2021-02-03 07:18:19'),
('333e743f61b01416470fa7dd9a2ba92a0cbe33126da9e2996c542972e542e537e0d9f028aae357b0', 31, 1, 'Foodlans', '[]', 0, '2020-01-18 02:33:15', '2020-01-18 02:33:15', '2021-01-18 08:03:15'),
('351adaa0cd7db265f5b2eab2264ef82106fd901184ce2e2db8dc444de606b8f3dd63d0c210e0bd24', 9, 1, 'Foodlans', '[]', 0, '2020-01-09 05:01:19', '2020-01-09 05:01:19', '2021-01-09 10:31:19'),
('352ae2a91a8314df8defd19e13bdeef958b6cacda1cb2a44ee5f6450eabe5f941b5e952f42ec175f', 2, 1, 'Foodlans', '[]', 0, '2019-11-17 23:32:40', '2019-11-17 23:32:40', '2020-11-18 05:02:40'),
('36e871f66519fcbd07bf9e26183280cbc214c2be6133ce0c918da7829a93e00631a3e26829d720ff', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 02:08:45', '2019-12-20 02:08:45', '2020-12-20 07:38:45'),
('371bcbb0e407282164662a36d5caf9246fc5b80a0b041548bcc9897332b17414d49b1fb07250a34f', 31, 1, 'Foodlans', '[]', 0, '2020-01-24 23:56:17', '2020-01-24 23:56:17', '2021-01-25 05:26:17'),
('390d7e6d468fd6d016f3be357b85b9ec760337976a127c8f82570d3e8081372dff472eff72080e00', 31, 1, 'Foodlans', '[]', 0, '2020-01-19 23:22:13', '2020-01-19 23:22:13', '2021-01-20 04:52:13'),
('3999707c4f85bbd07a59d4f2ab4363cf8994aec5051098e437996ab98631de3b8daf6384677c01f9', 9, 1, 'Foodlans', '[]', 0, '2019-12-23 05:55:18', '2019-12-23 05:55:18', '2020-12-23 11:25:18'),
('3ab824af24414bb30d1dce16730955adc8e7bf4a5d84a88e56e1c6cee55c810641d4b09e98940d30', 9, 1, 'Foodlans', '[]', 0, '2020-02-07 07:46:17', '2020-02-07 07:46:17', '2021-02-07 13:16:17'),
('3acefeedc9d9f2f2b28b8d3d39c76a471c67fb4c4534079c54c8b4568f10b48282cd1005de6f2368', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 08:33:46', '2019-12-19 08:33:46', '2020-12-19 14:03:46'),
('3b890e7a3d731a91acfd6a1ce25dd07608701589a4f78edcab7d6ac90d7ad7bb5eacf0361159b8a4', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 02:25:54', '2019-12-20 02:25:54', '2020-12-20 07:55:54'),
('3c5138624931ff48c487a6816cd2dd916fa7becf06181dea5bf4ba679ee7a91fe0489637b1783f20', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 02:12:47', '2019-12-20 02:12:47', '2020-12-20 07:42:47'),
('3c55dd44b496918fd108672273f937d40de0516d7e69835864eda18140ed34bbb711600933ef2f12', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 03:49:14', '2019-12-19 03:49:14', '2020-12-19 09:19:14'),
('3d0e2439978c20cf65b30f0771ef2cd92aaaf92ff035be893c9345a6091b3ac73953cdd6a50f1787', 9, 1, 'Foodlans', '[]', 0, '2020-01-23 23:55:27', '2020-01-23 23:55:27', '2021-01-24 05:25:27'),
('3ed84b6963c36d3a3b0879b42369478261cbcacca1286780570d699881499a2c91b66e24589168eb', 9, 1, 'Foodlans', '[]', 0, '2020-02-03 05:07:33', '2020-02-03 05:07:33', '2021-02-03 10:37:33'),
('4049859d1da4720d2a0231ae03f14a8ccd793aed7477d9d986a5e160a5724bf83ab3abae0c78a2ac', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 05:01:20', '2019-12-19 05:01:20', '2020-12-19 10:31:20'),
('406a3116a4d776f4d7834d728418c53a762fcebb40ff3bf69ba01bf5b47a6fbd89acdbf908cb6bdc', 9, 1, 'Foodlans', '[]', 0, '2019-12-31 06:20:00', '2019-12-31 06:20:00', '2020-12-31 11:50:00'),
('42a4f2f4803f0d2590ad0ed6fcdf546a24c14c5fe4dee7f895b35cb5ebe2cced47b821075424ab0f', 9, 1, 'Foodlans', '[]', 0, '2020-01-23 05:49:18', '2020-01-23 05:49:18', '2021-01-23 11:19:18'),
('4427d8a9c70825263b9b9360fcf9b4d513fddf3d951d702874bc67abb4bd5f4c71b347244ac3a5d6', 9, 1, 'Foodlans', '[]', 0, '2020-01-02 02:24:33', '2020-01-02 02:24:33', '2021-01-02 07:54:33'),
('4509448c80fcd73cf84f9eda4e02f2e0a79c46571af5a4fefc9bbd0ea24b16d8a64df75dfd70daca', 5, 1, 'Foodlans', '[]', 0, '2020-01-08 02:43:23', '2020-01-08 02:43:23', '2021-01-08 08:13:23'),
('4546a170930c0d6918c4fcfd478f8a1dafa601e8acf2c3cc8fbb878293ccf8c327b18bb1126ed8b0', 9, 1, 'Foodlans', '[]', 0, '2020-01-03 00:43:09', '2020-01-03 00:43:09', '2021-01-03 06:13:09'),
('457e0bd826c1a5ccb471a27fef289d2738c90beaafae38c574d7546034d58db416772dba3b5c4809', 31, 1, 'Foodlans', '[]', 0, '2020-01-23 03:52:06', '2020-01-23 03:52:06', '2021-01-23 09:22:06'),
('469b2f4fb2ec4dd6c6cefeb1cf58906d615e7e31626abe802acc3e782cb3da97410eef8de965ce61', 31, 1, 'Foodlans', '[]', 0, '2020-01-27 00:04:21', '2020-01-27 00:04:21', '2021-01-27 05:34:21'),
('4726712abc887b9cbc2529d001bc5a856a4bfae637d2992e964ee62d5f11344c8d4b34aabdb89b32', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 07:46:50', '2019-12-19 07:46:50', '2020-12-19 13:16:50'),
('47713af9f331f981615fd11eccee38c9dc2d16761bd2b361c0df3cf15d51d290710b9680080b79d9', 31, 1, 'Foodlans', '[]', 0, '2020-02-01 05:35:29', '2020-02-01 05:35:29', '2021-02-01 11:05:29'),
('47b674cf1e9dc72a214666cf17ed0dc3f55fd41ef981ed4d5e6a5ae89602c3f2b05dcb1bd9733088', 9, 1, 'Foodlans', '[]', 0, '2019-12-21 08:38:06', '2019-12-21 08:38:06', '2020-12-21 14:08:06'),
('48fd042ce9c9a9f4721bec81906b3c52bff81ccfcb0e97bb16413d26ae35f5d055fcb10484fd9b85', 9, 1, 'Foodlans', '[]', 0, '2020-01-03 04:46:25', '2020-01-03 04:46:25', '2021-01-03 10:16:25'),
('49199a2eeae174ff1df9574e9726586d8de4c5d5fa892bb856f8d164425db27790cb1177beac4b44', 11, 1, 'Foodlans', '[]', 0, '2020-01-02 06:31:41', '2020-01-02 06:31:41', '2021-01-02 12:01:41'),
('49ca303673d9babfb9b6f8f8393ca4b51be4dcfc4fc2a154b067889916e52383c76f3176803cc5db', 31, 1, 'Foodlans', '[]', 0, '2020-02-07 01:28:44', '2020-02-07 01:28:44', '2021-02-07 06:58:44'),
('4a25090d95963e04fa708ca9fa6b9c8a5486f3d7076b5e119782302b007010f3eeac80e84100b904', 9, 1, 'Foodlans', '[]', 0, '2019-12-23 05:55:17', '2019-12-23 05:55:17', '2020-12-23 11:25:17'),
('4bcbf3ecbc88d92053c69a71f7cb1a92c92531d83918fa1fa030464957e84a8f808b39ce79f64069', 31, 1, 'Foodlans', '[]', 0, '2020-01-23 05:15:42', '2020-01-23 05:15:42', '2021-01-23 10:45:42'),
('4d08d4c20b51c27466410c96a05bf5a155359164ff68ab2d177e3f31e80a68eca3fd0fa12cc601e1', 9, 1, 'Foodlans', '[]', 0, '2020-01-05 00:48:13', '2020-01-05 00:48:13', '2021-01-05 06:18:13'),
('527726e0ddfa227e5b7a586b93c7e51623bcfc051e5b781028ba1a288c6f422b584e08c6de4f3cc8', 31, 1, 'Foodlans', '[]', 0, '2020-02-03 00:05:23', '2020-02-03 00:05:23', '2021-02-03 05:35:23'),
('529a34102d5759b7505e2253bc26197179ef9bb6a042676160af749149d5eaf2fb1348052efe56f3', 9, 1, 'Foodlans', '[]', 0, '2020-02-03 00:26:05', '2020-02-03 00:26:05', '2021-02-03 05:56:05'),
('52abbb32b75f6a44eadc125975631ca41c38d5e39fa846776991ba72ad4077dd6db9ca6568999b55', 31, 1, 'Foodlans', '[]', 0, '2020-02-11 00:14:49', '2020-02-11 00:14:49', '2021-02-11 05:44:49'),
('537308680c1d4054bfe18630ae5b3096d1990f0fb69f99cd2314de38afa719b362bdfcf225b397fb', 9, 1, 'Foodlans', '[]', 0, '2020-01-04 07:04:36', '2020-01-04 07:04:36', '2021-01-04 12:34:36'),
('5379b5bd9a5836665e110f4269f24011c40d3cfa85e17be81cc99b4d1a8ac59261f204708f94c72e', 9, 1, 'Foodlans', '[]', 0, '2020-02-07 07:59:23', '2020-02-07 07:59:23', '2021-02-07 13:29:23'),
('53cb0557bfa32b1ff4b69183399f059e7969b9db7059200caac833f1ce36f120756884b530e71169', 9, 1, 'Foodlans', '[]', 0, '2020-02-10 23:15:36', '2020-02-10 23:15:36', '2021-02-11 04:45:36'),
('541f9d6e8df305865a8151d99f8fe13baef7a7698d498d4a8bbb51e8ebc2f6c95eb6dffced60d31d', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 07:14:48', '2019-12-19 07:14:48', '2020-12-19 12:44:48'),
('54759e215ab4e00419ad7aaae645e03de95ae84db891b6f26e09d5e73a12bc018fb0ecc59c0a9f97', 9, 1, 'Foodlans', '[]', 0, '2020-01-02 04:10:22', '2020-01-02 04:10:22', '2021-01-02 09:40:22'),
('54e23ee3aa6ca4120d5df16a34f0036606621d7b05123056f66deedac57a7d7833f50410c296f16b', 29, 1, 'Foodlans', '[]', 0, '2020-01-15 04:14:46', '2020-01-15 04:14:46', '2021-01-15 09:44:46'),
('5506be33944ab7b8198964a812829872fd47a93a6c9adfc3218e6701c2806b66b071d770230fc2ab', 31, 1, 'Foodlans', '[]', 0, '2020-01-29 04:20:18', '2020-01-29 04:20:18', '2021-01-29 09:50:18'),
('550f91ecc7d3819cf32961bbf4195c9423d55f8497fe5337a8c7503c4104f9eea03828d384fbf184', 31, 1, 'Foodlans', '[]', 0, '2020-01-28 08:09:08', '2020-01-28 08:09:08', '2021-01-28 13:39:08'),
('55af60698a571bddb35e46befbd876facf78f9aeebd3dd8a5391d4ba11d7bf9d7759c022198430ba', 29, 1, 'Foodlans', '[]', 0, '2020-01-15 23:28:16', '2020-01-15 23:28:16', '2021-01-16 04:58:16'),
('5683f8b0616c533b9ce9f1f106b502754d8d650e13717ea77e5d12452b75460f86b4687e138fad75', 23, 1, 'Foodlans', '[]', 0, '2020-01-09 04:32:52', '2020-01-09 04:32:52', '2021-01-09 10:02:52'),
('57b35b84cbee294cb307c3a76bf5274fa908e090fbb61777d9983ee4c3a2f4b7524ce4daeb58e892', 9, 1, 'Foodlans', '[]', 0, '2019-12-28 00:06:28', '2019-12-28 00:06:28', '2020-12-28 05:36:28'),
('58545dfe68906c1d8dd441070350466d959258301daabbdb58c26c191e740f82c848a96cc04602a2', 32, 1, 'Foodlans', '[]', 0, '2020-02-05 07:03:37', '2020-02-05 07:03:37', '2021-02-05 12:33:37'),
('59bedab1c05e868b2320ae04e768fc06280ec15cdac7b4e9873454615dd1383cf361f541d736f894', 31, 1, 'Foodlans', '[]', 0, '2020-02-01 07:11:52', '2020-02-01 07:11:52', '2021-02-01 12:41:52'),
('5aab75f4e18fabd5e0b415acd07b97e79806a1045e344111b1fb616596b67f0f0d9eaeafbdd6696b', 9, 1, 'Foodlans', '[]', 0, '2020-01-08 07:46:58', '2020-01-08 07:46:58', '2021-01-08 13:16:58'),
('5ad4ac4f3b5d3c289570b3c9fafc1310badb2ce210b6f29427f8e0c28dd344a2139e68f0130daa94', 11, 1, 'Foodlans', '[]', 0, '2020-01-02 05:08:37', '2020-01-02 05:08:37', '2021-01-02 10:38:37'),
('5b4948dd575e74eea680267e7144d8ff75af839542bc50dd0fa7a61506db5a75bc198c96769bae10', 9, 1, 'Foodlans', '[]', 0, '2020-02-07 23:06:01', '2020-02-07 23:06:01', '2021-02-08 04:36:01'),
('5c31b2f859e5d6af27065cd7080555f4eb8a21cbeebe66f5d96d74ffcb6615b0d8f9d793ebbb2fda', 31, 1, 'Foodlans', '[]', 0, '2020-01-29 00:02:57', '2020-01-29 00:02:57', '2021-01-29 05:32:57'),
('5cb658578340b425a036500dd049595ee76d1b22e233b5326403e09e206270e36c7ae9e03f8669cd', 31, 1, 'Foodlans', '[]', 0, '2020-01-24 03:47:06', '2020-01-24 03:47:06', '2021-01-24 09:17:06'),
('5d2859c424603f6ace5c199d75ea96d512a9f3ee062398bf092fba16a72fc3bca50846678873dc08', 9, 1, 'Foodlans', '[]', 0, '2020-02-01 07:50:46', '2020-02-01 07:50:46', '2021-02-01 13:20:46'),
('5da5d9a1885de807be692fd0bff209840f916c63841253f8a6a547f7a27d4c5dd1e966e6a7d7de79', 9, 1, 'Foodlans', '[]', 0, '2020-01-24 06:59:45', '2020-01-24 06:59:45', '2021-01-24 12:29:45'),
('5fde38b1c6f8aa98bc49d9af3c545e43c03bd0d10bda0914c7f4fd1068876ea27d09d29d077bd18e', 9, 1, 'Foodlans', '[]', 0, '2020-01-23 06:45:05', '2020-01-23 06:45:05', '2021-01-23 12:15:05'),
('60fc88568554838d6b2ba2e0c3348c38e936ba3daf7b6c8f07396599cc81016882c32f7de0312a7b', 31, 1, 'Foodlans', '[]', 0, '2020-02-07 23:42:06', '2020-02-07 23:42:06', '2021-02-08 05:12:06'),
('61af3fa9e343e69771dd81a2c2fcb5ef6dc76289efbb8a42f726bbb0fd999d05e3bcdcbf92dcac00', 16, 1, 'Foodlans', '[]', 0, '2020-01-05 01:10:56', '2020-01-05 01:10:56', '2021-01-05 06:40:56'),
('61d6221bc4d56facb69c158b22648cb99b4bf61c90fda88a23e57d38d03088f45b639a6efc69b414', 9, 1, 'Foodlans', '[]', 0, '2020-01-24 01:10:40', '2020-01-24 01:10:40', '2021-01-24 06:40:40'),
('62893b260b3da3486f05a4a57801edc730c1c0e2aedeabe051d2128641d240f0a8f9ca0bcb60fa20', 31, 1, 'Foodlans', '[]', 0, '2020-01-27 00:50:15', '2020-01-27 00:50:15', '2021-01-27 06:20:15'),
('63e00423d3af807cf906022675499a7e4f5efef7e9aacdb2c5793be7212fe89a5e005d071e10fc8b', 23, 1, 'Foodlans', '[]', 0, '2020-02-03 04:21:05', '2020-02-03 04:21:05', '2021-02-03 09:51:05'),
('64b65de7bca0a8f485497205cd6a36f2c8e8805d3d5c8940accc91bea480eed9d8194cd24c2d27a0', 9, 1, 'Foodlans', '[]', 0, '2020-02-11 08:39:01', '2020-02-11 08:39:01', '2021-02-11 14:09:01'),
('6547d7458c6c6e4349e53ea900cf1866689cd815b482acf52fb275256a5d02185165c79889f377b9', 9, 1, 'Foodlans', '[]', 0, '2020-01-03 04:46:36', '2020-01-03 04:46:36', '2021-01-03 10:16:36'),
('6564c59a78ce885dc207056410840b61c627eddb1d7893b1ef3bc9e6880d6c54e470ca53c790c324', 9, 1, 'Foodlans', '[]', 0, '2020-01-24 00:56:57', '2020-01-24 00:56:57', '2021-01-24 06:26:57'),
('66e96ddac0fe4407b2ccf994daafffd592c2e30d73113901d41d245893122678f0bf40c7da600ec8', 31, 1, 'Foodlans', '[]', 0, '2020-01-23 05:14:53', '2020-01-23 05:14:53', '2021-01-23 10:44:53'),
('67000ab1bf0bd6c0ce5cf74479aeef460ade61c48ce8676d64f654de0c0a4100d1e70b14c8977fd4', 9, 1, 'Foodlans', '[]', 0, '2020-01-08 02:15:51', '2020-01-08 02:15:51', '2021-01-08 07:45:51'),
('678c947bd4408fc3a1d64d7330faa42b69a407dbe21f90aa16e2a873a6163f2d9fb1f8dd519d4b13', 9, 1, 'Foodlans', '[]', 0, '2019-12-21 03:49:36', '2019-12-21 03:49:36', '2020-12-21 09:19:36'),
('6846f94aa5ef6b9f5e2e134a1e30cd607485f5a3cae7d1b569515c7fab97ed9c93ba738309343658', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 00:54:22', '2019-12-20 00:54:22', '2020-12-20 06:24:22'),
('69b73ea5a02c3e8513ec3c44b4f855254e6e31475f0bfd5163f1f789dabee7ae772aff6b867cfeff', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 07:27:25', '2019-12-19 07:27:25', '2020-12-19 12:57:25'),
('6aee1bba6e566cbc3b7a7fd412f7f4cbfaa2506e5cec6070767b348f3f66d9a280dc80d2689492e7', 9, 1, 'Foodlans', '[]', 0, '2020-01-24 07:06:00', '2020-01-24 07:06:00', '2021-01-24 12:36:00'),
('6b6dd31b8a79259ae8b8eefd45fea93467b4bd3230d0ba869597baa0986e63ebe84288ea7b91e4f5', 9, 1, 'Foodlans', '[]', 0, '2020-01-05 01:23:27', '2020-01-05 01:23:27', '2021-01-05 06:53:27'),
('6bbb7652fd01f0c78483e98aabd37dca8742e11e3bf6990b6fa92ed0558fc5f42854b5de53de902d', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 00:43:24', '2019-12-20 00:43:24', '2020-12-20 06:13:24'),
('6bdbe29ea8abfea6d9065fca6c53585732e6a46c4578e3633de35a368091e995d5e042eabb50dcbb', 31, 1, 'Foodlans', '[]', 0, '2020-01-24 04:04:30', '2020-01-24 04:04:30', '2021-01-24 09:34:30'),
('6c8fb85e197b75f28bfba07c2a8d99c1436864d5254866761ffe8086b60d88694a5f3894b0135734', 9, 1, 'Foodlans', '[]', 0, '2020-01-24 07:06:12', '2020-01-24 07:06:12', '2021-01-24 12:36:12'),
('6c9f6ffda7e1e3ebb54e302d812c5a8ba33cd281ee2173a2eff6b93dd7b6eb1af0308f28cb38d5e1', 9, 1, 'Foodlans', '[]', 0, '2020-02-03 03:47:48', '2020-02-03 03:47:48', '2021-02-03 09:17:48'),
('6cea7e0f576c2146800716b2e314c78475159eed3ce4eb1b0231ad58ab95d8a359961e4e32ce9ea0', 9, 1, 'Foodlans', '[]', 0, '2020-01-07 23:40:04', '2020-01-07 23:40:04', '2021-01-08 05:10:04'),
('6d5ccb643ce91178092d4be14c30429fe2489f80342af475d5ddfd579bcd4f394c1070cf0d73d67f', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 08:21:03', '2019-12-19 08:21:03', '2020-12-19 13:51:03'),
('6d755b0dcca2c52ac392f2c1f88f0d441f439fd686c8ea47bea4bd34b177c47e2959f59eae84f109', 9, 1, 'Foodlans', '[]', 0, '2020-02-08 00:05:10', '2020-02-08 00:05:10', '2021-02-08 05:35:10'),
('6dcbb644e5d828b8956a99588ac3c9e1ce1cbe44f8dba5161f4ce4c387e1b475b100120a87009175', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 01:40:36', '2019-12-20 01:40:36', '2020-12-20 07:10:36'),
('6dd83781c21b2f4b8b93329d542ec904a1806447d5e19323c20c7c68ca0c63fe1787a431b3f1796f', 31, 1, 'Foodlans', '[]', 0, '2020-01-24 04:50:25', '2020-01-24 04:50:25', '2021-01-24 10:20:25'),
('6dee8bbd66a6c9ae597f80fe20e90a9305d541339b7ff0bc1e1eff2fd510977f2439cec828be9355', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 08:32:08', '2019-12-19 08:32:08', '2020-12-19 14:02:08'),
('6e0ebfa8cad1975084cf756f270ec178bd9f5c10f895eb275f2ba8321a43c01bfa4055f9a3d0da11', 31, 1, 'Foodlans', '[]', 0, '2020-01-23 01:11:29', '2020-01-23 01:11:29', '2021-01-23 06:41:29'),
('6e1543f7141f11913821a3b27ffe16ec3338c996b683213712a4636fdffe09cd2ae5723ff5bc2c3c', 31, 1, 'Foodlans', '[]', 0, '2020-01-29 02:16:38', '2020-01-29 02:16:38', '2021-01-29 07:46:38'),
('6efe30f0851df22a6ca962678d491c8b2f895ec157230a7254322a9c8332bd858bb44daebadaf427', 9, 1, 'Foodlans', '[]', 0, '2020-01-30 00:37:51', '2020-01-30 00:37:51', '2021-01-30 06:07:51'),
('6f6dd9e1a33473de44932291a2144ca02097d286b665f37cddcce3b4567b0b0fa021ac9bcf719246', 9, 1, 'Foodlans', '[]', 0, '2019-12-28 06:15:32', '2019-12-28 06:15:32', '2020-12-28 11:45:32'),
('6fdf9453a75d550a1c690615bd667767ad2d8405e2f74e91762551764a199c74712e831220b88c7a', 9, 1, 'Foodlans', '[]', 0, '2020-02-01 06:26:50', '2020-02-01 06:26:50', '2021-02-01 11:56:50'),
('703fa5a6784c6d2f291b0f72915e95b6e8698992733a44ea43ef454357cdcfa5044d7ebcd2738517', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 07:07:22', '2019-12-19 07:07:22', '2020-12-19 12:37:22'),
('71a7b7ff1c3d2b3234b3a143c5c4fb6a961b247c54433d2dbdf8e297a5105da616a7bc5012e5f8b1', 9, 1, 'Foodlans', '[]', 0, '2020-01-28 23:40:39', '2020-01-28 23:40:39', '2021-01-29 05:10:39'),
('725b54c103267f04aa1d464368d343035aa158a29403ae4308c67c9b37be7d6684bf40d4e0a54c36', 31, 1, 'Foodlans', '[]', 0, '2020-01-18 02:15:54', '2020-01-18 02:15:54', '2021-01-18 07:45:54'),
('753a3dffa1069852667be545adda3cdd7e9375eefb5a8297e82e12935cb63c5ac2909b8e2be7084a', 31, 1, 'Foodlans', '[]', 0, '2020-01-24 07:04:13', '2020-01-24 07:04:13', '2021-01-24 12:34:13'),
('75a7da5e89aa3f5345d2d0133e32ce241fa50c1b004b6512254ad0552ec5e5d77c34087b1a789880', 31, 1, 'Foodlans', '[]', 0, '2020-02-07 07:49:03', '2020-02-07 07:49:03', '2021-02-07 13:19:03'),
('75aaf4eb4767a72555e143e64b1f54b0e311733f5cc121eabe5c2c953e29472b7b219101f6a14924', 31, 1, 'Foodlans', '[]', 0, '2020-01-28 07:57:41', '2020-01-28 07:57:41', '2021-01-28 13:27:41'),
('75b61aabe52b92006b49b2751b04d9afb9e045677d72931a695bd169079da299d5ce55d35da34a18', 9, 1, 'Foodlans', '[]', 0, '2020-01-08 23:48:54', '2020-01-08 23:48:54', '2021-01-09 05:18:54'),
('761e30c8004edba1f95bf51e8375c1c0a42d6592c8ca8039094ed6b9d7c6ad8c76672ad42359fdf2', 31, 1, 'Foodlans', '[]', 0, '2020-01-18 02:12:56', '2020-01-18 02:12:56', '2021-01-18 07:42:56'),
('76d7daad0cea8e8303c1b1cf8db003f30d4687aa208d8e1f05265f88bc4b13d98153a12d05d550ac', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 00:24:57', '2019-12-20 00:24:57', '2020-12-20 05:54:57'),
('776ae180e6275732c4b6489a86b2ac382e7b0fb2591f1ce837fb6adfaa5b51808a362c3ac9727795', 9, 1, 'Foodlans', '[]', 0, '2020-01-24 00:11:02', '2020-01-24 00:11:02', '2021-01-24 05:41:02'),
('7858523c67def3e31d7be6e10789e6cfe2263146176fd7119f15b1fd578b66cb1ba5a6dfa3f9245e', 9, 1, 'Foodlans', '[]', 0, '2020-01-03 01:31:16', '2020-01-03 01:31:16', '2021-01-03 07:01:16'),
('78e5efaa40790591c982b0b0a3ff7e8f565f57298675c10c6b93ac1795f8c6975e23331ea9a5615b', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 01:57:19', '2019-12-20 01:57:19', '2020-12-20 07:27:19'),
('7ac1689c4242a45995c394c03b874666404fc22f3610475f7df0f0d9f4010383ecc8eeae17bbfdf0', 9, 1, 'Foodlans', '[]', 0, '2019-12-21 07:03:46', '2019-12-21 07:03:46', '2020-12-21 12:33:46'),
('7bcc7487279fb8263e3a0978778ca8fb012ecec7f786220bb0106d9e6a05bdc7825bbc350f4a2c60', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 00:25:43', '2019-12-20 00:25:43', '2020-12-20 05:55:43'),
('7bdffd2b2c164edabeee4ae4dee5a16f0a9575d652665bdec511b5c29997bea79a9447f35b1bafdf', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 07:20:27', '2019-12-19 07:20:27', '2020-12-19 12:50:27'),
('7bf0295d4baa25863e8697c495149b8b9e4a1fd8921a203be0e00753160399ad07f6af15ba6224de', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 03:50:48', '2019-12-19 03:50:48', '2020-12-19 09:20:48'),
('7c321381d6534a7477a78e331cea159801a0ae7a917087a19a7de8b05842bf5e18d4ba529321a893', 9, 1, 'Foodlans', '[]', 0, '2020-01-15 23:24:32', '2020-01-15 23:24:32', '2021-01-16 04:54:32'),
('7c5c9453197093744cef999cebf76e8aafc67e03a2cc39b1e9d39f1dd8acc98eed0a5c63e9418947', 9, 1, 'Foodlans', '[]', 0, '2020-01-24 06:59:34', '2020-01-24 06:59:34', '2021-01-24 12:29:34'),
('7cc4218fc7c7a0ac8b5fa229257287fa5030931f483881a2b915786b0305f5fe7f12c8bb235ddf6c', 31, 1, 'Foodlans', '[]', 0, '2020-01-28 00:27:40', '2020-01-28 00:27:40', '2021-01-28 05:57:40'),
('7d763f0b104eb377219e93dc9a530eea091d3ea9fd58df8d02bc63de00f488faa0cbe55f1d660817', 9, 1, 'Foodlans', '[]', 0, '2020-01-02 05:14:30', '2020-01-02 05:14:30', '2021-01-02 10:44:30'),
('7d776ebaf07dd48f4512e7f763593982cddfe768724f3878103c9ebc825df7d916c628111874cf3d', 9, 1, 'Foodlans', '[]', 0, '2020-02-10 04:11:21', '2020-02-10 04:11:21', '2021-02-10 09:41:21'),
('7f09f7502075a5f5cb351a6a07e5e59ee4625e664f29186f07b4e4058c90e9b94cd480bd6cbd0bbf', 31, 1, 'Foodlans', '[]', 0, '2020-01-23 05:22:19', '2020-01-23 05:22:19', '2021-01-23 10:52:19'),
('7f39495fe31493c3ae115127863d5cf53a6f2d5657898d5aefa03b7c16488d574b27670a8e6b6f32', 9, 1, 'Foodlans', '[]', 0, '2020-01-08 02:37:23', '2020-01-08 02:37:23', '2021-01-08 08:07:23'),
('7fbd82ee899ec637feaed5d0a2cd2a9d89d7404d93cd412cf9c98b4ef88371f565a21cdf690dd760', 9, 1, 'Foodlans', '[]', 0, '2020-02-01 06:50:23', '2020-02-01 06:50:23', '2021-02-01 12:20:23'),
('7ffef2bc7e8b6eb2fc29dcbfb3d060cb2c4c4bb09c7caeeb3236c0d056f8e7ee583b83ede4994f04', 9, 1, 'Foodlans', '[]', 0, '2020-02-03 04:16:21', '2020-02-03 04:16:21', '2021-02-03 09:46:21'),
('801e2d8c3e3396a547ed290b725f322e2d75a1353355e2b85e6b36e3f68ba1a1825b3f7358e8e99e', 9, 1, 'Foodlans', '[]', 0, '2020-01-10 05:49:55', '2020-01-10 05:49:55', '2021-01-10 11:19:55'),
('8048fa7baab2c167af45bfc52f2e8045051f696eb1187e3c4ad18c750ebb2449e54eac1020e88818', 31, 1, 'Foodlans', '[]', 0, '2020-02-10 05:22:54', '2020-02-10 05:22:54', '2021-02-10 10:52:54'),
('8106340ddcacbdbce69e091ae6049a24e9ce50877f1f92c0343225d64166cd947f58a482075709ce', 9, 1, 'Foodlans', '[]', 0, '2020-02-01 00:26:18', '2020-02-01 00:26:18', '2021-02-01 05:56:18'),
('81fccaa6d66106f0437d1204761a8c5af4832eb3753ba9071aa9734f8f569ef99e25a3910c3c3a9c', 31, 1, 'Foodlans', '[]', 0, '2020-02-08 00:16:35', '2020-02-08 00:16:35', '2021-02-08 05:46:35'),
('8418223b4fd06d70c41eb654a7b34436741ad7544240c34ebd19df37fca71bfcf6d3b466d4785ce0', 9, 1, 'Foodlans', '[]', 0, '2020-02-10 06:44:20', '2020-02-10 06:44:20', '2021-02-10 12:14:20'),
('84eb922579f10c5284c679101b64731260550f3a5498d5c08bdc10907956ebfa986bfd95962fac1f', 9, 1, 'Foodlans', '[]', 0, '2020-02-11 05:07:13', '2020-02-11 05:07:13', '2021-02-11 10:37:13'),
('855e9b76d17f6711cbbc10e22226d0f4516076cdf1d8408401dc6b7950d9cd1f4ca82a333bdb26da', 31, 1, 'Foodlans', '[]', 0, '2020-01-23 05:13:24', '2020-01-23 05:13:24', '2021-01-23 10:43:24'),
('867c2547bc175a0912e0f4552d0212fddd0580f2c00d199e3a437a2df231fe230146b59b83bb135c', 9, 1, 'Foodlans', '[]', 0, '2019-12-24 06:04:18', '2019-12-24 06:04:18', '2020-12-24 11:34:18'),
('86a02136d6b3b6360dbab38eff251842cd03246e7715c8a23572da19890d4728affee695abe198b9', 9, 1, 'Foodlans', '[]', 0, '2020-02-05 08:37:45', '2020-02-05 08:37:45', '2021-02-05 14:07:45'),
('872c2b3a4ce7e55e0d58c62717470e291f973b156eee13774f58a1ddca875b8f17508ddcc7641082', 9, 1, 'Foodlans', '[]', 0, '2020-01-01 00:33:31', '2020-01-01 00:33:31', '2021-01-01 06:03:31'),
('8743b8e796115b80cd52e867753463d1cf5813c0a109f30692f413b0619470e9496343099efe6c32', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 07:30:34', '2019-12-19 07:30:34', '2020-12-19 13:00:34'),
('89338499921f8ebe19c1d8096258b16de21f88160c24c7fc3f8c7a5f904110d27b20b5adf56643d2', 9, 1, 'Foodlans', '[]', 0, '2019-12-27 03:52:27', '2019-12-27 03:52:27', '2020-12-27 09:22:27'),
('89918f8b4593f7d7b0a53b97369882f83e13ba1fc5ce31c1a02ed95db39476e8f5eaed685220bd40', 2, 1, 'Foodlans', '[]', 0, '2019-11-17 23:29:47', '2019-11-17 23:29:47', '2020-11-18 04:59:47'),
('8a3e9d5164a45a30d449f0ad592d62820dbad08186875b33ef3a5177f03116fba185d8f68e0d5193', 31, 1, 'Foodlans', '[]', 0, '2020-01-23 04:54:07', '2020-01-23 04:54:07', '2021-01-23 10:24:07'),
('8b15ada3bfd66afc1533526e618181ee472b91d3d68f4d8a2143a28c7795f6032c840beb4bf61057', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 02:00:14', '2019-12-20 02:00:14', '2020-12-20 07:30:14'),
('8b4ba248c6f402215587ab9b00d30668130e39d1e8956c40d5c762406eeb919d1470122626991747', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 02:10:24', '2019-12-20 02:10:24', '2020-12-20 07:40:24'),
('8b8d7e3a0432cb0199d5b459da398d2cb34a4b79a44c793372ffee1cd6f60aeeb79125bf5c980e43', 23, 1, 'Foodlans', '[]', 0, '2020-01-08 03:53:39', '2020-01-08 03:53:39', '2021-01-08 09:23:39'),
('8c3a21c62746954786f5848902cc0e6074bb6c377d587fc87efd0110a155604e743649b751449947', 31, 1, 'Foodlans', '[]', 0, '2020-01-24 05:36:34', '2020-01-24 05:36:34', '2021-01-24 11:06:34'),
('8ce0b6d4acedb7d0a272d49624ccc8c7040fe9681b6cb75f0e90bd19031dae81d6f6e09943046706', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 02:02:47', '2019-12-20 02:02:47', '2020-12-20 07:32:47'),
('8dd5b62746841699b06c4120c73cae158cdde65981e9329c57ab896734c7d8c713dd63aa8431be21', 9, 1, 'Foodlans', '[]', 0, '2020-02-10 05:26:22', '2020-02-10 05:26:22', '2021-02-10 10:56:22'),
('8de2c02bb11e348b9847cf69522b501b0bd5cc0d4c7f2507fc1e0e7dc630e977262c3e119deda451', 9, 1, 'Foodlans', '[]', 0, '2020-01-24 07:03:05', '2020-01-24 07:03:05', '2021-01-24 12:33:05'),
('8e16fe0f691b9eeff40f5f39fab5f3659b32307cb12a64bef9aa98b0be836bf39fa881c0be75fd50', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 02:22:28', '2019-12-19 02:22:28', '2020-12-19 07:52:28'),
('8e254542ae3bdcf8414d5b6f058a2abb9fe117d487f0057f4b0f54250d2819a540eaa6007dab1d1e', 29, 1, 'Foodlans', '[]', 0, '2020-01-16 00:45:49', '2020-01-16 00:45:49', '2021-01-16 06:15:49'),
('8fe6988e5c62c8ab4adaa25aed41022a2b3b453c5c116443e2330dd13922ae54cdd0d9e53c016156', 31, 1, 'Foodlans', '[]', 0, '2020-01-18 02:25:27', '2020-01-18 02:25:27', '2021-01-18 07:55:27'),
('905e9516cf802f7fb7fb7d510de73c3f5a62c1c6280b3e9da63dc5fba6b71878627136eb6e67cd0d', 9, 1, 'Foodlans', '[]', 0, '2020-02-03 04:16:03', '2020-02-03 04:16:03', '2021-02-03 09:46:03'),
('943a3f032be5666cb55cb205482b9b37da5117da6803b3048edf7cf368441b353e1790f5dc5fe0d9', 9, 1, 'Foodlans', '[]', 0, '2020-01-01 00:26:31', '2020-01-01 00:26:31', '2021-01-01 05:56:31'),
('94791c23ed41343303ee9b6fa31202911a4475c497e2e6984d03cbe6e7468d513f7705858275740c', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 02:31:00', '2019-12-19 02:31:00', '2020-12-19 08:01:00'),
('953cba935a42b058594dfd54c1e7c8360bab74e3127a930435009e9e24847f004d5ba5f184288531', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 04:59:11', '2019-12-19 04:59:11', '2020-12-19 10:29:11'),
('958dd622efa3077e621b3c8cbc8180e9404eaab3160891c5543718f69edbe7500a16833f40d00444', 31, 1, 'Foodlans', '[]', 0, '2020-01-28 04:32:46', '2020-01-28 04:32:46', '2021-01-28 10:02:46'),
('959a39bbbad4ecbdc960f3f8c91c1408199f90fa39b716a0d5e7f9500156a3bc671430e2ac450f54', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 00:54:22', '2019-12-20 00:54:22', '2020-12-20 06:24:22'),
('9628bfc0335b8cde8eae8c087cc9bd4bffc6776b125d08fdefc14cb55e0246171010d7e36f4c8c49', 31, 1, 'Foodlans', '[]', 0, '2020-01-18 02:21:51', '2020-01-18 02:21:51', '2021-01-18 07:51:51'),
('9632dd91b646879145c3771477adc7043682eae9255ffad811631c5e52f895a819e00dd83fbcc4e0', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 00:07:25', '2019-12-20 00:07:25', '2020-12-20 05:37:25'),
('96c66270ba7f5c3e32da944d0d744e819bfbe54a3834d58a4eb9ae6b0fca087a52d14408612ea721', 9, 1, 'Foodlans', '[]', 0, '2020-02-03 00:52:10', '2020-02-03 00:52:10', '2021-02-03 06:22:10'),
('974d2bd46d92abd39dc2bce0578083308b0923de96096ee5c8fc2652a8fd058aaec9599f094f1f1a', 31, 1, 'Foodlans', '[]', 0, '2020-02-07 08:00:23', '2020-02-07 08:00:23', '2021-02-07 13:30:23'),
('994d71300a5a2ad9aa60a49a0d8272cff22beb6ca89a9c245d9a07e19b116547eba9ecb73f1c3bf1', 29, 1, 'Foodlans', '[]', 0, '2020-01-15 23:28:25', '2020-01-15 23:28:25', '2021-01-16 04:58:25'),
('9a9ea9853678b93a6ca1a3dd5f78baf1c8a12f780569bae910f1ec1092b69f8f366222d2e2a172d9', 9, 1, 'Foodlans', '[]', 0, '2019-12-21 07:02:45', '2019-12-21 07:02:45', '2020-12-21 12:32:45'),
('9b1e898f22d1f3ca2d9005762ee8683aac20068b81deb433543eb99d564e9cc164810ceb8b5a6de1', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 08:02:30', '2019-12-19 08:02:30', '2020-12-19 13:32:30'),
('9b6a0fcfdcfea48ef1035537ed2ea8eea4f1f3d92e0a5b9f1fa37500da54223067f368a17767622f', 9, 1, 'Foodlans', '[]', 0, '2020-01-03 00:22:35', '2020-01-03 00:22:35', '2021-01-03 05:52:35'),
('9c7626018c70fdfa3dd965e421b9da1e6e32b2c3813182c28fa3105e4fb4a7a7eb92acda4280d36d', 31, 1, 'Foodlans', '[]', 0, '2020-01-18 02:15:30', '2020-01-18 02:15:30', '2021-01-18 07:45:30'),
('9e0f938f7f84464968626d37044cdb174cc5ec15336211cdb3992d3c4532ef41bff1a66b03233afc', 31, 1, 'Foodlans', '[]', 0, '2020-01-23 04:10:29', '2020-01-23 04:10:29', '2021-01-23 09:40:29'),
('9e47cff22c20bfde09a4d90e27c452c743c361fe16b265406eb2c171de9f50a5d249d1eab2fb6103', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 03:55:56', '2019-12-20 03:55:56', '2020-12-20 09:25:56'),
('9eb34fe4766df73c0b28a96b08d03c7d1cdd31297a475b10f17410578c5631c45f918cde8623a823', 31, 1, 'Foodlans', '[]', 0, '2020-02-10 04:12:57', '2020-02-10 04:12:57', '2021-02-10 09:42:57'),
('9eba59b17310b265532e94d182f90e5b5c14dd1ca116af1590b5360a7752fa2c22967e5cd7df4540', 9, 1, 'Foodlans', '[]', 0, '2020-01-29 05:49:41', '2020-01-29 05:49:41', '2021-01-29 11:19:41'),
('9ecf8a1e2e02beed2f2bfebfd51735a0e534e873e0ec0ebf9282ca50ac27b6e63dfd72e0caa143ec', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 04:50:15', '2019-12-19 04:50:15', '2020-12-19 10:20:15'),
('9f1d5b653ce5e541a9d589374df12113e8256cb9ac0f1f337ae96b4c7fd3b53393240f43a824492f', 18, 1, 'Foodlans', '[]', 0, '2020-01-05 01:16:51', '2020-01-05 01:16:51', '2021-01-05 06:46:51'),
('a0273775de553076c6d3e2344f1b737cbf18659fff02f0dd8fb235ee033ada7630408da97335c0f6', 31, 1, 'Foodlans', '[]', 0, '2020-01-23 03:58:21', '2020-01-23 03:58:21', '2021-01-23 09:28:21'),
('a04103ea8d6546db1a31e424592880508e7a123436525dda5db888ad0cadad8cdc746c4cd5e552d4', 9, 1, 'Foodlans', '[]', 0, '2020-01-24 01:11:51', '2020-01-24 01:11:51', '2021-01-24 06:41:51'),
('a161345bcee7f395a19681b0ba454e702f7388b1f937a6080e357298c27c877a9c59e590ac28ff68', 29, 1, 'Foodlans', '[]', 0, '2020-01-16 23:14:17', '2020-01-16 23:14:17', '2021-01-17 04:44:17'),
('a181e6c65f9befbc76964d184cff9bd47279d5fcecc2d45853b84d08571ac02f80c2b96e7b9654b2', 9, 1, 'Foodlans', '[]', 0, '2020-01-02 05:22:29', '2020-01-02 05:22:29', '2021-01-02 10:52:29'),
('a18abcdb46e76b261550da3ef8a1687c9bb20df41c31224996dab7026104c881c8bbb8d64344457f', 31, 1, 'Foodlans', '[]', 0, '2020-01-18 02:25:46', '2020-01-18 02:25:46', '2021-01-18 07:55:46'),
('a18d68c44e7c2211b77c87225efd5f0fe532bec8743c5646e86569f65615726e8f57ea9de94425c4', 31, 1, 'Foodlans', '[]', 0, '2020-02-03 00:12:26', '2020-02-03 00:12:26', '2021-02-03 05:42:26'),
('a1ad33d147523d97c2dd91bf1130b1061bbd592c589a038ddd57ba5f877f64f63a2756112b50e7c6', 9, 1, 'Foodlans', '[]', 0, '2020-02-03 08:24:26', '2020-02-03 08:24:26', '2021-02-03 13:54:26'),
('a2cda40da392da4b60575d5760a9da812180ebd1295cf0b03623f85abf9917c7e0d4b84096b9f4b6', 9, 1, 'Foodlans', '[]', 0, '2019-12-26 06:59:05', '2019-12-26 06:59:05', '2020-12-26 12:29:05'),
('a2d640816aec39ed00ad48a614c66aee5b5f4c045f12d0b7fb5dcd32622cc0a276d96d6a637db1f8', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 00:17:33', '2019-12-20 00:17:33', '2020-12-20 05:47:33'),
('a2f951e20239d2b8b723a92001f7eb9c3c5a715057055fbca56008eaf2232df91524dd593ca80503', 11, 1, 'Foodlans', '[]', 0, '2020-01-02 04:51:35', '2020-01-02 04:51:35', '2021-01-02 10:21:35'),
('a320b66e79d46527eb2fec000f700cfe23f3506f10503fbd5b3374fcacd887b4b26dcf907f4e9eac', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 00:03:14', '2019-12-20 00:03:14', '2020-12-20 05:33:14'),
('a322c1d30b53a287f08e6d1b3455fc3c113096da9454cfa96e76d75380887153b876129012c3e12d', 31, 1, 'Foodlans', '[]', 0, '2020-02-03 00:30:50', '2020-02-03 00:30:50', '2021-02-03 06:00:50'),
('a349f6b2bca349a7547b12c8a7d65365710531fb5336079aeb88802adbeb2bb65ee912faa147cf80', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 08:24:42', '2019-12-19 08:24:42', '2020-12-19 13:54:42'),
('a3819d412794b668d1be46ef1d8a83920b5a8f7afcdf2d8e3ffd3042ccd7e721dcef1828765e3a7a', 9, 1, 'Foodlans', '[]', 0, '2020-01-23 05:34:50', '2020-01-23 05:34:50', '2021-01-23 11:04:50'),
('a3cfcfcd3e8bc42d08bfe12cc4c02bab7f0dc681076dbe3fb608e3ff15d3102d47f79a4385e98c7b', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 03:39:12', '2019-12-19 03:39:12', '2020-12-19 09:09:12'),
('a47a8743c6aca033e6fa729c9e1efbba6cff7478f05551fb8aa1f3e4205f28a178a97b83a1e0aedf', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 00:13:17', '2019-12-20 00:13:17', '2020-12-20 05:43:17'),
('a4bb71456e31afa0370c5ef98ec7278d652268de1c5a871965bc9c9268304e4fcd1c8aa69826c8ae', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 00:20:58', '2019-12-20 00:20:58', '2020-12-20 05:50:58'),
('a57760be8ca85e6a4f60cccf6624c8f2d0c43845b4462ab71bb59e4b0a0b09375b746c2f76c5fbb9', 9, 1, 'Foodlans', '[]', 0, '2020-01-07 00:22:44', '2020-01-07 00:22:44', '2021-01-07 05:52:44'),
('a59ecd67685f36e57208371c59e0de769d369360efdbe7646211411273ab1373f1adad94f92294c9', 29, 1, 'Foodlans', '[]', 0, '2020-01-16 08:07:21', '2020-01-16 08:07:21', '2021-01-16 13:37:21'),
('a5b781bf8d863c5b520e2ea96f81702ff412964881031436eaed5dbf3daf4fa6384bc929f5faea0e', 9, 1, 'Foodlans', '[]', 0, '2020-02-08 00:10:32', '2020-02-08 00:10:32', '2021-02-08 05:40:32'),
('a5e0af7ba7aa4810dc167e5a8c54dd946e126b687682698694d89e78f42678b9de5a9d9c26f06fc1', 31, 1, 'Foodlans', '[]', 0, '2020-02-03 00:22:26', '2020-02-03 00:22:26', '2021-02-03 05:52:26'),
('a6a156dd3b554269847ab57afdf83784bbc88a07812658d0f13013959de5c90172ffa7c9b9688f0f', 31, 1, 'Foodlans', '[]', 0, '2020-02-08 00:06:28', '2020-02-08 00:06:28', '2021-02-08 05:36:28'),
('a702346d0f61e67d361b9013e6fe911aba00699eb830265446b655c26055ca6182cf9f8a6481fc51', 31, 1, 'Foodlans', '[]', 0, '2020-01-28 08:28:23', '2020-01-28 08:28:23', '2021-01-28 13:58:23'),
('a80c5fa4fb7baf2409be287a4c72079e2ee3ff2e41d593a9b62c408349383d4a1febfe6c3f525c8c', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 05:50:02', '2019-12-19 05:50:02', '2020-12-19 11:20:02'),
('a9a6ced81a76771e5bf2b44557cfd9243e3e7282464d240f2676ab0eb000b8a57331dd30b49a467a', 31, 1, 'Foodlans', '[]', 0, '2020-01-23 04:29:04', '2020-01-23 04:29:04', '2021-01-23 09:59:04'),
('a9ddc0af3091d617bcb3984a3427fefc16f94c9fb806c0fce0b6f9993609e5ea725a4cefcf1d99de', 9, 1, 'Foodlans', '[]', 0, '2020-01-23 08:13:44', '2020-01-23 08:13:44', '2021-01-23 13:43:44'),
('aacb8eb8e714dc0dc022c5a7cdbaaf6c17382f4aebe49bd3ed8414cb2cca30c043abaedd190d779f', 15, 1, 'Foodlans', '[]', 0, '2020-01-03 05:57:03', '2020-01-03 05:57:03', '2021-01-03 11:27:03'),
('ab5ea1504909e45356973980453fa5b09ad6b34f88de5afbbc781bef7c63ba2cab0748d8efdb78ab', 23, 1, 'Foodlans', '[]', 0, '2020-01-08 02:17:45', '2020-01-08 02:17:45', '2021-01-08 07:47:45'),
('abfe2a150c101f355fd2f5a8514634bfd8bf63c596be4db75cb3fcf895a84cfb7057f1b7191c61db', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 03:42:26', '2019-12-20 03:42:26', '2020-12-20 09:12:26'),
('ac7cd3211d34fbaccfae564b7b9e2cd5cbc878fc55789f23628dc5b29540cf395e4346ecc1d5c86c', 31, 1, 'Foodlans', '[]', 0, '2020-01-24 05:34:39', '2020-01-24 05:34:39', '2021-01-24 11:04:39'),
('afc56190a4fa9460a5cde4e82e7ae94cc0dbd1d2307682aeeabdb6d4a757803c6142655a40af7b0b', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 01:52:30', '2019-12-20 01:52:30', '2020-12-20 07:22:30'),
('b07f367c82a2ee6f654aecd75da2e535b7821ef177c8d79fe044eeed2f669f15605a561bc061bdf3', 9, 1, 'Foodlans', '[]', 0, '2020-01-29 06:14:10', '2020-01-29 06:14:10', '2021-01-29 11:44:10'),
('b1286eee8bcc1dfcd216e292db6151b8a2484d7825ae2aa087ee5bd708e220a2504b79ca4bd45214', 9, 1, 'Foodlans', '[]', 0, '2019-12-24 00:25:41', '2019-12-24 00:25:41', '2020-12-24 05:55:41'),
('b1c222438a6a78e3c7dfb710ee2924b457f298e6f9a2d45104ae7c7248d8497c332a64dd9df3449c', 9, 1, 'Foodlans', '[]', 0, '2020-01-25 01:42:37', '2020-01-25 01:42:37', '2021-01-25 07:12:37'),
('b2567da6a489fac27fe07b2f089a9e99426dede999fdfd67251839aa79bbbee6574b378bc891e9d4', 31, 1, 'Foodlans', '[]', 0, '2020-01-24 05:36:27', '2020-01-24 05:36:27', '2021-01-24 11:06:27'),
('b281f41e3062ad41baa3adb7c7b3ee6614b7930cf0332460ffd545bf241fe4c815ad62ec898d2f4d', 31, 1, 'Foodlans', '[]', 0, '2020-01-23 05:05:53', '2020-01-23 05:05:53', '2021-01-23 10:35:53'),
('b38518c7265bfe8deebac68ce053652a14d66f78d1641b796d155dc5f418e75f84afe8d1276de11a', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 23:30:31', '2019-12-19 23:30:31', '2020-12-20 05:00:31'),
('b47e6b219c16db2fbfc8a2f87f13a366a6e8410fe674ad680355ff16ee566378c51b0ff511757264', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 01:48:51', '2019-12-20 01:48:51', '2020-12-20 07:18:51'),
('b48e8b336e682862d1e3d73f2da8008a090aefe0e7cdf21269a05767059c806a7eb2751728d9c883', 9, 1, 'Foodlans', '[]', 0, '2020-01-01 00:24:57', '2020-01-01 00:24:57', '2021-01-01 05:54:57'),
('b4f6265f61eeaabe82a53fc32755507bd55d0975cb510c2fe48db2ef7baef808b33f45f57ca508e4', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 00:04:01', '2019-12-20 00:04:01', '2020-12-20 05:34:01'),
('b698bbd8d195fd40720d9937e880b79ed3bd87017443a130b177dab7267c8d8569ca1fdd86a15682', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 08:33:44', '2019-12-19 08:33:44', '2020-12-19 14:03:44'),
('b6ce89814c6cc74bc0075ad9fef94c28fd14e20ac371264569ac7acc874ced2b37e767f2f6f5512b', 29, 1, 'Foodlans', '[]', 0, '2020-01-16 00:45:33', '2020-01-16 00:45:33', '2021-01-16 06:15:33');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('b7998b53fc9e4487ad904c6f22fa4f6cd9d8d33a4db4f94a0f88bee8195de94d90f34214c9c7045a', 9, 1, 'Foodlans', '[]', 0, '2020-01-07 23:33:19', '2020-01-07 23:33:19', '2021-01-08 05:03:19'),
('b7a3f593b45cf8625d7a5ef181ea06389773cc2bea84d81ef4d34d3a986bf9d37f0a23512b9d1101', 23, 1, 'Foodlans', '[]', 0, '2020-01-08 02:08:48', '2020-01-08 02:08:48', '2021-01-08 07:38:48'),
('b81fd30b609395ea5e1d63b6a3bd638634bd7af28e1c4e02ab1efb259902a342b58ad0b7248a36f3', 31, 1, 'Foodlans', '[]', 0, '2020-01-18 02:18:54', '2020-01-18 02:18:54', '2021-01-18 07:48:54'),
('b85ba4f4e67c3c516285f58cfae452a87f29f41740dff09720d28d3b6dbfb5288eed5b9b614aa042', 9, 1, 'Foodlans', '[]', 0, '2020-01-23 06:38:52', '2020-01-23 06:38:52', '2021-01-23 12:08:52'),
('b87d64b1858368828a8485ae1d73d8a9e84282427bd46df13f2939fb37a57c0cbcb741b895173a8a', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 02:23:00', '2019-12-20 02:23:00', '2020-12-20 07:53:00'),
('b9656c81420609a679e38baf3189b2d8e47f3b7c2fd0ee838026ba09acc322c8b89a57cd79bc18a5', 9, 1, 'Foodlans', '[]', 0, '2020-01-19 23:54:50', '2020-01-19 23:54:50', '2021-01-20 05:24:50'),
('b9bced0679f4886db8c0f62b18f8015b138990e89627faa2fdcd196454aba5a76bd1a56146e6a677', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 03:51:17', '2019-12-19 03:51:17', '2020-12-19 09:21:17'),
('b9cde9872769b1f28b08d539a244cb82fe8b9d6429b678a269dd44ab613fa484c93391fb25ce3558', 9, 1, 'Foodlans', '[]', 0, '2020-01-07 01:06:06', '2020-01-07 01:06:06', '2021-01-07 06:36:06'),
('baf7d4b533a7ccfd55c6789fde522f3d5a53af4f37605f70b9089fb690aa10fc9441749c5b6e8295', 31, 1, 'Foodlans', '[]', 0, '2020-01-23 01:02:08', '2020-01-23 01:02:08', '2021-01-23 06:32:08'),
('bb521c13064c685af255f3ff1fc95549ce44b969de81c14991ad849885eb8147985bdb80c82de0b1', 31, 1, 'Foodlans', '[]', 0, '2020-01-23 05:24:04', '2020-01-23 05:24:04', '2021-01-23 10:54:04'),
('bba42a895646fc868a5802cb0d66ae06af0c2c024241c96c7020ccb56af1e76bd86fbd036cad327c', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 02:04:22', '2019-12-20 02:04:22', '2020-12-20 07:34:22'),
('bc9397649187185c8169a2d54abb20d640f250ca3c6b4409d79472cf0d8e8c7903e653b39dfdd87d', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 01:51:16', '2019-12-20 01:51:16', '2020-12-20 07:21:16'),
('bd16baf3c0d9a6874c786345e04f2334b39afffbbcfa152f082846165bfc25c26ea424dcd74ea024', 31, 1, 'Foodlans', '[]', 0, '2020-01-24 07:04:29', '2020-01-24 07:04:29', '2021-01-24 12:34:29'),
('bde6e2b52bfb1936d263bb40e6b1969dd0203e34a6f4f901e352a421f41ac05f713474798b2e9c83', 31, 1, 'Foodlans', '[]', 0, '2020-02-10 23:15:43', '2020-02-10 23:15:43', '2021-02-11 04:45:43'),
('c02e213ad31682415ce26959e9569e6a2d73c75ae6875a00bee541bb2869845bbabbed11214cf8e0', 9, 1, 'Foodlans', '[]', 0, '2020-01-24 01:14:56', '2020-01-24 01:14:56', '2021-01-24 06:44:56'),
('c0cb486e4538048c37e57c7159f259387e6424041ee89abe58255d62806e4e5874ec1686a2a18c28', 9, 1, 'Foodlans', '[]', 0, '2020-01-01 00:06:37', '2020-01-01 00:06:37', '2021-01-01 05:36:37'),
('c0ee6e73db01323b6b63afc39c689d00545f0a0b339513f82917abeb6fd5d232ce33921511205592', 31, 1, 'Foodlans', '[]', 0, '2020-01-23 04:27:23', '2020-01-23 04:27:23', '2021-01-23 09:57:23'),
('c18629f37b0e34a53eefaf71863b5eef7f777e87eac1ed0718d7f78e86afd002af66f0813d38119c', 9, 1, 'Foodlans', '[]', 0, '2020-01-02 04:38:13', '2020-01-02 04:38:13', '2021-01-02 10:08:13'),
('c1cd8a17c56bc7a18e3159ef349dcb3c9fe297453c8beabf09db98274d96f3aeea6dd074e246ff8c', 9, 1, 'Foodlans', '[]', 0, '2020-01-03 00:43:50', '2020-01-03 00:43:50', '2021-01-03 06:13:50'),
('c34855b66bc3c5edab7bf345eccecd916b506329267a067de42fcae16adc5c4e761858150c3046ed', 9, 1, 'Foodlans', '[]', 0, '2019-12-23 23:34:32', '2019-12-23 23:34:32', '2020-12-24 05:04:32'),
('c39c506932905bbf73c173e69389e4f1ca5551245686a75a5504a6da2983e250ccf11a35dec6ace9', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 00:52:51', '2019-12-20 00:52:51', '2020-12-20 06:22:51'),
('c41b57294e2d2c1dea9afb2e523957f418607052f59b67111a247cb008fd19d893bdc2fa8a75b992', 9, 1, 'Foodlans', '[]', 0, '2020-01-02 07:29:40', '2020-01-02 07:29:40', '2021-01-02 12:59:40'),
('c4a8ba8e98d792b66ecc6d00c5f6187ae89c3d2fa94b5b259ea1c0d6119197207cc4ddba0cf429a4', 9, 1, 'Foodlans', '[]', 0, '2019-12-31 07:42:43', '2019-12-31 07:42:43', '2020-12-31 13:12:43'),
('c6d1729cd1c73fe8ac433147f2416fd77b86c16bf81d3d1c120050cac8d790baaf1716c4b6498cd6', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 08:37:55', '2019-12-20 08:37:55', '2020-12-20 14:07:55'),
('c6d7359c05a77bdce74fb040ed14ee6a462427873f51dc97b0da8e57acf743178f5d407926466a4a', 31, 1, 'Foodlans', '[]', 0, '2020-01-23 04:49:45', '2020-01-23 04:49:45', '2021-01-23 10:19:45'),
('c73ff9537d6837cedbc99e6c5e745be2be4518b7936a9d397eda6801f364319533b3f59fecbf0976', 9, 1, 'Foodlans', '[]', 0, '2020-01-01 08:21:04', '2020-01-01 08:21:04', '2021-01-01 13:51:04'),
('c8041756f1b434232ee5eed8e57941d3c86ca1cfa62bc3ddbf46531c8224736b4494538b750fadc6', 31, 1, 'Foodlans', '[]', 0, '2020-01-18 02:34:22', '2020-01-18 02:34:22', '2021-01-18 08:04:22'),
('c87cca32f41c476691de0badbfd9cceddaf3414f57ce0fff4b23ffe061706a92a72e96748e44c1a7', 9, 1, 'Foodlans', '[]', 0, '2019-12-31 05:40:09', '2019-12-31 05:40:09', '2020-12-31 11:10:09'),
('c8a91d37e27b81f6780e2ab5b3e9f6343b9d15312ff5f105d11e18ce1a6ebf5deb4fdc32ce729e7e', 9, 1, 'Foodlans', '[]', 0, '2020-01-05 00:47:30', '2020-01-05 00:47:30', '2021-01-05 06:17:30'),
('c93321b122e8f48e97f3858178e2208a3f6d2ea4954006bf95df547c4c4343618abe854dc83366ef', 29, 1, 'Foodlans', '[]', 0, '2020-01-10 04:42:16', '2020-01-10 04:42:16', '2021-01-10 10:12:16'),
('c9339e5d5837caa2e2ffbe56e3c761fb87f04caf48dff212488aa55dc05a06c07a97d344fee21b14', 9, 1, 'Foodlans', '[]', 0, '2020-01-02 06:31:14', '2020-01-02 06:31:14', '2021-01-02 12:01:14'),
('c95c503dee350d0733f9bde46f0085053f8228d2e093df6f5b2b6a6b3084a65a3556ba8e6521c7ce', 31, 1, 'Foodlans', '[]', 0, '2020-01-18 02:16:03', '2020-01-18 02:16:03', '2021-01-18 07:46:03'),
('c98987e3692424fd40ca90c6f53bbc641d3eb334ca6fe22ff82c80bfe1cc4df33ce401c60544818c', 29, 1, 'Foodlans', '[]', 0, '2020-01-17 04:06:13', '2020-01-17 04:06:13', '2021-01-17 09:36:13'),
('ca9f8978b063ef7dd9933143c68207057f18b24213b45812bcee51a4efac69f8bda7b40ff2f0945e', 9, 1, 'Foodlans', '[]', 0, '2020-01-23 05:47:33', '2020-01-23 05:47:33', '2021-01-23 11:17:33'),
('cba60fa1fea25aa455c9cb3c3ec81277d8baa783dfdf63fa001fef57eefcea9eeec29130d80159f5', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 07:33:08', '2019-12-19 07:33:08', '2020-12-19 13:03:08'),
('cbdebb8d43716fea309ba40bafd7c94d922ce7e227586fe5cf7951b2308852607e93d5ce1177b858', 19, 1, 'Foodlans', '[]', 0, '2020-01-05 01:20:51', '2020-01-05 01:20:51', '2021-01-05 06:50:51'),
('cd09fcb9e309a70615f9e8b85dfabb7007880a9b8e822d4e46a421d8be2c9f2c6f1724af520737fa', 9, 1, 'Foodlans', '[]', 0, '2020-01-27 03:53:34', '2020-01-27 03:53:34', '2021-01-27 09:23:34'),
('cda2825d34974f10c487c038741e1e06e677edd54a0c14d86f97428fca6bb02cdc6eef1f169befdd', 11, 1, 'Foodlans', '[]', 0, '2020-01-05 05:25:09', '2020-01-05 05:25:09', '2021-01-05 10:55:09'),
('ce5bdecfa6c0cafd23fedf5bef9eed71d453f3a7df7a82f2dae31f107f3e76de214c298dae061601', 9, 1, 'Foodlans', '[]', 0, '2020-01-24 00:12:41', '2020-01-24 00:12:41', '2021-01-24 05:42:41'),
('ceac23a532ac68d2d9441579b47730e69d1eecd0d19bc791ea9759958cd9991f41a5b70f82e80c7c', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 00:24:58', '2019-12-20 00:24:58', '2020-12-20 05:54:58'),
('cf18c1e1688b656b83dc77062069a56896fb94cc5f9b54d2c0d1ef451669005397e077de0f06ed30', 9, 1, 'Foodlans', '[]', 0, '2020-02-03 06:02:52', '2020-02-03 06:02:52', '2021-02-03 11:32:52'),
('cfb1366968c62fc6a214280da2394721532ee24463f4f730acf7adaba92b3f1f97feb8e4de12f280', 23, 1, 'Foodlans', '[]', 0, '2020-01-08 09:02:32', '2020-01-08 09:02:32', '2021-01-08 14:32:32'),
('d009f0167fb9ee3beff2f31441194ffe5566cf13b475fd3320e5018fe46c6a3b3c28d463b38ebe01', 9, 1, 'Foodlans', '[]', 0, '2020-02-10 04:11:07', '2020-02-10 04:11:07', '2021-02-10 09:41:07'),
('d26d020bad73c2835d19db3bd80351e9cbfaafb393449d7228771b906d22d29684e9dba1e9af6ff3', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 00:18:41', '2019-12-20 00:18:41', '2020-12-20 05:48:41'),
('d2d73b62cd3d8d8f8fa64f4cd15ff86e9a19f0d287aa85fd68e9e11195b0011e9c3cb31c0058b90d', 31, 1, 'Foodlans', '[]', 0, '2020-01-18 02:03:11', '2020-01-18 02:03:11', '2021-01-18 07:33:11'),
('d3945ad3d212e97574b7eb49f5a2d9655c87f8f45d8931ecaa22510e25b9fea02afdbb61a50e9909', 31, 1, 'Foodlans', '[]', 0, '2020-01-23 02:30:16', '2020-01-23 02:30:16', '2021-01-23 08:00:16'),
('d4334d017de75c55d101c4e01b2b416446df6908d4ba75ec58937b5999cbb5a5efb28d025ee54001', 9, 1, 'Foodlans', '[]', 0, '2020-02-08 00:49:15', '2020-02-08 00:49:15', '2021-02-08 06:19:15'),
('d4ec02e79d4b5ed8c61801c60b5dfce4c3c6537bfac5e448aea56463b939b1b9f952fbc32981ebc2', 9, 1, 'Foodlans', '[]', 0, '2020-01-30 05:26:23', '2020-01-30 05:26:23', '2021-01-30 10:56:23'),
('d5538fe716ea6307dad4b473927446c00ce286332c084d71ad006091761485ab57bc605d36c6bf36', 9, 1, 'Foodlans', '[]', 0, '2020-01-08 07:48:42', '2020-01-08 07:48:42', '2021-01-08 13:18:42'),
('d5f9bbdcac51e25fd72cf6bf50dca90ad7caa64fbd3caeea0007faf71a3345f240a599103e8de820', 31, 1, 'Foodlans', '[]', 0, '2020-01-24 07:04:50', '2020-01-24 07:04:50', '2021-01-24 12:34:50'),
('d61cea0246659198c9b55ac29afbc1c8279c56e67653efae0d86afa11d8b93451939be862f3d1453', 23, 1, 'Foodlans', '[]', 0, '2020-02-02 23:46:19', '2020-02-02 23:46:19', '2021-02-03 05:16:19'),
('d780c27b0c93419eee95a4ef8720a44bcaea7548c5bc191ecb047163110e0e44efbe55a1212a039d', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 07:35:35', '2019-12-19 07:35:35', '2020-12-19 13:05:35'),
('d7986e5fba8cf87459eb66c6b5d7049bd09caae91c35411f8724ea8d63fad54a42bf64c7abfbc7f5', 5, 1, 'Foodlans', '[]', 0, '2020-01-31 02:09:59', '2020-01-31 02:09:59', '2021-01-31 07:39:59'),
('d82ca1d64f8f6e7e54cbfa4ca63eb447d2f706e328591ef7dcb9a0c8fb4ad66c453540b3ef00f77a', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 23:33:21', '2019-12-19 23:33:21', '2020-12-20 05:03:21'),
('d8e7fecfddd8409c58ca868c4c80c5ce2649525240f4af384e5d87a139c1aa80549a9c09ebed2986', 9, 1, 'Foodlans', '[]', 0, '2019-12-31 05:44:53', '2019-12-31 05:44:53', '2020-12-31 11:14:53'),
('d91c9be5ee5930e36b1d9d72fc098330826ca9f136190ea33e0137d466ae14560febea52d3b85859', 31, 1, 'Foodlans', '[]', 0, '2020-01-24 04:09:33', '2020-01-24 04:09:33', '2021-01-24 09:39:33'),
('db027e1595f1c730b2dfdc7d13e66d553381b673b6ce85ef01c5ebd1172bae1ecba30392bb787d44', 31, 1, 'Foodlans', '[]', 0, '2020-01-24 23:36:16', '2020-01-24 23:36:16', '2021-01-25 05:06:16'),
('dbb4bc72a2a4ace9f5a92e24041600bb9370e2756c7e1cd9125f5fcb266c811e4877c1bbd97aef65', 31, 1, 'Foodlans', '[]', 0, '2020-02-07 00:48:32', '2020-02-07 00:48:32', '2021-02-07 06:18:32'),
('dc0ae78d25c571ad4892740ca881903c8a1b52aefb66fe6d043f483d3bb22876dd0a2010a6002db9', 23, 1, 'Foodlans', '[]', 0, '2020-01-09 04:09:16', '2020-01-09 04:09:16', '2021-01-09 09:39:16'),
('dc47178739bc54a3430474bbf0156a61a8c4772280822899679b15991db8d292ebb845afdadc89a6', 9, 1, 'Foodlans', '[]', 0, '2020-01-02 00:16:49', '2020-01-02 00:16:49', '2021-01-02 05:46:49'),
('dc7341645e15225f4e7b325c00cf145e24d225cd9f530386658b9e5588f84362e0deb8e8e2eeace5', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 07:49:40', '2019-12-19 07:49:40', '2020-12-19 13:19:40'),
('de3258fcb324e692855e3d41a2f452c5f58a5eab39c0409da0382cc724b799319601470de12ad050', 9, 1, 'Foodlans', '[]', 0, '2020-02-02 23:58:11', '2020-02-02 23:58:11', '2021-02-03 05:28:11'),
('deaea6432344c97ee5c6c5ed71a2fc6c9a7868cf4f65ade69d90e90486249a2e9fbd1706cb2db865', 9, 1, 'Foodlans', '[]', 0, '2020-02-10 04:16:59', '2020-02-10 04:16:59', '2021-02-10 09:46:59'),
('dfd4d9facb8c8f8ed5bea73cd9eec5a28ded44c8fb794a9d8618dcfbd281c2282109dd439627ba7b', 9, 1, 'Foodlans', '[]', 0, '2020-01-02 05:46:36', '2020-01-02 05:46:36', '2021-01-02 11:16:36'),
('e0d622ff30ff42b331a47730dd27417a9713b64963d23c6c3d88bef19f9e530760ae9af9e9530e89', 31, 1, 'Foodlans', '[]', 0, '2020-01-29 08:07:03', '2020-01-29 08:07:03', '2021-01-29 13:37:03'),
('e22a5901b3ac7c8ce7123929382495c057100166a763f1d2182730041d596fb3b8be9a94a17535b3', 9, 1, 'Foodlans', '[]', 0, '2020-01-10 23:43:58', '2020-01-10 23:43:58', '2021-01-11 05:13:58'),
('e264f01b558d2e00792d7998915dfc45d01f5fb1c1a1b79f790a600ef76ff2d008d00a9a19629bcc', 29, 1, 'Foodlans', '[]', 0, '2020-01-16 01:02:44', '2020-01-16 01:02:44', '2021-01-16 06:32:44'),
('e317226f17c978b2ad6a301cd57a0c84498142769905470cc4b9e23c5b6184f12a986914c6844f4b', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 03:53:09', '2019-12-20 03:53:09', '2020-12-20 09:23:09'),
('e3b05c8e0b65e00e5a918cf6e5fc61317c98a443cc2ef2886cc46599e319f6617d2a1c7344d870ca', 9, 1, 'Foodlans', '[]', 0, '2020-02-03 00:21:42', '2020-02-03 00:21:42', '2021-02-03 05:51:42'),
('e42eee77b6a4302a8358d4e4a6bc25790b157c82352d92c58f949f2de8055c79114ea330bd273b38', 9, 1, 'Foodlans', '[]', 0, '2020-01-02 07:00:17', '2020-01-02 07:00:17', '2021-01-02 12:30:17'),
('e54d8e3b0d831f20be8cb6cbf2546eabfa78ab308a16ac893ecbf614f25047657546e36878a848ac', 23, 1, 'Foodlans', '[]', 0, '2020-01-08 04:26:46', '2020-01-08 04:26:46', '2021-01-08 09:56:46'),
('e5bb5b7d171f9fb1c5054b9046f81a4e9359ddce529fdf8e0245059b3a691913d904de31de464b72', 9, 1, 'Foodlans', '[]', 0, '2020-01-16 08:02:58', '2020-01-16 08:02:58', '2021-01-16 13:32:58'),
('e644aae65482b382e2c3419e4b9df0550345cc86b34fc54c7d41aa8158174836d28ef42ef13329f0', 9, 1, 'Foodlans', '[]', 0, '2019-12-27 07:43:23', '2019-12-27 07:43:23', '2020-12-27 13:13:23'),
('e84b90c8bb4db87d1f260907895732b860bc5472d7f911a7b050acee5d34935c5330e8155af85dcd', 9, 1, 'Foodlans', '[]', 0, '2020-01-23 23:53:56', '2020-01-23 23:53:56', '2021-01-24 05:23:56'),
('e8baff95e1e11d9ce8a09f0b3f5f7aa54c46c89797c407f4911a68619bc9e1282a26f6e64e78099c', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 04:54:58', '2019-12-19 04:54:58', '2020-12-19 10:24:58'),
('e8d1da7a73829bd83a3b2e629b5246804735fba973f9c79dc6fc84b511fdb6bfb8f3fd0a19813ded', 9, 1, 'Foodlans', '[]', 0, '2020-02-11 00:11:47', '2020-02-11 00:11:47', '2021-02-11 05:41:47'),
('e92609b1985f1a3c126e4dfc37a604138acca3162d36493eb5d8e1abe4614f93a70b0b1bc38387ea', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 23:20:36', '2019-12-19 23:20:36', '2020-12-20 04:50:36'),
('e9dae025b5adbd630166b8fa39af23dec31e41a5cc6a8462ccc330ce7f977860c3c74a6991393e97', 28, 1, 'Foodlans', '[]', 0, '2020-01-10 04:20:49', '2020-01-10 04:20:49', '2021-01-10 09:50:49'),
('ebd10800c71e4f52e7f3ed2736a8dcfd3a7de0142aea35106a38469511f672d1cb5fa620f3ad2bb3', 9, 1, 'Foodlans', '[]', 0, '2020-01-25 01:37:59', '2020-01-25 01:37:59', '2021-01-25 07:07:59'),
('ec9ecc4e3ffc3528fca45e99791dc95e187e8f2fba2088017628ff6d5f0ee15b1124d66af5e174fd', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 02:28:17', '2019-12-20 02:28:17', '2020-12-20 07:58:17'),
('ee07c6d791ac5004594dc33bba0f7f11e7303ebcd852c967cb1508ef78578dc2ea2c3853188ae07c', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 08:01:21', '2019-12-19 08:01:21', '2020-12-19 13:31:21'),
('ef1d4d1c526f9989eed478cc330a65a0139c31d7292583041c391ac04d63013d59adf19b1349a950', 9, 1, 'Foodlans', '[]', 0, '2019-12-23 08:47:08', '2019-12-23 08:47:08', '2020-12-23 14:17:08'),
('ef60c79ba5161ee10690467a1710f2d7555be9600c599002c4659dc3b9cd6b3be221afbb698f95d8', 15, 1, 'Foodlans', '[]', 0, '2020-01-03 05:54:29', '2020-01-03 05:54:29', '2021-01-03 11:24:29'),
('ef6241b67b48c3e0c5974c11765a60b23b4a41b391b6ec600d1d325375f6e6d494f62c2acfe9f693', 9, 1, 'Foodlans', '[]', 0, '2020-01-23 00:57:58', '2020-01-23 00:57:58', '2021-01-23 06:27:58'),
('efd30e86922fc9debfd32f9db576eeddfb43bc5bc49c5269b5aa5b610df3cc40040167e132eca58a', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 01:47:50', '2019-12-20 01:47:50', '2020-12-20 07:17:50'),
('f04671ff925e364df558b6075f354e0b9b978423e438b036726bd7b9bd7d4bdf2f8a1db400dfe4f1', 31, 1, 'Foodlans', '[]', 0, '2020-01-24 04:02:50', '2020-01-24 04:02:50', '2021-01-24 09:32:50'),
('f0565f8f9c07ab03bf3f39f1fdeb0e24e4647d808695aec34e053e99579cad507904bcc4a81d0bd3', 9, 1, 'Foodlans', '[]', 0, '2020-01-03 04:50:45', '2020-01-03 04:50:45', '2021-01-03 10:20:45'),
('f0a5179f6091df6c95265ec4f76be0daf049cd344952a2831d2a85cd7120f08e3ecc0bd1ffcd3e05', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 08:37:55', '2019-12-20 08:37:55', '2020-12-20 14:07:55'),
('f0b9b128de94cfac134490dca3573266d904aab47a0660e44564e011f6d8301e88a58209be830f9c', 9, 1, 'Foodlans', '[]', 0, '2020-01-02 08:03:49', '2020-01-02 08:03:49', '2021-01-02 13:33:49'),
('f221420fd76ed9897d191f435ea83d2b622f5ce993c6c7e64c76d26e297ba8d71d00b018927c765f', 31, 1, 'Foodlans', '[]', 0, '2020-01-23 04:39:16', '2020-01-23 04:39:16', '2021-01-23 10:09:16'),
('f265fb00d957ea391515cf23a3bd55e9d93e65d75a865df805430c630258f920873432f5c4b7b3aa', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 04:05:43', '2019-12-20 04:05:43', '2020-12-20 09:35:43'),
('f2729ff9427fcd2fbc503edf7d4543251b51cdfe03cb3cc3299d69f0e436d3b97038585fe6d68f5d', 9, 1, 'Foodlans', '[]', 0, '2020-01-02 05:17:01', '2020-01-02 05:17:01', '2021-01-02 10:47:01'),
('f3cda6b29671e22d575d7dbbad1d2856e27401e7f3a2e1b605aacd35edc8129a318534a1ce9a43a6', 9, 1, 'Foodlans', '[]', 0, '2020-02-07 00:32:03', '2020-02-07 00:32:03', '2021-02-07 06:02:03'),
('f4514bdf68391919a58452e1867cb4411960338018393e4afe928c643d3672d0d3580384c6b25f92', 31, 1, 'Foodlans', '[]', 0, '2020-01-18 02:13:34', '2020-01-18 02:13:34', '2021-01-18 07:43:34'),
('f4c45a9bdd7e95de00442771b13c851da2feda7a071f4d16f585b85336660211fc233f3b2e02dba5', 31, 1, 'Foodlans', '[]', 0, '2020-01-23 05:00:41', '2020-01-23 05:00:41', '2021-01-23 10:30:41'),
('f50b48550230493d8b6640bd01e25eb6291a64743895f9c997120713bf544a368af424f41fb2a850', 9, 1, 'Foodlans', '[]', 0, '2019-12-23 08:34:39', '2019-12-23 08:34:39', '2020-12-23 14:04:39'),
('f526e4199eb829fce720b9c8c5e52307824c4625f67558a5f9d6794036baebee034002e1eedc12f1', 9, 1, 'Foodlans', '[]', 0, '2019-12-20 00:38:37', '2019-12-20 00:38:37', '2020-12-20 06:08:37'),
('f59888826f1fbb42ace2f5c83cf329a69fac543c1767c97ba951292280239665db777e0bb0c25a40', 9, 1, 'Foodlans', '[]', 0, '2020-01-07 04:38:08', '2020-01-07 04:38:08', '2021-01-07 10:08:08'),
('f6cf11c28a083b9c54f4027cf644773125904486ba81c4b775603f0ef8d2861ef896dbd7314f8501', 31, 1, 'Foodlans', '[]', 0, '2020-01-23 04:34:27', '2020-01-23 04:34:27', '2021-01-23 10:04:27'),
('f70ada732823c7e617371b111d90969486830c45c7903234bb7b117775555bffe049e5e3c9d9bf56', 9, 1, 'Foodlans', '[]', 0, '2019-12-19 07:15:18', '2019-12-19 07:15:18', '2020-12-19 12:45:18'),
('f79faa412c7d4c2fbb2cd45aa9b5542802bfa6ac3c69886a38704b77d8faf37e503546f330903774', 31, 1, 'Foodlans', '[]', 0, '2020-01-18 02:17:46', '2020-01-18 02:17:46', '2021-01-18 07:47:46'),
('f8c77075d3864aaf6b0a367996811bbeb5807b025c222bfef20bc6980bab70fedcc8a152d8e40733', 9, 1, 'Foodlans', '[]', 0, '2019-12-31 06:13:15', '2019-12-31 06:13:15', '2020-12-31 11:43:15'),
('f9489845a9b2adceffc328d597bc017b69ad5e2e420261119a9e9a8545db56938fa8e86c91ef702b', 9, 1, 'Foodlans', '[]', 0, '2020-02-07 00:32:12', '2020-02-07 00:32:12', '2021-02-07 06:02:12'),
('f96c589287a291985530ec59638ff1c21fd4131621b06881fc801cb217772c57eb0239dd71312dec', 31, 1, 'Foodlans', '[]', 0, '2020-02-08 00:50:08', '2020-02-08 00:50:08', '2021-02-08 06:20:08'),
('f9c0a69b652e803a36afa2a7c9476b7d176cde9b4002f34542c400cdb0edbfcd0070f6457b47bef5', 9, 1, 'Foodlans', '[]', 0, '2020-01-23 05:37:20', '2020-01-23 05:37:20', '2021-01-23 11:07:20'),
('fb040d5260f62d9b6f28d1e4776efaab84d6ac6a7d94ff4b8a599dccfd3064653a1219e57db198d3', 31, 1, 'Foodlans', '[]', 0, '2020-01-27 23:45:57', '2020-01-27 23:45:57', '2021-01-28 05:15:57'),
('fb9891381acd351315ae7db30c591354d2e517c693f69d5a9230c0bae00a17e3a504b17ece41e5fd', 31, 1, 'Foodlans', '[]', 0, '2020-02-07 00:50:57', '2020-02-07 00:50:57', '2021-02-07 06:20:57'),
('fc3b506e66ab4145f22e8a27ad039051f7f638a2cf0065ecfb5d584b78564c927dcce9866d30b729', 31, 1, 'Foodlans', '[]', 0, '2020-02-01 07:40:17', '2020-02-01 07:40:17', '2021-02-01 13:10:17'),
('fc9496365f8d431aed0e84c8567a3f55ad591c632ce82a815213f8ebd67f303bf9918559a6abbda3', 9, 1, 'Foodlans', '[]', 0, '2020-01-25 01:49:08', '2020-01-25 01:49:08', '2021-01-25 07:19:08'),
('fca05e72fd3362f00a2c4320cd32861f1445ccf2ba108718551800958a3705e4fda3b89bf6c4704c', 29, 1, 'Foodlans', '[]', 0, '2020-01-16 23:14:17', '2020-01-16 23:14:17', '2021-01-17 04:44:17'),
('fcedb65dff1322dd7e5f01239da0b67bdaf7c8a12ec5b04d901f1ee609c054105b6b86dcf6a6f2fc', 9, 1, 'Foodlans', '[]', 0, '2020-01-24 01:29:03', '2020-01-24 01:29:03', '2021-01-24 06:59:03'),
('fec421153b93aa649dea19e519dccdd3dc938aa6a3725d31afe041cc8a982b34910e2cea1065e46c', 29, 1, 'Foodlans', '[]', 0, '2020-01-18 01:18:27', '2020-01-18 01:18:27', '2021-01-18 06:48:27'),
('ffde217e8aff85f938ce62e0f99d38914d9db9ac26707068caf4157de1dc5ec208d69fd2de798db4', 31, 1, 'Foodlans', '[]', 0, '2020-01-28 08:15:05', '2020-01-28 08:15:05', '2021-01-28 13:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'B89nQIIEsLiCebp7k1CuW0WpRQzAMDX64kA60gSW', 'http://localhost', 1, 0, 0, '2019-11-17 23:02:47', '2019-11-17 23:02:47'),
(2, NULL, 'Laravel Password Grant Client', '0xQbOjfOLo0R6YA8v86jnWdm2OVQArLHpWs5JlTr', 'http://localhost', 0, 1, 0, '2019-11-17 23:02:47', '2019-11-17 23:02:47');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-11-17 23:02:47', '2019-11-17 23:02:47');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_no` varchar(255) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `shop_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `deliveryBoy_id` int(11) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `items` varchar(255) DEFAULT NULL,
  `package_id` varchar(50) DEFAULT NULL,
  `payment` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `shop_charge` int(11) NOT NULL,
  `delivery_charge` int(11) NOT NULL,
  `coupon_price` int(11) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT '0',
  `order_status` varchar(50) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `payment_token` varchar(255) DEFAULT NULL,
  `driver_otp` varchar(50) DEFAULT NULL,
  `review_status` int(11) NOT NULL DEFAULT '0',
  `shopReview_status` int(11) NOT NULL DEFAULT '0',
  `driverReview_status` int(11) NOT NULL DEFAULT '0',
  `cancel_reason` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_no`, `owner_id`, `location_id`, `shop_id`, `customer_id`, `deliveryBoy_id`, `coupon_id`, `items`, `package_id`, `payment`, `date`, `time`, `shop_charge`, `delivery_charge`, `coupon_price`, `discount`, `order_status`, `payment_status`, `payment_type`, `payment_token`, `driver_otp`, `review_status`, `shopReview_status`, `driverReview_status`, `cancel_reason`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '#904756', 1, NULL, 2, 9, 31, NULL, '7', '4', 560, '2020-02-03', '04:38 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '549838', 1, 1, 1, NULL, '2020-02-03 11:08:11', '2020-02-05 13:07:27', '0000-00-00 00:00:00'),
(2, '#751056', 1, NULL, 2, 9, 31, NULL, '3', NULL, 310, '2020-02-07', '11:33 AM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '804193', 0, 0, 0, NULL, '2020-02-07 06:03:32', '2020-02-07 06:37:46', '0000-00-00 00:00:00'),
(3, '#107404', 1, NULL, 2, 9, 31, NULL, '4,3', NULL, 910, '2020-02-07', '11:53 AM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '368823', 1, 1, 1, NULL, '2020-02-07 06:23:06', '2020-02-07 06:27:26', '0000-00-00 00:00:00'),
(4, '#237566', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-07', '12:08 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '362166', 0, 0, 0, NULL, '2020-02-07 06:38:14', '2020-02-07 06:44:01', '0000-00-00 00:00:00'),
(5, '#325619', 1, NULL, 2, 9, 31, NULL, '4', NULL, 410, '2020-02-07', '12:12 PM', 50, 60, 0, 0, 'Cancel', 0, 'LOCAL', NULL, '448946', 0, 0, 0, 'Delivery is delay for heavy rain.', '2020-02-07 06:42:40', '2020-02-07 06:47:33', '0000-00-00 00:00:00'),
(6, '#178495', 1, NULL, 2, 9, 31, NULL, '4', NULL, 410, '2020-02-07', '12:19 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '180902', 0, 0, 0, NULL, '2020-02-07 06:49:48', '2020-02-07 07:24:53', '0000-00-00 00:00:00'),
(7, '#627494', 1, NULL, 2, 9, NULL, NULL, '4', NULL, 410, '2020-02-07', '12:22 PM', 50, 60, 0, 0, 'Cancel', 0, 'LOCAL', NULL, '138461', 0, 0, 0, NULL, '2020-02-07 06:52:57', '2020-02-07 09:05:27', '0000-00-00 00:00:00'),
(8, '#684731', 1, NULL, 2, 9, 31, NULL, '4', NULL, 410, '2020-02-07', '12:23 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '465147', 0, 0, 0, NULL, '2020-02-07 06:53:36', '2020-02-07 12:39:40', '0000-00-00 00:00:00'),
(9, '#659495', 1, NULL, 2, 9, 31, NULL, '4', NULL, 410, '2020-02-07', '12:23 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '142711', 0, 0, 0, NULL, '2020-02-07 06:53:55', '2020-02-07 12:29:49', '0000-00-00 00:00:00'),
(10, '#178351', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-07', '06:31 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '908778', 0, 0, 0, NULL, '2020-02-07 13:01:55', '2020-02-07 13:14:34', '0000-00-00 00:00:00'),
(11, '#665968', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-07', '06:34 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '986795', 0, 0, 0, NULL, '2020-02-07 13:04:32', '2020-02-07 13:10:25', '0000-00-00 00:00:00'),
(12, '#584958', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-07', '06:46 PM', 50, 60, 0, 0, 'Approved', 0, 'LOCAL', NULL, '605796', 0, 0, 0, NULL, '2020-02-07 13:16:32', '2020-02-07 14:19:54', '0000-00-00 00:00:00'),
(13, '#572596', 1, NULL, 2, 9, 31, NULL, '3', NULL, 310, '2020-02-07', '06:47 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '685769', 0, 0, 0, NULL, '2020-02-07 13:17:27', '2020-02-07 13:26:50', '0000-00-00 00:00:00'),
(14, '#387110', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-07', '06:59 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '556734', 0, 0, 0, NULL, '2020-02-07 13:29:34', '2020-02-07 13:32:50', '0000-00-00 00:00:00'),
(15, '#811020', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-07', '07:03 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '317019', 0, 0, 0, NULL, '2020-02-07 13:33:09', '2020-02-07 13:42:39', '0000-00-00 00:00:00'),
(16, '#256916', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-07', '07:14 PM', 50, 60, 0, 0, 'Approved', 1, 'LOCAL', NULL, '434180', 0, 0, 0, NULL, '2020-02-07 13:44:14', '2020-02-07 14:19:50', '0000-00-00 00:00:00'),
(17, '#352240', 1, NULL, 2, 9, NULL, NULL, '7', NULL, 260, '2020-02-07', '07:48 PM', 50, 60, 0, 0, 'Approved', 0, 'LOCAL', NULL, '387957', 0, 0, 0, NULL, '2020-02-07 14:18:51', '2020-02-07 14:22:02', '0000-00-00 00:00:00'),
(18, '#955449', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-07', '07:49 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '612053', 0, 0, 0, NULL, '2020-02-07 14:19:31', '2020-02-07 14:35:24', '0000-00-00 00:00:00'),
(19, '#546650', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-07', '07:59 PM', 50, 60, 0, 0, 'DriverApproved', 0, 'LOCAL', NULL, '546372', 0, 0, 0, NULL, '2020-02-07 14:29:52', '2020-02-07 14:35:39', '0000-00-00 00:00:00'),
(20, '#356839', 1, NULL, 2, 9, 31, NULL, '3,7', NULL, 460, '2020-02-08', '10:08 AM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '527768', 0, 0, 0, NULL, '2020-02-08 04:38:31', '2020-02-08 05:36:51', '0000-00-00 00:00:00'),
(21, '#812422', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-08', '10:10 AM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '141978', 0, 0, 0, NULL, '2020-02-08 04:40:14', '2020-02-08 05:22:30', '0000-00-00 00:00:00'),
(22, '#471423', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-08', '11:05 AM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '760124', 0, 0, 0, NULL, '2020-02-08 05:35:34', '2020-02-08 05:39:59', '0000-00-00 00:00:00'),
(23, '#103913', 1, NULL, 1, 9, 31, NULL, '2', NULL, 300, '2020-02-08', '11:10 AM', 50, 50, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '476339', 0, 0, 0, NULL, '2020-02-08 05:40:54', '2020-02-08 06:20:28', '0000-00-00 00:00:00'),
(24, '#336205', 1, NULL, 2, 9, 31, NULL, '3', NULL, 310, '2020-02-08', '11:12 AM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '848717', 0, 0, 0, NULL, '2020-02-08 05:42:52', '2020-02-08 06:12:07', '0000-00-00 00:00:00'),
(25, '#808883', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-08', '11:14 AM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '894880', 0, 0, 0, NULL, '2020-02-08 05:44:20', '2020-02-08 05:58:43', '0000-00-00 00:00:00'),
(26, '#755908', 1, NULL, 2, 9, 31, NULL, '3', NULL, 310, '2020-02-08', '11:49 AM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '787230', 0, 0, 0, NULL, '2020-02-08 06:19:35', '2020-02-08 06:26:27', '0000-00-00 00:00:00'),
(27, '#508969', 1, NULL, 2, 9, 31, NULL, '3', NULL, 310, '2020-02-08', '11:55 AM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '343190', 0, 0, 0, NULL, '2020-02-08 06:25:36', '2020-02-08 07:16:41', '0000-00-00 00:00:00'),
(28, '#206338', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-08', '12:47 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '711018', 0, 0, 0, NULL, '2020-02-08 07:17:26', '2020-02-08 07:40:51', '0000-00-00 00:00:00'),
(29, '#119231', 1, NULL, 2, 9, 31, NULL, '3', NULL, 310, '2020-02-08', '12:47 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '569906', 0, 0, 0, NULL, '2020-02-08 07:17:52', '2020-02-08 07:31:44', '0000-00-00 00:00:00'),
(30, '#213118', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-08', '01:13 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '905836', 0, 0, 0, NULL, '2020-02-08 07:43:01', '2020-02-08 09:31:08', '0000-00-00 00:00:00'),
(31, '#381790', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-08', '03:04 PM', 50, 60, 0, 0, 'DriverApproved', 0, 'LOCAL', NULL, '705555', 0, 0, 0, NULL, '2020-02-08 09:34:04', '2020-02-08 09:50:28', '0000-00-00 00:00:00'),
(32, '#165256', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-08', '03:10 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '512777', 0, 0, 0, NULL, '2020-02-08 09:40:50', '2020-02-08 09:49:27', '0000-00-00 00:00:00'),
(33, '#714025', 1, NULL, 2, 9, 31, NULL, '3', NULL, 310, '2020-02-10', '03:11 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '878512', 0, 0, 0, NULL, '2020-02-10 09:41:35', '2020-02-10 11:27:51', '0000-00-00 00:00:00'),
(34, '#851677', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-10', '04:59 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '444785', 0, 0, 0, NULL, '2020-02-10 11:29:14', '2020-02-10 12:06:09', '0000-00-00 00:00:00'),
(35, '#686487', 1, NULL, 2, 9, 31, NULL, '3', NULL, 310, '2020-02-10', '05:55 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '316416', 0, 0, 0, NULL, '2020-02-10 12:25:18', '2020-02-10 12:37:02', '0000-00-00 00:00:00'),
(36, '#192213', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-10', '06:09 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '640740', 0, 0, 0, NULL, '2020-02-10 12:39:18', '2020-02-10 13:03:55', '0000-00-00 00:00:00'),
(37, '#606456', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-10', '06:34 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '346191', 0, 0, 0, NULL, '2020-02-10 13:04:35', '2020-02-10 13:21:09', '0000-00-00 00:00:00'),
(38, '#788810', 1, NULL, 2, 9, 31, NULL, '3', NULL, 310, '2020-02-10', '06:51 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '586927', 0, 0, 0, NULL, '2020-02-10 13:21:48', '2020-02-10 13:28:25', '0000-00-00 00:00:00'),
(39, '#376263', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-10', '06:58 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '509114', 0, 0, 0, NULL, '2020-02-10 13:28:49', '2020-02-10 13:31:30', '0000-00-00 00:00:00'),
(40, '#212695', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-10', '07:03 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '380220', 0, 0, 0, NULL, '2020-02-10 13:33:09', '2020-02-10 13:36:44', '0000-00-00 00:00:00'),
(41, '#429514', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-10', '07:07 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '251379', 0, 0, 0, NULL, '2020-02-10 13:37:19', '2020-02-10 14:12:41', '0000-00-00 00:00:00'),
(42, '#378833', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-10', '07:42 PM', 50, 60, 0, 0, 'Delivered', 0, 'LOCAL', NULL, '650215', 0, 0, 0, NULL, '2020-02-10 14:12:19', '2020-02-10 14:17:03', '0000-00-00 00:00:00'),
(43, '#389086', 1, NULL, 2, 9, 31, NULL, '3', NULL, 310, '2020-02-11', '10:23 AM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '524192', 0, 0, 0, NULL, '2020-02-11 04:53:39', '2020-02-11 05:05:23', '0000-00-00 00:00:00'),
(44, '#526941', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-11', '10:37 AM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '742469', 0, 0, 0, NULL, '2020-02-11 05:07:57', '2020-02-11 05:55:34', '0000-00-00 00:00:00'),
(45, '#873304', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-11', '11:12 AM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '101437', 0, 0, 0, NULL, '2020-02-11 05:42:34', '2020-02-11 06:31:51', '0000-00-00 00:00:00'),
(46, '#790130', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-11', '12:11 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '751106', 0, 0, 0, NULL, '2020-02-11 06:41:17', '2020-02-11 06:47:35', '0000-00-00 00:00:00'),
(47, '#818602', 1, NULL, 2, 9, 31, NULL, '3', NULL, 310, '2020-02-11', '12:18 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '539258', 0, 0, 0, NULL, '2020-02-11 06:48:08', '2020-02-11 07:08:54', '0000-00-00 00:00:00'),
(48, '#227169', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-11', '12:48 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '1', 0, 0, 0, NULL, '2020-02-11 07:18:41', '2020-02-11 07:25:28', '0000-00-00 00:00:00'),
(49, '#250187', 1, NULL, 2, 9, 31, NULL, '3', NULL, 310, '2020-02-11', '12:57 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '1', 0, 0, 0, NULL, '2020-02-11 07:27:10', '2020-02-11 07:28:14', '0000-00-00 00:00:00'),
(50, '#617937', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-11', '01:00 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '1', 0, 0, 0, NULL, '2020-02-11 07:30:56', '2020-02-11 07:57:37', '0000-00-00 00:00:00'),
(51, '#116375', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-11', '01:01 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '1', 0, 0, 0, NULL, '2020-02-11 07:31:04', '2020-02-11 07:39:32', '0000-00-00 00:00:00'),
(52, '#465951', 1, NULL, 2, 9, 31, NULL, '7', NULL, 260, '2020-02-11', '03:02 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '1', 0, 0, 0, NULL, '2020-02-11 09:32:27', '2020-02-11 10:27:28', '0000-00-00 00:00:00'),
(53, '#610050', 1, NULL, 2, 9, 31, NULL, '3', NULL, 310, '2020-02-11', '04:08 PM', 50, 60, 0, 0, 'Delivered', 1, 'LOCAL', NULL, '1', 1, 1, 1, NULL, '2020-02-11 10:38:35', '2020-02-11 10:49:51', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_child`
--

CREATE TABLE `order_child` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_child`
--

INSERT INTO `order_child` (`id`, `order_id`, `item`, `package_id`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 7, NULL, 150, 1, '2020-02-03 11:08:11', '2020-02-03 11:08:11'),
(2, 1, NULL, 4, 300, 1, '2020-02-03 11:08:11', '2020-02-03 11:08:11'),
(3, 2, 3, NULL, 200, 1, '2020-02-07 06:03:32', '2020-02-07 06:03:32'),
(4, 3, 4, NULL, 600, 2, '2020-02-07 06:23:06', '2020-02-07 06:23:06'),
(5, 3, 3, NULL, 200, 1, '2020-02-07 06:23:06', '2020-02-07 06:23:06'),
(6, 4, 7, NULL, 150, 1, '2020-02-07 06:38:14', '2020-02-07 06:38:14'),
(7, 5, 4, NULL, 300, 1, '2020-02-07 06:42:40', '2020-02-07 06:42:40'),
(8, 6, 4, NULL, 300, 1, '2020-02-07 06:49:48', '2020-02-07 06:49:48'),
(9, 7, 4, NULL, 300, 1, '2020-02-07 06:52:57', '2020-02-07 06:52:57'),
(10, 8, 4, NULL, 300, 1, '2020-02-07 06:53:36', '2020-02-07 06:53:36'),
(11, 9, 4, NULL, 300, 1, '2020-02-07 06:53:56', '2020-02-07 06:53:56'),
(12, 10, 7, NULL, 150, 1, '2020-02-07 13:01:55', '2020-02-07 13:01:55'),
(13, 11, 7, NULL, 150, 1, '2020-02-07 13:04:32', '2020-02-07 13:04:32'),
(14, 12, 7, NULL, 150, 1, '2020-02-07 13:16:32', '2020-02-07 13:16:32'),
(15, 13, 3, NULL, 200, 1, '2020-02-07 13:17:27', '2020-02-07 13:17:27'),
(16, 14, 7, NULL, 150, 1, '2020-02-07 13:29:34', '2020-02-07 13:29:34'),
(17, 15, 7, NULL, 150, 1, '2020-02-07 13:33:09', '2020-02-07 13:33:09'),
(18, 16, 7, NULL, 150, 1, '2020-02-07 13:44:14', '2020-02-07 13:44:14'),
(19, 17, 7, NULL, 150, 1, '2020-02-07 14:18:51', '2020-02-07 14:18:51'),
(20, 18, 7, NULL, 150, 1, '2020-02-07 14:19:31', '2020-02-07 14:19:31'),
(21, 19, 7, NULL, 150, 1, '2020-02-07 14:29:52', '2020-02-07 14:29:52'),
(22, 20, 3, NULL, 200, 1, '2020-02-08 04:38:31', '2020-02-08 04:38:31'),
(23, 20, 7, NULL, 150, 1, '2020-02-08 04:38:31', '2020-02-08 04:38:31'),
(24, 21, 7, NULL, 150, 1, '2020-02-08 04:40:14', '2020-02-08 04:40:14'),
(25, 22, 7, NULL, 150, 1, '2020-02-08 05:35:34', '2020-02-08 05:35:34'),
(26, 23, 2, NULL, 200, 1, '2020-02-08 05:40:54', '2020-02-08 05:40:54'),
(27, 24, 3, NULL, 200, 1, '2020-02-08 05:42:52', '2020-02-08 05:42:52'),
(28, 25, 7, NULL, 150, 1, '2020-02-08 05:44:20', '2020-02-08 05:44:20'),
(29, 26, 3, NULL, 200, 1, '2020-02-08 06:19:35', '2020-02-08 06:19:35'),
(30, 27, 3, NULL, 200, 1, '2020-02-08 06:25:36', '2020-02-08 06:25:36'),
(31, 28, 7, NULL, 150, 1, '2020-02-08 07:17:26', '2020-02-08 07:17:26'),
(32, 29, 3, NULL, 200, 1, '2020-02-08 07:17:52', '2020-02-08 07:17:52'),
(33, 30, 7, NULL, 150, 1, '2020-02-08 07:43:01', '2020-02-08 07:43:01'),
(34, 31, 7, NULL, 150, 1, '2020-02-08 09:34:04', '2020-02-08 09:34:04'),
(35, 32, 7, NULL, 150, 1, '2020-02-08 09:40:50', '2020-02-08 09:40:50'),
(36, 33, 3, NULL, 200, 1, '2020-02-10 09:41:35', '2020-02-10 09:41:35'),
(37, 34, 7, NULL, 150, 1, '2020-02-10 11:29:14', '2020-02-10 11:29:14'),
(38, 35, 3, NULL, 200, 1, '2020-02-10 12:25:18', '2020-02-10 12:25:18'),
(39, 36, 7, NULL, 150, 1, '2020-02-10 12:39:18', '2020-02-10 12:39:18'),
(40, 37, 7, NULL, 150, 1, '2020-02-10 13:04:35', '2020-02-10 13:04:35'),
(41, 38, 3, NULL, 200, 1, '2020-02-10 13:21:48', '2020-02-10 13:21:48'),
(42, 39, 7, NULL, 150, 1, '2020-02-10 13:28:49', '2020-02-10 13:28:49'),
(43, 40, 7, NULL, 150, 1, '2020-02-10 13:33:09', '2020-02-10 13:33:09'),
(44, 41, 7, NULL, 150, 1, '2020-02-10 13:37:19', '2020-02-10 13:37:19'),
(45, 42, 7, NULL, 150, 1, '2020-02-10 14:12:19', '2020-02-10 14:12:19'),
(46, 43, 3, NULL, 200, 1, '2020-02-11 04:53:40', '2020-02-11 04:53:40'),
(47, 44, 7, NULL, 150, 1, '2020-02-11 05:07:57', '2020-02-11 05:07:57'),
(48, 45, 7, NULL, 150, 1, '2020-02-11 05:42:34', '2020-02-11 05:42:34'),
(49, 46, 7, NULL, 150, 1, '2020-02-11 06:41:17', '2020-02-11 06:41:17'),
(50, 47, 3, NULL, 200, 1, '2020-02-11 06:48:08', '2020-02-11 06:48:08'),
(51, 48, 7, NULL, 150, 1, '2020-02-11 07:18:41', '2020-02-11 07:18:41'),
(52, 49, 3, NULL, 200, 1, '2020-02-11 07:27:10', '2020-02-11 07:27:10'),
(53, 50, 7, NULL, 150, 1, '2020-02-11 07:30:56', '2020-02-11 07:30:56'),
(54, 51, 7, NULL, 150, 1, '2020-02-11 07:31:04', '2020-02-11 07:31:04'),
(55, 52, 7, NULL, 150, 1, '2020-02-11 09:32:28', '2020-02-11 09:32:28'),
(56, 53, 3, NULL, 200, 1, '2020-02-11 10:38:35', '2020-02-11 10:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `owner_setting`
--

CREATE TABLE `owner_setting` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `web_notification` int(11) DEFAULT '0',
  `play_sound` int(11) NOT NULL DEFAULT '0',
  `sound` varchar(255) DEFAULT NULL,
  `coupon` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner_setting`
--

INSERT INTO `owner_setting` (`id`, `user_id`, `web_notification`, `play_sound`, `sound`, `coupon`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 0, NULL, 1, 0, '2019-11-27 00:00:00', '2019-12-16 13:20:13', '0000-00-00 00:00:00'),
(2, 4, 1, 0, NULL, 0, 0, '2019-11-27 00:00:00', '2020-01-06 12:55:24', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `items` varchar(255) NOT NULL,
  `total_price` int(11) NOT NULL,
  `package_price` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `name`, `shop_id`, `owner_id`, `items`, `total_price`, `package_price`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'Special Combo', 2, 1, '3,4,7', 650, 300, '5e0aed8713725.jpg', 0, '2019-12-31 04:58:09', '2020-02-03 07:45:07', '2020-02-03 07:45:07'),
(5, 'Veg Combo', 1, 1, '1,4', 420, 300, '5e0af3605df04.jpg', 0, '2019-12-31 07:06:08', '2019-12-31 07:06:08', '0000-00-00 00:00:00'),
(6, 'char ka dam', 1, 1, '3,4,7', 650, 300, '5e0c925f121d8.jpg', 0, '2020-01-01 12:36:47', '2020-01-01 12:36:47', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_setting`
--

CREATE TABLE `payment_setting` (
  `id` int(11) NOT NULL,
  `cod` int(11) NOT NULL,
  `stripe` int(11) NOT NULL,
  `paypal` int(11) NOT NULL,
  `razor` int(11) NOT NULL,
  `stripePublicKey` varchar(255) DEFAULT NULL,
  `stripeSecretKey` varchar(255) DEFAULT NULL,
  `paypalSendbox` varchar(255) DEFAULT NULL,
  `paypalProduction` varchar(255) DEFAULT NULL,
  `razorPublishKey` varchar(255) DEFAULT NULL,
  `razorSecretKey` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_setting`
--

INSERT INTO `payment_setting` (`id`, `cod`, `stripe`, `paypal`, `razor`, `stripePublicKey`, `stripeSecretKey`, `paypalSendbox`, `paypalProduction`, `razorPublishKey`, `razorSecretKey`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 0, 1, 1, 'pk_test_n56atH9x5k506LqzqeyqpwqK', 'sk_test_00xhaJwMUZJaxW37OEoMl6ov', 'AWoo6mXhv6wlXhlzdWcbP2uJbWGYYKunfoqtue6mC8c1l8GmxJrfeOqi1gwMpu9x1jmi7_81JkqT4bgb', 'AR-guF3mwL1jNVFEmJp9GiwL2GRuwN_kXuUNWfWzt4KfFUvbtaAt0vswqC6uiiLHNT26VE2s0d-XdcnM', 'rzp_test_9gbnzoM4C96qwB', 'y8VNrhmW3nGHAK6cnErV65vc', '2019-11-15 00:00:00', '2020-02-05 05:38:43', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'order.show', 0, '2020-01-03 12:39:45', '2020-01-03 12:39:45'),
(2, 'order.delete', 0, '2020-01-03 12:56:16', '2020-01-03 12:56:16'),
(3, 'user.create', 0, '2020-01-03 12:56:55', '2020-01-03 12:56:55'),
(4, 'user.edit', 0, '2020-01-03 12:57:13', '2020-01-03 12:57:13'),
(5, 'user.show', 0, '2020-01-03 12:57:22', '2020-01-03 12:57:22'),
(6, 'user.delete', 0, '2020-01-03 12:57:32', '2020-01-03 12:57:32'),
(7, 'user.profile', 0, '2020-01-03 12:58:02', '2020-01-03 12:58:02'),
(8, 'category.show', 0, '2020-01-03 13:16:16', '2020-01-03 13:16:16'),
(10, 'category.create', 0, '2020-01-03 13:18:24', '2020-01-03 13:18:24'),
(11, 'category.edit', 0, '2020-01-03 13:19:50', '2020-01-03 13:19:50'),
(12, 'category.delete', 0, '2020-01-03 13:20:03', '2020-01-03 13:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `deliveryBoy_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `rate` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `customer_id`, `order_id`, `shop_id`, `deliveryBoy_id`, `item_id`, `package_id`, `message`, `rate`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 9, 1, NULL, 31, NULL, NULL, 'very good', 5, '2020-02-05 13:04:20', '2020-02-05 13:04:20', '0000-00-00 00:00:00'),
(2, 9, 1, 2, NULL, NULL, NULL, 'good', 4, '2020-02-05 13:07:08', '2020-02-05 13:07:08', '0000-00-00 00:00:00'),
(3, 9, 1, NULL, NULL, 7, NULL, 'good', 4, '2020-02-05 13:07:27', '2020-02-05 13:07:27', '0000-00-00 00:00:00'),
(4, 9, 1, NULL, NULL, NULL, 4, 'good', 4, '2020-02-05 13:07:27', '2020-02-05 13:07:27', '0000-00-00 00:00:00'),
(5, 9, 3, NULL, 31, NULL, NULL, 'very good', 4, '2020-02-07 06:26:55', '2020-02-07 06:26:55', '0000-00-00 00:00:00'),
(6, 9, 3, 2, NULL, NULL, NULL, 'very good', 4, '2020-02-07 06:27:12', '2020-02-07 06:27:12', '0000-00-00 00:00:00'),
(7, 9, 3, NULL, NULL, 4, NULL, 'nice', 5, '2020-02-07 06:27:26', '2020-02-07 06:27:26', '0000-00-00 00:00:00'),
(8, 9, 3, NULL, NULL, 3, NULL, 'great teast', 5, '2020-02-07 06:27:26', '2020-02-07 06:27:26', '0000-00-00 00:00:00'),
(9, 9, 53, 2, NULL, NULL, NULL, 'fifog', 4, '2020-02-11 10:49:32', '2020-02-11 10:49:32', '0000-00-00 00:00:00'),
(10, 9, 53, NULL, NULL, 3, NULL, 'yyuy', 5, '2020-02-11 10:49:41', '2020-02-11 10:49:41', '0000-00-00 00:00:00'),
(11, 9, 53, NULL, 31, NULL, NULL, 'wow', 5, '2020-02-11 10:49:51', '2020-02-11 10:49:51', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'User', 0, '2020-01-03 12:21:22', '2020-01-03 12:21:22'),
(2, 'Shop Owner', 0, '2020-01-03 12:22:12', '2020-01-03 12:22:12'),
(3, 'Delivery Boy', 0, '2020-01-03 12:22:26', '2020-01-03 12:22:26'),
(4, 'Support Staff', 0, '2020-01-03 12:22:54', '2020-01-03 12:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `location` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `pincode` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `radius` int(11) DEFAULT NULL,
  `licence_code` varchar(255) NOT NULL,
  `rastaurant_charge` int(11) NOT NULL,
  `avarage_plate_price` int(11) NOT NULL,
  `delivery_charge` int(11) NOT NULL,
  `cancle_charge` int(11) NOT NULL,
  `delivery_time` int(11) NOT NULL,
  `open_time` varchar(50) DEFAULT NULL,
  `close_time` varchar(50) DEFAULT NULL,
  `featured` int(11) NOT NULL,
  `exclusive` int(11) DEFAULT NULL,
  `veg` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `user_id`, `name`, `description`, `location`, `image`, `address`, `pincode`, `phone`, `website`, `latitude`, `longitude`, `radius`, `licence_code`, `rastaurant_charge`, `avarage_plate_price`, `delivery_charge`, `cancle_charge`, `delivery_time`, `open_time`, `close_time`, `featured`, `exclusive`, `veg`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Food style', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 1, '1572869092.jpg', 'Paddhari, rajkot, gujarat', '360110', '6876736483', 'www.google .com', '22.372244', '70.690832', 60, 'dfhhfd', 50, 100, 50, 0, 30, '7:00 AM', '10:00 PM', 0, 0, 1, 0, '2019-11-04 12:04:52', '2020-02-03 09:37:32', '0000-00-00 00:00:00'),
(2, 1, '24 Pizza Town', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 1, '1573047732.jpg', 'college chock, yogi nagar, gondal,rajkot', '395010', '6465567890', 'www.google.com', '21.970060', '70.799589', 40, 'dfgfasfdghdh', 50, 150, 60, 0, 40, '10:00 AM', '8:00 PM', 1, 1, 0, 0, '2019-11-06 13:39:01', '2020-02-03 05:30:19', '0000-00-00 00:00:00'),
(3, 4, 'Foodaholic', 'nothing', 1, '1573279290.jpg', 'near Asopalav Enigma, mavdi main road, rajkot', '360002', '5648768754', 'www.google.com', '22.382256', '70.671480', 5, 'dgdfghdfhfgh', 50, 100, 20, 0, 30, '8:00 AM', '10:00 PM', 1, 0, 0, 0, '2019-11-09 06:01:30', '2020-02-05 07:34:25', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateOfBirth` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `address_id` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'user.png',
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favourite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friend_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_user` int(11) NOT NULL DEFAULT '0',
  `free_order` int(11) NOT NULL DEFAULT '0',
  `verify` int(11) NOT NULL DEFAULT '0',
  `provider` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LOCAL',
  `provider_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `lat` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_radius` int(11) DEFAULT NULL,
  `enable_notification` int(11) NOT NULL DEFAULT '0',
  `enable_location` int(11) NOT NULL DEFAULT '0',
  `enable_call` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_code`, `phone`, `dateOfBirth`, `location`, `address`, `address_id`, `email_verified_at`, `password`, `image`, `cover_image`, `favourite`, `remember_token`, `otp`, `referral_code`, `friend_code`, `referral_user`, `free_order`, `verify`, `provider`, `provider_token`, `device_token`, `role`, `status`, `lat`, `lang`, `driver_radius`, `enable_notification`, `enable_location`, `enable_call`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin-test@gmail.com', NULL, '8676824653', '2017-09-13', NULL, NULL, NULL, NULL, '$2y$10$d92lU4R1OmWEfuRg5OwpIuK0b2Hpx79OSdZCsyfUiBtojBHfAOj8.', '1577963804.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'LOCAL', NULL, '80d67647-85bd-424e-ae8e-a5ea7b241223', 1, 0, NULL, NULL, NULL, 0, 0, 0, '2019-11-02 06:45:36', '2020-02-01 06:52:57', '0000-00-00 00:00:00'),
(2, 'bansi', 'bansi@gmail.com', NULL, '1234567654', '1998-11-15', NULL, NULL, NULL, NULL, '$2y$10$7DKw7KWX957oU2QhEZ2KZeEtrhlkRD1ayTw4sl2M0ReBeM98DkIe.', '1573219863.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'LOCAL', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, '2019-11-02 08:29:06', '2019-11-08 08:01:03', '0000-00-00 00:00:00'),
(3, 'dipali', 'dipali@gmail.com', NULL, '6733653665', '2019-11-19', NULL, NULL, NULL, NULL, '$2y$10$7DKw7KWX957oU2QhEZ2KZeEtrhlkRD1ayTw4sl2M0ReBeM98DkIe.', '1573219881.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'LOCAL', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, '2019-11-08 07:35:32', '2019-11-08 08:01:21', '0000-00-00 00:00:00'),
(4, 'James Johnson', 'james@gmail.com', NULL, '1239875643', '2018-05-09', NULL, NULL, NULL, NULL, '$2y$10$7DKw7KWX957oU2QhEZ2KZeEtrhlkRD1ayTw4sl2M0ReBeM98DkIe.', '1573219988.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'LOCAL', NULL, '80d67647-85bd-424e-ae8e-a5ea7b241223', 1, 0, NULL, NULL, NULL, 0, 0, 0, '2019-11-08 08:03:08', '2020-01-31 02:23:56', '0000-00-00 00:00:00'),
(5, 'David Brown', 'david@gmail.com', NULL, '8758164346', '2017-08-08', NULL, NULL, NULL, NULL, '$2y$10$7DKw7KWX957oU2QhEZ2KZeEtrhlkRD1ayTw4sl2M0ReBeM98DkIe.', '1573276038.jpg', NULL, NULL, NULL, '136278', NULL, NULL, 0, 0, 1, 'LOCAL', NULL, NULL, 2, 0, '22.3039', '70.8022', 5, 0, 0, 0, '2019-11-08 23:37:18', '2020-01-31 03:35:01', '0000-00-00 00:00:00'),
(9, 'bansuri', 'bansi.thirstydevs@gmail.com', NULL, '8758164348', '1998-05-02', 'rajkot,Gujarat', NULL, 7, NULL, '$2y$10$JUlNY61e0eH.15omaAbv1.3ZfNoAnpVZkhQAIgvPBwLlnH6A2cH8C', '5e14783474f4a.png', '5e0c33f3a530a.png', '3', NULL, '411386', '4435678', NULL, 1, 0, 1, 'LOCAL', NULL, NULL, 0, 0, '22.2599403', '70.78381310000002', NULL, 1, 1, 1, '2019-11-18 00:56:17', '2020-02-11 05:23:39', '0000-00-00 00:00:00'),
(10, 'aman', 'aman123@gmail.com', NULL, '8758164341', NULL, NULL, NULL, NULL, NULL, '$2y$10$WgmSJqhW8zbvbA1npCImXONGD63.V7US3Q3qejVsWa..uWWNQuoy2', 'user.png', NULL, NULL, NULL, '442825', '5123105', NULL, 0, 0, 1, 'LOCAL', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, '2020-01-01 07:35:50', '2020-01-03 05:32:39', '0000-00-00 00:00:00'),
(11, 'arun', 'arun555@gmail.com', NULL, '8758164345', NULL, 'rajkot', NULL, 4, NULL, '$2y$10$dCZ2z1FrNcYzgqxnM8r91.a/qjZh3UaGpLyjH6we89OsMhJn6xADy', 'user.png', NULL, NULL, NULL, '681389', '2934148', '4435678', 0, 0, 1, 'LOCAL', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, '2020-01-01 08:29:46', '2020-01-07 01:01:20', '0000-00-00 00:00:00'),
(15, 'kamal', 'kamalqq@gmail.com', NULL, '8758164356', NULL, 'rajkot', NULL, 6, NULL, '$2y$10$veqd6/lw4bd4D/CZuuzHseTOkWJL5HN2J/BkhRWb/KhS4edWd1L0u', 'user.png', NULL, NULL, NULL, '896751', '3700937', NULL, 0, 0, 1, 'LOCAL', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, '2020-01-03 05:50:13', '2020-01-03 06:19:57', '0000-00-00 00:00:00'),
(20, 'john', 'john123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$R.7CSBGpEn6sEuF.KlpBsuVSSrtM4zTy7AWs1yFZjiTciM5hVD8h6', 'user.png', NULL, NULL, NULL, NULL, '3528152', NULL, 0, 0, 0, 'LOCAL', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, '2020-01-05 01:22:26', '2020-01-05 01:22:26', '0000-00-00 00:00:00'),
(23, 'parth', 'parth555@gmail.com', NULL, NULL, NULL, NULL, NULL, 8, NULL, '$2y$10$XFRjrN09KrjobVKhBgjuj.c8DPS9BCkYHN.aRf5a.OJIghfVotO86', 'user.png', NULL, '3,1', NULL, NULL, '1500516', NULL, 0, 0, 0, 'LOCAL', NULL, NULL, 0, 0, '21.9700254', '70.7996859', NULL, 0, 0, 0, '2020-01-08 02:08:48', '2020-02-02 23:48:47', '0000-00-00 00:00:00'),
(29, 'bansi', 'bansi.thirstydevs123@gmail.com', '+91', '8888888888', NULL, NULL, NULL, NULL, NULL, '$2y$10$MyU43WDrJKIXsp5uvkU9DeCikAZEltAaKRxvpy0kJ42EDESiR9A2y', '5e2193c8e2ece.png', NULL, NULL, NULL, '790493', '3850780', NULL, 0, 0, 1, 'LOCAL', NULL, NULL, 2, 0, NULL, NULL, 40, 1, 1, 1, '2020-01-10 04:39:17', '2020-01-31 00:39:54', '0000-00-00 00:00:00'),
(30, 'john', 'john321@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$iD6Wx5w6vfZ43tPwQmusKexhmlRlyXpLr/Bp1z9CgD.5Kb4v8at5e', 'user.png', NULL, NULL, NULL, NULL, '4094961', NULL, 0, 0, 0, 'LOCAL', NULL, NULL, 2, 0, NULL, NULL, 30, 0, 0, 0, '2020-01-18 01:54:00', '2020-01-31 00:39:42', '0000-00-00 00:00:00'),
(31, 'mahipal', 'mahipal.thirstydevs@gmail.com', '+91', '1234567891', NULL, NULL, NULL, NULL, NULL, '$2y$10$7yOuV9uHbb64Dk10J3eoj.3U9ASKVN39yD7K4qiYbS661y4v.Dsju', 'user.png', NULL, NULL, NULL, '681402', '7688915', NULL, 0, 0, 1, 'LOCAL', NULL, NULL, 2, 0, '22.2868278', '70.7999684', 40, 1, 1, 1, '2020-01-18 01:57:35', '2020-02-11 05:16:45', '0000-00-00 00:00:00'),
(32, 'sandhu', 'sandhu@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4MYNbPkUdSjKTgINUQknN.DbWZa8YCcN2k6x9a5fHDSpJhQHQGJRC', 'user.png', NULL, NULL, NULL, NULL, '1111292', NULL, 0, 0, 0, 'LOCAL', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, '2020-02-05 07:03:37', '2020-02-05 07:03:37', '0000-00-00 00:00:00'),
(33, 'abcd', 'abcd@test.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$KdawGQkazp5XTNpY1Q37c.Yo23VV4TeT94nqVFGR7xsJ1IGVdt/tC', 'user.png', NULL, '', NULL, NULL, '7238338', NULL, 0, 0, 0, 'LOCAL', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, '2020-02-05 08:30:59', '2020-02-05 08:31:42', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_type` varchar(255) NOT NULL,
  `soc_name` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lang` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`id`, `user_id`, `address_type`, `soc_name`, `street`, `city`, `zipcode`, `lat`, `lang`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 9, 'Other', 'balaji hall', '150 feet ring road', 'rajkot', '360004', '22.27069', '70.779778', '2019-12-30 07:27:28', '2020-02-07 05:28:46', '0000-00-00 00:00:00'),
(7, 9, 'Home', 'shreenathji society', 'mavdi main road', 'rajkot', '360004', '22.2599403', '70.78381310000002', '2020-02-01 07:16:53', '2020-02-01 07:25:17', '0000-00-00 00:00:00'),
(8, 23, 'Home', 'collage chowk', 'yoginagar', 'gondal', '360311', '21.9700254', '70.7996859', '2020-02-03 05:18:47', '2020-02-03 05:18:47', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_gallery`
--

CREATE TABLE `user_gallery` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_gallery`
--

INSERT INTO `user_gallery` (`id`, `user_id`, `image`, `created_at`, `updated_at`) VALUES
(3, 9, '5e0c42e4aad20.png', '2020-01-01 06:57:40', '2020-01-01 06:57:40'),
(4, 9, '5e0c42e96d0a8.png', '2020-01-01 06:57:45', '2020-01-01 06:57:45'),
(5, 9, '5e0c42f0e0018.png', '2020-01-01 06:57:52', '2020-01-01 06:57:52'),
(6, 9, '5e0c42f7cd2d0.png', '2020-01-01 06:57:59', '2020-01-01 06:57:59'),
(7, 9, '5e0c42ff69d1d.png', '2020-01-01 06:58:07', '2020-01-01 06:58:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_notification`
--
ALTER TABLE `admin_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_setting`
--
ALTER TABLE `company_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_setting`
--
ALTER TABLE `general_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`,`shop_id`),
  ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_template`
--
ALTER TABLE `notification_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_id` (`owner_id`,`location_id`,`shop_id`,`customer_id`,`deliveryBoy_id`),
  ADD KEY `shop_id` (`shop_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `deliveryBoy_id` (`deliveryBoy_id`);

--
-- Indexes for table `order_child`
--
ALTER TABLE `order_child`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owner_setting`
--
ALTER TABLE `owner_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_setting`
--
ALTER TABLE `payment_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`,`order_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `location` (`location`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_gallery`
--
ALTER TABLE `user_gallery`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_notification`
--
ALTER TABLE `admin_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `company_setting`
--
ALTER TABLE `company_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `general_setting`
--
ALTER TABLE `general_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `notification_template`
--
ALTER TABLE `notification_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `order_child`
--
ALTER TABLE `order_child`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `owner_setting`
--
ALTER TABLE `owner_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_setting`
--
ALTER TABLE `payment_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_gallery`
--
ALTER TABLE `user_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `item_ibfk_2` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_5` FOREIGN KEY (`deliveryBoy_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `shop_ibfk_1` FOREIGN KEY (`location`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `shop_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
