-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 07, 2023 at 03:53 PM
-- Server version: 8.0.34
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cyphered_pos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int UNSIGNED NOT NULL,
  `account_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_balance` double DEFAULT NULL,
  `total_balance` double NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `account_no`, `name`, `initial_balance`, `total_balance`, `note`, `is_default`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '11111', 'Sales Account', 1000, 1000, 'this is first account', 0, 0, '2018-12-18 14:58:02', '2022-07-16 07:53:55'),
(3, '21211', 'Sa', 0, 0, '', 0, 0, '2018-12-18 14:58:56', '2022-07-16 07:54:06'),
(5, '67665677', 'Ventas', 1000, 1000, NULL, 1, 1, '2022-07-16 07:53:28', '2022-07-16 07:53:44'),
(6, '76344547', 'Compras', 1000, 1000, NULL, NULL, 1, '2022-07-16 07:54:36', '2022-07-16 07:54:36'),
(7, '696577665', 'Gastos', 1000, 1000, NULL, NULL, 1, '2022-07-16 07:54:55', '2022-07-16 07:54:55'),
(8, '72010107781164', 'Meezan Bank', 1200000, 1200000, NULL, NULL, 1, '2023-09-30 13:02:57', '2023-09-30 13:02:57');

-- --------------------------------------------------------

--
-- Table structure for table `adjustments`
--

