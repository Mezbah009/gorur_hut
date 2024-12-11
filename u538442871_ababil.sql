-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 20, 2024 at 12:51 PM
-- Server version: 10.11.7-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u538442871_ababil`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`, `status`, `slug`) VALUES
(1, 'Ababil Eximagent', '2023-11-18 01:07:26', '2023-11-26 02:00:33', 1, 'afrins-frozen-food');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `showHome` enum('Yes','No') NOT NULL DEFAULT 'No',
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `slug`, `image`, `status`, `showHome`, `order`) VALUES
(1, 'Bottles', '2023-11-18 00:07:02', '2024-05-10 06:36:15', 'bottles', '1-1714566834.jpg', 1, 'Yes', NULL),
(2, 'Drinking Cups', '2023-11-25 23:15:41', '2024-05-15 10:44:29', 'drinking-cups', '2-1714568641.jpg', 1, 'Yes', NULL),
(3, 'Electronics', '2023-11-25 23:16:06', '2024-05-15 10:35:37', 'electronics', '3-1714568522.jpg', 1, 'Yes', NULL),
(4, 'Massage Machine', '2023-11-25 23:16:27', '2024-05-01 12:57:00', 'massage-machine', '4-1714568220.jpeg', 1, 'Yes', NULL),
(5, 'Hijab Item', '2023-11-25 23:16:42', '2024-05-12 05:36:37', 'hijab-item', '5-1714568358.jpg', 1, 'Yes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'bangladesh', '[value-3]', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) NOT NULL,
  `apartment` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_addresses`
--

INSERT INTO `customer_addresses` (`id`, `user_id`, `first_name`, `last_name`, `email`, `mobile`, `country_id`, `address`, `apartment`, `city`, `state`, `zip`, `created_at`, `updated_at`) VALUES
(1, 2, 'tasnin', 'siam', 'siam@gmail.com', '01790688680', 1, 'saf', 'sfsfs', 'Gazipur', 'barisal', '123', '2023-11-06 22:45:19', '2023-11-06 22:45:19'),
(2, 16, 'Hasin', 'Mahi', 'hasin2@gmail.com', '01997939197', 1, '130/1', 'shopnokunjo', 'dhaka', 'sabujbag', '1214', '2023-11-18 03:46:06', '2023-11-18 03:46:06'),
(3, 17, 'Siam', 'Tasnin', 'tasnin.siam@gmail.com', '02790688780', 1, 'Wugg', 'Gy', 'Gazipur', 'Dubai', '123', '2023-11-26 14:38:16', '2023-11-26 14:38:16'),
(4, 19, 'Hasin', 'Mahi', 'fariha.hasin4424@gmail.com', '01997939199', 1, '123', 'kunto', 'dhaka', 'ahmedbag', '1214', '2023-12-10 04:44:30', '2023-12-10 04:44:30'),
(5, 20, 'siam', 'test', 'admin@gmail.com', '01790688680', 1, '123', '123', 'Gazipur', 'barisal', '123', '2023-12-10 04:53:19', '2023-12-10 04:53:19'),
(6, 21, 'Kabir', 'Ahmed', 'krahmed20@hotmail.com', '01755088286', 1, 'Ta/18 Khilgaon', NULL, 'Dhaka', 'Khilgaon', '1219', '2023-12-18 09:10:48', '2023-12-18 09:10:48'),
(7, 22, 'anika', 'tasnim', 'anikatasnim0019@gmail.com', '01867019811', 1, 'dhaka', '2C', 'dhaka', 'dhaka', 'dhaka', '2023-12-20 06:21:56', '2023-12-20 06:21:56'),
(8, 24, 'test', 'siam', 'siam@gmail.com', '12', 1, '1212', 'sf', '21', '21', '232332', '2024-05-01 11:15:56', '2024-05-01 11:15:56'),
(9, 26, 'Md.Habibullah', 'Mezbah', 'hmezbah@gmail.com', '01722734209', 1, 'house# 284/285 , Road# 02, Baitul aman housing society, Adabor Mohammadpur,Dhaka', NULL, 'Dhaka', 'mohammadpur', '1207', '2024-05-02 08:14:55', '2024-05-02 08:14:55'),
(10, 25, 'Hasin', 'Mahi', 'hasi@gmail.com', '01997939197', 1, '124', 'kunto', 'dhaka', 'ahmedbag', '1214', '2024-05-02 08:15:37', '2024-05-02 08:15:37');

-- --------------------------------------------------------

--
-- Table structure for table `discount_coupons`
--

CREATE TABLE `discount_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `max_uses` int(11) DEFAULT NULL,
  `Max_uses_user` int(11) DEFAULT NULL,
  `type` enum('percent','fixed') NOT NULL DEFAULT 'fixed',
  `discount_amount` double(10,2) NOT NULL,
  `min_amount` double(10,2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `starts_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, '1-1700886623.png', NULL, '2023-11-23 06:11:40', '2023-11-24 22:30:23');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_11_103753_alter_users_table', 2),
(8, '2023_10_15_045034_create_categories_table', 3),
(10, '2023_10_15_045111_create_brands_table', 3),
(11, '2023_10_15_045818_create_products_table', 3),
(12, '2023_10_15_045824_create_product_images_table', 3),
(13, '2023_10_15_070414_alter_categories_table', 4),
(14, '2023_10_15_085511_alter_brands_table', 5),
(15, '2023_10_15_110226_alter_brands_table', 5),
(16, '2023_10_15_045056_create_sub_categories_table', 6),
(17, '2023_10_17_043517_create_temp_images_table', 7),
(18, '2023_10_18_083754_alter_categories_table', 8),
(19, '2023_10_18_085654_alter_products_table', 8),
(20, '2023_10_18_092200_create_shipping_charges_table', 8),
(21, '2023_10_18_112345_alter_categories1_table', 8),
(22, '2023_10_18_112706_alter_sub_categories_table', 8),
(23, '2023_10_21_041927_create_discount_coupons_table', 8),
(24, '2023_10_21_070202_alter_product_images_table', 8),
(25, '2023_10_21_094047_alter_products_table', 8),
(26, '2023_10_21_103346_create_pages_table', 8),
(27, '2023_10_22_114002_create_wishlists_table', 8),
(28, '2023_10_23_033800_create_countries_table', 8),
(29, '2023_10_23_033850_create_orders_table', 8),
(30, '2023_10_23_033905_create_order_items_table', 8),
(31, '2023_10_23_033929_create_customer_addresses_table', 8),
(33, '2023_10_25_063040_alter_orders_table', 8),
(34, '2023_10_25_111232_alter_orders_table', 8),
(35, '2023_10_30_082208_create_sliders_table', 8),
(36, '2023_10_31_052921_alter_orders_table', 8),
(37, '2023_10_31_102814_create_logos_table', 8),
(38, '2023_11_01_042756_alter_product_table', 8),
(39, '2023_11_01_052700_create_weights_table', 8),
(40, '2023_11_02_044106_alter_logos_table', 8),
(41, '2023_11_02_081315_alter_logos_table', 8),
(43, '2023_11_02_122417_create_settings_table', 9),
(45, '2023_10_23_054121_alter_users_table', 10),
(46, '2023_11_04_112143_create_user_otp_table', 10),
(47, '2023_11_07_114135_alter_user_otp_table', 11),
(48, '2023_11_08_033018_alter_users_table', 12),
(49, '2023_11_08_084009_create_variations_table', 13),
(50, '2023_11_08_084409_create_variation_details_table', 13),
(52, '2023_11_08_111145_alter_product_table', 15),
(53, '2023_11_08_101539_create_product_ratings_table', 16),
(54, '2023_11_11_090141_alter_product_items_table', 16),
(55, '2023_11_13_041110_alter_order_items_table', 17),
(57, '2023_11_08_105213_create_product_items_table', 18),
(58, '2023_11_14_041328_alter_product_items_table', 18),
(59, '2023_11_18_095907_alter_product_items_table', 19),
(60, '2023_11_20_090522_alter_wishlists_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` double(10,2) NOT NULL,
  `shipping` double(10,2) NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_code_id` varchar(255) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `grand_total` double(10,2) NOT NULL,
  `payment_status` enum('paid','not paid') NOT NULL DEFAULT 'not paid',
  `status` enum('pending','shipped','delivered','cancelled') NOT NULL DEFAULT 'pending',
  `shipped_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `apartment` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `shipping`, `coupon_code`, `coupon_code_id`, `discount`, `grand_total`, `payment_status`, `status`, `shipped_date`, `created_at`, `updated_at`, `first_name`, `last_name`, `email`, `mobile`, `country_id`, `address`, `apartment`, `city`, `state`, `zip`, `notes`) VALUES
(1, 16, 1200.00, 10.00, '', '', 0.00, 1210.00, 'not paid', 'pending', NULL, '2023-11-26 05:09:25', '2023-11-26 05:09:25', 'Hasin', 'Mahi', 'hasin2@gmail.com', '01997939197', 1, '130/1', 'shopnokunjo', 'dhaka', 'sabujbag', '1214', NULL),
(2, 16, 740.00, 10.00, '', '', 0.00, 750.00, 'not paid', 'cancelled', NULL, '2023-11-26 13:37:27', '2023-11-27 14:09:27', 'Hasin', 'Mahi', 'hasin2@gmail.com', '01997939197', 1, '130/1', 'shopnokunjo', 'dhaka', 'sabujbag', '1214', NULL),
(3, 17, 845.00, 10.00, '', '', 0.00, 855.00, 'not paid', 'pending', NULL, '2023-11-26 14:38:16', '2023-11-26 14:38:16', 'Siam', 'Tasnin', 'tasnin.siam@gmail.com', '02790688780', 1, 'Wugg', 'Gy', 'Gazipur', 'Dubai', '123', NULL),
(4, 17, 370.00, 10.00, '', '', 0.00, 380.00, 'not paid', 'pending', NULL, '2023-11-27 03:34:45', '2023-11-27 03:34:45', 'Siam', 'Tasnin', 'tasnin.siam@gmail.com', '02790688780', 1, 'Wugg', 'Gy', 'Gazipur', 'Dubai', '123', NULL),
(5, 17, 370.00, 10.00, '', '', 0.00, 380.00, 'not paid', 'pending', NULL, '2023-11-27 03:54:24', '2023-11-27 03:54:24', 'Siam', 'Tasnin', 'tasnin.siam@gmail.com', '02790688780', 1, 'Wugg', 'Gy', 'Gazipur', 'Dubai', '123', NULL),
(6, 17, 350.00, 10.00, '', '', 0.00, 360.00, 'not paid', 'pending', NULL, '2023-11-27 04:05:54', '2023-11-27 04:05:54', 'Siam', 'Tasnin', 'tasnin.siam@gmail.com', '02790688780', 1, 'Wugg', 'Gy', 'Gazipur', 'Dubai', '123', NULL),
(7, 16, 600.00, 10.00, '', '', 0.00, 610.00, 'not paid', 'pending', NULL, '2023-11-27 07:39:54', '2023-11-27 07:39:54', 'Hasin', 'Mahi', 'hasin2@gmail.com', '01997939197', 1, '130/1', 'shopnokunjo', 'dhaka', 'sabujbag', '1214', NULL),
(8, 16, 1200.00, 10.00, '', '', 0.00, 1210.00, 'not paid', 'pending', NULL, '2023-11-27 14:10:10', '2023-11-27 14:10:10', 'Hasin', 'Mahi', 'hasin2@gmail.com', '01997939197', 1, '130/1', 'shopnokunjo', 'dhaka', 'sabujbag', '1214', NULL),
(9, 19, 600.00, 10.00, '', '', 0.00, 610.00, 'not paid', 'pending', NULL, '2023-12-10 04:44:51', '2023-12-10 04:44:51', 'Hasin', 'Mahi', 'fariha.hasin4424@gmail.com', '01997939199', 1, '123', 'kunto', 'dhaka', 'ahmedbag', '1214', NULL),
(10, 19, 250.00, 10.00, '', '', 0.00, 260.00, 'not paid', 'pending', NULL, '2023-12-10 04:45:31', '2023-12-10 04:45:31', 'Hasin', 'Mahi', 'fariha.hasin4424@gmail.com', '01997939199', 1, '123', 'kunto', 'dhaka', 'ahmedbag', '1214', NULL),
(11, 19, 970.00, 10.00, '', '', 0.00, 980.00, 'not paid', 'pending', NULL, '2023-12-10 04:46:04', '2023-12-10 04:46:04', 'Hasin', 'Mahi', 'fariha.hasin4424@gmail.com', '01997939199', 1, '123', 'kunto', 'dhaka', 'ahmedbag', '1214', NULL),
(12, 20, 370.00, 10.00, '', '', 0.00, 380.00, 'not paid', 'pending', NULL, '2023-12-10 04:53:19', '2023-12-10 04:53:19', 'siam', 'test', 'admin@gmail.com', '01790688680', 1, '123', '123', 'Gazipur', 'barisal', '123', NULL),
(13, 21, 620.00, 10.00, '', '', 0.00, 630.00, 'not paid', 'pending', NULL, '2023-12-18 09:10:48', '2023-12-18 09:10:48', 'Kabir', 'Ahmed', 'krahmed20@hotmail.com', '01755088286', 1, 'Ta/18 Khilgaon', NULL, 'Dhaka', 'Khilgaon', '1219', NULL),
(14, 21, 450.00, 10.00, '', '', 0.00, 460.00, 'not paid', 'pending', NULL, '2023-12-18 09:12:35', '2023-12-18 09:12:35', 'Kabir', 'Ahmed', 'krahmed20@hotmail.com', '01755088286', 1, 'Ta/18 Khilgaon', NULL, 'Dhaka', 'Khilgaon', '1219', NULL),
(15, 22, 600.00, 10.00, '', '', 0.00, 610.00, 'not paid', 'pending', NULL, '2023-12-20 06:21:56', '2023-12-20 06:21:56', 'anika', 'tasnim', 'anikatasnim0019@gmail.com', '01867019811', 1, 'dhaka', '2C', 'dhaka', 'dhaka', 'dhaka', NULL),
(16, 24, 350.00, 10.00, '', '', 0.00, 360.00, 'not paid', 'pending', NULL, '2024-05-01 11:15:56', '2024-05-01 11:15:56', 'test', 'siam', 'siam@gmail.com', '12', 1, '1212', 'sf', '21', '21', '232332', NULL),
(17, 24, 0.00, 10.00, '', '', 0.00, 10.00, 'not paid', 'pending', NULL, '2024-05-01 11:19:06', '2024-05-01 11:19:06', 'test', 'siam', 'siam@gmail.com', '12', 1, '1212', 'sf', '21', '21', '232332', NULL),
(18, 24, 370.00, 10.00, '', '', 0.00, 380.00, 'not paid', 'pending', NULL, '2024-05-01 11:19:58', '2024-05-01 11:19:58', 'test', 'siam', 'siam@gmail.com', '12', 1, '1212', 'sf', '21', '21', '232332', NULL),
(19, 24, 0.00, 10.00, '', '', 0.00, 10.00, 'not paid', 'pending', NULL, '2024-05-01 11:20:46', '2024-05-01 11:20:46', 'test', 'siam', 'siam@gmail.com', '12', 1, '1212', 'sf', '21', '21', '232332', NULL),
(20, 26, 370.00, 10.00, '', '', 0.00, 380.00, 'not paid', 'pending', NULL, '2024-05-02 08:14:55', '2024-05-02 08:14:55', 'Md.Habibullah', 'Mezbah', 'hmezbah@gmail.com', '01722734209', 1, 'house# 284/285 , Road# 02, Baitul aman housing society, Adabor Mohammadpur,Dhaka', NULL, 'Dhaka', 'mohammadpur', '1207', NULL),
(21, 25, 370.00, 10.00, '', '', 0.00, 380.00, 'not paid', 'pending', NULL, '2024-05-02 08:15:37', '2024-05-02 08:15:37', 'Hasin', 'Mahi', 'hasi@gmail.com', '01997939197', 1, '124', 'kunto', 'dhaka', 'ahmedbag', '1214', NULL),
(22, 25, 24.99, 10.00, '', '', 0.00, 34.99, 'not paid', 'pending', NULL, '2024-05-16 05:42:25', '2024-05-16 05:42:25', 'Hasin', 'Mahi', 'hasi@gmail.com', '01997939197', 1, '124', 'kunto', 'dhaka', 'ahmedbag', '1214', NULL),
(23, 26, 74.43, 10.00, '', '', 0.00, 84.43, 'not paid', 'pending', NULL, '2024-05-16 00:30:53', '2024-05-16 00:30:53', 'Md.Habibullah', 'Mezbah', 'hmezbah@gmail.com', '01722734209', 1, 'house# 284/285 , Road# 02, Baitul aman housing society, Adabor Mohammadpur,Dhaka', NULL, 'Dhaka', 'mohammadpur', '1207', NULL),
(24, 26, 24.99, 10.00, '', '', 0.00, 34.99, 'not paid', 'pending', NULL, '2024-05-16 06:57:43', '2024-05-16 06:57:43', 'Md.Habibullah', 'Mezbah', 'hmezbah@gmail.com', '01722734209', 1, 'house# 284/285 , Road# 02, Baitul aman housing society, Adabor Mohammadpur,Dhaka', NULL, 'Dhaka', 'mohammadpur', '1207', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `total` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_item_id`, `name`, `qty`, `price`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 12, NULL, 'Chocolate Cake', 2, 600.00, 1200.00, '2023-11-26 05:09:25', '2023-11-26 05:09:25'),
(2, 2, 10, NULL, 'Fresh Ghee', 2, 370.00, 740.00, '2023-11-26 13:37:27', '2023-11-26 13:37:27'),
(3, 3, 8, NULL, 'Crispy Chicken Fry', 1, 595.00, 595.00, '2023-11-26 14:38:16', '2023-11-26 14:38:16'),
(4, 3, 6, NULL, 'Egg Fried Rice', 1, 250.00, 250.00, '2023-11-26 14:38:19', '2023-11-26 14:38:19'),
(5, 4, 10, NULL, 'Fresh Ghee', 1, 370.00, 370.00, '2023-11-27 03:34:45', '2023-11-27 03:34:45'),
(6, 5, 10, NULL, 'Fresh Ghee', 1, 370.00, 370.00, '2023-11-27 03:54:24', '2023-11-27 03:54:24'),
(7, 6, 9, NULL, 'Fresh Butter', 1, 350.00, 350.00, '2023-11-27 04:05:54', '2023-11-27 04:05:54'),
(8, 7, 12, NULL, 'Chocolate Cake', 1, 600.00, 600.00, '2023-11-27 07:39:54', '2023-11-27 07:39:54'),
(9, 8, 12, NULL, 'Chocolate Cake', 2, 600.00, 1200.00, '2023-11-27 14:10:10', '2023-11-27 14:10:10'),
(10, 9, 12, NULL, 'Chocolate Cake', 1, 600.00, 600.00, '2023-12-10 04:44:51', '2023-12-10 04:44:51'),
(11, 10, 11, NULL, 'Sweet Payesh', 1, 250.00, 250.00, '2023-12-10 04:45:31', '2023-12-10 04:45:31'),
(12, 11, 10, NULL, 'Fresh Ghee', 1, 370.00, 370.00, '2023-12-10 04:46:04', '2023-12-10 04:46:04'),
(13, 11, 12, NULL, 'Chocolate Cake', 1, 600.00, 600.00, '2023-12-10 04:46:07', '2023-12-10 04:46:07'),
(14, 12, 10, NULL, 'Fresh Ghee', 1, 370.00, 370.00, '2023-12-10 04:53:19', '2023-12-10 04:53:19'),
(15, 13, 11, NULL, 'Sweet Payesh', 1, 250.00, 250.00, '2023-12-18 09:10:48', '2023-12-18 09:10:48'),
(16, 13, 10, NULL, 'Fresh Ghee', 1, 370.00, 370.00, '2023-12-18 09:10:51', '2023-12-18 09:10:51'),
(17, 14, 4, NULL, 'Beef Kebab', 1, 450.00, 450.00, '2023-12-18 09:12:35', '2023-12-18 09:12:35'),
(18, 15, 11, NULL, 'Sweet Payesh', 1, 250.00, 250.00, '2023-12-20 06:21:56', '2023-12-20 06:21:56'),
(19, 15, 3, NULL, 'Chicken Kebab', 1, 350.00, 350.00, '2023-12-20 06:22:00', '2023-12-20 06:22:00'),
(20, 16, 5, NULL, 'Chilli Chowmein', 1, 350.00, 350.00, '2024-05-01 11:15:56', '2024-05-01 11:15:56'),
(21, 18, 10, NULL, 'Fresh Ghee', 1, 370.00, 370.00, '2024-05-01 11:19:58', '2024-05-01 11:19:58'),
(22, 20, 10, NULL, 'Massage Gun', 1, 370.00, 370.00, '2024-05-02 08:14:55', '2024-05-02 08:14:55'),
(23, 21, 10, NULL, 'Massage Gun', 1, 370.00, 370.00, '2024-05-02 08:15:37', '2024-05-02 08:15:37'),
(24, 22, 11, NULL, 'Neck Massager', 1, 24.99, 24.99, '2024-05-16 05:42:25', '2024-05-16 05:42:25'),
(25, 23, 11, NULL, 'Neck Massager', 1, 24.99, 24.99, '2024-05-16 00:30:53', '2024-05-16 00:30:53'),
(26, 23, 9, NULL, 'Smart Air Fryer', 1, 24.45, 24.45, '2024-05-16 00:30:58', '2024-05-16 00:30:58'),
(27, 23, 12, NULL, 'Stand Fan', 1, 24.99, 24.99, '2024-05-16 00:31:00', '2024-05-16 00:31:00'),
(28, 24, 12, NULL, 'Stand Fan', 1, 24.99, 24.99, '2024-05-16 06:57:43', '2024-05-16 06:57:43');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `content`, `created_at`, `updated_at`) VALUES
(2, 'About Us', 'about-us', '<p style=\"text-align: justify;\">Ababil Export Import Agent Limited is a dynamic wholesaler dedicated to facilitating . international trade through superior sourcing, distribution, and customer service. As a leading player in the export-import domain, we specialize in connecting global markets, bridging the gap between suppliers and buyers across diverse industries. Ababil Export Import Agent Limited, came into existence in December’23. It is private limited company incorporated in Company house in England and Wales. The nature of the business is Export the product to abroad and Import the usable can products from other country, we can also will work as an indenter where we get the handling. The founder of the company by Mr. Mohammad Mahbub Hasan formerly worked in the name and same field of ‘DEWPOINT’ in Bangladesh a proprietorship concern (Trade License # 0437892. Date 30-07-2008). It has been working successfully commission in the field of importing and supplying promotional items since July 2008. To strengthen the acceptability and legal frame and widen the scope of work of the organization the founders registered it in the Registrar of Joint Stock Companies and Firm, Dhaka, Bangladesh as a private limited company in&nbsp; July 19, 2018.</p><p style=\"text-align: justify;\">Ababil Export Import Agent Ltd is committed to ensure its Directors and Shareholders’ return delivering exceptional, personalized, and flexible service to its international and domestic customers. We understand our customers’ needs and we will work hard to provide them premium quality products but low price as possible by souring from other country. The company mission is to delivered best product mainly household, packaging for UK café industry and expand our e-business by 2024/2025 through online business platform.</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">Ababil Export Import Agent Limited specific objectives are:</p><ol><li style=\"text-align: justify;\">Become number one in the Local wholesale market in London by 2024</li><li style=\"text-align: justify;\">Expand in online e-business and create more job opportunities to make UK economy stronger.</li><li style=\"text-align: justify;\">Aims to be a leading player in the global export- import industry, diversify products, ensure efficiency, satisfy customers, uphold standards, integrate tech, and manage risks.</li></ol><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\"><span style=\"font-weight: bolder;\"><span style=\"font-family: Tahoma;\">Company Synopsis:</span></span></p><p style=\"text-align: justify;\"><span style=\"font-weight: bolder;\"><font color=\"#ff9c00\">Company name:</font></span>&nbsp;Ababil Export Import Agent Limited</p><p style=\"text-align: justify;\"><span style=\"font-weight: bolder;\"><font color=\"#ff9c00\">Registered Head Office:&nbsp;</font></span>278, Balfour road, Ilford, England, IG14HZ</p><p style=\"text-align: justify;\"><span style=\"font-weight: bolder;\"><font color=\"#ff9c00\">Trading address:</font><font color=\"#3984c6\">&nbsp;</font></span>Part of Garages, Hamton Road, E7 0PB</p><p style=\"text-align: justify;\"><font color=\"#ff9c00\"><span style=\"font-weight: bolder;\">Company No.</span><span style=\"white-space: pre;\">	</span></font>15337148</p><p style=\"text-align: justify;\"><span style=\"font-weight: bolder;\"><font color=\"#ff9c00\">Date of Incorporation:</font><span style=\"color: rgb(57, 132, 198); white-space: pre;\">	</span></span>&nbsp;08, December 2023</p><p style=\"text-align: justify;\"><font color=\"#ff9c00\"><span style=\"font-weight: bolder;\">Country of Origin:</span>&nbsp;</font>England and Wales, United Kingdom</p><p style=\"text-align: justify;\"><span style=\"font-weight: bolder;\"><font color=\"#ff9c00\">Company Type:</font></span><span style=\"white-space: pre;\">	</span>Private Limited Company</p><p style=\"text-align: justify;\"><span style=\"font-weight: bolder;\"><font color=\"#ff9c00\">Director:</font></span></p><ul><li style=\"text-align: justify;\">Mohammed Mahbub Hasan</li><li style=\"text-align: justify;\">Mahedi Al Masud Patwary</li></ul><p style=\"text-align: justify;\"><span style=\"font-weight: bolder;\"><font color=\"#ff9c00\">Telephone:&nbsp;</font><font color=\"#3984c6\">&nbsp;</font></span>+447532470718</p><p style=\"text-align: justify;\"><span style=\"font-weight: bolder;\"><font color=\"#ff9c00\">E-mail:</font><span style=\"color: rgb(57, 132, 198); white-space: pre;\">	</span></span></p><ul><li style=\"text-align: justify;\">ababileximal@gmail.com</li><li style=\"text-align: justify;\">info@ababilexim.com</li><li style=\"text-align: justify;\">sales@ababilexim.com</li></ul><p style=\"text-align: justify;\"><span style=\"font-size: 1rem; font-weight: bolder;\"><font color=\"#3984c6\"><br></font></span></p><p style=\"text-align: justify;\"><span style=\"font-size: 1rem; font-weight: bolder;\"><font color=\"#ff9c00\">Website:&nbsp;</font></span><span style=\"font-size: 1rem;\">www.ababilexim.com</span></p>', '2024-05-16 11:45:13', '2024-05-20 11:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `shipping_returns` text DEFAULT NULL,
  `related_products` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `compare_price` decimal(10,2) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_featured` enum('Yes','No') NOT NULL DEFAULT 'No',
  `has_variation` int(11) NOT NULL DEFAULT 0,
  `sku` varchar(255) NOT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `track_qty` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `qty` int(11) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `short_description`, `shipping_returns`, `related_products`, `price`, `compare_price`, `category_id`, `sub_category_id`, `brand_id`, `is_featured`, `has_variation`, `sku`, `barcode`, `track_qty`, `qty`, `weight`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Thermal Flux', 'thermal-flux', '<p><span style=\"font-weight: bolder;\">Feature:</span>&nbsp;Sustainable, Stocked, Business, PORTABLE, temperature display</p><p><span style=\"font-weight: bolder;\">Material:</span>&nbsp;Stainless steel</p><p><span style=\"font-weight: bolder;\">Body Material:</span>&nbsp;Metal</p><p><span style=\"font-weight: bolder;\">Design Style:</span>&nbsp;American Style</p><p><span style=\"font-weight: bolder;\">Price:</span>&nbsp;£6.99</p>', '<p><span style=\"font-size: 1rem;\">Stainless steel</span><br></p>', '<p><br></p>', '', 6.99, NULL, 1, 1, 1, 'Yes', 0, 'B101', '111', 'Yes', 12, NULL, '1', '2023-11-26 01:58:56', '2024-05-15 05:45:45'),
(4, 'Vacuum Flasks', 'vacuum-flasks', '<p><b>Design Style:</b> Minimalist</p><p><b>Feature:</b> PORTABLE, Business, Sustainable, Stocked</p><p><b>Occasion:</b> Travel</p><p><b>Drinkware Type:</b> Vacuum Flasks &amp; Thermoses</p>', '<p><span style=\"font-size: 1rem;\">Vacuum Flasks &amp; Thermoses</span><br></p>', '<p><br></p>', '', 8.99, NULL, 1, 4, 1, 'Yes', 0, 'B102', '112', 'Yes', 11, NULL, '1', '2023-11-26 02:03:46', '2024-05-15 05:38:54'),
(5, 'Thermal Bottle', 'thermal-bottle', '<p><b>Design Style:</b> Modern</p><p><b>Material:</b> Metal</p><p><b>Feature:</b> Sustainable, Stocked</p><p><b>Occasion:</b> Camping</p><div><br></div>', '<p>Sustainable, Stocked</p>', '<p><br></p>', '', 7.99, NULL, 1, 2, 1, 'Yes', 0, 'B103', '113', 'Yes', 12, NULL, '1', '2023-11-26 02:13:34', '2024-05-15 05:35:04'),
(6, 'Water Bottle', 'water-bottle', '<p><b>Design Style:</b> Modern</p><p><b>Material:</b> Stainless Steel Water Bottles</p><p><b>Feature: </b>Sustainable, Stocked</p><p><b>Occasion:</b> Giveaways</p>', '<p>Stainless Steel Water Bottles<br></p>', '<p><br></p>', '', 6.99, NULL, 1, 4, 1, 'Yes', 0, 'R102', '114', 'Yes', 11, 500, '1', '2023-11-26 02:17:15', '2024-05-15 06:19:04'),
(7, 'Thermal Bottles', 'thermal-bottles', '<p>Design Style: Minimalist</p><p>Feature: PORTABLE, Sustainable, Large Capacity, Stocked</p><p>Occasion: Back to School</p><p>Drinkware Type: Vacuum Flasks &amp; Thermoses</p>', '<p>PORTABLE, Sustainable, Large Capacity<br></p>', '<p><br></p>', '', 8.99, NULL, 1, 2, 1, 'Yes', 0, 'F101', '115', 'Yes', 12, NULL, '1', '2023-11-26 02:21:29', '2024-05-15 06:18:28'),
(8, 'Air Fryer', 'air-fryer', '<p>Type: Air Fryer</p><p><span style=\"font-size: 1rem;\">Function: Non-Stick Cooking Surface, Adjustable Thermostat Control, Detachable Oil Container, Overheat Protection, With Light Indicator, With Observation W indow, LCD Display</span><br></p><p><span style=\"font-size: 1rem;\">Application:Hotel, Outdoor, Commercial, Household</span><br></p><p><span style=\"font-size: 1rem;\">Power (W): 22000w</span><br></p>', '<p>Non-Stick Cooking Surface<br></p>', '<p><br></p>', '', 44.99, NULL, 3, 7, 1, 'Yes', 0, 'F102', '116', 'Yes', 11, NULL, '1', '2023-11-26 02:25:05', '2024-05-15 10:38:24'),
(9, 'Smart Air Fryer', 'smart-air-fryer', '<p>Product: Air Fryer</p><p>Power (W): 22000w</p><p>Capacity: 9.8L</p><p>Box Size: 345X355X355mm</p><p>N.W: 3.9kg</p><p>product size: 270X324X321mm</p>', '<p><br></p>', '<p><br></p>', '', 24.45, NULL, 3, 7, 1, 'Yes', 0, 'O101', '117', 'Yes', 10, 250, '1', '2023-11-26 02:42:50', '2024-05-16 00:31:00'),
(10, 'Massage Gun', 'massage-gun', '<p><b>Application:</b> Body, ARM, Hand, NECK, Leg</p><p><b>Function: </b>musical function</p><p>After-sale Service</p><p>Onsite Training, Onsite Installation</p><p><b>Product name: </b>Mini Fascia Muscle Massage Gun</p>', '<p><br></p>', '<p><br></p>', '', 19.99, NULL, 4, 5, 1, 'Yes', 0, 'O102', '118', 'Yes', 2, NULL, '1', '2023-11-26 02:47:21', '2024-05-15 10:31:49'),
(11, 'Neck Massager', 'neck-massager', '<p>Type: neck massager electric shiatsu</p><p>Application: Neck/Shoulder/body</p><p>Function: musical function, manual-wired control, timing control</p>', '<p><span style=\"font-size: 1rem;\">neck massager electric shiatsu</span></p>', '<p><br></p>', '', 24.99, NULL, 4, 6, 1, 'Yes', 0, 'D101', '119', 'Yes', 7, NULL, '1', '2023-11-26 02:53:12', '2024-05-16 00:30:58'),
(12, 'Stand Fan', 'stand-fan', '<p>18inch standing fan</p><p>High quality motor, strong wind power</p><p>3 levels of wind speed adjustment</p><p>Shake head mode, feel the coolness in any corner</p><p>Fashionable design ,make your eyes shine.</p>', '<p>High quality motor, strong wind power<br></p>', '<p><br></p>', '', 24.99, NULL, 4, NULL, 1, 'Yes', 0, 'D102', '120', 'Yes', 2, NULL, '1', '2023-11-26 02:55:09', '2024-05-16 06:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `sort_order`, `created_at`, `updated_at`) VALUES
(29, 8, '8-29-1714564414.jpg', NULL, '2024-05-01 11:53:34', '2024-05-01 11:53:34'),
(31, 10, '10-31-1714564733.jpg', NULL, '2024-05-01 11:58:53', '2024-05-01 11:58:53'),
(32, 11, '11-32-1714564904.jpg', NULL, '2024-05-01 12:01:44', '2024-05-01 12:01:44'),
(33, 9, '9-33-1714564912.jpg', NULL, '2024-05-01 12:01:52', '2024-05-01 12:01:52'),
(50, 5, '5-50-1715751146.png', NULL, '2024-05-15 05:32:26', '2024-05-15 05:32:26'),
(53, 5, '5-53-1715751295.png', NULL, '2024-05-15 05:34:55', '2024-05-15 05:34:55'),
(54, 5, '5-54-1715751302.png', NULL, '2024-05-15 05:35:02', '2024-05-15 05:35:02'),
(55, 4, '4-55-1715751515.png', NULL, '2024-05-15 05:38:35', '2024-05-15 05:38:35'),
(56, 4, '4-56-1715751521.png', NULL, '2024-05-15 05:38:41', '2024-05-15 05:38:41'),
(57, 4, '4-57-1715751530.png', NULL, '2024-05-15 05:38:50', '2024-05-15 05:38:50'),
(61, 3, '3-61-1715751932.png', NULL, '2024-05-15 05:45:32', '2024-05-15 05:45:32'),
(62, 3, '3-62-1715751936.jpg', NULL, '2024-05-15 05:45:36', '2024-05-15 05:45:36'),
(63, 6, '6-63-1715752438.png', NULL, '2024-05-15 05:53:58', '2024-05-15 05:53:58'),
(65, 6, '6-65-1715752504.png', NULL, '2024-05-15 05:55:04', '2024-05-15 05:55:04'),
(66, 7, '7-66-1715753666.jpg', NULL, '2024-05-15 06:14:26', '2024-05-15 06:14:26'),
(73, 11, '11-73-1715770326.png', NULL, '2024-05-15 10:52:06', '2024-05-15 10:52:06'),
(82, 11, '11-82-1715773369.png', NULL, '2024-05-15 11:42:49', '2024-05-15 11:42:49'),
(83, 12, '12-83-1715839889.png', NULL, '2024-05-16 00:11:29', '2024-05-16 00:11:29');

-- --------------------------------------------------------

--
-- Table structure for table `product_items`
--

CREATE TABLE `product_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_color` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`variation_color`)),
  `variation_size` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`variation_size`)),
  `price` int(11) NOT NULL,
  `compare_price` int(11) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_items`
--

INSERT INTO `product_items` (`id`, `product_id`, `variation_color`, `variation_size`, `price`, `compare_price`, `sku`, `image`, `qty`, `status`, `created_at`, `updated_at`) VALUES
(1, 19, '{\"id\":\"2\",\"name\":\"blue\",\"code\":\"0093\"}', '{\"id\":\"3\",\"name\":\"small\",\"code\":\"s\"}', 232, 32, '23', NULL, 32, 1, '2023-11-16 05:53:10', '2023-11-16 05:53:10'),
(2, 19, '{\"id\":\"2\",\"name\":\"blue\",\"code\":\"0093\"}', '{\"id\":\"4\",\"name\":\"medium\",\"code\":\"M\"}', 32, 23, '32', NULL, 32, 1, '2023-11-16 05:53:10', '2023-11-16 05:53:10');

-- --------------------------------------------------------

--
-- Table structure for table `product_ratings`
--

CREATE TABLE `product_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `rating` double(3,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_ratings`
--

INSERT INTO `product_ratings` (`id`, `product_id`, `username`, `email`, `comment`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 12, 'Hasin', 'samin@gmail.com', 'good', 4.00, 0, '2023-12-02 08:29:19', '2023-12-02 08:29:19');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` varchar(255) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `country_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, '1', 10.00, '2023-11-06 22:46:01', '2023-11-06 22:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `button_name` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `button_name`, `link`, `image`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Your daily needs', 'Massage\'s at home', 'Go to Shop', 'https://ababilexim.com/shop', '1-1714626043.jpg', 'Yes', '2023-11-07 01:10:21', '2024-05-20 11:57:46'),
(2, 'A Bottleful of Joy', 'Bottlefuls & Smiles', 'Go to Shop', 'https://ababilexim.com/shop', '2.jpg', 'Yes', '2023-11-26 05:31:22', '2024-05-20 11:57:37');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `showHome` enum('Yes','No') NOT NULL DEFAULT 'No',
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `slug`, `status`, `showHome`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Thermal Flux', 'thermal-flux', 1, 'Yes', 1, '2024-05-10 06:27:17', '2024-05-10 06:27:17'),
(2, 'Thermal Bottle', 'thermal-bottle', 1, 'Yes', 1, '2024-05-10 06:29:21', '2024-05-10 06:29:21'),
(3, 'Dome Cup Lid', 'dome-cup-lid', 1, 'Yes', 2, '2024-05-10 06:35:00', '2024-05-10 06:35:00'),
(4, 'Water Bottles', 'water-bottles', 1, 'Yes', 1, '2024-05-10 06:36:52', '2024-05-10 06:36:52'),
(5, 'Massage Gun', 'massage-gun', 1, 'Yes', 4, '2024-05-15 10:31:01', '2024-05-15 10:31:01'),
(6, 'neck massager', 'neck-massager', 1, 'Yes', 4, '2024-05-15 10:33:21', '2024-05-15 10:33:21'),
(7, 'Air Fryer', 'air-fryer', 1, 'Yes', 3, '2024-05-15 10:36:04', '2024-05-15 10:36:04'),
(8, 'Paper Cup', 'paper-cup', 1, 'Yes', 2, '2024-05-15 10:42:20', '2024-05-15 10:42:20'),
(9, 'Smoothie Cups', 'smoothie-cups', 1, 'Yes', 2, '2024-05-15 10:43:26', '2024-05-15 10:43:26');

-- --------------------------------------------------------

--
-- Table structure for table `temp_images`
--

CREATE TABLE `temp_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temp_images`
--

INSERT INTO `temp_images` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1697519463.png', '2023-10-16 23:11:03', '2023-10-16 23:11:03'),
(2, '1697519893.png', '2023-10-16 23:18:13', '2023-10-16 23:18:13'),
(3, '1697521555.png', '2023-10-16 23:45:55', '2023-10-16 23:45:55'),
(4, '1697521681.png', '2023-10-16 23:48:01', '2023-10-16 23:48:01'),
(5, '1697523448.png', '2023-10-17 00:17:28', '2023-10-17 00:17:28'),
(6, '1697530020.png', '2023-10-17 02:07:00', '2023-10-17 02:07:00'),
(7, '1697530107.png', '2023-10-17 02:08:27', '2023-10-17 02:08:27'),
(8, '1697530129.png', '2023-10-17 02:08:49', '2023-10-17 02:08:49'),
(9, '1697530300.png', '2023-10-17 02:11:40', '2023-10-17 02:11:40'),
(10, '1697530352.png', '2023-10-17 02:12:32', '2023-10-17 02:12:32'),
(11, '1697530456.png', '2023-10-17 02:14:16', '2023-10-17 02:14:16'),
(12, '1697530893.png', '2023-10-17 02:21:33', '2023-10-17 02:21:33'),
(13, '1697531009.png', '2023-10-17 02:23:29', '2023-10-17 02:23:29'),
(14, '1697532061.png', '2023-10-17 02:41:01', '2023-10-17 02:41:01'),
(15, '1697535927.png', '2023-10-17 03:45:27', '2023-10-17 03:45:27'),
(16, '1697535990.png', '2023-10-17 03:46:30', '2023-10-17 03:46:30'),
(17, '1697536449.png', '2023-10-17 03:54:09', '2023-10-17 03:54:09'),
(18, '1697599224.png', '2023-10-17 21:20:24', '2023-10-17 21:20:24'),
(19, '1697604556.png', '2023-10-17 22:49:16', '2023-10-17 22:49:16'),
(20, '1699341002.jpeg', '2023-11-07 01:10:02', '2023-11-07 01:10:02'),
(21, '1699341094.png', '2023-11-07 01:11:34', '2023-11-07 01:11:34'),
(22, '1699341125.png', '2023-11-07 01:12:05', '2023-11-07 01:12:05'),
(23, '1699341167.jpg', '2023-11-07 01:12:47', '2023-11-07 01:12:47'),
(24, '1700023403.jpg', '2023-11-14 22:43:23', '2023-11-14 22:43:23'),
(25, '1700023598.jpg', '2023-11-14 22:46:38', '2023-11-14 22:46:38'),
(26, '1700280819.jpg', '2023-11-17 22:13:39', '2023-11-17 22:13:39'),
(27, '1700280847.jpg', '2023-11-17 22:14:07', '2023-11-17 22:14:07'),
(28, '1700287618.jpg', '2023-11-18 00:06:58', '2023-11-18 00:06:58'),
(29, '1700287956.jpg', '2023-11-18 00:12:36', '2023-11-18 00:12:36'),
(30, '1700288250.jpg', '2023-11-18 00:17:30', '2023-11-18 00:17:30'),
(31, '1700288294.jpg', '2023-11-18 00:18:14', '2023-11-18 00:18:14'),
(32, '1700288302.jpg', '2023-11-18 00:18:22', '2023-11-18 00:18:22'),
(33, '1700288305.jpg', '2023-11-18 00:18:25', '2023-11-18 00:18:25'),
(34, '1700288502.jpg', '2023-11-18 00:21:42', '2023-11-18 00:21:42'),
(35, '1700288518.jpg', '2023-11-18 00:21:58', '2023-11-18 00:21:58'),
(36, '1700288528.jpg', '2023-11-18 00:22:08', '2023-11-18 00:22:08'),
(37, '1700289253.jpg', '2023-11-18 00:34:13', '2023-11-18 00:34:13'),
(38, '1700291140.jpg', '2023-11-18 01:05:40', '2023-11-18 01:05:40'),
(39, '1700291184.jpg', '2023-11-18 01:06:24', '2023-11-18 01:06:24'),
(40, '1700291437.jpg', '2023-11-18 01:10:37', '2023-11-18 01:10:37'),
(41, '1700740134.jpg', '2023-11-23 05:48:54', '2023-11-23 05:48:54'),
(42, '1700741499.png', '2023-11-23 06:11:39', '2023-11-23 06:11:39'),
(43, '1700886523.jpg', '2023-11-24 22:28:43', '2023-11-24 22:28:43'),
(44, '1700886622.png', '2023-11-24 22:30:22', '2023-11-24 22:30:22'),
(45, '1700978394.jpg', '2023-11-25 23:59:54', '2023-11-25 23:59:54'),
(46, '1700978590.jpg', '2023-11-26 00:03:10', '2023-11-26 00:03:10'),
(47, '1700978939.jpg', '2023-11-26 00:08:59', '2023-11-26 00:08:59'),
(48, '1700979289.jpg', '2023-11-26 00:14:49', '2023-11-26 00:14:49'),
(49, '1700979555.jpg', '2023-11-26 00:19:15', '2023-11-26 00:19:15'),
(50, '1700979757.jpg', '2023-11-26 00:22:37', '2023-11-26 00:22:37'),
(51, '1700979951.jpg', '2023-11-26 00:25:51', '2023-11-26 00:25:51'),
(52, '1700985421.jpg', '2023-11-26 01:57:01', '2023-11-26 01:57:01'),
(53, '1700985461.jpg', '2023-11-26 01:57:41', '2023-11-26 01:57:41'),
(54, '1700985788.jpg', '2023-11-26 02:03:08', '2023-11-26 02:03:08'),
(55, '1700986377.jpg', '2023-11-26 02:12:57', '2023-11-26 02:12:57'),
(56, '1700986583.jpg', '2023-11-26 02:16:23', '2023-11-26 02:16:23'),
(57, '1700987050.jpg', '2023-11-26 02:24:10', '2023-11-26 02:24:10'),
(58, '1700987559.jpg', '2023-11-26 02:32:39', '2023-11-26 02:32:39'),
(59, '1700987748.jpg', '2023-11-26 02:35:48', '2023-11-26 02:35:48'),
(60, '1700988323.jpg', '2023-11-26 02:45:23', '2023-11-26 02:45:23'),
(61, '1700988417.jpg', '2023-11-26 02:46:57', '2023-11-26 02:46:57'),
(62, '1700988788.jpg', '2023-11-26 02:53:08', '2023-11-26 02:53:08'),
(63, '1700988866.jpg', '2023-11-26 02:54:26', '2023-11-26 02:54:26'),
(64, '1700998020.jpg', '2023-11-26 05:27:00', '2023-11-26 05:27:00'),
(65, '1714566071.jpg', '2024-05-01 12:21:11', '2024-05-01 12:21:11'),
(66, '1714566162.jpg', '2024-05-01 12:22:42', '2024-05-01 12:22:42'),
(67, '1714566329.jpg', '2024-05-01 12:25:29', '2024-05-01 12:25:29'),
(68, '1714566510.jpg', '2024-05-01 12:28:30', '2024-05-01 12:28:30'),
(69, '1714566536.jpg', '2024-05-01 12:28:56', '2024-05-01 12:28:56'),
(70, '1714566653.jpg', '2024-05-01 12:30:53', '2024-05-01 12:30:53'),
(71, '1714566788.jpeg', '2024-05-01 12:33:08', '2024-05-01 12:33:08'),
(72, '1714566806.jpeg', '2024-05-01 12:33:26', '2024-05-01 12:33:26'),
(73, '1714566821.jpeg', '2024-05-01 12:33:41', '2024-05-01 12:33:41'),
(74, '1714566828.jpg', '2024-05-01 12:33:48', '2024-05-01 12:33:48'),
(75, '1714568125.jpeg', '2024-05-01 12:55:25', '2024-05-01 12:55:25'),
(76, '1714568217.jpeg', '2024-05-01 12:56:57', '2024-05-01 12:56:57'),
(77, '1714568354.jpg', '2024-05-01 12:59:14', '2024-05-01 12:59:14'),
(78, '1714568506.jpg', '2024-05-01 13:01:46', '2024-05-01 13:01:46'),
(79, '1714568636.jpg', '2024-05-01 13:03:56', '2024-05-01 13:03:56'),
(80, '1714625846.jpg', '2024-05-02 04:57:26', '2024-05-02 04:57:26'),
(81, '1714626040.jpg', '2024-05-02 05:00:40', '2024-05-02 05:00:40'),
(82, '1715771850.png', '2024-05-15 11:17:30', '2024-05-15 11:17:30'),
(83, '1715842729.png', '2024-05-16 06:58:49', '2024-05-16 06:58:49'),
(84, '1715842735.png', '2024-05-16 06:58:55', '2024-05-16 06:58:55'),
(85, '1715842753.png', '2024-05-16 06:59:13', '2024-05-16 06:59:13'),
(86, '1715842764.png', '2024-05-16 06:59:24', '2024-05-16 06:59:24'),
(87, '1716121210.png', '2024-05-19 12:20:10', '2024-05-19 12:20:10'),
(88, '1716121250.png', '2024-05-19 12:20:50', '2024-05-19 12:20:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `phone` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `is_otp_verified` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `phone`, `status`, `email_verified_at`, `password`, `remember_token`, `is_otp_verified`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 2, '01997939198', 1, NULL, '$2y$10$iy/h9VtSvCtC1BMzjrIjZ.OkI/O4BO3DCufStwBmdLjzg1YvcAuiu', NULL, 0, '2023-10-11 05:14:20', '2023-10-11 05:14:20'),
(2, 'siam', 'siam@gmail.com', 1, '01790688680', 1, NULL, '$2y$10$aJ23ed/y4ePxHz/pvYC6Se1B89g7a4kIyyqMSPo1sbIrKEbFMp0Wy', NULL, 0, '2023-10-11 05:17:10', '2023-11-11 01:05:41'),
(13, 'siam', 'siam45@gmail.com', 1, '01790688688', 1, NULL, '$2y$10$epFs8zah5cAjxlqbNbSXeOceuFFW2csu3ueBOaEU6oglmQj0rCPG.', NULL, 1, '2023-11-08 00:20:40', '2023-11-08 00:20:40'),
(14, 'siam vai', 'hasin434@gmail.com', 1, '01997939154', 1, NULL, '$2y$10$2n86mHtR7YYHk4CrS60CXuIH5.5NA9AyPR8EFLlq.Vt11rxuyIX.G', NULL, 1, '2023-11-08 00:30:01', '2023-11-08 00:30:01'),
(15, 'hasinaapu', 'hasinApu@gmail.com', 1, '01790688674', 1, NULL, '$2y$10$1lBJuYyKBpH3B.01OtL0RO3.wGKutStAYJKTjxPAyHhtpT16t4wt6', NULL, 1, '2023-11-16 03:56:04', '2023-11-16 03:56:04'),
(16, 'Hasin', 'hasin2@gmail.com', 1, '01973362442', 1, NULL, '$2y$10$d4td3IFklpMeYhzrsFUf/ujEWkvP/jJvobBL.DrYJDB8DnLIx7bNa', NULL, 1, '2023-11-18 03:45:03', '2023-11-18 03:45:03'),
(17, 'siam', 'siam1233@gmail.com', 1, '01790688780', 1, NULL, '$2y$10$K.UMMl/N3uTWGiHEOvL44eJbNTGbT07mJmhnOKWe4e4aPyWTiGPea', NULL, 1, '2023-11-26 14:36:18', '2023-11-26 14:36:18'),
(19, 'Hasin', 'hasin23@gmail.com', 1, '01552404424', 1, NULL, '$2y$10$RCOuqj39ibXAz02SLqh60.mdzLR9pUt5dvckfuiMVDDOrckSvWU4K', NULL, 1, '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(20, 'opus', 'test@gmail.com', 1, '01790688080', 1, NULL, '$2y$10$pjMuVXXWKUWx45fZyDlQLOQ9N53LF8O1la3WM0B7kzp2T./FQYnK.', NULL, 1, '2023-12-10 04:44:46', '2023-12-10 04:44:46'),
(21, 'Kabir Ahmed', 'krahmed20@hotmail.com', 1, '01755088286', 1, NULL, '$2y$10$xknmUsOdTTn5a9aQFaf6c.my4QuedDOHoaAn3pxCsDk94BxDsaXxu', NULL, 1, '2023-12-13 06:53:44', '2023-12-13 06:53:44'),
(22, 'Tasnim', 'anikatasnim0019@gmail.com', 1, '01867019811', 1, NULL, '$2y$10$VwKaBxBEZSatF3Ax8EW5VeB6nhcddU3C.Z22e0oUH8uFhoDmLm2yi', NULL, 1, '2023-12-20 06:16:56', '2023-12-20 06:16:56'),
(23, 'hfghdf', 'cigsoa@alnajarjo.com', 1, '96654545455', 1, NULL, '$2y$10$ht/sGy6sOv6MCHBwTdq9aeBaQGi0Kd4cH2m83u3mjC1uVRMm8l1bK', NULL, 1, '2024-01-07 21:44:44', '2024-01-07 21:44:44'),
(24, 'test1', 'hasin@gmail.com', 1, '01790123456', 1, NULL, '$2y$10$n6vYEJmlOk19Dkuz4/Ia0.kgcuV21HIsjcDUE2OPXjqKOSupTXwjC', NULL, 1, '2024-05-01 11:15:19', '2024-05-01 11:15:19'),
(25, 'Hasin', 'hasi@gmail.com', 1, '01997939197', 1, NULL, '$2y$10$qcs72dhxVq0Vo.USNr2gNu6kDnb8VIxSNrR2OX4aRBYRrNGIq54zS', NULL, 1, '2024-05-02 08:14:28', '2024-05-02 08:14:28'),
(26, 'Md.Habibullah Mezbah', 'hmezbah@gmail.com', 1, '01722734209', 1, NULL, '$2y$10$QHmFpF.iF1dksoPWzB/9KeFanBFBnDVzM9J3Hz9pqDyomfGNDSyM2', NULL, 1, '2024-05-02 08:14:37', '2024-05-02 08:14:37');

-- --------------------------------------------------------

--
-- Table structure for table `user_otp`
--

CREATE TABLE `user_otp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(20) NOT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `expire_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_otp`
--

INSERT INTO `user_otp` (`id`, `phone`, `otp`, `is_active`, `expire_at`, `created_at`, `updated_at`) VALUES
(1, '1790688643', '181919', 1, '2023-11-07 22:33:02', '2023-11-07 22:23:02', '2023-11-07 22:23:02'),
(2, '01997939197', '631906', 1, '2023-11-07 23:09:18', '2023-11-07 22:59:18', '2023-11-07 22:59:18'),
(3, '01790688684', '982523', 1, '2023-11-08 00:08:30', '2023-11-07 23:58:30', '2023-11-07 23:58:30'),
(4, '01790688688', '358836', 1, '2023-11-08 00:30:08', '2023-11-08 00:20:08', '2023-11-08 00:20:08'),
(5, '01997939154', '684638', 1, '2023-11-08 00:39:55', '2023-11-08 00:29:55', '2023-11-08 00:29:55'),
(6, '01790688680', '705098', 1, '2023-11-08 22:22:10', '2023-11-08 22:19:10', '2023-11-08 22:19:10'),
(7, '01790688680', '937328', 1, '2023-11-08 22:48:04', '2023-11-08 22:45:04', '2023-11-08 22:45:04'),
(8, '01790688680', '298164', 1, '2023-11-08 22:50:39', '2023-11-08 22:47:39', '2023-11-08 22:47:39'),
(9, '01790688680', '789169', 1, '2023-11-08 22:59:01', '2023-11-08 22:56:01', '2023-11-08 22:56:01'),
(10, '01790688680', '580332', 1, '2023-11-09 05:02:54', '2023-11-09 04:59:54', '2023-11-09 04:59:54'),
(11, '01790688680', '260925', 1, '2023-11-09 05:15:54', '2023-11-09 05:12:54', '2023-11-09 05:12:54'),
(12, '01790688680', '292605', 1, '2023-11-09 05:18:22', '2023-11-09 05:15:22', '2023-11-09 05:15:22'),
(13, '01790688680', '890597', 1, '2023-11-09 05:18:46', '2023-11-09 05:15:46', '2023-11-09 05:15:46'),
(14, '01790688680', '980711', 1, '2023-11-09 05:20:01', '2023-11-09 05:17:01', '2023-11-09 05:17:01'),
(15, '01790688680', '314789', 1, '2023-11-09 05:20:01', '2023-11-09 05:17:01', '2023-11-09 05:17:01'),
(16, '01790688680', '271796', 1, '2023-11-09 05:26:26', '2023-11-09 05:23:26', '2023-11-09 05:23:26'),
(17, '01790688680', '579404', 1, '2023-11-10 21:53:58', '2023-11-10 21:50:58', '2023-11-10 21:50:58'),
(18, '01790688680', '764921', 1, '2023-11-10 21:59:44', '2023-11-10 21:56:44', '2023-11-10 21:56:44'),
(19, '01790688680', '538046', 1, '2023-11-10 22:18:01', '2023-11-10 22:15:01', '2023-11-10 22:15:01'),
(20, '01790688680', '711220', 1, '2023-11-10 22:18:38', '2023-11-10 22:15:38', '2023-11-10 22:15:38'),
(21, '01790688680', '721818', 1, '2023-11-10 22:23:34', '2023-11-10 22:20:34', '2023-11-10 22:20:34'),
(22, '01790688680', '972815', 1, '2023-11-10 22:26:58', '2023-11-10 22:23:58', '2023-11-10 22:23:58'),
(23, '01790688680', '810873', 1, '2023-11-10 22:28:02', '2023-11-10 22:25:02', '2023-11-10 22:25:02'),
(24, '01790688680', '667698', 1, '2023-11-10 22:28:19', '2023-11-10 22:25:19', '2023-11-10 22:25:19'),
(25, '01790688680', '568980', 1, '2023-11-10 22:41:24', '2023-11-10 22:38:24', '2023-11-10 22:38:24'),
(26, '01790688680', '990345', 1, '2023-11-10 23:05:55', '2023-11-10 23:02:55', '2023-11-10 23:02:55'),
(27, '01790688680', '139375', 1, '2023-11-10 23:12:19', '2023-11-10 23:09:19', '2023-11-10 23:09:19'),
(28, '01790688680', '741067', 1, '2023-11-10 23:15:23', '2023-11-10 23:12:23', '2023-11-10 23:12:23'),
(29, '01790688680', '391848', 1, '2023-11-10 23:44:02', '2023-11-10 23:41:02', '2023-11-10 23:41:02'),
(30, '01790688680', '144286', 1, '2023-11-10 23:53:04', '2023-11-10 23:50:04', '2023-11-10 23:50:04'),
(31, '01790688680', '779408', 1, '2023-11-11 01:06:19', '2023-11-11 01:03:19', '2023-11-11 01:03:19'),
(32, '01790688674', '337537', 1, '2023-11-16 03:58:55', '2023-11-16 03:55:55', '2023-11-16 03:55:55'),
(33, '01973362442', '207311', 1, '2023-11-18 03:44:23', '2023-11-18 03:41:23', '2023-11-18 03:41:23'),
(34, '01973362442', '280509', 1, '2023-11-18 03:47:50', '2023-11-18 03:44:50', '2023-11-18 03:44:50'),
(35, '01790688780', '730383', 1, '2023-11-26 14:39:14', '2023-11-26 14:36:14', '2023-11-26 14:36:14'),
(36, '01790688680', '492565', 1, '2023-11-27 03:36:04', '2023-11-27 03:33:04', '2023-11-27 03:33:04'),
(37, '01722734209', '442570', 1, '2023-11-27 08:17:52', '2023-11-27 08:14:52', '2023-11-27 08:14:52'),
(38, '01552404424', '464995', 1, '2023-12-10 04:46:58', '2023-12-10 04:43:58', '2023-12-10 04:43:58'),
(39, '01790688080', '213474', 1, '2023-12-10 04:47:39', '2023-12-10 04:44:39', '2023-12-10 04:44:39'),
(40, '01755088286', '246217', 1, '2023-12-13 06:56:41', '2023-12-13 06:53:41', '2023-12-13 06:53:41'),
(41, '01867019811', '941681', 1, '2023-12-20 06:19:47', '2023-12-20 06:16:47', '2023-12-20 06:16:47'),
(42, '96654545455', '603727', 1, '2024-01-07 21:47:36', '2024-01-07 21:44:36', '2024-01-07 21:44:36'),
(43, '01790123456', '752651', 1, '2024-05-01 11:18:14', '2024-05-01 11:15:14', '2024-05-01 11:15:14'),
(44, '01997939197', '424729', 1, '2024-05-02 08:17:25', '2024-05-02 08:14:25', '2024-05-02 08:14:25'),
(45, '01722734209', '544025', 1, '2024-05-02 08:17:32', '2024-05-02 08:14:32', '2024-05-02 08:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `var_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variations`
--

INSERT INTO `variations` (`id`, `var_name`, `created_at`, `updated_at`) VALUES
(1, 'color', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'size', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `variation_details`
--

CREATE TABLE `variation_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `var_option_name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variation_details`
--

INSERT INTO `variation_details` (`id`, `variation_id`, `var_option_name`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 'red', '[value-4]', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'blue', '0093', NULL, NULL),
(3, 2, 'small', 's', NULL, NULL),
(4, 2, 'medium', 'M', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `weights`
--

CREATE TABLE `weights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `min_weight` double NOT NULL,
  `max_weight` double NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `product_item_id`, `created_at`, `updated_at`) VALUES
(1, 16, 11, NULL, '2023-11-26 04:43:41', '2023-11-26 04:43:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_addresses_user_id_foreign` (`user_id`),
  ADD KEY `customer_addresses_country_id_foreign` (`country_id`);

--
-- Indexes for table `discount_coupons`
--
ALTER TABLE `discount_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `orders_country_id_foreign` (`country_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_product_item_id_foreign` (`product_item_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_items`
--
ALTER TABLE `product_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_ratings_product_id_foreign` (`product_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `temp_images`
--
ALTER TABLE `temp_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_otp`
--
ALTER TABLE `user_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variation_details`
--
ALTER TABLE `variation_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variation_details_variation_id_foreign` (`variation_id`);

--
-- Indexes for table `weights`
--
ALTER TABLE `weights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`),
  ADD KEY `wishlists_product_item_id_foreign` (`product_item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `discount_coupons`
--
ALTER TABLE `discount_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `product_items`
--
ALTER TABLE `product_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_ratings`
--
ALTER TABLE `product_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `temp_images`
--
ALTER TABLE `temp_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_otp`
--
ALTER TABLE `user_otp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `variation_details`
--
ALTER TABLE `variation_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `weights`
--
ALTER TABLE `weights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD CONSTRAINT `customer_addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customer_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_item_id_foreign` FOREIGN KEY (`product_item_id`) REFERENCES `product_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD CONSTRAINT `product_ratings_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
