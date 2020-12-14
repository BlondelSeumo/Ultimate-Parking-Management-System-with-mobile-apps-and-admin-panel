-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2020 at 02:50 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paypark_client`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_setting`
--

CREATE TABLE `admin_setting` (
  `id` int(11) NOT NULL,
  `pp` text NOT NULL,
  `country_code` varchar(11) NOT NULL DEFAULT '+91',
  `verification` int(11) NOT NULL DEFAULT '1',
  `notification` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_setting`
--

INSERT INTO `admin_setting` (`id`, `pp`, `country_code`, `verification`, `notification`, `created_at`, `updated_at`) VALUES
(1, '<h2 style=\"margin: 24px 0px; font-family: Roboto, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 48px; color: rgb(97, 97, 97); font-size: 45px; padding: 0px;\">Privacy Policy</h2><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; line-height: 24px; font-size: 14px; color: rgb(97, 97, 97); font-family: Roboto, Helvetica, sans-serif;\">[Developer/Company name] built the [App Name] app as [open source/free/freemium/ad-supported/commercial] app. This SERVICE is provided by [Developer/Company name] [at no cost] and is intended for use as is.</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; line-height: 24px; font-size: 14px; color: rgb(97, 97, 97); font-family: Roboto, Helvetica, sans-serif;\">This page is used to inform visitors regarding [my/our] policies with the collection, use, and disclosure of Personal Information if anyone decided to use [my/our] Service.</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; line-height: 24px; font-size: 14px; color: rgb(97, 97, 97); font-family: Roboto, Helvetica, sans-serif;\">If you choose to use [my/our] Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that [I/We] collect is used for providing and improving the Service. [I/We] will not use or share your information with anyone except as described in this Privacy Policy.</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; line-height: 24px; font-size: 14px; color: rgb(97, 97, 97); font-family: Roboto, Helvetica, sans-serif;\">The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at [App Name] unless otherwise defined in this Privacy Policy.</p><div style=\"font-family: Nunito, sans-serif; font-size: 13.008px; letter-spacing: 0.3px;\"><span style=\"font-weight: bolder; letter-spacing: normal; color: rgb(97, 97, 97); font-family: Roboto, Helvetica, sans-serif; font-size: 14px;\">Information Collection and Use</span></div><div style=\"font-family: Nunito, sans-serif; font-size: 13.008px; letter-spacing: 0.3px;\"><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; letter-spacing: normal; padding: 0px; line-height: 24px; font-size: 14px; color: rgb(97, 97, 97); font-family: Roboto, Helvetica, sans-serif;\">For a better experience, while using our Service, [I/We] may require you to provide us with certain personally identifiable information[add whatever else you collect here, e.g. users name, address, location, pictures] The information that [I/We] request will be [retained on your device and is not collected by [me/us] in any way]/[retained by us and used as described in this privacy policy].</p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; letter-spacing: normal; padding: 0px; line-height: 24px; font-size: 14px; color: rgb(97, 97, 97); font-family: Roboto, Helvetica, sans-serif;\">The app does use third party services that may collect information used to identify you.</p><div style=\"letter-spacing: normal; color: rgb(97, 97, 97); font-family: Roboto, Helvetica, sans-serif; font-size: 14px;\"><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; line-height: 24px; letter-spacing: 0px;\">Link to privacy policy of third party service providers used by the app</p><ul style=\"letter-spacing: 0px; line-height: 24px;\"><li><a href=\"https://www.google.com/policies/privacy/\" target=\"_blank\" style=\"color: rgb(68, 138, 255); -webkit-tap-highlight-color: rgba(255, 255, 255, 0);\">Google Play Services</a></li></ul><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; line-height: 24px;\"><span style=\"font-weight: bolder;\">Log Data</span></p><p style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; line-height: 24px;\">[I/We] want to inform you that whenever you use [my/our] Service, in a case of an error in the app [I/We] collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing [my/our] Service, the time and date of your use of the Service, and other statistics.</p><div><br></div></div></div>', '+91', 0, 0, '0000-00-00 00:00:00', '2020-02-20 13:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `app_users`
--

CREATE TABLE `app_users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `OTP` varchar(6) DEFAULT NULL,
  `password` varchar(254) NOT NULL,
  `verified` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1',
  `image` varchar(50) DEFAULT 'default.jpg',
  `device_token` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'CCTV', '5df21f58440ef.png', '2019-12-12 11:07:04', '2019-12-12 11:07:04'),