CREATE TABLE `adjustments` (
  `id` int UNSIGNED NOT NULL,
  `reference_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int NOT NULL,
  `document` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_qty` double NOT NULL,
  `item` int NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `employee_id` int NOT NULL,
  `user_id` int NOT NULL,
  `checkin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billers`
--

CREATE TABLE `billers` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billers`
--

INSERT INTO `billers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Shoukat Ullah', NULL, 'ScrapeMaster', NULL, 'shoukat.bjr@gmail.com', '03005312937', 'Flat No 4 ( First Floor ) Block No 2 PHA G7/2 Islamabad', 'Islamabad', 'Islāmābād', '44000', 'Pakistan', 0, '2023-08-09 16:32:05', '2023-09-13 08:14:07'),
(2, 'JAZAA', NULL, 'JAZAA', NULL, 'vkjfnmmgvh@gmail.com', '03125825173', 'Islamabad', 'Islamabad', NULL, NULL, 'pakistan', 0, '2023-09-12 16:28:00', '2023-09-13 10:15:55'),
(3, 'Ali Khan', 'Zora.jpg', 'Zora', NULL, 'as12@gmail.com', '03489637770', 'Khall', 'pakistan', NULL, NULL, NULL, 1, '2023-09-13 08:04:47', '2023-09-13 10:40:40'),
(4, 'Altaf', 'YardleyKodomo.jpg', 'Yardley Kodomo', NULL, 'ases12@gmail.com', '03480907406', 'Hayaserai', 'tmg', NULL, NULL, NULL, 1, '2023-09-13 08:09:57', '2023-09-13 10:40:13'),
(5, 'Fehan Ahmad', 'Jazaa.jpg', 'Jazaa', NULL, 'asdag12@gmail.com', '03139244501', 'sharkhani', 'pakistan', NULL, NULL, NULL, 1, '2023-09-13 08:12:54', '2023-09-13 10:39:39'),
(6, 'Lahore Trader Timargara', 'LahoreTraderTimargara.jpg', 'Lahore Trader Timargara', NULL, 'dawlat.ali12@gmail.com', '03099315283', 'Chana Markit Malak Palaza', 'Timargara', NULL, NULL, 'Pakistan', 1, '2023-09-13 10:08:22', '2023-09-13 10:37:52'),
(7, 'Dawlat Khan', NULL, 'opan', NULL, 'hgftfxz22@gmail.com', '0302800599', 'Chana Markit Malak Palaza', 'Timargara', NULL, NULL, 'Pakistan', 1, '2023-10-04 15:44:30', '2023-10-04 15:44:30');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Jazaa', '20230913124954.png', 1, '2023-08-09 16:30:47', '2023-09-13 10:49:54'),
(2, 'J.', NULL, 1, '2023-09-13 11:31:19', '2023-09-13 11:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `cash_registers`
--

CREATE TABLE `cash_registers` (
  `id` int UNSIGNED NOT NULL,
  `cash_in_hand` double NOT NULL,
  `user_id` int NOT NULL,
  `warehouse_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cash_registers`
--

INSERT INTO `cash_registers` (`id`, `cash_in_hand`, `user_id`, `warehouse_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2023-09-12 17:17:56', '2023-09-12 17:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `parent_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Cosmatic', NULL, NULL, 1, '2023-08-09 16:32:51', '2023-08-09 16:32:51'),
(2, 'JAZAA', NULL, NULL, 1, '2023-09-12 16:32:32', '2023-09-12 16:32:32'),
(3, 'iqbal', NULL, NULL, 1, '2023-09-12 16:32:55', '2023-09-12 16:32:55'),
(4, 'Niraj Soap', NULL, NULL, 1, '2023-09-14 07:21:57', '2023-09-14 07:21:57'),
(5, 'Open', NULL, NULL, 1, '2023-09-30 11:03:10', '2023-09-30 11:03:10'),
(6, 'Ken Beauty', NULL, NULL, 1, '2023-10-03 08:23:50', '2023-10-03 08:23:50'),
(7, 'Zora Cosmetics', NULL, NULL, 1, '2023-10-07 08:41:10', '2023-10-07 08:41:10');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `minimum_amount` double DEFAULT NULL,
  `quantity` int NOT NULL,
  `used` int NOT NULL,
  `expired_date` date NOT NULL,
  `user_id` int NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'Rupies', 'PKR', 1, '2020-11-01 12:22:58', '2023-08-09 16:31:29');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int UNSIGNED NOT NULL,
  `customer_group_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` double DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `expense` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_group_id`, `user_id`, `name`, `company_name`, `email`, `phone_number`, `tax_no`, `address`, `city`, `state`, `postal_code`, `country`, `points`, `deposit`, `expense`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Khaibar Sweets TMG', NULL, NULL, '03489637770', NULL, 'Timargara', 'tmg', NULL, NULL, 'pakistan', 23, NULL, NULL, 0, '2023-09-07 08:23:54', '2023-10-05 13:28:40'),
(2, 1, NULL, 'Fehan Ahmad', 'Fehan', NULL, '03139244501', NULL, 'dara', 'tmg', NULL, NULL, 'pak', 4, NULL, NULL, 1, '2023-09-13 08:32:17', '2023-10-01 10:02:43'),
(3, 1, NULL, 'Zohaib Chana Markit', NULL, NULL, '03128855010', NULL, 'timaragra chaina markit malak palaza', 'timargara', NULL, NULL, 'pakistan', 43, NULL, NULL, 1, '2023-09-14 07:30:39', '2023-10-05 13:40:02'),
(4, 1, NULL, 'Khaista Rahman Dir', 'Cosmetics', '123@gmail.com', '123', '123', 'Dir', 'Dir upper', 'Kp', NULL, NULL, NULL, NULL, NULL, 1, '2023-09-15 08:33:53', '2023-09-15 08:33:53'),
(5, 1, NULL, 'Khaista said dir', 'Cosmetics', '123@gmail.com', '234', '123', 'Dir', 'Dir upper', 'Kp', NULL, NULL, NULL, NULL, NULL, 1, '2023-09-15 08:35:37', '2023-09-15 08:35:37'),
(6, 1, NULL, 'Shakir genral store Dir', 'Cosmetics', '123@gmail.com', '456', '123', 'Dir', 'Dir upper', 'Kp', NULL, NULL, NULL, NULL, NULL, 1, '2023-09-15 08:37:31', '2023-09-15 08:37:31'),
(7, 1, NULL, 'Fazal rabbi di', 'Cosmetics', '123@gmail.com', '122', '123', 'Dir', 'Dir upper', 'Kp', NULL, NULL, NULL, NULL, NULL, 1, '2023-09-15 08:38:28', '2023-09-15 08:38:28'),
(8, 1, NULL, 'Akhtar Mayaro', 'hhj', 'ag12@gmail.com', '03099498795', NULL, 'Mayaro', 'Mayaro', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 08:40:27', '2023-09-18 08:40:27'),
(9, 1, NULL, 'Al Madina Supar Store Mayaro Jazaa', 'n.l', NULL, 'jkfkjb.kj', NULL, 'Mayaro', 'Mayaro', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 08:43:16', '2023-09-18 08:43:16'),
(10, 1, NULL, 'Al Madina Supar Store Mayaro Cosmetics', 'kuh', NULL, '2', NULL, 'Mayaro', 'Mayaro', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 08:44:18', '2023-09-18 08:44:18'),
(11, 1, NULL, 'Al Makkah shhoping mall munda', '12', NULL, '554', NULL, 'Munda', 'Munda', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 08:45:59', '2023-09-18 08:45:59'),
(12, 1, NULL, 'Anwar Mayaro', '56', NULL, '54', NULL, 'Mayaro', 'Mayaro', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 08:47:28', '2023-09-18 08:47:28'),
(13, 1, NULL, 'Asif Super Store Mayaro', '5', NULL, '452', NULL, 'Munda', 'Munda', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 08:48:48', '2023-09-18 08:48:48'),
(14, 1, NULL, 'Assad Mayaro', '45', NULL, '45', NULL, 'Mayaro', 'Mayaro', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 08:50:40', '2023-09-18 08:50:40'),
(15, 1, NULL, 'Ataullah Mayro', '452', NULL, '4545', NULL, 'Mayaro', 'Mayaro', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 08:52:21', '2023-09-18 08:52:21'),
(16, 1, NULL, 'Azam Mayaro 030158022160', '4785', NULL, '030158022160', NULL, 'Mayaro', 'Mayaro', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 08:53:33', '2023-09-18 08:53:33'),
(17, 1, NULL, 'Bilal mayaro', '42652', NULL, '45236', NULL, 'mayaro', 'mayaro', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 08:54:33', '2023-09-18 08:54:33'),
(18, 1, NULL, 'Dr Mayaro', '452856', NULL, '716126', NULL, 'Mayaro', 'Mayaro', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 08:55:53', '2023-09-18 08:55:53'),
(19, 1, NULL, 'Dubai Shaping Center Mayaro=03005738370', '158', NULL, '03005738370', NULL, 'Mayaro', 'Mayaro', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 08:57:19', '2023-09-18 08:57:19'),
(20, 1, NULL, 'Farman Shaping Centare Mayaro=03028533951', '452552', NULL, '03028533951', NULL, 'Mayaro', 'Mayaro', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 08:58:32', '2023-09-18 08:58:32'),
(21, 1, NULL, 'Fazal Genral Store Munda', '14623', NULL, '45223', NULL, 'Munda', 'Munda', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 08:59:25', '2023-09-18 08:59:25'),
(22, 1, NULL, 'Princes Cosmetics Mayaro =03018022160', '423563', NULL, '03018022160', NULL, 'Mayaro', 'Mayaro', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:03:15', '2023-09-18 09:03:15'),
(23, 1, NULL, 'Hamza Store Mayaro', '45620', NULL, '122455522', NULL, 'Mayaro', 'Mayaro', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:06:39', '2023-09-18 09:06:39'),
(24, 1, NULL, 'Hamza Store Mayaro', '45620', NULL, '12245552275665', NULL, 'Mayaro', 'Mayaro', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:07:04', '2023-09-18 09:07:04'),
(25, 1, NULL, 'Hazir Rahman Munda', '14852', NULL, '12254', NULL, 'Munda', 'Munda', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:09:20', '2023-09-18 09:09:20'),
(26, 1, NULL, 'Hanif Kambat', '5882313', NULL, '451258', NULL, 'Kambat', 'Kambat', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:10:27', '2023-09-18 09:10:27'),
(27, 1, NULL, 'Inayat Kambat', '5896', NULL, '4588236', NULL, 'Kambat', 'Kambat', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:11:52', '2023-09-18 09:11:52'),
(28, 1, NULL, 'International Bekree Mayaro', '12589', NULL, '1526995', NULL, 'Mayaro', 'Mayaro', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:13:16', '2023-09-18 09:13:16'),
(29, 1, NULL, 'Jamil Genral store taowar Munda- 03003538908', '4258', NULL, '03003538908', NULL, 'Munda', 'Munda', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:15:09', '2023-09-18 09:15:09'),
(30, 1, NULL, 'kashmir Bekree Munda', '582', NULL, '125893', NULL, 'Munda', 'Munda', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:16:47', '2023-09-18 09:16:47'),
(31, 1, NULL, 'Khalid Mayaro ;03025682961', '125859', NULL, '03025682961', NULL, 'Mayaro', 'Mayaro', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:18:03', '2023-09-18 09:18:03'),
(32, 1, NULL, 'M Zaid Munda', '425893', NULL, '15298', NULL, 'Munda', 'Munda', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:19:50', '2023-09-18 09:19:50'),
(33, 1, NULL, 'Madina Bekree Mayaro', '145875', NULL, '425893', NULL, 'Mayaro', 'Mayaro', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:20:52', '2023-09-18 09:20:52'),
(34, 1, NULL, 'Muhammad Duost Karakari Munda 030353804', '125478', NULL, '030353804', NULL, 'Munda', 'Munda', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:22:12', '2023-09-18 09:22:12'),
(35, 1, NULL, 'Nazir Munda', '125478632', NULL, '14587', NULL, 'Monda', 'Munda', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:23:21', '2023-09-18 09:23:21'),
(36, 1, NULL, 'New Kashmir Bekree Mayaro', '452178', NULL, '1425', NULL, 'Mayaro', 'Mayaro', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:24:09', '2023-09-18 09:24:09'),
(37, 1, NULL, 'Pak afghan bekree Munda', '423147', NULL, '124587', NULL, 'Munda', 'Munda', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:25:10', '2023-09-18 09:25:10'),
(38, 1, NULL, 'PAK Chaina Karakari Mayaro=03025841240', '10124', NULL, '03025841240', NULL, 'Mayaro', 'Mayaro', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:26:22', '2023-09-18 09:26:22'),
(39, 1, NULL, 'Rado watch taowr palaza 03061141616', '1450', NULL, '03061141616', NULL, 'Munda', 'Munda', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:27:45', '2023-09-18 09:27:45'),
(40, 1, NULL, 'Rahman Mega Mart Mayaro', '410258', NULL, '142578', NULL, 'Mayaro', 'Mayaro', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:28:40', '2023-09-18 09:28:40'),
(41, 1, NULL, 'RahmanMegamart Munda', '1024', NULL, '12480', NULL, 'Munda', 'Munda', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:29:39', '2023-09-18 09:29:39'),
(42, 1, NULL, 'Rashed Genral Store Munda 03005599416', '102485', NULL, '03005599416', NULL, 'Munda', 'Munda', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:31:06', '2023-09-18 09:31:06'),
(43, 1, NULL, 'Sha Khalid Karakari Mayaro=03025682961', '120458', NULL, '03025682961145', NULL, 'Mayaro', 'Mayaro', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:36:52', '2023-09-18 09:36:52'),
(44, 1, NULL, 'Suhil Shaping Centare Mayaro=03059956406', '12587', NULL, '03059956406', NULL, 'Mayaro', 'Mayaro', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:40:29', '2023-09-18 09:40:29'),
(45, 1, NULL, 'Wasif Cosmetics Mayaro=0300584923', '125479', NULL, '0300584923', NULL, 'Mayaro', 'Mayaro', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:41:32', '2023-09-18 09:41:32'),
(46, 1, NULL, 'Yousaf Kambat', '45870', NULL, '41258', NULL, 'Kambat', 'Kambat', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:42:27', '2023-09-18 09:42:27'),
(47, 1, NULL, 'Asghar Kambat', '14522', NULL, '104578', NULL, 'Kambat', 'Kambat', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-18 09:43:15', '2023-09-18 09:43:15'),
(48, 1, NULL, 'Baseir Tmg', NULL, NULL, '03119016251', NULL, 'tmg', 'tmg', NULL, NULL, 'pakistam', 7, NULL, NULL, 1, '2023-10-01 14:49:34', '2023-10-01 15:03:17'),
(49, 1, NULL, 'Ismail Sha Sopar Store Khal', NULL, 'jwehdkewki@gmail.com', 'Khal', NULL, 'Khal', 'Kl', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-10-05 07:27:40', '2023-10-05 07:27:40'),
(50, 1, NULL, 'Khall Sopar Store Khall', NULL, 'ddsgg@gmail.com', 'Khall', NULL, 'Khall', 'Khall', NULL, NULL, NULL, 9, NULL, NULL, 1, '2023-10-05 07:30:54', '2023-10-05 07:33:48'),
(51, 1, NULL, 'Afghan food mart sawari', NULL, 'snmgcm@gmail.com', '12455', NULL, 'Suwarri', 'bunair', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-10-05 15:07:49', '2023-10-05 15:07:49'),
(52, 1, NULL, 'Sunny Shaping Centar Suwarri', NULL, NULL, '1365+', NULL, 'Suwarrri', 'Suwarri', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-10-05 15:10:33', '2023-10-05 15:10:33'),
(53, 1, NULL, 'PK Mart toor warsk bunir', NULL, NULL, '4551+', NULL, 'toor warsk bunir', 'toor warsk bunir', NULL, NULL, NULL, 28, NULL, NULL, 1, '2023-10-05 15:12:34', '2023-10-05 15:19:01'),
(54, 1, NULL, 'Shehzad Binggal Tmg', NULL, NULL, '455', NULL, 'Tmg', 'Timargara', NULL, NULL, NULL, 508, NULL, NULL, 1, '2023-10-07 08:33:53', '2023-10-07 09:24:54');

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `name`, `percentage`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Walk-in Customers', '0', 1, '2023-08-09 16:30:33', '2023-08-09 16:30:33');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int UNSIGNED NOT NULL,
  `reference_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivered_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recieved_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `customer_id` int NOT NULL,
  `user_id` int NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `applicable_for` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `valid_from` date NOT NULL,
  `valid_till` date NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `minimum_qty` double NOT NULL,
  `maximum_qty` double NOT NULL,
  `days` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_plans`
--

CREATE TABLE `discount_plans` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_plan_customers`
--

CREATE TABLE `discount_plan_customers` (
  `id` bigint UNSIGNED NOT NULL,
  `discount_plan_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_plan_discounts`
--

CREATE TABLE `discount_plan_discounts` (
  `id` bigint UNSIGNED NOT NULL,
  `discount_id` int NOT NULL,
  `discount_plan_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dso_alerts`
--

CREATE TABLE `dso_alerts` (
  `id` bigint UNSIGNED NOT NULL,
  `product_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_products` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int UNSIGNED NOT NULL,
  `reference_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_category_id` int NOT NULL,
  `warehouse_id` int NOT NULL,
  `account_id` int NOT NULL,
  `user_id` int NOT NULL,
  `cash_register_id` int DEFAULT NULL,
  `amount` double NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `reference_no`, `expense_category_id`, `warehouse_id`, `account_id`, `user_id`, `cash_register_id`, `amount`, `note`, `created_at`, `updated_at`) VALUES
(1, 'er-20231007-062456', 3, 1, 5, 1, 1, 12000, NULL, '2023-10-06 22:00:00', '2023-10-07 16:24:56'),
(2, 'er-20231007-062524', 1, 1, 5, 1, 1, 170, NULL, '2023-10-07 16:25:24', '2023-10-07 16:25:24'),
(3, 'er-20231007-062643', 4, 1, 5, 1, 1, 5000, 'tufeal ko dia', '2023-10-07 16:26:43', '2023-10-07 16:26:43');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `code`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '10', 'Hotal', 1, '2023-10-05 16:22:41', '2023-10-05 16:22:41'),
(2, '20', 'Home', 1, '2023-10-05 16:23:14', '2023-10-05 16:23:14'),
(3, '25', 'Car Oil', 1, '2023-10-05 16:23:41', '2023-10-05 16:23:41'),
(4, '30', 'Seyab', 1, '2023-10-05 16:24:16', '2023-10-05 16:24:16'),
(5, '35', 'Zahoor', 1, '2023-10-05 16:24:29', '2023-10-05 16:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int UNSIGNED NOT NULL,
  `site_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_rtl` tinyint(1) DEFAULT NULL,
  `currency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_access` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_format` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `developed_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_format` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int DEFAULT NULL,
  `theme` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_position` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_title`, `site_logo`, `is_rtl`, `currency`, `staff_access`, `date_format`, `developed_by`, `invoice_format`, `state`, `theme`, `created_at`, `updated_at`, `currency_position`) VALUES
(1, 'Lahore Traders Timargara', '20230913124303.jpg', 0, '1', 'own', 'd-m-Y', 'Shoukat Mirza', 'standard', 1, 'default.css', '2018-07-06 18:13:11', '2023-09-13 11:24:11', 'prefix');

-- --------------------------------------------------------

--
-- Table structure for table `gift_cards`
--

CREATE TABLE `gift_cards` (
  `id` int UNSIGNED NOT NULL,
  `card_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `expense` double NOT NULL,
  `customer_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created_by` int NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gift_card_recharges`
--

CREATE TABLE `gift_card_recharges` (
  `id` int UNSIGNED NOT NULL,
  `gift_card_id` int NOT NULL,
  `amount` double NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_settings`
--

CREATE TABLE `hrm_settings` (
  `id` int UNSIGNED NOT NULL,
  `checkin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hrm_settings`
--

INSERT INTO `hrm_settings` (`id`, `checkin`, `checkout`, `created_at`, `updated_at`) VALUES
(1, '9:00am', '6:00pm', '2019-01-02 14:20:08', '2022-07-16 07:13:14');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'en', '2018-07-08 10:59:17', '2019-12-25 05:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_17_060412_create_categories_table', 1),
(4, '2018_02_20_035727_create_brands_table', 1),
(5, '2018_02_25_100635_create_suppliers_table', 1),
(6, '2018_02_27_101619_create_warehouse_table', 1),
(7, '2018_03_03_040448_create_units_table', 1),
(8, '2018_03_04_041317_create_taxes_table', 1),
(9, '2018_03_10_061915_create_customer_groups_table', 1),
(10, '2018_03_10_090534_create_customers_table', 1),
(11, '2018_03_11_095547_create_billers_table', 1),
(12, '2018_04_05_054401_create_products_table', 1),
(13, '2018_04_06_133606_create_purchases_table', 1),
(14, '2018_04_06_154600_create_product_purchases_table', 1),
(15, '2018_04_06_154915_create_product_warhouse_table', 1),
(16, '2018_04_10_085927_create_sales_table', 1),
(17, '2018_04_10_090133_create_product_sales_table', 1),
(18, '2018_04_10_090254_create_payments_table', 1),
(19, '2018_04_10_090341_create_payment_with_cheque_table', 1),
(20, '2018_04_10_090509_create_payment_with_credit_card_table', 1),
(21, '2018_04_13_121436_create_quotation_table', 1),
(22, '2018_04_13_122324_create_product_quotation_table', 1),
(23, '2018_04_14_121802_create_transfers_table', 1),
(24, '2018_04_14_121913_create_product_transfer_table', 1),
(25, '2018_05_13_082847_add_payment_id_and_change_sale_id_to_payments_table', 2),
(26, '2018_05_13_090906_change_customer_id_to_payment_with_credit_card_table', 3),
(27, '2018_05_20_054532_create_adjustments_table', 4),
(28, '2018_05_20_054859_create_product_adjustments_table', 4),
(29, '2018_05_21_163419_create_returns_table', 5),
(30, '2018_05_21_163443_create_product_returns_table', 5),
(31, '2018_06_02_050905_create_roles_table', 6),
(32, '2018_06_02_073430_add_columns_to_users_table', 7),
(33, '2018_06_03_053738_create_permission_tables', 8),
(36, '2018_06_21_063736_create_pos_setting_table', 9),
(37, '2018_06_21_094155_add_user_id_to_sales_table', 10),
(38, '2018_06_21_101529_add_user_id_to_purchases_table', 11),
(39, '2018_06_21_103512_add_user_id_to_transfers_table', 12),
(40, '2018_06_23_061058_add_user_id_to_quotations_table', 13),
(41, '2018_06_23_082427_add_is_deleted_to_users_table', 14),
(42, '2018_06_25_043308_change_email_to_users_table', 15),
(43, '2018_07_06_115449_create_general_settings_table', 16),
(44, '2018_07_08_043944_create_languages_table', 17),
(45, '2018_07_11_102144_add_user_id_to_returns_table', 18),
(46, '2018_07_11_102334_add_user_id_to_payments_table', 18),
(47, '2018_07_22_130541_add_digital_to_products_table', 19),
(49, '2018_07_24_154250_create_deliveries_table', 20),
(50, '2018_08_16_053336_create_expense_categories_table', 21),
(51, '2018_08_17_115415_create_expenses_table', 22),
(55, '2018_08_18_050418_create_gift_cards_table', 23),
(56, '2018_08_19_063119_create_payment_with_gift_card_table', 24),
(57, '2018_08_25_042333_create_gift_card_recharges_table', 25),
(58, '2018_08_25_101354_add_deposit_expense_to_customers_table', 26),
(59, '2018_08_26_043801_create_deposits_table', 27),
(60, '2018_09_02_044042_add_keybord_active_to_pos_setting_table', 28),
(61, '2018_09_09_092713_create_payment_with_paypal_table', 29),
(62, '2018_09_10_051254_add_currency_to_general_settings_table', 30),
(63, '2018_10_22_084118_add_biller_and_store_id_to_users_table', 31),
(65, '2018_10_26_034927_create_coupons_table', 32),
(66, '2018_10_27_090857_add_coupon_to_sales_table', 33),
(67, '2018_11_07_070155_add_currency_position_to_general_settings_table', 34),
(68, '2018_11_19_094650_add_combo_to_products_table', 35),
(69, '2018_12_09_043712_create_accounts_table', 36),
(70, '2018_12_17_112253_add_is_default_to_accounts_table', 37),
(71, '2018_12_19_103941_add_account_id_to_payments_table', 38),
(72, '2018_12_20_065900_add_account_id_to_expenses_table', 39),
(73, '2018_12_20_082753_add_account_id_to_returns_table', 40),
(74, '2018_12_26_064330_create_return_purchases_table', 41),
(75, '2018_12_26_144210_create_purchase_product_return_table', 42),
(76, '2018_12_26_144708_create_purchase_product_return_table', 43),
(77, '2018_12_27_110018_create_departments_table', 44),
(78, '2018_12_30_054844_create_employees_table', 45),
(79, '2018_12_31_125210_create_payrolls_table', 46),
(80, '2018_12_31_150446_add_department_id_to_employees_table', 47),
(81, '2019_01_01_062708_add_user_id_to_expenses_table', 48),
(82, '2019_01_02_075644_create_hrm_settings_table', 49),
(83, '2019_01_02_090334_create_attendances_table', 50),
(84, '2019_01_27_160956_add_three_columns_to_general_settings_table', 51),
(85, '2019_02_15_183303_create_stock_counts_table', 52),
(86, '2019_02_17_101604_add_is_adjusted_to_stock_counts_table', 53),
(87, '2019_04_13_101707_add_tax_no_to_customers_table', 54),
(89, '2019_10_14_111455_create_holidays_table', 55),
(90, '2019_11_13_145619_add_is_variant_to_products_table', 56),
(91, '2019_11_13_150206_create_product_variants_table', 57),
(92, '2019_11_13_153828_create_variants_table', 57),
(93, '2019_11_25_134041_add_qty_to_product_variants_table', 58),
(94, '2019_11_25_134922_add_variant_id_to_product_purchases_table', 58),
(95, '2019_11_25_145341_add_variant_id_to_product_warehouse_table', 58),
(96, '2019_11_29_182201_add_variant_id_to_product_sales_table', 59),
(97, '2019_12_04_121311_add_variant_id_to_product_quotation_table', 60),
(98, '2019_12_05_123802_add_variant_id_to_product_transfer_table', 61),
(100, '2019_12_08_114954_add_variant_id_to_product_returns_table', 62),
(101, '2019_12_08_203146_add_variant_id_to_purchase_product_return_table', 63),
(102, '2020_02_28_103340_create_money_transfers_table', 64),
(103, '2020_07_01_193151_add_image_to_categories_table', 65),
(105, '2020_09_26_130426_add_user_id_to_deliveries_table', 66),
(107, '2020_10_11_125457_create_cash_registers_table', 67),
(108, '2020_10_13_155019_add_cash_register_id_to_sales_table', 68),
(109, '2020_10_13_172624_add_cash_register_id_to_returns_table', 69),
(110, '2020_10_17_212338_add_cash_register_id_to_payments_table', 70),
(111, '2020_10_18_124200_add_cash_register_id_to_expenses_table', 71),
(112, '2020_10_21_121632_add_developed_by_to_general_settings_table', 72),
(113, '2019_08_19_000000_create_failed_jobs_table', 73),
(114, '2020_10_30_135557_create_notifications_table', 73),
(115, '2020_11_01_044954_create_currencies_table', 74),
(116, '2020_11_01_140736_add_price_to_product_warehouse_table', 75),
(117, '2020_11_02_050633_add_is_diff_price_to_products_table', 76),
(118, '2020_11_09_055222_add_user_id_to_customers_table', 77),
(119, '2020_11_17_054806_add_invoice_format_to_general_settings_table', 78),
(120, '2021_02_10_074859_add_variant_id_to_product_adjustments_table', 79),
(121, '2021_03_07_093606_create_product_batches_table', 80),
(122, '2021_03_07_093759_add_product_batch_id_to_product_warehouse_table', 80),
(123, '2021_03_07_093900_add_product_batch_id_to_product_purchases_table', 80),
(124, '2021_03_11_132603_add_product_batch_id_to_product_sales_table', 81),
(127, '2021_03_25_125421_add_is_batch_to_products_table', 82),
(128, '2021_05_19_120127_add_product_batch_id_to_product_returns_table', 82),
(130, '2021_05_22_105611_add_product_batch_id_to_purchase_product_return_table', 83),
(131, '2021_05_23_124848_add_product_batch_id_to_product_transfer_table', 84),
(132, '2021_05_26_153106_add_product_batch_id_to_product_quotation_table', 85),
(133, '2021_06_08_213007_create_reward_point_settings_table', 86),
(134, '2021_06_16_104155_add_points_to_customers_table', 87),
(135, '2021_06_17_101057_add_used_points_to_payments_table', 88),
(136, '2021_07_06_132716_add_variant_list_to_products_table', 89),
(137, '2021_09_27_161141_add_is_imei_to_products_table', 90),
(138, '2021_09_28_170052_add_imei_number_to_product_warehouse_table', 91),
(139, '2021_09_28_170126_add_imei_number_to_product_purchases_table', 91),
(140, '2021_10_03_170652_add_imei_number_to_product_sales_table', 92),
(141, '2021_10_10_145214_add_imei_number_to_product_returns_table', 93),
(142, '2021_10_11_104504_add_imei_number_to_product_transfer_table', 94),
(143, '2021_10_12_160107_add_imei_number_to_purchase_product_return_table', 95),
(144, '2021_10_12_205146_add_is_rtl_to_general_settings_table', 96),
(145, '2021_10_23_142451_add_is_approve_to_payments_table', 97),
(146, '2022_01_13_191242_create_discount_plans_table', 97),
(147, '2022_01_14_174318_create_discount_plan_customers_table', 97),
(148, '2022_01_14_202439_create_discounts_table', 98),
(149, '2022_01_16_153506_create_discount_plan_discounts_table', 98),
(150, '2022_02_05_174210_add_order_discount_type_and_value_to_sales_table', 99),
(154, '2022_05_26_195506_add_daily_sale_objective_to_products_table', 100),
(155, '2022_05_28_104209_create_dso_alerts_table', 101),
(156, '2022_06_01_112100_add_is_embeded_to_products_table', 102);

-- --------------------------------------------------------

--
-- Table structure for table `money_transfers`
--

CREATE TABLE `money_transfers` (
  `id` int UNSIGNED NOT NULL,
  `reference_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_account_id` int NOT NULL,
  `to_account_id` int NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int UNSIGNED NOT NULL,
  `payment_reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `purchase_id` int DEFAULT NULL,
  `sale_id` int DEFAULT NULL,
  `cash_register_id` int DEFAULT NULL,
  `account_id` int NOT NULL,
  `amount` double NOT NULL,
  `used_points` double DEFAULT NULL,
  `change` double NOT NULL,
  `paying_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_reference`, `user_id`, `purchase_id`, `sale_id`, `cash_register_id`, `account_id`, `amount`, `used_points`, `change`, `paying_method`, `payment_note`, `created_at`, `updated_at`) VALUES
(9, 'spr-20230913-011831', 1, NULL, 10, 1, 5, 90, NULL, 0, 'Cash', NULL, '2023-09-13 11:18:31', '2023-09-13 11:18:31'),
(10, 'spr-20230913-055017', 1, NULL, 11, 1, 5, 90, NULL, 0, 'Cash', NULL, '2023-09-13 15:50:17', '2023-09-13 15:50:17'),
(11, 'spr-20230925-110830', 1, NULL, 14, 1, 5, 90, NULL, 0, 'Cash', NULL, '2023-09-25 09:08:30', '2023-09-25 09:08:30'),
(12, 'spr-20230930-090806', 1, NULL, 15, 1, 5, 90, NULL, 10, 'Cash', NULL, '2023-09-30 07:08:06', '2023-09-30 07:08:06'),
(13, 'ppr-20231001-112532', 1, 6, NULL, 1, 5, 100000, NULL, 0, 'Cash', NULL, '2023-10-01 09:25:32', '2023-10-01 09:25:32'),
(14, 'ppr-20231001-112607', 1, 6, NULL, 1, 5, 900000, NULL, 0, 'Cash', NULL, '2023-10-01 09:26:07', '2023-10-01 09:26:07'),
(15, 'spr-20231001-112737', 1, NULL, 16, 1, 5, 1280, NULL, 0, 'Cash', NULL, '2023-10-01 09:27:37', '2023-10-01 09:27:37'),
(16, 'spr-20231001-120243', 1, NULL, 17, 1, 5, 1300, NULL, 0, 'Cash', NULL, '2023-10-01 10:02:43', '2023-10-01 10:02:43'),
(19, 'spr-20231001-051017', 1, NULL, 12, 1, 5, 220, NULL, 0, 'Cash', NULL, '2023-10-01 15:10:17', '2023-10-01 15:10:17'),
(21, 'spr-20231004-055425', 1, NULL, 20, 1, 5, 1482, NULL, -1482, 'Cash', NULL, '2023-10-04 15:54:25', '2023-10-04 15:54:25'),
(22, 'spr-20231004-055639', 1, NULL, 21, 1, 5, 1560, NULL, -1560, 'Cash', NULL, '2023-10-04 15:56:39', '2023-10-04 15:56:39'),
(26, 'spr-20231005-092023', 1, NULL, 12, 1, 5, 2, NULL, 0, 'Cash', NULL, '2023-10-05 07:20:23', '2023-10-05 07:20:23'),
(36, 'ppr-20231005-041045', 1, 8, NULL, 1, 5, 106872, NULL, 0, 'Cash', NULL, '2023-10-05 14:10:45', '2023-10-05 14:10:45'),
(37, 'ppr-20231005-041241', 1, 9, NULL, 1, 5, 48900, NULL, 0, 'Cash', NULL, '2023-10-05 14:12:41', '2023-10-05 14:12:41');

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_cheque`
--

CREATE TABLE `payment_with_cheque` (
  `id` int UNSIGNED NOT NULL,
  `payment_id` int NOT NULL,
  `cheque_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_credit_card`
--

CREATE TABLE `payment_with_credit_card` (
  `id` int UNSIGNED NOT NULL,
  `payment_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `customer_stripe_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_gift_card`
--

CREATE TABLE `payment_with_gift_card` (
  `id` int UNSIGNED NOT NULL,
  `payment_id` int NOT NULL,
  `gift_card_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_paypal`
--

CREATE TABLE `payment_with_paypal` (
  `id` int UNSIGNED NOT NULL,
  `payment_id` int NOT NULL,
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` int UNSIGNED NOT NULL,
  `reference_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int NOT NULL,
  `account_id` int NOT NULL,
  `user_id` int NOT NULL,
  `amount` double NOT NULL,
  `paying_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(4, 'products-edit', 'web', '2018-06-03 13:00:09', '2018-06-03 13:00:09'),
(5, 'products-delete', 'web', '2018-06-04 10:54:22', '2018-06-04 10:54:22'),
(6, 'products-add', 'web', '2018-06-04 12:34:14', '2018-06-04 12:34:14'),
(7, 'products-index', 'web', '2018-06-04 15:34:27', '2018-06-04 15:34:27'),
(8, 'purchases-index', 'web', '2018-06-04 20:03:19', '2018-06-04 20:03:19'),
(9, 'purchases-add', 'web', '2018-06-04 20:12:25', '2018-06-04 20:12:25'),
(10, 'purchases-edit', 'web', '2018-06-04 21:47:36', '2018-06-04 21:47:36'),
(11, 'purchases-delete', 'web', '2018-06-04 21:47:36', '2018-06-04 21:47:36'),
(12, 'sales-index', 'web', '2018-06-04 22:49:08', '2018-06-04 22:49:08'),
(13, 'sales-add', 'web', '2018-06-04 22:49:52', '2018-06-04 22:49:52'),
(14, 'sales-edit', 'web', '2018-06-04 22:49:52', '2018-06-04 22:49:52'),
(15, 'sales-delete', 'web', '2018-06-04 22:49:53', '2018-06-04 22:49:53'),
(16, 'quotes-index', 'web', '2018-06-05 10:05:10', '2018-06-05 10:05:10'),
(17, 'quotes-add', 'web', '2018-06-05 10:05:10', '2018-06-05 10:05:10'),
(18, 'quotes-edit', 'web', '2018-06-05 10:05:10', '2018-06-05 10:05:10'),
(19, 'quotes-delete', 'web', '2018-06-05 10:05:10', '2018-06-05 10:05:10'),
(20, 'transfers-index', 'web', '2018-06-05 10:30:03', '2018-06-05 10:30:03'),
(21, 'transfers-add', 'web', '2018-06-05 10:30:03', '2018-06-05 10:30:03'),
(22, 'transfers-edit', 'web', '2018-06-05 10:30:03', '2018-06-05 10:30:03'),
(23, 'transfers-delete', 'web', '2018-06-05 10:30:03', '2018-06-05 10:30:03'),
(24, 'returns-index', 'web', '2018-06-05 10:50:24', '2018-06-05 10:50:24'),
(25, 'returns-add', 'web', '2018-06-05 10:50:24', '2018-06-05 10:50:24'),
(26, 'returns-edit', 'web', '2018-06-05 10:50:25', '2018-06-05 10:50:25'),
(27, 'returns-delete', 'web', '2018-06-05 10:50:25', '2018-06-05 10:50:25'),
(28, 'customers-index', 'web', '2018-06-05 11:15:54', '2018-06-05 11:15:54'),
(29, 'customers-add', 'web', '2018-06-05 11:15:55', '2018-06-05 11:15:55'),
(30, 'customers-edit', 'web', '2018-06-05 11:15:55', '2018-06-05 11:15:55'),
(31, 'customers-delete', 'web', '2018-06-05 11:15:55', '2018-06-05 11:15:55'),
(32, 'suppliers-index', 'web', '2018-06-05 11:40:12', '2018-06-05 11:40:12'),
(33, 'suppliers-add', 'web', '2018-06-05 11:40:12', '2018-06-05 11:40:12'),
(34, 'suppliers-edit', 'web', '2018-06-05 11:40:12', '2018-06-05 11:40:12'),
(35, 'suppliers-delete', 'web', '2018-06-05 11:40:12', '2018-06-05 11:40:12'),
(36, 'product-report', 'web', '2018-06-25 11:05:33', '2018-06-25 11:05:33'),
(37, 'purchase-report', 'web', '2018-06-25 11:24:56', '2018-06-25 11:24:56'),
(38, 'sale-report', 'web', '2018-06-25 11:33:13', '2018-06-25 11:33:13'),
(39, 'customer-report', 'web', '2018-06-25 11:36:51', '2018-06-25 11:36:51'),
(40, 'due-report', 'web', '2018-06-25 11:39:52', '2018-06-25 11:39:52'),
(41, 'users-index', 'web', '2018-06-25 12:00:10', '2018-06-25 12:00:10'),
(42, 'users-add', 'web', '2018-06-25 12:00:10', '2018-06-25 12:00:10'),
(43, 'users-edit', 'web', '2018-06-25 12:01:30', '2018-06-25 12:01:30'),
(44, 'users-delete', 'web', '2018-06-25 12:01:30', '2018-06-25 12:01:30'),
(45, 'profit-loss', 'web', '2018-07-15 09:50:05', '2018-07-15 09:50:05'),
(46, 'best-seller', 'web', '2018-07-15 10:01:38', '2018-07-15 10:01:38'),
(47, 'daily-sale', 'web', '2018-07-15 10:24:21', '2018-07-15 10:24:21'),
(48, 'monthly-sale', 'web', '2018-07-15 10:30:41', '2018-07-15 10:30:41'),
(49, 'daily-purchase', 'web', '2018-07-15 10:36:46', '2018-07-15 10:36:46'),
(50, 'monthly-purchase', 'web', '2018-07-15 10:48:17', '2018-07-15 10:48:17'),
(51, 'payment-report', 'web', '2018-07-15 11:10:41', '2018-07-15 11:10:41'),
(52, 'warehouse-stock-report', 'web', '2018-07-15 11:16:55', '2018-07-15 11:16:55'),
(53, 'product-qty-alert', 'web', '2018-07-15 11:33:21', '2018-07-15 11:33:21'),
(54, 'supplier-report', 'web', '2018-07-30 15:00:01', '2018-07-30 15:00:01'),
(55, 'expenses-index', 'web', '2018-09-05 13:07:10', '2018-09-05 13:07:10'),
(56, 'expenses-add', 'web', '2018-09-05 13:07:10', '2018-09-05 13:07:10'),
(57, 'expenses-edit', 'web', '2018-09-05 13:07:10', '2018-09-05 13:07:10'),
(58, 'expenses-delete', 'web', '2018-09-05 13:07:11', '2018-09-05 13:07:11'),
(59, 'general_setting', 'web', '2018-10-20 11:10:04', '2018-10-20 11:10:04'),
(60, 'mail_setting', 'web', '2018-10-20 11:10:04', '2018-10-20 11:10:04'),
(61, 'pos_setting', 'web', '2018-10-20 11:10:04', '2018-10-20 11:10:04'),
(62, 'hrm_setting', 'web', '2019-01-02 22:30:23', '2019-01-02 22:30:23'),
(63, 'purchase-return-index', 'web', '2019-01-03 09:45:14', '2019-01-03 09:45:14'),
(64, 'purchase-return-add', 'web', '2019-01-03 09:45:14', '2019-01-03 09:45:14'),
(65, 'purchase-return-edit', 'web', '2019-01-03 09:45:14', '2019-01-03 09:45:14'),
(66, 'purchase-return-delete', 'web', '2019-01-03 09:45:14', '2019-01-03 09:45:14'),
(67, 'account-index', 'web', '2019-01-03 10:06:13', '2019-01-03 10:06:13'),
(68, 'balance-sheet', 'web', '2019-01-03 10:06:14', '2019-01-03 10:06:14'),
(69, 'account-statement', 'web', '2019-01-03 10:06:14', '2019-01-03 10:06:14'),
(70, 'department', 'web', '2019-01-03 10:30:01', '2019-01-03 10:30:01'),
(71, 'attendance', 'web', '2019-01-03 10:30:01', '2019-01-03 10:30:01'),
(72, 'payroll', 'web', '2019-01-03 10:30:01', '2019-01-03 10:30:01'),
(73, 'employees-index', 'web', '2019-01-03 10:52:19', '2019-01-03 10:52:19'),
(74, 'employees-add', 'web', '2019-01-03 10:52:19', '2019-01-03 10:52:19'),
(75, 'employees-edit', 'web', '2019-01-03 10:52:19', '2019-01-03 10:52:19'),
(76, 'employees-delete', 'web', '2019-01-03 10:52:19', '2019-01-03 10:52:19'),
(77, 'user-report', 'web', '2019-01-16 18:48:18', '2019-01-16 18:48:18'),
(78, 'stock_count', 'web', '2019-02-17 22:32:01', '2019-02-17 22:32:01'),
(79, 'adjustment', 'web', '2019-02-17 22:32:02', '2019-02-17 22:32:02'),
(80, 'sms_setting', 'web', '2019-02-22 17:18:03', '2019-02-22 17:18:03'),
(81, 'create_sms', 'web', '2019-02-22 17:18:03', '2019-02-22 17:18:03'),
(82, 'print_barcode', 'web', '2019-03-07 17:02:19', '2019-03-07 17:02:19'),
(83, 'empty_database', 'web', '2019-03-07 17:02:19', '2019-03-07 17:02:19'),
(84, 'customer_group', 'web', '2019-03-07 17:37:15', '2019-03-07 17:37:15'),
(85, 'unit', 'web', '2019-03-07 17:37:15', '2019-03-07 17:37:15'),
(86, 'tax', 'web', '2019-03-07 17:37:15', '2019-03-07 17:37:15'),
(87, 'gift_card', 'web', '2019-03-07 18:29:38', '2019-03-07 18:29:38'),
(88, 'coupon', 'web', '2019-03-07 18:29:38', '2019-03-07 18:29:38'),
(89, 'holiday', 'web', '2019-10-19 20:57:15', '2019-10-19 20:57:15'),
(90, 'warehouse-report', 'web', '2019-10-22 18:00:23', '2019-10-22 18:00:23'),
(91, 'warehouse', 'web', '2020-02-26 18:47:32', '2020-02-26 18:47:32'),
(92, 'brand', 'web', '2020-02-26 18:59:59', '2020-02-26 18:59:59'),
(93, 'billers-index', 'web', '2020-02-26 19:11:15', '2020-02-26 19:11:15'),
(94, 'billers-add', 'web', '2020-02-26 19:11:15', '2020-02-26 19:11:15'),
(95, 'billers-edit', 'web', '2020-02-26 19:11:15', '2020-02-26 19:11:15'),
(96, 'billers-delete', 'web', '2020-02-26 19:11:15', '2020-02-26 19:11:15'),
(97, 'money-transfer', 'web', '2020-03-02 17:41:48', '2020-03-02 17:41:48'),
(98, 'category', 'web', '2020-07-14 00:13:16', '2020-07-14 00:13:16'),
(99, 'delivery', 'web', '2020-07-14 00:13:16', '2020-07-14 00:13:16'),
(100, 'send_notification', 'web', '2020-10-31 18:21:31', '2020-10-31 18:21:31'),
(101, 'today_sale', 'web', '2020-10-31 18:57:04', '2020-10-31 18:57:04'),
(102, 'today_profit', 'web', '2020-10-31 18:57:04', '2020-10-31 18:57:04'),
(103, 'currency', 'web', '2020-11-09 12:23:11', '2020-11-09 12:23:11'),
(104, 'backup_database', 'web', '2020-11-15 12:16:55', '2020-11-15 12:16:55'),
(105, 'reward_point_setting', 'web', '2021-06-27 16:34:42', '2021-06-27 16:34:42'),
(106, 'revenue_profit_summary', 'web', '2022-02-09 01:57:21', '2022-02-09 01:57:21'),
(107, 'cash_flow', 'web', '2022-02-09 01:57:22', '2022-02-09 01:57:22'),
(108, 'monthly_summary', 'web', '2022-02-09 01:57:22', '2022-02-09 01:57:22'),
(109, 'yearly_report', 'web', '2022-02-09 01:57:22', '2022-02-09 01:57:22'),
(110, 'discount_plan', 'web', '2022-02-16 21:12:26', '2022-02-16 21:12:26'),
(111, 'discount', 'web', '2022-02-16 21:12:38', '2022-02-16 21:12:38'),
(112, 'product-expiry-report', 'web', '2022-03-30 17:39:20', '2022-03-30 17:39:20'),
(113, 'purchase-payment-index', 'web', '2022-06-06 02:12:27', '2022-06-06 02:12:27'),
(114, 'purchase-payment-add', 'web', '2022-06-06 02:12:28', '2022-06-06 02:12:28'),
(115, 'purchase-payment-edit', 'web', '2022-06-06 02:12:28', '2022-06-06 02:12:28'),
(116, 'purchase-payment-delete', 'web', '2022-06-06 02:12:28', '2022-06-06 02:12:28'),
(117, 'sale-payment-index', 'web', '2022-06-06 02:12:28', '2022-06-06 02:12:28'),
(118, 'sale-payment-add', 'web', '2022-06-06 02:12:28', '2022-06-06 02:12:28'),
(119, 'sale-payment-edit', 'web', '2022-06-06 02:12:28', '2022-06-06 02:12:28'),
(120, 'sale-payment-delete', 'web', '2022-06-06 02:12:28', '2022-06-06 02:12:28'),
(121, 'all_notification', 'web', '2022-06-06 02:12:29', '2022-06-06 02:12:29'),
(122, 'sale-report-chart', 'web', '2022-06-06 02:12:29', '2022-06-06 02:12:29'),
(123, 'dso-report', 'web', '2022-06-06 02:12:29', '2022-06-06 02:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `pos_setting`
--

CREATE TABLE `pos_setting` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `warehouse_id` int NOT NULL,
  `biller_id` int NOT NULL,
  `product_number` int NOT NULL,
  `keybord_active` tinyint(1) NOT NULL,
  `stripe_public_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_setting`
--

INSERT INTO `pos_setting` (`id`, `customer_id`, `warehouse_id`, `biller_id`, `product_number`, `keybord_active`, `stripe_public_key`, `stripe_secret_key`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 6, 4, 0, 'pk_test_ITN7KOYiIsHSCQ0UMRcgaYUB', 'sk_test_TtQQaawhEYRwa3mU9CzttrEy', '2018-09-02 15:17:04', '2023-10-03 18:24:30');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_symbology` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int DEFAULT NULL,
  `category_id` int NOT NULL,
  `unit_id` int NOT NULL,
  `purchase_unit_id` int NOT NULL,
  `sale_unit_id` int NOT NULL,
  `cost` double NOT NULL,
  `price` double NOT NULL,
  `qty` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `daily_sale_objective` double DEFAULT NULL,
  `promotion` tinyint DEFAULT NULL,
  `promotion_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_date` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `tax_id` int DEFAULT NULL,
  `tax_method` int DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_embeded` tinyint(1) DEFAULT NULL,
  `is_variant` tinyint(1) DEFAULT NULL,
  `is_batch` tinyint(1) DEFAULT NULL,
  `is_diffPrice` tinyint(1) DEFAULT NULL,
  `is_imei` tinyint(1) DEFAULT NULL,
  `featured` tinyint DEFAULT NULL,
  `product_list` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_list` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty_list` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_list` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `variant_option` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `variant_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `qty`, `alert_quantity`, `daily_sale_objective`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_embeded`, `is_variant`, `is_batch`, `is_diffPrice`, `is_imei`, `featured`, `product_list`, `variant_list`, `qty_list`, `price_list`, `product_details`, `variant_option`, `variant_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Dove', '11223', 'standard', 'C128', 1, 1, 2, 2, 2, 140, 160, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2023-08-09 16:33:30', '2023-09-30 10:57:37'),
(2, 'Dove', '112234', 'standard', 'C128', 1, 1, 2, 2, 2, 140, 160, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2023-08-09 16:34:06', '2023-09-30 10:58:01'),
(3, 'Zora Cream', '122', 'standard', 'C128', NULL, 1, 2, 2, 2, 208, 225, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2023-09-07 08:07:01', '2023-09-07 08:28:28'),
(4, 'Zora Cream', '1223333333', 'standard', 'C128', 1, 1, 2, 2, 2, 209, 225, 576, NULL, 0, NULL, NULL, '2023-09-07', NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2023-09-07 08:28:08', '2023-10-07 08:42:11'),
(5, 'Biryani Masala', '1245255', 'standard', 'C128', NULL, 2, 2, 2, 2, 80, 90, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-12 17:09:24', '2023-10-07 09:40:54'),
(6, 'Niraj Soap', '14785220', 'standard', 'C128', NULL, 4, 2, 2, 2, 75, 120, 298, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-14 07:25:47', '2023-10-05 14:07:49'),
(7, 'Black Rose', '4878611125209', 'standard', 'C128', NULL, 1, 2, 2, 2, 158, 240, 960, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-14 12:14:04', '2023-10-07 09:36:30'),
(8, 'Pantene Shampoo 185ml pk', '8001841494067', 'standard', 'C128', NULL, 1, 2, 2, 2, 391.5, 450, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-14 12:17:55', '2023-10-07 09:08:14'),
(9, 'Pantene Shampoo 360ml pk', '8001841494180', 'standard', 'C128', NULL, 1, 2, 2, 2, 696, 800, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-14 12:21:05', '2023-09-14 12:25:48'),
(10, 'chanteur Rose Oud Amour Shower Gel 550ml', '8888202063175', 'standard', 'C128', NULL, 3, 2, 2, 2, 841.05, 970, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2023-09-17 10:17:36', '2023-09-30 10:47:39'),
(11, 'Enchanteur Alluring Lotion 100ml', '8888202034588', 'standard', 'C128', NULL, 3, 2, 2, 2, 209.15, 245, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2023-09-17 10:19:37', '2023-09-30 10:48:47'),
(12, 'Yardley Almond&amp;amp;Aloevera Hair Cream 150g', '6297000442013', 'standard', 'C128', NULL, 3, 2, 2, 2, 729.8, 840, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2023-09-17 10:21:26', '2023-09-30 10:49:17'),
(13, 'Yardley Imperial Jasmine Soap 100g', '4035773088746', 'standard', 'C128', NULL, 3, 2, 2, 2, 382.7, 440, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-17 10:23:18', '2023-09-18 13:32:28'),
(14, 'Heaven Dove tube', '1458', 'standard', 'C128', NULL, 1, 2, 2, 2, 197.08, 210, 0, 500, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-18 09:48:55', '2023-09-18 09:48:55'),
(15, 'Zora Soap', '8963369821476', 'standard', 'C128', NULL, 1, 2, 2, 2, 90, 102, 720, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-20 06:49:10', '2023-10-07 09:36:12'),
(16, 'Yardley  body spray 150ml', '0001', 'standard', 'C128', NULL, 3, 2, 2, 2, 551.8, 640, 398, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-30 09:29:39', '2023-10-07 09:36:45'),
(17, 'Yardley Female  body spray 150ml', '0002', 'standard', 'C128', NULL, 3, 2, 2, 2, 551.8, 640, 201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-30 09:33:41', '2023-10-01 09:27:37'),
(18, 'Yardley Powder 150gm', '0003', 'standard', 'C128', NULL, 3, 2, 2, 2, 569.6, 660, 149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-30 09:35:41', '2023-10-01 10:02:43'),
(19, 'Yardley Powder 250gm', '0004', 'standard', 'C128', NULL, 3, 2, 2, 2, 765.4, 860, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-30 09:37:23', '2023-09-30 12:48:40'),
(20, 'yardley Lotion 200ml', '0005', 'standard', 'C128', NULL, 3, 2, 2, 2, 525.1, 610, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-30 09:39:48', '2023-09-30 12:48:40'),
(21, 'Yardley Brilliantine Hair Gel 150g', '0006', 'standard', 'C128', NULL, 3, 2, 2, 2, 854.4, 970, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-30 09:41:48', '2023-09-30 12:48:40'),
(22, 'Yardley Perpume 100ml', '0007', 'standard', 'C128', NULL, 3, 2, 2, 2, 1913.5, 2220, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-30 09:43:34', '2023-09-30 12:48:40'),
(23, 'Yardley Hony Hair Cream 150g', '0008', 'standard', 'C128', NULL, 3, 2, 2, 2, 729.8, 835, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-30 09:45:42', '2023-09-30 12:48:40'),
(24, 'Yardley Brilliantine Hair Gel 80g', '0009', 'standard', 'C128', NULL, 3, 2, 2, 2, 600.75, 685, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-30 09:48:51', '2023-09-30 12:48:40'),
(25, 'Yardley Soap imperial jasmine100ml', '0010', 'standard', 'C128', NULL, 3, 2, 2, 2, 382.7, 440, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-30 09:50:25', '2023-09-30 12:48:40'),
(26, 'Enchanteur Talcom Powder 250gm', '0011', 'standard', 'C128', NULL, 3, 2, 2, 2, 703.1, 798, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-30 09:54:49', '2023-09-30 12:48:40'),
(27, 'Enchanteur Talcom Powder 125gm', '1234567891011', 'standard', 'C128', NULL, 3, 2, 2, 2, 356, 410, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-30 09:56:15', '2023-09-30 10:54:13'),
(28, 'Enchanteur Meal  body spray 150ML', '0013', 'standard', 'C128', NULL, 3, 2, 2, 2, 445, 510, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-30 09:58:15', '2023-09-30 12:48:40'),
(29, 'Enchanteur Female  body spray 150ML', '0014', 'standard', 'C128', NULL, 3, 2, 2, 2, 445, 510, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-30 09:58:58', '2023-09-30 12:48:40'),
(30, 'Enchanteur shower gel 250ml', '0015', 'standard', 'C128', NULL, 3, 2, 2, 2, 351.55, 400, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-30 10:01:07', '2023-09-30 12:48:40'),
(31, 'Enchanteur  Enticing Lotion100ml', '0016', 'standard', 'C128', NULL, 3, 2, 2, 2, 209.15, 240, 48, 48, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-30 10:02:40', '2023-10-07 09:37:31'),
(32, 'Gatsby face wach 120gm', '0017', 'standard', 'C128', NULL, 3, 2, 2, 2, 569.6, 655, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-30 10:32:10', '2023-09-30 12:48:40'),
(33, 'Gatsby  hair gel  150gm', '0018', 'standard', 'C128', NULL, 3, 2, 2, 2, 387.15, 445, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-30 10:33:58', '2023-09-30 10:50:25'),
(34, 'Gatsby hair Gel 300ml', '0019', 'standard', 'C128', NULL, 3, 2, 2, 2, 663.05, 760, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-30 10:36:01', '2023-09-30 12:48:40'),
(35, 'Lux Saudi Soap 170g', '154873659852', 'standard', 'C128', NULL, 5, 2, 2, 2, 285, 350, 0, 30, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-09-30 11:04:29', '2023-09-30 11:20:12'),
(36, 'Local Body Spray 1', '0020', 'standard', 'C128', NULL, 5, 2, 2, 2, 120, 240, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-01 14:47:04', '2023-10-05 14:07:49'),
(37, 'Janan Gold Perfumes', '02035149-100-999', 'standard', 'C128', NULL, 5, 2, 2, 2, 4400, 5500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-03 08:20:07', '2023-10-03 08:20:07'),
(38, 'Janan Sport Perfumes', '125478335422', 'standard', 'C128', NULL, 5, 2, 2, 2, 4400, 5500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-03 08:21:16', '2023-10-03 08:21:16'),
(39, 'Ken Beauty Alpha Cream', '8966000030541', 'standard', 'C128', NULL, 6, 2, 2, 2, 187.2, 290, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-03 08:25:43', '2023-10-07 09:38:10'),
(40, 'Kean Beauty Hand&amp;Feet Scrub 40gm', '8966000030510', 'standard', 'C128', NULL, 6, 2, 2, 2, 187.2, 280, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-03 08:29:20', '2023-10-04 15:53:29'),
(41, 'Kean Beauty Arqe Qulab 120ml', '8966000030534', 'standard', 'C128', NULL, 6, 2, 2, 2, 65, 130, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-03 08:30:47', '2023-10-04 15:53:29'),
(42, 'Kean Beauty Rose Glyco Spray120ml', '8966000030503', 'standard', 'C128', NULL, 6, 2, 2, 2, 86, 140, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-03 08:32:47', '2023-10-04 15:53:29'),
(43, 'Kean Beauty Moisturizing Lotion', '8966000030558', 'standard', 'C128', NULL, 6, 2, 2, 2, 115, 180, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-03 08:34:38', '2023-10-04 15:53:29'),
(44, 'Kean BeautSmoothing Lotion', '8966000030565', 'standard', 'C128', NULL, 6, 2, 2, 2, 115, 180, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-03 08:38:07', '2023-10-04 15:53:29'),
(45, 'Yafu Face Powder 2', '4524521452149', 'standard', 'C128', NULL, 5, 2, 2, 2, 230, 280, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-03 08:40:57', '2023-10-03 08:40:57'),
(46, 'Yafu Face Powder', '6920227513050', 'standard', 'C128', NULL, 5, 2, 2, 2, 320, 350, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-03 08:42:34', '2023-10-03 08:42:34'),
(47, 'Green Chili Paste 330g', '0022', 'standard', 'C128', NULL, 2, 2, 2, 2, 283.41, 325, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-04 14:15:37', '2023-10-07 09:06:46'),
(48, 'Black pepper powder 50gm', '8964001207306', 'standard', 'C128', NULL, 2, 2, 2, 2, 142.62, 165, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-04 14:18:23', '2023-10-04 15:08:51'),
(49, 'Pheni 200g', '0023', 'standard', 'C128', NULL, 2, 2, 2, 2, 198.81, 245, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-04 14:20:39', '2023-10-04 15:08:51'),
(50, 'Assorted Cookies 240gm', '8964002574247', 'standard', 'C128', NULL, 2, 2, 2, 2, 329.94, 380, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-04 14:22:30', '2023-10-04 15:08:51'),
(51, 'Tea Rusk 220gm', '8964002574223', 'standard', 'C128', NULL, 2, 2, 2, 2, 160.74, 185, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-04 14:24:22', '2023-10-04 15:08:51'),
(52, 'Cumin Powder 50gm', '0024', 'standard', 'C128', NULL, 2, 2, 2, 2, 229.94, 380, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-04 14:26:16', '2023-10-04 15:08:51'),
(53, 'Sugar puff pastry 200g', '8964002574681', 'standard', 'C128', NULL, 2, 2, 2, 2, 449.57, 285, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-04 14:28:06', '2023-10-04 15:08:51'),
(54, 'Shahi Seekh Kabab Masala 50gm', '8964002574520', 'standard', 'C128', NULL, 2, 2, 2, 2, 92.28, 105, 144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-04 14:30:01', '2023-10-04 15:08:51'),
(55, 'Corn flour 250gm', '8964002574278', 'standard', 'C128', NULL, 2, 2, 2, 2, 118.44, 235, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-04 14:31:48', '2023-10-04 15:08:51'),
(56, 'strawberry jelly 80gm', '0025', 'standard', 'C128', NULL, 2, 2, 2, 2, 126.9, 145, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-04 14:33:37', '2023-10-04 15:08:51'),
(57, 'Khatta Meetha mix200gm', '8964002575305', 'standard', 'C128', NULL, 2, 2, 2, 2, 148.05, 170, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-04 14:36:03', '2023-10-04 15:08:51'),
(58, 'Nimco Mix 200gm', '8964002575251', 'standard', 'C128', NULL, 2, 2, 2, 2, 148.05, 170, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-04 14:38:44', '2023-10-04 15:08:51'),
(59, 'Kodomo baby Soap 75gm', '0026', 'standard', 'C128', NULL, 3, 2, 2, 2, 173.55, 199, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-05 15:17:28', '2023-10-07 09:36:45'),
(60, 'Zora Cream', '4510256325414', 'standard', 'C128', NULL, 7, 2, 2, 2, 209, 225, 576, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-10-07 08:46:56', '2023-10-07 09:36:12');

-- --------------------------------------------------------

--
-- Table structure for table `product_adjustments`
--

CREATE TABLE `product_adjustments` (
  `id` int UNSIGNED NOT NULL,
  `adjustment_id` int NOT NULL,
  `product_id` int NOT NULL,
  `variant_id` int DEFAULT NULL,
  `qty` double NOT NULL,
  `action` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_batches`
--

CREATE TABLE `product_batches` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `batch_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_date` date NOT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_purchases`
--

CREATE TABLE `product_purchases` (
  `id` int UNSIGNED NOT NULL,
  `purchase_id` int NOT NULL,
  `product_id` int NOT NULL,
  `product_batch_id` int DEFAULT NULL,
  `variant_id` int DEFAULT NULL,
  `imei_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `qty` double NOT NULL,
  `recieved` double NOT NULL,
  `purchase_unit_id` int NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_purchases`
--

INSERT INTO `product_purchases` (`id`, `purchase_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `recieved`, `purchase_unit_id`, `net_unit_cost`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 5, NULL, NULL, NULL, 20, 20, 2, 80, 0, 0, 0, 1600, '2023-09-12 17:12:15', '2023-09-12 17:12:15'),
(2, 2, 6, NULL, NULL, NULL, 300, 300, 2, 75, 0, 0, 0, 22500, '2023-09-14 07:28:16', '2023-09-14 07:28:16'),
(3, 3, 7, NULL, NULL, NULL, 960, 960, 2, 158, 0, 0, 0, 151680, '2023-09-14 12:23:51', '2023-09-14 12:23:51'),
(4, 4, 8, NULL, NULL, NULL, 48, 48, 2, 391.5, 0, 0, 0, 18792, '2023-09-14 12:25:48', '2023-09-14 12:25:48'),
(5, 4, 9, NULL, NULL, NULL, 24, 24, 2, 696, 0, 0, 0, 16704, '2023-09-14 12:25:48', '2023-09-14 12:25:48'),
(6, 5, 15, NULL, NULL, NULL, 720, 720, 2, 90, 0, 0, 0, 64800, '2023-09-20 06:56:05', '2023-09-20 06:56:05'),
(7, 6, 34, NULL, NULL, NULL, 100, 100, 2, 663.05, 0, 0, 0, 66305, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(8, 6, 32, NULL, NULL, NULL, 6, 6, 2, 569.6, 0, 0, 0, 3417.6, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(9, 6, 31, NULL, NULL, NULL, 48, 48, 2, 209.15, 0, 0, 0, 10039.2, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(10, 6, 30, NULL, NULL, NULL, 48, 48, 2, 351.55, 0, 0, 0, 16874.4, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(11, 6, 29, NULL, NULL, NULL, 101, 101, 2, 445, 0, 0, 0, 44945, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(12, 6, 28, NULL, NULL, NULL, 100, 100, 2, 445, 0, 0, 0, 44500, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(13, 6, 26, NULL, NULL, NULL, 100, 100, 2, 703.1, 0, 0, 0, 70310, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(14, 6, 25, NULL, NULL, NULL, 24, 24, 2, 382.7, 0, 0, 0, 9184.8, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(15, 6, 24, NULL, NULL, NULL, 4, 4, 2, 600.75, 0, 0, 0, 2403, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(16, 6, 23, NULL, NULL, NULL, 18, 18, 2, 729.8, 0, 0, 0, 13136.4, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(17, 6, 22, NULL, NULL, NULL, 100, 100, 2, 1913.5, 0, 0, 0, 191350, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(18, 6, 21, NULL, NULL, NULL, 4, 4, 2, 854.4, 0, 0, 0, 3417.6, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(19, 6, 20, NULL, NULL, NULL, 48, 48, 2, 525.1, 0, 0, 0, 25204.8, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(20, 6, 19, NULL, NULL, NULL, 150, 150, 2, 765.4, 0, 0, 0, 114810, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(21, 6, 18, NULL, NULL, NULL, 150, 150, 2, 569.6, 0, 0, 0, 85440, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(22, 6, 17, NULL, NULL, NULL, 202, 202, 2, 551.8, 0, 0, 0, 111463.6, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(23, 6, 16, NULL, NULL, NULL, 400, 400, 2, 551.8, 0, 0, 0, 220720, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(24, 7, 36, NULL, NULL, NULL, 25, 25, 2, 120, 0, 0, 0, 3000, '2023-10-01 14:56:28', '2023-10-01 14:56:28'),
(25, 8, 58, NULL, NULL, NULL, 48, 48, 2, 148.05, 0, 0, 0, 7106.4, '2023-10-04 15:08:51', '2023-10-04 15:08:51'),
(26, 8, 57, NULL, NULL, NULL, 48, 48, 2, 148.05, 0, 0, 0, 7106.4, '2023-10-04 15:08:51', '2023-10-04 15:08:51'),
(27, 8, 56, NULL, NULL, NULL, 72, 72, 2, 126.9, 0, 0, 0, 9136.8, '2023-10-04 15:08:51', '2023-10-04 15:08:51'),
(28, 8, 55, NULL, NULL, NULL, 36, 36, 2, 118.44, 0, 0, 0, 4263.84, '2023-10-04 15:08:51', '2023-10-04 15:08:51'),
(29, 8, 54, NULL, NULL, NULL, 144, 144, 2, 92.29, 0, 0, 0, 13289.33, '2023-10-04 15:08:51', '2023-10-04 15:08:51'),
(30, 8, 53, NULL, NULL, NULL, 72, 72, 2, 249.57, 0, 0, 0, 17969.04, '2023-10-04 15:08:51', '2023-10-04 15:08:51'),
(31, 8, 52, NULL, NULL, NULL, 24, 24, 2, 329.94, 0, 0, 0, 7918.56, '2023-10-04 15:08:51', '2023-10-04 15:08:51'),
(32, 8, 51, NULL, NULL, NULL, 48, 48, 2, 160.74, 0, 0, 0, 7715.52, '2023-10-04 15:08:51', '2023-10-04 15:08:51'),
(33, 8, 50, NULL, NULL, NULL, 24, 24, 2, 329.94, 0, 0, 0, 7918.56, '2023-10-04 15:08:51', '2023-10-04 15:08:51'),
(34, 8, 49, NULL, NULL, NULL, 20, 20, 2, 198.81, 0, 0, 0, 3976.2, '2023-10-04 15:08:51', '2023-10-04 15:08:51'),
(35, 8, 48, NULL, NULL, NULL, 72, 72, 2, 142.62, 0, 0, 0, 10268.64, '2023-10-04 15:08:51', '2023-10-04 15:08:51'),
(36, 8, 47, NULL, NULL, NULL, 36, 36, 2, 283.41, 0, 0, 0, 10202.76, '2023-10-04 15:08:51', '2023-10-04 15:08:51'),
(37, 9, 44, NULL, NULL, NULL, 4, 4, 2, 115, 0, 0, 0, 460, '2023-10-04 15:53:29', '2023-10-04 15:53:29'),
(38, 9, 43, NULL, NULL, NULL, 2, 2, 2, 115, 0, 0, 0, 230, '2023-10-04 15:53:29', '2023-10-04 15:53:29'),
(39, 9, 42, NULL, NULL, NULL, 50, 50, 2, 86, 0, 0, 0, 4300, '2023-10-04 15:53:29', '2023-10-04 15:53:29'),
(40, 9, 41, NULL, NULL, NULL, 100, 100, 2, 65, 0, 0, 0, 6500, '2023-10-04 15:53:29', '2023-10-04 15:53:29'),
(41, 9, 40, NULL, NULL, NULL, 100, 100, 2, 187.2, 0, 0, 0, 18720, '2023-10-04 15:53:29', '2023-10-04 15:53:29'),
(42, 9, 39, NULL, NULL, NULL, 100, 100, 2, 187.2, 0, 0, 0, 18720, '2023-10-04 15:53:29', '2023-10-04 15:53:29'),
(43, 10, 59, NULL, NULL, NULL, 24, 24, 2, 173.55, 0, 0, 0, 4165.2, '2023-10-05 15:18:06', '2023-10-05 15:18:06'),
(44, 11, 4, NULL, NULL, NULL, 576, 576, 2, 209, 0, 0, 0, 120384, '2023-10-07 08:36:36', '2023-10-07 08:36:36'),
(45, 12, 60, NULL, NULL, NULL, 576, 576, 2, 209, 0, 0, 0, 120384, '2023-10-07 08:47:58', '2023-10-07 08:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `product_quotation`
--

CREATE TABLE `product_quotation` (
  `id` int UNSIGNED NOT NULL,
  `quotation_id` int NOT NULL,
  `product_id` int NOT NULL,
  `product_batch_id` int DEFAULT NULL,
  `variant_id` int DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_quotation`
--

INSERT INTO `product_quotation` (`id`, `quotation_id`, `product_id`, `product_batch_id`, `variant_id`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 5, NULL, NULL, 2, 2, 90, 0, 0, 0, 180, '2023-09-13 08:35:57', '2023-09-13 08:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `product_returns`
--

CREATE TABLE `product_returns` (
  `id` int UNSIGNED NOT NULL,
  `return_id` int NOT NULL,
  `product_id` int NOT NULL,
  `product_batch_id` int DEFAULT NULL,
  `variant_id` int DEFAULT NULL,
  `imei_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `qty` double NOT NULL,
  `sale_unit_id` int NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_sales`
--

CREATE TABLE `product_sales` (
  `id` int UNSIGNED NOT NULL,
  `sale_id` int NOT NULL,
  `product_id` int NOT NULL,
  `product_batch_id` int DEFAULT NULL,
  `variant_id` int DEFAULT NULL,
  `imei_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `qty` double NOT NULL,
  `sale_unit_id` int NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sales`
--

INSERT INTO `product_sales` (`id`, `sale_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(10, 10, 5, NULL, NULL, NULL, 1, 2, 90, 0, 0, 0, 90, '2023-09-13 11:18:31', '2023-09-13 11:18:31'),
(11, 11, 5, NULL, NULL, NULL, 1, 2, 90, 0, 0, 0, 90, '2023-09-13 15:50:17', '2023-09-13 15:50:17'),
(12, 12, 6, NULL, NULL, NULL, 2, 2, 150, 0, 0, 0, 300, '2023-09-14 11:14:23', '2023-09-14 11:14:23'),
(14, 14, 5, NULL, NULL, NULL, 1, 2, 90, 0, 0, 0, 90, '2023-09-25 09:08:30', '2023-09-25 09:08:30'),
(15, 15, 5, NULL, NULL, NULL, 1, 2, 90, 0, 0, 0, 90, '2023-09-30 07:08:06', '2023-09-30 07:08:06'),
(16, 16, 17, NULL, NULL, NULL, 1, 2, 640, 0, 0, 0, 640, '2023-10-01 09:27:37', '2023-10-01 09:27:37'),
(17, 16, 16, NULL, NULL, NULL, 1, 2, 640, 0, 0, 0, 640, '2023-10-01 09:27:37', '2023-10-01 09:27:37'),
(18, 17, 18, NULL, NULL, NULL, 1, 2, 660, 0, 0, 0, 660, '2023-10-01 10:02:43', '2023-10-01 10:02:43'),
(19, 17, 16, NULL, NULL, NULL, 1, 2, 640, 0, 0, 0, 640, '2023-10-01 10:02:43', '2023-10-01 10:02:43'),
(23, 20, 39, NULL, NULL, NULL, 6, 2, 260, 0, 0, 0, 1560, '2023-10-04 15:54:25', '2023-10-04 15:54:25'),
(24, 21, 39, NULL, NULL, NULL, 6, 2, 260, 0, 0, 0, 1560, '2023-10-04 15:56:39', '2023-10-04 15:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `product_transfer`
--

CREATE TABLE `product_transfer` (
  `id` int UNSIGNED NOT NULL,
  `transfer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `product_batch_id` int DEFAULT NULL,
  `variant_id` int DEFAULT NULL,
  `imei_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `qty` double NOT NULL,
  `purchase_unit_id` int NOT NULL,
  `net_unit_cost` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `variant_id` int NOT NULL,
  `position` int NOT NULL,
  `item_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_cost` double DEFAULT NULL,
  `additional_price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_warehouse`
--

CREATE TABLE `product_warehouse` (
  `id` int UNSIGNED NOT NULL,
  `product_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_batch_id` int DEFAULT NULL,
  `variant_id` int DEFAULT NULL,
  `imei_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `warehouse_id` int NOT NULL,
  `qty` double NOT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_warehouse`
--

INSERT INTO `product_warehouse` (`id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `warehouse_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, '5', NULL, NULL, NULL, 1, 16, NULL, '2023-09-12 17:12:15', '2023-10-07 09:40:54'),
(2, '6', NULL, NULL, NULL, 1, 298, NULL, '2023-09-14 07:28:16', '2023-10-05 14:07:49'),
(3, '7', NULL, NULL, NULL, 1, 960, NULL, '2023-09-14 12:23:51', '2023-10-07 09:36:30'),
(4, '8', NULL, NULL, NULL, 1, 48, NULL, '2023-09-14 12:25:48', '2023-10-07 09:08:14'),
(5, '9', NULL, NULL, NULL, 1, 24, NULL, '2023-09-14 12:25:48', '2023-09-14 12:25:48'),
(6, '15', NULL, NULL, NULL, 1, 720, NULL, '2023-09-20 06:56:05', '2023-10-07 09:36:12'),
(7, '34', NULL, NULL, NULL, 1, 100, NULL, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(8, '32', NULL, NULL, NULL, 1, 6, NULL, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(9, '31', NULL, NULL, NULL, 1, 48, NULL, '2023-09-30 12:48:40', '2023-10-07 09:37:31'),
(10, '30', NULL, NULL, NULL, 1, 48, NULL, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(11, '29', NULL, NULL, NULL, 1, 101, NULL, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(12, '28', NULL, NULL, NULL, 1, 100, NULL, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(13, '26', NULL, NULL, NULL, 1, 100, NULL, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(14, '25', NULL, NULL, NULL, 1, 24, NULL, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(15, '24', NULL, NULL, NULL, 1, 4, NULL, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(16, '23', NULL, NULL, NULL, 1, 18, NULL, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(17, '22', NULL, NULL, NULL, 1, 100, NULL, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(18, '21', NULL, NULL, NULL, 1, 4, NULL, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(19, '20', NULL, NULL, NULL, 1, 48, NULL, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(20, '19', NULL, NULL, NULL, 1, 150, NULL, '2023-09-30 12:48:40', '2023-09-30 12:48:40'),
(21, '18', NULL, NULL, NULL, 1, 149, NULL, '2023-09-30 12:48:40', '2023-10-01 10:02:43'),
(22, '17', NULL, NULL, NULL, 1, 201, NULL, '2023-09-30 12:48:40', '2023-10-01 09:27:37'),
(23, '16', NULL, NULL, NULL, 1, 398, NULL, '2023-09-30 12:48:40', '2023-10-07 09:36:45'),
(24, '36', NULL, NULL, NULL, 1, 25, NULL, '2023-10-01 14:56:28', '2023-10-05 14:07:49'),
(25, '58', NULL, NULL, NULL, 1, 48, NULL, '2023-10-04 15:08:51', '2023-10-04 15:08:51'),
(26, '57', NULL, NULL, NULL, 1, 48, NULL, '2023-10-04 15:08:51', '2023-10-04 15:08:51'),
(27, '56', NULL, NULL, NULL, 1, 72, NULL, '2023-10-04 15:08:51', '2023-10-04 15:08:51'),
(28, '55', NULL, NULL, NULL, 1, 36, NULL, '2023-10-04 15:08:51', '2023-10-04 15:08:51'),
(29, '54', NULL, NULL, NULL, 1, 144, NULL, '2023-10-04 15:08:51', '2023-10-04 15:08:51'),
(30, '53', NULL, NULL, NULL, 1, 72, NULL, '2023-10-04 15:08:51', '2023-10-04 15:08:51'),
(31, '52', NULL, NULL, NULL, 1, 24, NULL, '2023-10-04 15:08:51', '2023-10-04 15:08:51'),
(32, '51', NULL, NULL, NULL, 1, 48, NULL, '2023-10-04 15:08:51', '2023-10-04 15:08:51'),
(33, '50', NULL, NULL, NULL, 1, 24, NULL, '2023-10-04 15:08:51', '2023-10-04 15:08:51'),
(34, '49', NULL, NULL, NULL, 1, 20, NULL, '2023-10-04 15:08:51', '2023-10-04 15:08:51'),
(35, '48', NULL, NULL, NULL, 1, 72, NULL, '2023-10-04 15:08:51', '2023-10-04 15:08:51'),
(36, '47', NULL, NULL, NULL, 1, 36, NULL, '2023-10-04 15:08:51', '2023-10-07 09:06:46'),
(37, '44', NULL, NULL, NULL, 1, 4, NULL, '2023-10-04 15:53:29', '2023-10-04 15:53:29'),
(38, '43', NULL, NULL, NULL, 1, 2, NULL, '2023-10-04 15:53:29', '2023-10-04 15:53:29'),
(39, '42', NULL, NULL, NULL, 1, 50, NULL, '2023-10-04 15:53:29', '2023-10-04 15:53:29'),
(40, '41', NULL, NULL, NULL, 1, 100, NULL, '2023-10-04 15:53:29', '2023-10-04 15:53:29'),
(41, '40', NULL, NULL, NULL, 1, 100, NULL, '2023-10-04 15:53:29', '2023-10-04 15:53:29'),
(42, '39', NULL, NULL, NULL, 1, 88, NULL, '2023-10-04 15:53:29', '2023-10-07 09:38:10'),
(43, '59', NULL, NULL, NULL, 1, 24, NULL, '2023-10-05 15:18:06', '2023-10-07 09:36:45'),
(44, '4', NULL, NULL, NULL, 1, 576, NULL, '2023-10-07 08:36:36', '2023-10-07 08:36:36'),
(45, '60', NULL, NULL, NULL, 1, 576, NULL, '2023-10-07 08:47:58', '2023-10-07 09:36:12');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int UNSIGNED NOT NULL,
  `reference_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `warehouse_id` int NOT NULL,
  `supplier_id` int DEFAULT NULL,
  `item` int NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `status` int NOT NULL,
  `payment_status` int NOT NULL,
  `document` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `reference_no`, `user_id`, `warehouse_id`, `supplier_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `paid_amount`, `status`, `payment_status`, `document`, `note`, `created_at`, `updated_at`) VALUES
(1, 'pr-20230912-071215', 1, 1, 2, 1, 20, 0, 0, 1600, 0, 0, NULL, NULL, 1600, 0, 1, 1, NULL, NULL, '2023-09-12 17:12:15', '2023-09-12 17:12:15'),
(2, 'pr-20230914-092816', 1, 1, 8, 1, 300, 0, 0, 22500, 0, 0, NULL, NULL, 22500, 0, 1, 1, NULL, NULL, '2023-09-13 22:00:00', '2023-09-14 07:28:16'),
(3, 'pr-20230914-022351', 1, 1, 9, 1, 960, 0, 0, 151680, 0, 0, NULL, NULL, 151680, 0, 1, 1, NULL, NULL, '2023-09-13 22:00:00', '2023-09-14 12:23:51'),
(4, 'pr-20230914-022548', 1, 1, 9, 2, 72, 0, 0, 35496, 0, 0, NULL, NULL, 35496, 0, 1, 1, NULL, NULL, '2023-09-13 22:00:00', '2023-09-14 12:25:48'),
(5, 'pr-20230920-085605', 1, 1, 2, 1, 720, 0, 0, 64800, 0, 0, NULL, NULL, 64800, 0, 1, 1, NULL, NULL, '2023-09-19 22:00:00', '2023-09-20 06:56:05'),
(6, 'pr-20230930-024840', 1, 1, 3, 17, 1603, 0, 0, 1033521.4, 0, 0, NULL, NULL, 1033521.4, 1000000, 1, 1, NULL, NULL, '2023-09-30 12:48:40', '2023-10-01 09:26:07'),
(7, 'pr-20231001-045628', 1, 1, 6, 1, 25, 0, 0, 3000, 0, 0, NULL, NULL, 3000, 0, 1, 1, NULL, NULL, '2023-09-30 22:00:00', '2023-10-01 14:56:28'),
(8, 'pr-20231004-050851', 1, 1, 5, 12, 644, 0, 0, 106872.05, 0, 0, NULL, NULL, 106872.05, 106872, 1, 1, NULL, NULL, '2023-10-04 15:08:51', '2023-10-05 14:10:45'),
(9, 'pr-20231004-055329', 1, 1, 12, 6, 356, 0, 0, 48930, 0, 0, NULL, NULL, 48930, 48900, 1, 1, NULL, NULL, '2023-10-04 15:53:29', '2023-10-05 14:12:41'),
(10, 'pr-20231005-051806', 1, 1, 3, 1, 24, 0, 0, 4165.2, 0, 0, NULL, NULL, 4165.2, 0, 1, 1, NULL, NULL, '2023-10-05 15:18:06', '2023-10-05 15:18:06'),
(11, 'pr-20231007-103636', 1, 1, 2, 1, 576, 0, 0, 120384, 0, 0, NULL, NULL, 120384, 0, 1, 1, NULL, NULL, '2023-10-07 08:36:36', '2023-10-07 08:36:36'),
(12, 'pr-20231007-104758', 1, 1, 2, 1, 576, 0, 0, 120384, 0, 0, NULL, NULL, 120384, 0, 1, 1, NULL, NULL, '2023-10-07 08:47:58', '2023-10-07 08:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_product_return`
--

CREATE TABLE `purchase_product_return` (
  `id` int UNSIGNED NOT NULL,
  `return_id` int NOT NULL,
  `product_id` int NOT NULL,
  `product_batch_id` int DEFAULT NULL,
  `variant_id` int DEFAULT NULL,
  `imei_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `qty` double NOT NULL,
  `purchase_unit_id` int NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` int UNSIGNED NOT NULL,
  `reference_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `biller_id` int NOT NULL,
  `supplier_id` int DEFAULT NULL,
  `customer_id` int NOT NULL,
  `warehouse_id` int NOT NULL,
  `item` int NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `quotation_status` int NOT NULL,
  `document` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `reference_no`, `user_id`, `biller_id`, `supplier_id`, `customer_id`, `warehouse_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `quotation_status`, `document`, `note`, `created_at`, `updated_at`) VALUES
(1, 'qr-20230913-103556', 1, 5, 5, 2, 1, 1, 2, 0, 0, 180, 0, 0, NULL, NULL, 180, 1, NULL, NULL, '2023-09-13 08:35:56', '2023-09-13 08:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `id` int UNSIGNED NOT NULL,
  `reference_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `sale_id` int DEFAULT NULL,
  `cash_register_id` int DEFAULT NULL,
  `customer_id` int NOT NULL,
  `warehouse_id` int NOT NULL,
  `biller_id` int NOT NULL,
  `account_id` int NOT NULL,
  `item` int NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `staff_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `return_purchases`
--

CREATE TABLE `return_purchases` (
  `id` int UNSIGNED NOT NULL,
  `purchase_id` int DEFAULT NULL,
  `reference_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int DEFAULT NULL,
  `warehouse_id` int NOT NULL,
  `user_id` int NOT NULL,
  `account_id` int NOT NULL,
  `item` int NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `staff_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reward_point_settings`
--

CREATE TABLE `reward_point_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `per_point_amount` double NOT NULL,
  `minimum_amount` double NOT NULL,
  `duration` int DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reward_point_settings`
--

INSERT INTO `reward_point_settings` (`id`, `per_point_amount`, `minimum_amount`, `duration`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 300, 1000, 1, 'Year', 1, '2021-06-09 03:40:15', '2022-07-31 11:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `guard_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin can access all data...', 'web', 1, '2018-06-02 11:46:44', '2022-07-31 09:19:24'),
(2, 'Owner', 'Staff of shop', 'web', 1, '2018-10-22 14:38:13', '2022-07-31 09:19:37'),
(4, 'staff', 'staff has specific acess...', 'web', 1, '2018-06-02 12:05:27', '2022-07-31 09:20:13'),
(5, 'Customer', NULL, 'web', 1, '2020-11-05 18:43:16', '2022-07-31 09:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(84, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(93, 2),
(94, 2),
(95, 2),
(96, 2),
(97, 2),
(98, 2),
(99, 2),
(100, 2),
(101, 2),
(102, 2),
(103, 2),
(104, 2),
(105, 2),
(4, 4),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(12, 4),
(13, 4),
(20, 4),
(21, 4),
(22, 4),
(24, 4),
(25, 4),
(28, 4),
(29, 4),
(55, 4),
(56, 4),
(57, 4),
(63, 4),
(64, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int UNSIGNED NOT NULL,
  `reference_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `cash_register_id` int DEFAULT NULL,
  `customer_id` int NOT NULL,
  `warehouse_id` int NOT NULL,
  `biller_id` int DEFAULT NULL,
  `item` int NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `grand_total` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_discount_value` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int NOT NULL,
  `payment_status` int NOT NULL,
  `document` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `sale_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `staff_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `reference_no`, `user_id`, `cash_register_id`, `customer_id`, `warehouse_id`, `biller_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `grand_total`, `order_tax_rate`, `order_tax`, `order_discount_type`, `order_discount_value`, `order_discount`, `coupon_id`, `coupon_discount`, `shipping_cost`, `sale_status`, `payment_status`, `document`, `paid_amount`, `sale_note`, `staff_note`, `created_at`, `updated_at`) VALUES
(10, 'posr-20230913-011831', 1, 1, 2, 1, 3, 1, 1, 0, 0, 90, 90, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 90, NULL, NULL, '2023-09-13 11:18:31', '2023-09-13 11:18:31'),
(11, 'posr-20230913-055017', 1, 1, 2, 1, 5, 1, 1, 0, 0, 90, 90, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 90, NULL, NULL, '2023-09-13 15:50:17', '2023-09-13 15:50:17'),
(12, 'posr-20230914-011423', 1, 1, 3, 1, 5, 1, 2, 0, 0, 300, 222, 0, 0, 'Percentage', 26, 78, NULL, NULL, NULL, 1, 4, NULL, 222, NULL, NULL, '2023-09-14 11:14:23', '2023-10-05 07:20:23'),
(14, 'posr-20230925-110830', 1, 1, 2, 1, 3, 1, 1, 0, 0, 90, 90, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 90, NULL, NULL, '2023-09-25 09:08:30', '2023-09-25 09:08:30'),
(15, 'posr-20230930-090806', 1, 1, 1, 1, 5, 1, 1, 0, 0, 90, 90, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 90, NULL, NULL, '2023-09-30 07:08:06', '2023-09-30 07:08:06'),
(16, 'posr-20231001-112737', 1, 1, 3, 1, 5, 2, 2, 0, 0, 1280, 1280, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1280, NULL, NULL, '2023-10-01 09:27:37', '2023-10-01 09:27:37'),
(17, 'posr-20231001-120243', 1, 1, 2, 1, 4, 2, 2, 0, 0, 1300, 1300, 0, 0, 'Percentage', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1300, NULL, NULL, '2023-10-01 10:02:43', '2023-10-01 10:02:43'),
(20, 'posr-20231004-055425', 1, 1, 3, 1, 7, 1, 6, 0, 0, 1560, 1482, 0, 0, 'Percentage', 5, 78, NULL, NULL, NULL, 1, 4, NULL, 1482, NULL, NULL, '2023-10-04 15:54:25', '2023-10-04 15:54:25'),
(21, 'posr-20231004-055639', 1, 1, 1, 1, 6, 1, 6, 0, 0, 1560, 1560, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1560, NULL, NULL, '2023-10-04 15:56:39', '2023-10-04 15:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `stock_counts`
--

CREATE TABLE `stock_counts` (
  `id` int UNSIGNED NOT NULL,
  `reference_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int NOT NULL,
  `category_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_adjusted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Shoukat Ullah', NULL, 'ScrapeMaster', NULL, 'shoukat.bjr@gmail.com', '03005312937', 'Flat No 4 ( First Floor ) Block No 2 PHA G7/2 Islamabad', 'Islamabad', 'Islāmābād', '44000', 'Pakistan', 0, '2023-08-02 10:07:50', '2023-09-13 08:21:23'),
(2, 'Umar&Ayaz', NULL, 'Zora', NULL, 'vkjfnmmgvh@gmail.com', '03125825173', 'Lahore&peshawar', 'Islamabad', NULL, NULL, 'Pakistan', 1, '2023-09-12 17:10:32', '2023-09-13 08:26:14'),
(3, 'iqbal', NULL, 'Yardley Kodomo Enchanter', NULL, 'adsca124@gmail.com', '03044455828', 'Lahore sha Alam', 'Lahore', NULL, NULL, 'pakistan', 1, '2023-09-13 08:19:29', '2023-09-13 08:19:29'),
(4, 'Haji Davesh', NULL, 'Rivaj', NULL, 'asj12@gmail.com', '03429185622', 'sawat', 'Sawat', NULL, NULL, 'pakistan', 1, '2023-09-13 08:23:06', '2023-09-13 08:23:06'),
(5, 'JAZAA', NULL, 'Jazaa', NULL, 'afsdhh12@gmail.com', '03215825173', 'Islamabad', 'Islamabad', NULL, NULL, 'pakistan', 1, '2023-09-13 08:25:42', '2023-10-05 14:11:59'),
(6, 'Khawaj', NULL, 'Khawaj Jewllery', NULL, 'fdaahg12@gmail.com', '03008409913', 'Lahore Sha Alam Markit', 'Lahora', NULL, NULL, 'pakistan', 1, '2023-09-13 08:29:06', '2023-09-13 08:29:06'),
(7, 'Juned Jamshed', NULL, 'J.', NULL, 'sdsg122@gmail.com', '03099315283', 'Islamabad', 'Islamabad', NULL, NULL, NULL, 1, '2023-09-13 11:27:53', '2023-09-13 11:27:53'),
(8, 'Dwlat khan', NULL, 'Niraj Soap', NULL, 'dawlat.ali12@gmail.com', '03099315283', 'Chana Markit Malak Palaza', 'Timargara', NULL, NULL, 'Pakistan', 1, '2023-09-14 07:17:14', '2023-09-14 07:17:14'),
(9, 'Paradais Enterprises tmg', NULL, 'Black Rose', NULL, 'dvh12@gmail.com', '03013012891', 'timargara', 'tmg', NULL, NULL, NULL, 1, '2023-09-14 12:11:33', '2023-09-14 12:11:33'),
(10, 'yousaf', NULL, 'yousaf', NULL, 'dah12@gmail.com', '03456767387', 'Peshawar', 'Peshawar', NULL, NULL, 'pakistan', 1, '2023-09-16 08:03:19', '2023-09-16 08:03:19'),
(11, 'Zora', NULL, 'Zora 1', NULL, 'hfqsj@gmail.com', '0333', 'Peshawar', 'Peshawar', NULL, NULL, 'pakistan', 0, '2023-09-20 06:53:59', '2023-09-20 06:54:33'),
(12, 'Kamil kean Beauty', NULL, 'kean beauty', NULL, 'fgjuyfh@gmail.com', '1', 'Faisal Abad', 'Faisal Abad', NULL, NULL, NULL, 1, '2023-10-04 15:48:14', '2023-10-04 15:48:14'),
(13, 'Kamil kean Beauty', NULL, 'kean beauty s', NULL, 'fgjuyfh111@gmail.com', '1465+356', 'Faisal Abad', 'Faisal Abad', NULL, NULL, NULL, 1, '2023-10-04 15:48:54', '2023-10-04 15:48:54');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int UNSIGNED NOT NULL,
  `reference_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `status` int NOT NULL,
  `from_warehouse_id` int NOT NULL,
  `to_warehouse_id` int NOT NULL,
  `item` int NOT NULL,
  `total_qty` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int UNSIGNED NOT NULL,
  `unit_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_unit` int DEFAULT NULL,
  `operator` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_code`, `unit_name`, `base_unit`, `operator`, `operation_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '3', 'Feet', NULL, '*', 1, 0, '2023-07-21 05:05:29', '2023-07-21 05:06:01'),
(2, 'Piece', 'Piece', NULL, '*', 1, 1, '2023-08-09 16:31:01', '2023-08-09 16:31:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int NOT NULL,
  `biller_id` int DEFAULT NULL,
  `warehouse_id` int DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `phone`, `company_name`, `role_id`, `biller_id`, `warehouse_id`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$DWAHTfjcvwCpOCXaJg11MOhsqns03uvlwiSUOQwkHL2YYrtrXPcL6', 'zLTLXIBPM3z5nBgTHDK31UNNCJJgLkYgC3vras4OZENUWwHsntbB9FvKOCcF', '5364377', 'nulled', 1, NULL, NULL, 1, 0, '2018-06-02 15:24:15', '2022-07-16 08:38:25'),
(3, 'dhiman da', 'dhiman@gmail.com', '$2y$10$Fef6vu5E67nm11hX7V5a2u1ThNCQ6n9DRCvRF9TD7stk.Pmt2R6O.', '5ehQM6JIfiQfROgTbB5let0Z93vjLHS7rd9QD5RPNgOxli3xdo7fykU7vtTt', '212', 'lioncoders', 1, 0, 0, 0, 1, '2018-06-14 10:00:31', '2020-11-05 19:06:51'),
(6, 'test', 'test@gmail.com', '$2y$10$TDAeHcVqHyCmurki0wjLZeIl1SngKX3WLOhyTiCoZG3souQfqv.LS', 'KpW1gYYlOFacumklO2IcRfSsbC3KcWUZzOI37gqoqM388Xie6KdhaOHIFEYm', '1234', '212312', 4, 0, 0, 0, 1, '2018-06-23 15:05:33', '2018-06-23 15:13:45'),
(8, 'test', 'test@yahoo.com', '$2y$10$hlMigidZV0j2/IPkgE/xsOSb8WM2IRlsMv.1hg1NM7kfyd6bGX3hC', '', '31231', '', 4, 0, 0, 0, 1, '2018-06-25 10:35:49', '2018-07-02 13:07:39'),
(9, 'staff', 'anda@gmail.com', '$2y$10$kxDbnynB6mB1e1w3pmtbSOlSxy/WwbLPY5TJpMi0Opao5ezfuQjQm', 'HUYdFDsg2g1SEUNKVp70hF9RhpiPGEcglq3uk02sjG92M04QacNeV2oWneEZ', '3123', '', 4, 5, 1, 0, 1, '2018-07-02 13:08:08', '2022-07-16 08:37:08'),
(10, 'abul', 'abul@alpha.com', '$2y$10$5zgB2OOMyNBNVAd.QOQIju5a9fhNnTqPx5H6s4oFlXhNiF6kXEsPq', 'x7HlttI5bM0vSKViqATaowHFJkLS3PHwfvl7iJdFl5Z1SsyUgWCVbLSgAoi0', '1234', 'anda', 1, 0, 0, 0, 1, '2018-09-08 11:44:48', '2022-07-16 08:35:32'),
(11, 'teststaff', 'a@a.com', '$2y$10$5KNBIIhZzvvZEQEhkHaZGu.Q8bbQNfqYvYgL5N55B8Pb4P5P/b/Li', 'DkHDEcCA0QLfsKPkUK0ckL0CPM6dPiJytNa0k952gyTbeAyMthW3vi7IRitp', '111', 'aa', 4, 5, 1, 0, 1, '2018-10-22 14:47:56', '2018-10-23 14:10:56'),
(12, 'john', 'john@gmail.com', '$2y$10$P/pN2J/uyTYNzQy2kRqWwuSv7P2f6GE/ykBwtHdda7yci3XsfOKWe', 'O0f1WJBVjT5eKYl3Js5l1ixMMtoU6kqrH7hbHDx9I1UCcD9CmiSmCBzHbQZg', '10001', '', 4, 2, 2, 0, 1, '2018-12-30 12:48:37', '2019-03-06 16:59:49'),
(13, 'jjj', 'test@test.com', '$2y$10$/Qx3gHWYWUhlF1aPfzXaCeZA7fRzfSEyCIOnk/dcC4ejO8PsoaalG', '', '1213', '', 1, 0, 0, 0, 1, '2019-01-03 12:08:31', '2019-03-03 16:02:29'),
(19, 'shakalaka', 'shakalaka@gmail.com', '$2y$10$ketLWT0Ib/JXpo00eJlxoeSw.7leS8V1CUGInfbyOWT4F5.Xuo7S2', '', '1212', 'Digital image', 5, 0, 0, 0, 1, '2020-11-09 12:07:16', '2022-07-16 08:35:32'),
(21, 'modon', 'modon@gmail.com', '$2y$10$7VpoeGMkP8QCvL5zLwFW..6MYJ5MRumDLDoX.TTQtClS561rpFHY.', '', '2222', 'modon company', 5, 0, 0, 0, 1, '2020-11-13 19:12:08', '2022-07-16 08:35:32'),
(22, 'dhiman', 'dhiman@gmail.com', '$2y$10$3mPygsC6wwnDtw/Sg85IpuExtUhgaHx52Lwp7Rz0.FNfuFdfKVpRq', '', '+8801111111101', 'lioncoders', 5, 0, 0, 0, 1, '2020-11-15 18:14:58', '2022-07-16 08:35:32'),
(31, 'mbs', 'mbs@gmail.com', '$2y$10$6Ldm1rWEVSrlTmpjIXkeQO9KwWJz/j0FB4U.fY1oCFeax47rvttEK', '', '2121', '', 4, 1, 2, 0, 1, '2021-12-29 18:40:22', '2022-07-16 08:35:32'),
(36, 'Manuel S', 'msolis@mango.com.gt', '$2y$10$YfM/LdEtAN08hoVXiaRRZO.0Wf.fBn0wRnaCSczc50s3bR.7xFliu', NULL, '53664377', NULL, 1, NULL, NULL, 1, 0, '2022-07-16 07:48:37', '2022-07-16 07:48:37');

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `phone`, `email`, `address`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Warehouse One', '03099315283', 'dawlat.ali12@gmail.com', 'Lahore Traders Timargara', 1, '2023-08-09 16:30:14', '2023-09-13 11:23:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billers`
--
ALTER TABLE `billers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_registers`
--
ALTER TABLE `cash_registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_plans`
--
ALTER TABLE `discount_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_plan_customers`
--
ALTER TABLE `discount_plan_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_plan_discounts`
--
ALTER TABLE `discount_plan_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dso_alerts`
--
ALTER TABLE `dso_alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_cards`
--
ALTER TABLE `gift_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money_transfers`
--
ALTER TABLE `money_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_setting`
--
ALTER TABLE `pos_setting`
  ADD UNIQUE KEY `pos_setting_id_unique` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_batches`
--
ALTER TABLE `product_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_purchases`
--
ALTER TABLE `product_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_quotation`
--
ALTER TABLE `product_quotation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_returns`
--
ALTER TABLE `product_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sales`
--
ALTER TABLE `product_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_transfer`
--
ALTER TABLE `product_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_purchases`
--
ALTER TABLE `return_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reward_point_settings`
--
ALTER TABLE `reward_point_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_counts`
--
ALTER TABLE `stock_counts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billers`
--
ALTER TABLE `billers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cash_registers`
--
ALTER TABLE `cash_registers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_plans`
--
ALTER TABLE `discount_plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_plan_customers`
--
ALTER TABLE `discount_plan_customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_plan_discounts`
--
ALTER TABLE `discount_plan_discounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dso_alerts`
--
ALTER TABLE `dso_alerts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gift_cards`
--
ALTER TABLE `gift_cards`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `money_transfers`
--
ALTER TABLE `money_transfers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_batches`
--
ALTER TABLE `product_batches`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_purchases`
--
ALTER TABLE `product_purchases`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `product_quotation`
--
ALTER TABLE `product_quotation`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_returns`
--
ALTER TABLE `product_returns`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_sales`
--
ALTER TABLE `product_sales`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `product_transfer`
--
ALTER TABLE `product_transfer`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `return_purchases`
--
ALTER TABLE `return_purchases`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reward_point_settings`
--
ALTER TABLE `reward_point_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `stock_counts`
--
ALTER TABLE `stock_counts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