(2, '24/7', '5df21f81767bd.png', '2019-12-12 11:07:45', '2019-12-12 11:07:45'),
(3, 'Multi Floor', '5df21fc4895c9.png', '2019-12-12 11:08:52', '2019-12-12 11:08:52'),
(4, 'Car Service', '5df21fd110975.png', '2019-12-12 11:09:05', '2019-12-12 11:09:05');

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
('002142af379368cf01c65491f89bf869762f45fe43aebe83228cad80f4c29a23484be226bed2bdb6', 1, 1, 'ParingAppUser', '[]', 0, '2019-12-12 06:05:52', '2019-12-12 06:05:52', '2020-12-12 11:35:52'),
('031b192daef3d19f20349dff3adf207043121e4bd46cfc8057b42d39294c5ef505744e0f7965b58f', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-25 14:39:23', '2020-01-25 14:39:23', '2021-01-25 09:39:23'),
('03549e3593ad2c740c5467b1ec0c7bba72d2ecac0683367ca6cc6c645e199837f101ffc8a610f70a', 2, 1, 'conSEAerge', '[]', 0, '2019-11-07 01:04:26', '2019-11-07 01:04:26', '2020-11-07 06:34:26'),
('03bf270f823fbe7b319eda2e3387d48f41d099132a53c6dabbb64ea0a61316bd601ac585e1eec7c4', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-24 18:11:47', '2020-01-24 18:11:47', '2021-01-24 13:11:47'),
('046b115d6609630dc9ed774bc4b108b3bdf4f845b103aae99054503d11f2a207f3d2d504d6c1ff31', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-25 12:50:31', '2020-01-25 12:50:31', '2021-01-25 07:50:31'),
('0487dfe6861b636a00c50fa5bf701425a0051bbba756267ee76910178a0f42a73da368d6530c052b', 11, 1, 'ParingAppUser', '[]', 0, '2020-01-17 05:41:39', '2020-01-17 05:41:39', '2021-01-17 11:11:39'),
('0696cb77d30ee68973274fae9eab1aa81f2b47c283beb349aaea5aaf2b622da8f573453c127c0f93', 6, 1, 'ParingAppUser', '[]', 0, '2020-01-17 05:34:07', '2020-01-17 05:34:07', '2021-01-17 11:04:07'),
('09e08664edca77c4040fc397eff7e256ab4375dbfa71547ef4d29a764e3e82e9d671662aab152041', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-25 15:00:54', '2020-01-25 15:00:54', '2021-01-25 10:00:54'),
('0a60a032dff93e6c4c3f18429399b8b32582583ad3babd344b6e2a4b8af4be47c08d8064f71c2792', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-17 05:06:26', '2020-01-17 05:06:26', '2021-01-17 10:36:26'),
('0ab55a7f68f890bf065c6aab99ff79f358dd3960e6e98f3b7ff4b8adea1b9b280b910790d05efd9c', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-29 11:17:52', '2020-01-29 11:17:52', '2021-01-29 06:17:52'),
('0c6c01f111ecf2bda325d92576ff780044ad05c48b32ca3f014ba8edf1ab34d4692c3453b59ba3b2', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-29 18:57:55', '2020-01-29 18:57:55', '2021-01-29 13:57:55'),
('0cad0564ab169fe6e1f44ed92343d22ebb9085ec80dcc5f369db254fa4af4e0addcbb017ad16d34e', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-17 04:44:46', '2020-01-17 04:44:46', '2021-01-17 10:14:46'),
('0de2de7ec69a3091da881e4873ac1449267de43502e4e49dd8b554e3abe00990d6ed10e0b7e648ce', 1, 1, 'ParingAppUser', '[]', 0, '2020-01-17 04:43:04', '2020-01-17 04:43:04', '2021-01-17 10:13:04'),
('0e5f5a17edf77155383f525e6dd225c26fa9708e62b2a39e9e2a339d9203878de8e7e0b64ae78dd4', 1, 1, 'PayParkOwner', '[]', 0, '2019-12-20 05:12:37', '2019-12-20 05:12:37', '2020-12-20 10:42:37'),
('0ed1993f9d7a3bf7a31dffcca0742d4238bea8b6e68641a900f6a228cc1c83a69f4bbc6accd8b81c', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-24 15:02:09', '2020-01-24 15:02:09', '2021-01-24 10:02:09'),
('15d3707fdbe9dce2560e5301c64c9748698f54363c43cf671a4dfd7404cfc786b8a3a1a7831d2d38', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-25 13:04:38', '2020-01-25 13:04:38', '2021-01-25 08:04:38'),
('15f2e833beadafbd18151f92632cdfc1f1cab2d9fcf3924351fb204840bfed8f1e81d223dc2cd448', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-23 17:13:49', '2020-01-23 17:13:49', '2021-01-23 12:13:49'),
('1aa46b143838b39b6edfe2374b8907c68aa871e0cd57d3fbe016087e68b6fc2e0d4e0aa211d5fb05', 2, 1, 'ParingAppUser', '[]', 0, '2019-12-21 06:34:25', '2019-12-21 06:34:25', '2020-12-21 12:04:25'),
('1d8b8e38fd70db8908e9cce1aecc3d5fba6d53e30a87075d4166016f29b9ab444ad1373c1899e17e', 6, 1, 'PayParkOwner', '[]', 0, '2020-01-17 05:42:21', '2020-01-17 05:42:21', '2021-01-17 11:12:21'),
('1e7148d0f277438cc2fe20292c7c18bbf2bf952f097f153d484baf7adea4e983998cd85f58741300', 1, 1, 'PayParkOwner', '[]', 0, '2019-12-21 07:19:17', '2019-12-21 07:19:17', '2020-12-21 12:49:17'),
('1fb1dcd8d863fa55a470aeb7060b0821a3d897de49402b0a95081e30c461d711328d91e2d109f878', 4, 1, 'ParingAppUser', '[]', 0, '2019-11-19 06:01:18', '2019-11-19 06:01:18', '2020-11-19 11:31:18'),
('1ffb5a73e055a1388aaccdc9d133cfb6209d06ada598014cccc21761bde03ca6f41fdf8106025093', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-25 14:43:13', '2020-01-25 14:43:13', '2021-01-25 09:43:13'),
('200c57a2cda4d48a0c20e79849066d1955a430a827af44f9e208326b438fffad28973b9d03d84229', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-25 14:43:27', '2020-01-25 14:43:27', '2021-01-25 09:43:27'),
('205dd24dfe5bf3905b2cd0e89d408bd83c024c506d77d891faab9fdbbaf530a67d2b2805184e0839', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-24 15:35:05', '2020-01-24 15:35:05', '2021-01-24 10:35:05'),
('213693b426fa174969cf7d5f3e58bba3fddeb7b4ca24902ee1c63d57de3e443f9e7dd8d0efc2bb1e', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-16 23:59:58', '2020-01-16 23:59:58', '2021-01-17 05:29:58'),
('21a7720aba5d8d154019a8c5b3c1efa9a131bb7b6674ae8cff94d2921cf60a8bf3c378bcb242da3b', 3, 1, 'PayParkOwner', '[]', 0, '2019-11-29 06:33:56', '2019-11-29 06:33:56', '2020-11-29 12:03:56'),
('2252d44606a7f4680c2fbb6dfa621bd8ccd5d9faa1ad1ebc31ebd9c75e8d6eb31ad125eb8619f10e', 3, 1, 'ParingAppUser', '[]', 0, '2019-12-23 01:29:14', '2019-12-23 01:29:14', '2020-12-23 06:59:14'),
('2327b5118aee3b751bf472492932693c9273b71abd102efcea000d6928c02e1a9197bf58adae887d', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-24 12:17:00', '2020-01-24 12:17:00', '2021-01-24 07:17:00'),
('23eec9a06dc7213ab112fa09f702404d37011b7e2d54390b0d83f86e306929f25d134e943da1a04f', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-17 00:19:00', '2020-01-17 00:19:00', '2021-01-17 05:49:00'),
('24f7fe896e6065ccca47718ac91a319c14c562759aa48a88aa6f7b6ef42c1d089e9b19e225ab65a6', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-22 22:18:55', '2020-01-22 22:18:55', '2021-01-22 17:18:55'),
('250f74c89a2551aec64cf81e7cf78dad788fd37388bef24b93bd2bed340125c3c2d23ab3b1ed088f', 13, 1, 'ParingAppUser', '[]', 0, '2020-01-22 01:45:11', '2020-01-22 01:45:11', '2021-01-22 07:15:11'),
('2686d4b23bd7609d68df2fde2ec078d5af670e7276fe6f1335b1452f7fba9af683bcfcaf8740a7bd', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-25 14:42:27', '2020-01-25 14:42:27', '2021-01-25 09:42:27'),
('2cb5018e8d875061f7c827556ed144440e2370c5070b87a488e6ac46c5632d59c87548fd79aa18e8', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-24 15:15:44', '2020-01-24 15:15:44', '2021-01-24 10:15:44'),
('2d6e6fde5cb38f87c78032bf969c9534bca6678045e72f02ec56e9f45ca708b117ae7de8ddf9661e', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-29 16:38:58', '2020-01-29 16:38:58', '2021-01-29 11:38:58'),
('318ca060068b235b1d8b5e185aa7f3c1b170dcb0c9d31338504056e6ccc8d4221593f15c603c07b3', 3, 1, 'ParingAppUser', '[]', 0, '2019-12-23 01:30:49', '2019-12-23 01:30:49', '2020-12-23 07:00:49'),
('33d5fc9ae203650c3a34039d12e571719119f2c3e730ef1d0e9990191bece53cc58b4cfbcb1faba8', 1, 1, 'PayParkOwner', '[]', 0, '2019-12-23 07:24:00', '2019-12-23 07:24:00', '2020-12-23 12:54:00'),
('34e6d3f8d31eaf954a336a721ddea346f2bab1530bccd1061bd1ee20799908160fd94956ee87bf5a', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-22 22:27:44', '2020-01-22 22:27:44', '2021-01-22 17:27:44'),
('35ce0c8994cdaebae0317c223ff7873e611820d72f92a39646b29d7fc1d0f1ac35bf95d425b7e080', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-24 12:20:04', '2020-01-24 12:20:04', '2021-01-24 07:20:04'),
('35d9ace35f9c6b8e68f717dd2274bb98a3e6ca6a997e207d59911bde1bf94dde043a14b17545be26', 3, 1, 'PayParkOwner', '[]', 0, '2019-11-26 06:27:46', '2019-11-26 06:27:46', '2020-11-26 11:57:46'),
('38d2d31b0c42b9b6bfe575dc15ccc80d53a423a6d3bc481ceaf8e8e21211e2bc6f732325d6cae7c8', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-25 13:02:01', '2020-01-25 13:02:01', '2021-01-25 08:02:01'),
('3974f4f4e3c14c321cab4b079619a204d7816e28ae6f9469989ccf014dbf1eb316f568448f5f4a88', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-25 16:39:27', '2020-01-25 16:39:27', '2021-01-25 11:39:27'),
('39753e82c26ca7076a4cf4ad1513664e718c466e69c3e655b666626b10aafa6458b18b3e47818bab', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-25 12:56:34', '2020-01-25 12:56:34', '2021-01-25 07:56:34'),
('3a35476d5ddbb87d95c349883edf4ec0b72962763d9e264580cc14f2a792783053b0933822ce1a05', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-25 16:38:56', '2020-01-25 16:38:56', '2021-01-25 11:38:56'),
('3ac65fce3d3b4e042ef2a40775ee88b9600322532cefce34372a1428a43564c3f50d222c0c8caa83', 18, 1, 'ParingAppUser', '[]', 0, '2020-01-22 03:39:57', '2020-01-22 03:39:57', '2021-01-22 09:09:57'),
('3b182f48b45a3d31e57f655d2eb041a53a859b54a1b78dc111880b16c195ff7035c17b5a7314dd23', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-25 14:45:46', '2020-01-25 14:45:46', '2021-01-25 09:45:46'),
('3c4ee9ab9e1c98347d258159e59e5bd86d3f2b0d72a274f3ef7c342b06c43dbe5a7083ccb7e8eb19', 2, 1, 'PayParkOwner', '[]', 0, '2019-12-21 07:12:56', '2019-12-21 07:12:56', '2020-12-21 12:42:56'),
('3ded9b3d032bae54539b2594dbb48f5b264d1e50f5936e2955dddf9757bd87ac7a0e33330dbcdde6', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-29 16:36:11', '2020-01-29 16:36:11', '2021-01-29 11:36:11'),
('3e57db656d823c6ae3025bd46cd53fec89af86560dc02d101fd92f1a3cda53d1f8e7f5a164ad2441', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-31 19:49:41', '2020-01-31 19:49:41', '2021-01-31 14:49:41'),
('44585d1686802024cd53724f34903892fc659c003abfbe27de8241c482e805a3d385c39be1162056', 1, 1, 'PayParkOwner', '[]', 0, '2019-12-26 05:15:48', '2019-12-26 05:15:48', '2020-12-26 10:45:48'),
('474743db3735392c130b5398c98500931e57bd06cf645ffe0e4f67991ada2bfce92374d69fae15cb', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-25 14:56:24', '2020-01-25 14:56:24', '2021-01-25 09:56:24'),
('4793cf6c1ae19ad075da337edc56832112da067237ee8c5413d95ed86faaa2f7f06b2f4d87ee7af5', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-30 02:34:39', '2020-01-30 02:34:39', '2021-01-29 21:34:39'),
('49a3c5456e7957d4faa1b7bd068f2fa33db192e8e86d52d90a97b7b91f1c5280b2af7be989ab5949', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-17 00:03:13', '2020-01-17 00:03:13', '2021-01-17 05:33:13'),
('4a97b4cdc5f01e8fc6fc04628ab913b5b7acb799de0b6800dba64f86d7850bff176a88aa9f77bdc2', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-29 21:52:47', '2020-01-29 21:52:47', '2021-01-29 16:52:47'),
('4cd3ec95259cd1101452fa7314d31c2c24ad35aeb23a945eb3c3eaafe9d2518621946944ecf4419b', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-24 15:23:50', '2020-01-24 15:23:50', '2021-01-24 10:23:50'),
('4fe56be7187b7ccca4e5438d3f659a9018d8dfa84184d73bd092f96315084f4bfc7767eeff938e79', 5, 1, 'ParingAppUser', '[]', 0, '2019-11-19 06:05:16', '2019-11-19 06:05:16', '2020-11-19 11:35:16'),
('532b6f70b7ef0cc662403a507d76a27517a286e7ec03c5fe1c97f4be03db4889fd99eb5ffe350e3f', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-24 15:41:12', '2020-01-24 15:41:12', '2021-01-24 10:41:12'),
('550ace4bbb1d3876a3639f7b6b7a93075a6a04ee46e3312f7ee6e949eb116a4f471b24e62cbd9766', 7, 1, 'ParingAppUser', '[]', 0, '2019-11-20 23:38:34', '2019-11-20 23:38:34', '2020-11-21 05:08:34'),
('585e7613fa3cfc2833e4458be0dc9b1ee309eb2c57d8731345783682d343c737567ad3f905700800', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-24 15:06:39', '2020-01-24 15:06:39', '2021-01-24 10:06:39'),
('59265c3a7e8192aad4a20cb408904aad03a4aa3f26880e654a6e2908d0b8684eaadb4cf024420dc3', 7, 1, 'PayParkOwner', '[]', 0, '2019-11-20 23:48:27', '2019-11-20 23:48:27', '2020-11-21 05:18:27'),
('59887ba4b7adfd2bdac0975e87de0652176df1bbde1fa03d336bd750489c5f484056b99f80d104d2', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-25 14:48:42', '2020-01-25 14:48:42', '2021-01-25 09:48:42'),
('5ad3140a1b9007f08068759c2e76ccc4e02294977b05458d1a5712f212de7ac17634888328bd7eb8', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-22 04:22:13', '2020-01-22 04:22:13', '2021-01-22 09:52:13'),
('5dcdb86bcfe66e5293342e83f16112bc28ee27d35bb6cda563a03b0747dc21ef77e3825961599fc9', 12, 1, 'ParingAppUser', '[]', 0, '2020-01-17 05:56:26', '2020-01-17 05:56:26', '2021-01-17 11:26:26'),
('5f1ff4fd005f61b8c18d39b5bc491bf9503f7b5da8549a03ba1fc818973995694ad8796ee6bac003', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-25 11:37:19', '2020-01-25 11:37:19', '2021-01-25 06:37:19'),
('60419410a85940eccc60f61f021c306d73c853761c97757ea9cb6e3e12a7ddf18b80225b2cecc50f', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-24 18:13:27', '2020-01-24 18:13:27', '2021-01-24 13:13:27'),
('637666776c0e29749417dbd8cbc738e5931d2adb6484b349f11bcd5cdafb90c3ed7608d0dda593b3', 3, 1, 'owner', '[]', 0, '2019-11-26 04:47:29', '2019-11-26 04:47:29', '2020-11-26 10:17:29'),
('64cdd5fe090f100af72631729e41f321bf387ad4817160d36e5d6746e4520aea544ebe93103d8b0f', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-25 13:03:02', '2020-01-25 13:03:02', '2021-01-25 08:03:02'),
('6505c4fb10608bc59477d4af65e42eab98935e1ad208176babdd53fecb181f58749f2acb6167f946', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-25 12:48:15', '2020-01-25 12:48:15', '2021-01-25 07:48:15'),
('65211e0ca8cbd8e0234ff3dee19db67bf69371bda5b8a4488e090291c625deba35204db7ff45e08a', 1, 1, 'PayParkOwner', '[]', 0, '2019-12-24 01:41:47', '2019-12-24 01:41:47', '2020-12-24 07:11:47'),
('6930dc23fbc867a2dcef943489ab2220ece620524b4858559ddebda2ebda8ea9e2805b425e21b896', 2, 1, 'ParingAppUser', '[]', 0, '2019-12-21 06:38:16', '2019-12-21 06:38:16', '2020-12-21 12:08:16'),
('6ce2f4ba8e51cf8009f35a3fe8fb35e08512a68619975da24643b644930e34da67509e4fd0116a60', 1, 1, 'PayParkOwner', '[]', 0, '2019-12-12 05:33:54', '2019-12-12 05:33:54', '2020-12-12 11:03:54'),
('6fc734cf60eb10d3e55f4a0514050209cbed1cd06fb2f723563a7a05db6375ffacefb17726915a4a', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-17 04:45:46', '2020-01-17 04:45:46', '2021-01-17 10:15:46'),
('708c64bfd44f33333cd91cfc5619e7d38dfe227fef90d6be2487ed6f317b3473aa3000417495435d', 8, 1, 'ParingAppUser', '[]', 0, '2020-01-17 05:39:19', '2020-01-17 05:39:19', '2021-01-17 11:09:19'),
('7160c92bc55e99532d60d6983842eb5561d4204f96dc85aeb18eceb22d88331f8c2bcabcc28ef04a', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-22 07:29:20', '2020-01-22 07:29:20', '2021-01-22 12:59:20'),
('71bc83c363a71da51ed4fe916136f54eaa374e2991e16496aedfe048e1055d8e266621ee2e3c6750', 4, 1, 'ParingAppUser', '[]', 0, '2020-01-17 05:32:45', '2020-01-17 05:32:45', '2021-01-17 11:02:45'),
('73ec705413afc9a88f3c4d116fa979cb30cd5406036bca31516a8d5c7a88c384c5dddf7d41da54b9', 7, 1, 'PayParkOwner', '[]', 0, '2019-11-28 04:10:18', '2019-11-28 04:10:18', '2020-11-28 09:40:18'),
('74a179f33a673f54c965f5513a769d58e805837436de9dab471353491034fd61c3e7d9069bb0002c', 1, 1, 'PayParkOwner', '[]', 0, '2019-12-23 02:16:38', '2019-12-23 02:16:38', '2020-12-23 07:46:38'),
('773e6c89005c53f747468fd341ac6f0d8d95a382cfacdeb0e7ee6f670e6ce2c165f6cfaa9e4b3556', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-29 16:35:06', '2020-01-29 16:35:06', '2021-01-29 11:35:06'),
('783d7933ba84ff19f130c4766642ea247527a12cbcd11bf8e7b185e255c396f4b6e68046a3f00fa2', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-30 17:18:22', '2020-01-30 17:18:22', '2021-01-30 12:18:22'),
('7a88f1010c01b6c90af16ed8cd3bfdf36989eaf3451d46171d00a78f8fe24c20340b4493f1d4f081', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-25 13:07:01', '2020-01-25 13:07:01', '2021-01-25 08:07:01'),
('81bc46bbe51a8d6741387297da8f02d336ea67dbaa566529fbb32ef0d3b378741109fb547576f8c2', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-24 12:25:22', '2020-01-24 12:25:22', '2021-01-24 07:25:22'),
('83cfac4dba3b9ded816ed0c29b236e82418ef16729e9596156c0ca777f96a185b7bb6e95016dadb4', 2, 1, 'ParingAppUser', '[]', 0, '2020-01-17 05:28:40', '2020-01-17 05:28:40', '2021-01-17 10:58:40'),
('83d50b43f62c78c95148f8da4d824a98d2ba963893e09c8699b5bb5e4c1a4baf2b1c5bb627f571a4', 15, 1, 'ParingAppUser', '[]', 0, '2020-01-22 03:36:03', '2020-01-22 03:36:03', '2021-01-22 09:06:03'),
('84c709dc0aff6c9e6d5aac7a4174525a64e2d5b9ea0fecbe66069831f96d061ac0e94db0a1743b3b', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-29 11:25:51', '2020-01-29 11:25:51', '2021-01-29 06:25:51'),
('87402ce6bf1c3f4756d16ecfc9281d16b90e47d90732445c377e8c4243e88da77c3513e48efa3d83', 1, 1, 'PayParkOwner', '[]', 0, '2019-12-20 05:15:40', '2019-12-20 05:15:40', '2020-12-20 10:45:40'),
('8e3ac63e2f4a3867937c56e300088598f0c98c300cb9aa00c6d561327ad5d376e5acb43760b61eee', 1, 1, 'PayParkOwner', '[]', 0, '2019-12-24 04:13:56', '2019-12-24 04:13:56', '2020-12-24 09:43:56'),
('908c390992595316832314bf997d79899cdff894829233940735a84ad5955adf92ba7d44d360777e', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-23 17:19:43', '2020-01-23 17:19:43', '2021-01-23 12:19:43'),
('9494374f5a483354687d01eea38f7ea9c4c4505e25a1234b2ed69236b82ebe8c9184c12a15a82944', 6, 1, 'ParingAppUser', '[]', 0, '2019-11-20 23:20:57', '2019-11-20 23:20:57', '2020-11-21 04:50:57'),
('9866a39987f8a163c2d5e89ec74270f9ca4324015ab4c79b61b911b730053c3da0c76889e4dab83a', 20, 1, 'ParingAppUser', '[]', 0, '2020-01-22 03:56:31', '2020-01-22 03:56:31', '2021-01-22 09:26:31'),
('9a55b22937ad922bfec198983575931c69b466a84a2c40862ef119a19006127d1eb548d680738b41', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-29 17:12:54', '2020-01-29 17:12:54', '2021-01-29 12:12:54'),
('9c1f0837ed0a0760daeeb01dcc009bfeca04ff9632b01f366e0d62e7f92604899576d0466c43002e', 2, 1, 'PayParkOwner', '[]', 0, '2019-11-07 01:07:12', '2019-11-07 01:07:12', '2020-11-07 06:37:12'),
('9cf7b89aaddcf65b6e8e880e5eba1fba7d4e1805078b585d4b218cc1c76cc0736467bafd6bca6812', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-29 19:02:20', '2020-01-29 19:02:20', '2021-01-29 14:02:20'),
('9d5e86b6ffe067e33a32cca9d7e9ab094617db69e98309727f9a364010e495fc27a9de699b0e53d1', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-25 13:00:11', '2020-01-25 13:00:11', '2021-01-25 08:00:11'),
('9ed632bc4cf026711b1681173d9435b8f687a23de432a8a0e2b712a1103f2f7e0c394d6dbb4ac7b6', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-24 15:39:41', '2020-01-24 15:39:41', '2021-01-24 10:39:41'),
('9f020547ff0ebbfd67540812e2aaf1a1f6efa59366ae3428d4ee1585a59ee8c0aee20b6033aa323f', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-24 12:18:19', '2020-01-24 12:18:19', '2021-01-24 07:18:19'),
('9f2e93564bff84bfbde93212e38b87eabaa795d1d46eb6de9930b4f365ecf1c9740aa9d757fb3aa1', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-25 10:16:19', '2020-01-25 10:16:19', '2021-01-25 05:16:19'),
('9fd769c50cb176053be26d24ea0cd66fd3b41c986f29f5e0c6a109414f26ae60d4108a7f15ffc086', 6, 1, 'ParingAppUser', '[]', 0, '2020-01-17 05:34:33', '2020-01-17 05:34:33', '2021-01-17 11:04:33'),
('a2fb311575d28378a0168396aee6ea0123ce1f1773776cfad5f5b063568d9dad59565884f6706e2c', 4, 1, 'PayParkOwner', '[]', 0, '2019-12-12 05:30:06', '2019-12-12 05:30:06', '2020-12-12 11:00:06'),
('a3b182c631e4b715bc86fb9f9b56e84fdc943a0856e14641cde407cba554bd2efff19aff1efd6214', 19, 1, 'ParingAppUser', '[]', 0, '2020-01-22 03:41:49', '2020-01-22 03:41:49', '2021-01-22 09:11:49'),
('a412c9336685daa9ea67a1a570fe7bc9b6db4f36ab0c0bc18f17ba2993b81e8e77f2d34035c2f817', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-17 03:19:32', '2020-01-17 03:19:32', '2021-01-17 08:49:32'),
('a46f6e191184d830d2426d359ad47316f42b27dec609acffa4b23167f9b18dc6d674d62e36ecc5ef', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-29 16:28:31', '2020-01-29 16:28:31', '2021-01-29 11:28:31'),
('a69f8ada518aa7c0fb455da3006d14e282e8ae3def749820258805f97aa46dade262aecd9397e126', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-25 12:50:04', '2020-01-25 12:50:04', '2021-01-25 07:50:04'),
('a83f6d3672d78cb0ed9c5be1a623eb2bea5c3b9b9024aa4c3870bcb19a64d8d99d24031b23992e8c', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-23 17:06:01', '2020-01-23 17:06:01', '2021-01-23 12:06:01'),
('a9055107a5a3828831cd28072af1b84846d54fe1d65c03dd7f25791ad8302da817d836ebfb8a5559', 3, 1, 'ParingAppUser', '[]', 0, '2019-11-07 04:00:31', '2019-11-07 04:00:31', '2020-11-07 09:30:31'),
('aa7c87dc108c4d0298458fa9f1489e7ffa57074c7608d7c58ab70f8892d1657afcfbed09e069eae8', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-24 15:25:15', '2020-01-24 15:25:15', '2021-01-24 10:25:15'),
('b38251eec34a8f7580825cc806a3d0994404100ec7d92927d30b0da5109eed616fce8487227222cb', 1, 1, 'PayParkOwner', '[]', 0, '2019-12-24 06:35:30', '2019-12-24 06:35:30', '2020-12-24 12:05:30'),
('b38d45bc4cc39e20ac7b6c4851cccb5faea08691864ba75cbcade687884fcd288a39f1fdd04feaff', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-23 17:17:08', '2020-01-23 17:17:08', '2021-01-23 12:17:08'),
('b41fd60e1a45262488c74ae39212aad5e9d68d570d3a33dc92d94b7169b705f0209a45d4f734c011', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-24 14:28:58', '2020-01-24 14:28:58', '2021-01-24 09:28:58'),
('b54747d84b36e4abd05f4903f084b4d53ed891e7838119232abf3c2d8e1ee1d9d7da3c34a8d3cdd4', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-25 15:01:30', '2020-01-25 15:01:30', '2021-01-25 10:01:30'),
('b597adc6ac7873e4a0c6b83476112e8aa79c046f094091bb8e535ed8426df4efff8222b0dafae529', 1, 1, 'ParingAppUser', '[]', 0, '2020-01-17 04:42:07', '2020-01-17 04:42:07', '2021-01-17 10:12:07'),
('b99ed9d82be189c63f23cc74fdfde20ed81fe1920fa93564afb2dc4161c495737c456eb66bae3884', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-25 16:37:23', '2020-01-25 16:37:23', '2021-01-25 11:37:23'),
('bafbee890d8e95948b2ebdbf2d18892a91ee18dea25fb9b574848a91725809267a629c74ffee3f1e', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-25 14:42:04', '2020-01-25 14:42:04', '2021-01-25 09:42:04'),
('bdb5643d1e52cd4d23cdc5a6fb4b1b8551f88744111cbccf117f23ed723389fbfc9b81d1d336dee4', 4, 1, 'PayParkOwner', '[]', 0, '2019-12-12 05:27:55', '2019-12-12 05:27:55', '2020-12-12 10:57:55'),
('bfba552221469ce6dfc7cd986e041164b51d4f65ab0e0e30947e19822bd6f74c5078deffa0a47452', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-24 15:45:02', '2020-01-24 15:45:02', '2021-01-24 10:45:02'),
('bfea804c69749b74f34534e62c168fe60a9e2ee1debc1f6a0cd1f2d72ba7b1b214a1d3afee6dce5a', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-25 12:54:00', '2020-01-25 12:54:00', '2021-01-25 07:54:00'),
('bff500e4ef7963354bf9ce88dc3ca90789a728cae8f539aa3f7a138002b65c22f3dd3e26d8667b86', 1, 1, 'PayParkOwner', '[]', 0, '2019-12-20 07:46:35', '2019-12-20 07:46:35', '2020-12-20 13:16:35'),
('c3c540d6d2d2da1a748401abce1731d26f549fad82b5e9f31538d8ddbf663848abbd67ae7fd74711', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-25 12:04:22', '2020-01-25 12:04:22', '2021-01-25 07:04:22'),
('c3cb20901945225d29c5f9efb1d2c1a8752c5a4c0c6b59a16119bd3e12db493651298cf270a7d0fe', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-25 13:05:44', '2020-01-25 13:05:44', '2021-01-25 08:05:44'),
('c86ab2d050053a2f04c06c68e4b9417f7c86bab227ec409dd346ba49743816423bbaf02afba9754d', 3, 1, 'ParingAppUser', '[]', 0, '2020-01-17 05:31:09', '2020-01-17 05:31:09', '2021-01-17 11:01:09'),
('ca94ab9cb775f54264274e7a9a1247fbd0fbe3d125262c46e32bd81abf4b8eaee790f0a5ab694b3f', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-24 18:12:21', '2020-01-24 18:12:21', '2021-01-24 13:12:21'),
('ca9655056272e85beadc8a1b7c018b8ebd6e8ba2916ccb70bba98e293ef860e2a46ab5e441ebc67a', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-29 11:18:22', '2020-01-29 11:18:22', '2021-01-29 06:18:22'),
('cd6864e5e7bcea36d6610d3e107c95c80a918aa90d3a86776495fb95d9794622c41add6eb2bbed2b', 16, 1, 'ParingAppUser', '[]', 0, '2020-01-22 03:37:29', '2020-01-22 03:37:29', '2021-01-22 09:07:29'),
('ce901b1fdf6894afdc5da482481b5df1b37cc3e2980e3bf33216f12333a0fa6ac0ddca09e3f88177', 3, 1, 'PayParkOwner', '[]', 0, '2020-01-23 09:34:19', '2020-01-23 09:34:19', '2021-01-23 04:34:19'),
('cf33af2d060a27cf40d37cd37f089788790dcd6f3af56f7347765223e454814372741e0b6533183c', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-17 04:47:27', '2020-01-17 04:47:27', '2021-01-17 10:17:27'),
('d0acdc7f1bf5fad91ad1aa1a9a8446df43069aee8f0d1591d22d581f3b33ac79bcdc33a97102ac25', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-25 14:57:46', '2020-01-25 14:57:46', '2021-01-25 09:57:46'),
('d2b636becfee850f3cd15f7caa53adf7d7ec4efadde20897142a316632f652b6073ecdaaf5d2e0f5', 17, 1, 'ParingAppUser', '[]', 0, '2020-01-22 03:38:49', '2020-01-22 03:38:49', '2021-01-22 09:08:49'),
('d2ed101ada53e094646c5290add6b1168f45d3bbc00a9bc0377395b9d1d2bb7669ab6c22c6bb63a9', 1, 1, 'PayParkOwner', '[]', 0, '2019-12-12 05:39:26', '2019-12-12 05:39:26', '2020-12-12 11:09:26'),
('d377c4d61232990455a365184bbbb2246f865ce09ac62e229bb6973e749a41bf794be5709bfa4ef1', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-24 15:48:35', '2020-01-24 15:48:35', '2021-01-24 10:48:35'),
('d40e361158c981f75ba9ef220716ab949a54bec70b17315ce31b5df3cd8fb62999b951c61ade74f9', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-28 15:08:42', '2020-01-28 15:08:42', '2021-01-28 10:08:42'),
('d4d7f08f166a166e5cf43c2f3bca8a43f0324df020f9e0aa0cfa8c30f5a5a72fd9419f4521968463', 12, 1, 'ParingAppUser', '[]', 0, '2020-01-17 05:55:41', '2020-01-17 05:55:41', '2021-01-17 11:25:41'),
('d5c8ccbd0651cd5831b9d48efd72252bf4fee413976b407ad1ac5373d86b1229bb8bd68b8d6e6243', 14, 1, 'ParingAppUser', '[]', 0, '2020-01-22 01:46:14', '2020-01-22 01:46:14', '2021-01-22 07:16:14'),
('d68a97f35df1b2e6565318a36586c06ad1241221e5e3cb2ac3c61e5ce02b9048ce833cb6c26abcd2', 3, 1, 'PayParkOwner', '[]', 0, '2019-11-27 04:01:05', '2019-11-27 04:01:05', '2020-11-27 09:31:05'),
('d7faeebd368e6bac543d1b6e5fa51fcf2647a2385243781c76551bc30f11bd266ec28a04df5aa6eb', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-22 06:20:58', '2020-01-22 06:20:58', '2021-01-22 11:50:58'),
('d807dc35c892c2562f9487708cf927c97e031e5d4190ed21c693e0e71a50776ad4835c5134ad86eb', 9, 1, 'ParingAppUser', '[]', 0, '2020-01-17 05:39:33', '2020-01-17 05:39:33', '2021-01-17 11:09:33'),
('d8935f3b2982826de180478e0225521bfe42f1de5fb857217e62980157c63fcaf9c43c1a800ff213', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-25 17:16:55', '2020-01-25 17:16:55', '2021-01-25 12:16:55'),
('db44a9929f3bbad195b248ac7d828d415cd29b2a63b5e591f3ea05040f57fd51eecc5ad30b894e75', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-22 03:52:02', '2020-01-22 03:52:02', '2021-01-22 09:22:02'),
('ddcdaf46a4948e1b7dd75f999f4fdbf46298d2b6ffd7fc48335ba90fa67d462ee60ad1dca4766588', 7, 1, 'PayParkOwner', '[]', 0, '2019-11-21 00:13:17', '2019-11-21 00:13:17', '2020-11-21 05:43:17'),
('de38657e06629d046d5d8877285578f1b74a8f32cc3f9c853449ffb84f5d8ea0cd22d2c8f092c709', 1, 1, 'PayParkOwner', '[]', 0, '2019-12-20 07:55:06', '2019-12-20 07:55:06', '2020-12-20 13:25:06'),
('e01effff8dbef1ffc5fad3e2ab78a89c04712017a92a848258f7c30e8a960d32a9119730cb5ab8d4', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-24 12:18:47', '2020-01-24 12:18:47', '2021-01-24 07:18:47'),
('e02973feafba8ee8dc19f7360cdb5c4f24a2d290767ff6b2db5e0e09acbb54a4fd3f54e5d51fd32e', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-25 14:58:08', '2020-01-25 14:58:08', '2021-01-25 09:58:08'),
('e0794372cd3f2d556bc051f33c3db74576fa23d39a82f4219920d28b8609c4361bbf8cabe7bb3f1f', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-22 22:25:37', '2020-01-22 22:25:37', '2021-01-22 17:25:37'),
('e08cf47860eeb4a36bcda25b085fe5da362d2305ca27f7dfc7146cfede1b5c449e92d0a36e89ba2b', 3, 1, 'PayParkOwner', '[]', 0, '2019-12-21 07:16:03', '2019-12-21 07:16:03', '2020-12-21 12:46:03'),
('e0a5f5e70e97560c39470badae7eaf5728c89c0489f90b6d99e8220e821539301a4cbba198937fc2', 1, 1, 'PayParkOwner', '[]', 0, '2019-12-25 23:53:58', '2019-12-25 23:53:58', '2020-12-26 05:23:58'),
('e29c22b6ee11466125a259735cecb41792c1bed0e3c84cfbfd66f88878d7b466f7d5cb774f1a4c7e', 2, 1, 'ParingAppUser', '[]', 0, '2019-11-07 03:56:29', '2019-11-07 03:56:29', '2020-11-07 09:26:29'),
('e4fe2202ee9d70e0233d07cea0ba7f552574cc55e20205b0d684c0cbe1c90885e4b96120a6de1024', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-17 00:00:01', '2020-01-17 00:00:01', '2021-01-17 05:30:01'),
('e90c7d58af98aa3d656d85183fb3cfb65ab8df13702e29962176683730c23340ff811ffeecf8f21f', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-25 11:35:02', '2020-01-25 11:35:02', '2021-01-25 06:35:02'),
('e9e591cb4f5c6fb43ae2a075511227ffe59083f7eb1767e598b86c45225187567ad0c2f4d77e97c9', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-25 13:06:32', '2020-01-25 13:06:32', '2021-01-25 08:06:32'),
('eac55afa648e2e63fdad7e1964d0f0eb1defcf6970379887cae25b142483b4f3ba7f5636550e3285', 4, 1, 'ParingAppUser', '[]', 0, '2019-12-26 06:19:51', '2019-12-26 06:19:51', '2020-12-26 11:49:51'),
('eb2ef6f752d5e7382570f36b6035e4281351c551ff10f84c5b24b2e61e1ca85dcb08a14137589ea1', 3, 1, 'PayParkOwner', '[]', 0, '2019-12-23 02:15:57', '2019-12-23 02:15:57', '2020-12-23 07:45:57'),
('ef5fc78c18b7141decc051c04ab3a1347198d58e3e1e4783ab6a9a56f099b0c8f10bde599912254f', 14, 1, 'ParingAppUser', '[]', 0, '2020-01-22 01:46:38', '2020-01-22 01:46:38', '2021-01-22 07:16:38'),
('ef7a0fabe3d79cdd75072c09d29cc4b915e07bbabca9b1f5498fe002afa13fbcb002eecb70c80ba9', 1, 1, 'PayParkOwner', '[]', 0, '2019-12-23 06:39:36', '2019-12-23 06:39:36', '2020-12-23 12:09:36'),
('f0db03a7db36fb79f87ee42acc90ea4e470b8195b248fe5ebc2e2e9df48056943b1699f09bec7afc', 4, 1, 'PayParkOwner', '[]', 0, '2020-01-23 09:50:59', '2020-01-23 09:50:59', '2021-01-23 04:50:59'),
('f3a80d461a9ce588858a051d84412d032c1c78d8a9da0cc1e7c7aad3754b5de1e30236d068611242', 2, 1, 'PayParkOwner', '[]', 0, '2020-01-24 18:09:29', '2020-01-24 18:09:29', '2021-01-24 13:09:29'),
('f4d3d28dd15ce8675a03081d79f91017966df6946b2d66d25b7e4fa5b926c07f878709734ba4e37b', 1, 1, 'PayParkOwner', '[]', 0, '2020-01-29 21:34:37', '2020-01-29 21:34:37', '2021-01-29 16:34:37'),
('f990664494ae3429c1e516bb2bbf78f8c3d3e4c7c0f529924901bfb21b4bcee62e4dd4268af371cf', 2, 1, 'PayParkOwner', '[]', 0, '2019-11-07 01:06:59', '2019-11-07 01:06:59', '2020-11-07 06:36:59'),
('f9cd9eac94d3ed92adee11c5e74655cad168a6385631ec496c578ad72caff85e584c585dafd344b6', 4, 1, 'PayParkOwner', '[]', 0, '2019-12-21 07:17:16', '2019-12-21 07:17:16', '2020-12-21 12:47:16'),
('fad81787ac324991da57ad4c3a3db713f0088b403b44e4cdb49534284cf4cc0b2847609204545cb6', 7, 1, 'ParingAppUser', '[]', 0, '2020-01-17 05:38:45', '2020-01-17 05:38:45', '2021-01-17 11:08:45'),
('fc7b7d302b0d2bc82124ddde4c58079779e7c57c9c78e87433fb649de7265ecdb07361d5d1d1a400', 5, 1, 'ParingAppUser', '[]', 0, '2020-01-17 05:33:47', '2020-01-17 05:33:47', '2021-01-17 11:03:47'),
('fd730f2878ae4c851cf7e50b28d81ce43ee3a4317f6aba866b5590f891b3ba3576510b3846fc97dc', 2, 1, 'PayParkOwner', '[]', 0, '2019-11-07 01:22:30', '2019-11-07 01:22:30', '2020-11-07 06:52:30'),
('ff2d95aae5d4757ded622bc2a4742a8b900cb473743bf3466a109dd4ee13be299584c2ef22bb979a', 1, 1, 'ParingAppUser', '[]', 0, '2019-12-12 06:07:34', '2019-12-12 06:07:34', '2020-12-12 11:37:34');

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
(1, NULL, 'Laravel Personal Access Client', 'zkSaR2657atCqET8UAuwGCzf3823Kd4ZiRLtqTjq', 'http://localhost', 1, 0, 0, '2019-11-07 01:01:57', '2019-11-07 01:01:57'),
(2, NULL, 'Laravel Password Grant Client', 'g0wO8v5pKZJjaPPSQuOIQn3b0o0ro7NYznZWL3Cc', 'http://localhost', 0, 1, 0, '2019-11-07 01:01:57', '2019-11-07 01:01:57');

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
(1, 1, '2019-11-07 01:01:57', '2019-11-07 01:01:57');

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
-- Table structure for table `parking_booking`
--

CREATE TABLE `parking_booking` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `space_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL,
  `payment_type` varchar(10) NOT NULL DEFAULT 'ONLINE',
  `payment_token` varchar(255) NOT NULL DEFAULT 'NO TOKEN',
  `payment_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = renaing , 1 complate 2 = cancel',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 waiting , 1 = approved , 2 = complate ,3 cancel',
  `arriving_time` datetime NOT NULL,
  `leaving_time` datetime NOT NULL,
  `total_amount` float NOT NULL,
  `order_no` varchar(255) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parking_guard`
--

CREATE TABLE `parking_guard` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `space_id` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `image` varchar(50) DEFAULT 'default.jpg',
  `password` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parking_image`
--

CREATE TABLE `parking_image` (
  `id` int(11) NOT NULL,
  `space_id` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parking_owner`
--

CREATE TABLE `parking_owner` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `image` varchar(50) DEFAULT 'default.jpg',
  `password` varchar(255) NOT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `verified` int(1) NOT NULL DEFAULT '1',
  `status` int(1) NOT NULL DEFAULT '1',
  `stripe_pk` varchar(255) DEFAULT NULL,
  `stripe_sk` varchar(255) DEFAULT NULL,
  `subscription_status` int(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parking_owner_setting`
--

CREATE TABLE `parking_owner_setting` (
  `owner_id` int(11) NOT NULL,
  `stripe_pk` varchar(255) DEFAULT NULL,
  `stripe_sk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parking_space`
--

CREATE TABLE `parking_space` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `vehicle_types` text,
  `title` varchar(100) NOT NULL,
  `description` text,
  `facilities` text,
  `address` varchar(254) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `price_par_hour` float NOT NULL DEFAULT '0',
  `phone_number` varchar(20) DEFAULT NULL,
  `open_time` time DEFAULT NULL,
  `close_time` time DEFAULT NULL,
  `available_all_day` int(11) NOT NULL,
  `offline_payment` int(1) NOT NULL DEFAULT '0',
  `verified` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `space_id` int(11) NOT NULL,
  `star` float NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `space_slot`
--

CREATE TABLE `space_slot` (
  `id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `space_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `space_zone`
--

CREATE TABLE `space_zone` (
  `id` int(11) NOT NULL,
  `space_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_buy`
--

CREATE TABLE `subscription_buy` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `plan_id` varchar(255) NOT NULL,
  `sub_id` varchar(25) NOT NULL,
  `price` float NOT NULL,
  `start_at` datetime NOT NULL,
  `end_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$.zKb0b0vFKVhlFcokNNgo.A2htTOhR3OpGBBIKOx2ViAH30fQeJsu', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_vehicle`
--

CREATE TABLE `user_vehicle` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `vehicle_no` varchar(50) NOT NULL,
  `vehicle_type_id` int(11) NOT NULL,
  `default_vehicle` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type`
--

CREATE TABLE `vehicle_type` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_setting`
--
ALTER TABLE `admin_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_users`
--
ALTER TABLE `app_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
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
-- Indexes for table `parking_booking`
--
ALTER TABLE `parking_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `space_id` (`space_id`,`user_id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `slot_id` (`slot_id`);

--
-- Indexes for table `parking_guard`
--
ALTER TABLE `parking_guard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `space_id` (`space_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `parking_image`
--
ALTER TABLE `parking_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `space_id` (`space_id`);

--
-- Indexes for table `parking_owner`
--
ALTER TABLE `parking_owner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parking_space`
--
ALTER TABLE `parking_space`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`space_id`),
  ADD KEY `space_id` (`space_id`);

--
-- Indexes for table `space_slot`
--
ALTER TABLE `space_slot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zone_id` (`zone_id`,`space_id`),
  ADD KEY `space_id` (`space_id`);

--
-- Indexes for table `space_zone`
--
ALTER TABLE `space_zone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `space_id` (`space_id`,`owner_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `subscription_buy`
--
ALTER TABLE `subscription_buy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_vehicle`
--
ALTER TABLE `user_vehicle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_setting`
--
ALTER TABLE `admin_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_users`
--
ALTER TABLE `app_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `parking_booking`
--
ALTER TABLE `parking_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parking_guard`
--
ALTER TABLE `parking_guard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parking_image`
--
ALTER TABLE `parking_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parking_owner`
--
ALTER TABLE `parking_owner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parking_space`
--
ALTER TABLE `parking_space`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `space_slot`
--
ALTER TABLE `space_slot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `space_zone`
--
ALTER TABLE `space_zone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_buy`
--
ALTER TABLE `subscription_buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_vehicle`
--
ALTER TABLE `user_vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `parking_booking`
--
ALTER TABLE `parking_booking`
  ADD CONSTRAINT `parking_booking_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `app_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `parking_booking_ibfk_3` FOREIGN KEY (`owner_id`) REFERENCES `parking_owner` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `parking_booking_ibfk_5` FOREIGN KEY (`vehicle_id`) REFERENCES `user_vehicle` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `parking_booking_ibfk_6` FOREIGN KEY (`space_id`) REFERENCES `parking_space` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `parking_booking_ibfk_7` FOREIGN KEY (`slot_id`) REFERENCES `space_slot` (`id`);

--
-- Constraints for table `parking_guard`
--
ALTER TABLE `parking_guard`
  ADD CONSTRAINT `parking_guard_ibfk_1` FOREIGN KEY (`space_id`) REFERENCES `parking_space` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `parking_guard_ibfk_2` FOREIGN KEY (`owner_id`) REFERENCES `parking_owner` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `parking_image`
--
ALTER TABLE `parking_image`
  ADD CONSTRAINT `parking_image_ibfk_1` FOREIGN KEY (`space_id`) REFERENCES `parking_space` (`id`);

--
-- Constraints for table `parking_space`
--
ALTER TABLE `parking_space`
  ADD CONSTRAINT `parking_space_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `parking_owner` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`space_id`) REFERENCES `parking_space` (`id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `app_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `space_slot`
--
ALTER TABLE `space_slot`
  ADD CONSTRAINT `space_slot_ibfk_1` FOREIGN KEY (`zone_id`) REFERENCES `space_zone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `space_slot_ibfk_2` FOREIGN KEY (`space_id`) REFERENCES `parking_space` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `space_zone`
--
ALTER TABLE `space_zone`
  ADD CONSTRAINT `space_zone_ibfk_1` FOREIGN KEY (`space_id`) REFERENCES `parking_space` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `space_zone_ibfk_2` FOREIGN KEY (`owner_id`) REFERENCES `parking_owner` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subscription_buy`
--
ALTER TABLE `subscription_buy`
  ADD CONSTRAINT `subscription_buy_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `parking_owner` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_vehicle`
--
ALTER TABLE `user_vehicle`
  ADD CONSTRAINT `user_vehicle_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `app_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
