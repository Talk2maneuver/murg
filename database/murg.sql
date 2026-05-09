-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2026 at 11:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `murg`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `facilityID` varchar(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `facilityID`, `name`, `address`) VALUES
(4, 'MURG/001', 'Alh Yasir', 'No. 123 testing street, Kano');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `facilityID` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `staffID` varchar(200) NOT NULL,
  `stockID` int(11) NOT NULL,
  `item` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `subtotal` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conca`
--

CREATE TABLE `conca` (
  `id` int(11) NOT NULL,
  `lastID` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `conca`
--

INSERT INTO `conca` (`id`, `lastID`) VALUES
(1, '2');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `facilityID` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `creation` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `facilityID`, `name`, `phone`, `email`, `gender`, `address`, `creation`, `updation`) VALUES
(1, 'MURG/001', 'MURG BIG mur', '08025493838', '', 'Male', 'gidan MUR layin kwari', '2026-03-26 13:46:45', NULL),
(2, 'MURG/001', 'MURG A64 G-baba', '08025493838', '', 'Male', 'hawa ', '2026-03-26 13:48:58', NULL),
(3, 'MURG/001', 'MURG G-Jallaba 6a.7a', '08025493838', '', 'Male', 'layin jallaba ', '2026-03-26 13:50:47', NULL),
(4, 'MURG/001', 'H.J Textile A7 ', '09035893772', '', 'Male', 'gidan maiyari ', '2026-03-26 13:53:27', NULL),
(5, 'MURG/001', 'AYACO TEX. ', '08033722669', '', 'Male', 'gidan baba A45', '2026-03-26 13:55:39', NULL),
(6, 'MURG/001', 'BASH YENZI', '07084146183', '', 'Male', 'yenzi company NEW TEX.', '2026-03-28 16:56:28', NULL),
(7, 'MURG/001', 'HAMZA Shop', '09035893772', '', 'Male', 'gidan maiyari ', '2026-03-28 16:57:52', NULL),
(8, 'MURG/001', 'AUWAL DUBAI apex', '09061838163', '', 'Male', 'gidan Amas', '2026-03-28 16:59:22', NULL),
(9, 'MURG/001', 'Goma 10', '08103418422', '', 'Male', 'baban hayat', '2026-03-29 12:44:20', NULL),
(10, 'MURG/001', 'ISHAKA BUNGEL', '08169988795', '', 'Male', 'Adamawa Yola', '2026-03-29 15:19:16', NULL),
(11, 'MURG/001', 'MAIBARGO ABBA', '07017501726', '', 'Male', 'gidan jallaba', '2026-04-01 15:55:48', NULL),
(12, 'MURG/001', 'ALIYU BASAKKWACHE', '09034261108', '', 'Male', 'sokoto ', '2026-04-01 16:04:35', NULL),
(13, 'MURG/001', 'ALAMIN R. kings', '07083704677', '', 'Male', 'ginin me sahad', '2026-04-12 16:15:31', NULL),
(14, 'MURG/001', 'USSY ZARA', '08121232969', '', 'Male', 'gidan babansu', '2026-04-12 16:17:17', NULL),
(15, 'MURG/001', 'Soja babban wa', '08059906646', '', 'Female', 'gidan 80 ibb', '2026-04-13 11:20:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `debt_cart`
--

CREATE TABLE `debt_cart` (
  `id` int(11) NOT NULL,
  `facilityID` varchar(200) NOT NULL,
  `customerID` varchar(200) NOT NULL,
  `staffID` varchar(200) NOT NULL,
  `stockID` int(11) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `item` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `subtotal` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deposit_history`
--

CREATE TABLE `deposit_history` (
  `id` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `previous_balance` decimal(10,2) NOT NULL,
  `new_balance` decimal(10,2) NOT NULL,
  `deposit_date` datetime NOT NULL DEFAULT current_timestamp(),
  `processed_by` varchar(100) NOT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deposit_history`
--

INSERT INTO `deposit_history` (`id`, `customerID`, `transaction_id`, `amount`, `payment_method`, `previous_balance`, `new_balance`, `deposit_date`, `processed_by`, `notes`) VALUES
(1, 1, 'DP-1774781559-4157', 1100000.00, 'Bank Transfer', 8041000.00, 6941000.00, '2026-03-29 11:52:39', 'Alh Yasir', NULL),
(2, 7, 'DP-1774783798-9450', 415000.00, 'POS', 415000.00, 0.00, '2026-03-29 12:29:58', 'Alh Yasir', NULL),
(3, 1, 'DP-1774977165-5805', 3100000.00, 'Bank Transfer', 10291000.00, 7191000.00, '2026-03-31 18:12:45', 'Alh Yasir', NULL),
(4, 2, 'DP-1774978309-2972', 900000.00, 'Bank Transfer', 920000.00, 20000.00, '2026-03-31 18:31:49', 'Alh Yasir', NULL),
(5, 3, 'DP-1774978404-9309', 800000.00, 'Bank Transfer', 4070000.00, 3270000.00, '2026-03-31 18:33:24', 'Alh Yasir', NULL),
(6, 1, 'DP-1775062980-7832', 1300000.00, 'Bank Transfer', 8011000.00, 6711000.00, '2026-04-01 18:03:00', 'Alh Yasir', NULL),
(7, 2, 'DP-1775146476-3001', 1000000.00, 'Bank Transfer', 2370000.00, 1370000.00, '2026-04-02 17:14:36', 'Alh Yasir', NULL),
(8, 4, 'DP-1775148594-5996', 2500000.00, 'Bank Transfer', 2511750.00, 11750.00, '2026-04-02 17:49:54', 'Alh Yasir', NULL),
(9, 3, 'DP-1775294460-6947', 720000.00, 'Bank Transfer', 3270000.00, 2550000.00, '2026-04-04 10:21:00', 'Alh Yasir', NULL),
(10, 1, 'DP-1775294595-2459', 1521000.00, 'Bank Transfer', 9021000.00, 7500000.00, '2026-04-04 10:23:15', 'Alh Yasir', NULL),
(11, 4, 'DP-1775319425-7470', 800000.00, 'Bank Transfer', 831750.00, 31750.00, '2026-04-04 17:17:05', 'Alh Yasir', NULL),
(12, 2, 'DP-1775321187-8544', 600000.00, 'Bank Transfer', 2208450.00, 1608450.00, '2026-04-04 17:46:27', 'Alh Yasir', NULL),
(13, 1, 'DP-1775322064-1388', 700000.00, 'Bank Transfer', 8330250.00, 7630250.00, '2026-04-04 18:01:05', 'Alh Yasir', NULL),
(14, 4, 'DP-1775493436-9315', 1500000.00, 'Bank Transfer', 1596750.00, 96750.00, '2026-04-06 17:37:17', 'Alh Yasir', NULL),
(15, 1, 'DP-1775495171-9546', 1500000.00, 'Bank Transfer', 11285250.00, 9785250.00, '2026-04-06 18:06:11', 'Alh Yasir', NULL),
(16, 2, 'DP-1775495337-7782', 475000.00, 'Bank Transfer', 2023450.00, 1548450.00, '2026-04-06 18:08:57', 'Alh Yasir', NULL),
(17, 3, 'DP-1775495401-4799', 340000.00, 'Bank Transfer', 4640000.00, 4300000.00, '2026-04-06 18:10:01', 'Alh Yasir', NULL),
(18, 2, 'DP-1775663498-2643', 550000.00, 'Bank Transfer', 1548450.00, 998450.00, '2026-04-08 16:51:38', 'Alh Yasir', NULL),
(19, 1, 'DP-1775663819-1625', 1150000.00, 'Bank Transfer', 9785250.00, 8635250.00, '2026-04-08 16:56:59', 'Alh Yasir', NULL),
(20, 5, 'DP-1775663866-9911', 1500000.00, 'Bank Transfer', 6155600.00, 4655600.00, '2026-04-08 16:57:46', 'Alh Yasir', NULL),
(21, 10, 'DP-1775822952-7032', 200000.00, 'Bank Transfer', 720000.00, 520000.00, '2026-04-10 13:09:12', 'Alh Yasir', NULL),
(22, 8, 'DP-1775834875-1161', 200000.00, 'Cash', 500000.00, 300000.00, '2026-04-10 16:27:55', 'Alh Yasir', NULL),
(23, 8, 'DP-1775834889-1495', 50000.00, 'Bank Transfer', 300000.00, 250000.00, '2026-04-10 16:28:09', 'Alh Yasir', NULL),
(24, 4, 'DP-1775839766-2776', 2300000.00, 'Bank Transfer', 3161750.00, 861750.00, '2026-04-10 17:49:26', 'Alh Yasir', NULL),
(25, 3, 'DP-1775839972-4156', 600000.00, 'Bank Transfer', 4300000.00, 3700000.00, '2026-04-10 17:52:52', 'Alh Yasir', NULL),
(26, 2, 'DP-1775840065-5266', 540000.00, 'Bank Transfer', 998450.00, 458450.00, '2026-04-10 17:54:25', 'Alh Yasir', NULL),
(27, 1, 'DP-1775841818-6507', 1150000.00, 'Bank Transfer', 11700250.00, 10550250.00, '2026-04-10 18:23:38', 'Alh Yasir', NULL),
(28, 11, 'DP-1775916123-3010', 200000.00, 'Bank Transfer', 335000.00, 135000.00, '2026-04-11 15:02:03', 'Alh Yasir', NULL),
(29, 7, 'DP-1776010169-7108', 315000.00, 'Bank Transfer', 315000.00, 0.00, '2026-04-12 17:09:29', 'Alh Yasir', NULL),
(30, 1, 'DP-1776011469-8734', 1960000.00, 'Bank Transfer', 12010250.00, 10050250.00, '2026-04-12 17:31:09', 'Alh Yasir', NULL),
(31, 3, 'DP-1776011621-3473', 390000.00, 'Bank Transfer', 3700000.00, 3310000.00, '2026-04-12 17:33:41', 'Alh Yasir', NULL),
(32, 2, 'DP-1776011718-2972', 300000.00, 'Bank Transfer', 2068450.00, 1768450.00, '2026-04-12 17:35:18', 'Alh Yasir', NULL),
(33, 1, 'DP-1776100092-4724', 1500000.00, 'Bank Transfer', 15105250.00, 13605250.00, '2026-04-13 18:08:12', 'Alh Yasir', NULL),
(34, 2, 'DP-1776100180-4624', 350000.00, 'Bank Transfer', 1768450.00, 1418450.00, '2026-04-13 18:09:40', 'Alh Yasir', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `facilityID` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `item` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `type` varchar(11) DEFAULT NULL,
  `creation` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `sync_status` enum('pending','synced','failed') DEFAULT 'pending',
  `last_sync` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE `facility` (
  `id` int(11) NOT NULL,
  `facilityID` varchar(200) NOT NULL,
  `agentID` varchar(200) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `lga` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `plan` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `role` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `paid` varchar(200) NOT NULL,
  `due` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `creation` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`id`, `facilityID`, `agentID`, `name`, `email`, `phone`, `gender`, `dob`, `fname`, `address`, `country`, `state`, `lga`, `type`, `plan`, `price`, `role`, `status`, `paid`, `due`, `password`, `creation`, `updation`) VALUES
(4, 'MURG/001', '1', 'Alh Yasir', 'yasir@gmail.com', '1234567890', 'Male', '', 'Alh Yasir', 'No 123 Testing street', 'Nigeria', 'Kano', '', '', '', '', 'Admin', 1, '', '', 'fd149fa1f2a2fee8d88bc1be14467a81', '2025-06-17 16:16:03', '2026-03-26 13:31:42'),
(6, 'MURG/001', NULL, 'Bilya staff1', 'staff1@gmail.com', '081234565789', 'Male', '', 'ALH Yasir', 'No 123 Testing street', '', '', '', '', '', '', 'Staff', 1, '', '', '827ccb0eea8a706c4c34a16891f84e7b', '2026-03-11 07:30:03', '2026-03-26 12:37:32');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `facilityID` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `staffID` varchar(200) NOT NULL,
  `stockID` int(11) DEFAULT NULL,
  `item` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `subtotal` varchar(200) NOT NULL,
  `staff` varchar(200) DEFAULT NULL,
  `payment` varchar(200) DEFAULT NULL,
  `orderID` varchar(200) DEFAULT NULL,
  `discount` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `customerID` int(11) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `buyer_name` varchar(255) DEFAULT NULL,
  `amount_paid` varchar(200) DEFAULT NULL,
  `change_given` varchar(200) DEFAULT NULL,
  `net_total` varchar(200) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `cash` varchar(200) DEFAULT NULL,
  `pos` varchar(200) DEFAULT NULL,
  `transfer` varchar(200) DEFAULT NULL,
  `creation` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `sync_status` enum('pending','synced','failed') DEFAULT 'pending',
  `last_sync` timestamp NULL DEFAULT NULL,
  `sync_attempts` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `facilityID`, `staffID`, `stockID`, `item`, `price`, `quantity`, `subtotal`, `staff`, `payment`, `orderID`, `discount`, `status`, `customerID`, `customer_name`, `buyer_name`, `amount_paid`, `change_given`, `net_total`, `bank_name`, `cash`, `pos`, `transfer`, `creation`, `updation`, `sync_status`, `last_sync`, `sync_attempts`) VALUES
(1, 'MURG/001', '6', 7, 'Gold Luxury', '420000', '1', '420000', 'Bilya staff1', 'Split Payment', '48946', '110000', 1, NULL, NULL, 'H J textiles', '1810000', '0.00', '310000', NULL, '0', '0', '1810000', '2026-03-26 15:00:59', NULL, 'pending', NULL, 0),
(2, 'MURG/001', '6', 1, 'LAS VEGAS ', '450000', '2', '900000', 'Bilya staff1', 'Split Payment', '48946', '110000', 1, NULL, NULL, 'H J textiles', '1810000', '0.00', '790000', NULL, '0', '0', '1810000', '2026-03-26 15:00:59', NULL, 'pending', NULL, 0),
(3, 'MURG/001', '6', 2, 'SILVER CROWN ', '600000', '1', '600000', 'Bilya staff1', 'Split Payment', '48946', '110000', 1, NULL, NULL, 'H J textiles', '1810000', '0.00', '490000', NULL, '0', '0', '1810000', '2026-03-26 15:00:59', NULL, 'pending', NULL, 0),
(4, 'MURG/001', '4', 7, 'Gold Luxury', '420000', '1', '420000', 'Alh Yasir', 'Split Payment', '177453995060', '110000', 1, NULL, NULL, 'MURG G-Baba A64', '1810000', '0.00', '310000', NULL, '0', '0', '1810000', '2026-03-26 15:45:50', NULL, 'pending', NULL, 0),
(5, 'MURG/001', '4', 1, 'LAS VEGAS ', '450000', '2', '900000', 'Alh Yasir', 'Split Payment', '177453995060', '110000', 1, NULL, NULL, 'MURG G-Baba A64', '1810000', '0.00', '790000', NULL, '0', '0', '1810000', '2026-03-26 15:45:50', NULL, 'pending', NULL, 0),
(6, 'MURG/001', '4', 2, 'SILVER CROWN ', '600000', '1', '600000', 'Alh Yasir', 'Split Payment', '177453995060', '110000', 1, NULL, NULL, 'MURG G-Baba A64', '1810000', '0.00', '490000', NULL, '0', '0', '1810000', '2026-03-26 15:45:50', NULL, 'pending', NULL, 0),
(7, 'MURG/001', '6', 1, 'LAS VEGAS ', '450000', '2', '900000', 'Bilya staff1', 'Credit', '177454164725', '110000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '790000', NULL, '0', '0', '0', '2026-03-26 16:14:07', '2026-03-26 16:14:07', 'pending', NULL, 0),
(8, 'MURG/001', '6', 7, 'Gold Luxury', '420000', '1', '420000', 'Bilya staff1', 'Credit', '177454164725', '110000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '310000', NULL, '0', '0', '0', '2026-03-26 16:14:07', '2026-03-26 16:14:07', 'pending', NULL, 0),
(9, 'MURG/001', '6', 2, 'SILVER CROWN ', '600000', '1', '600000', 'Bilya staff1', 'Credit', '177454164725', '110000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '490000', NULL, '0', '0', '0', '2026-03-26 16:14:07', '2026-03-26 16:14:07', 'pending', NULL, 0),
(10, 'MURG/001', '6', 25, 'OCEAN BLUE blsk', '1290000', '1', '1290000', 'Bilya staff1', 'Split Payment', '75920', '45000', 1, NULL, NULL, 'H J textiles', '2800000', '0.00', '1245000', NULL, '0', '0', '2800000', '2026-03-28 17:24:35', NULL, 'pending', NULL, 0),
(11, 'MURG/001', '6', 24, 'SILK ROAD AD', '1300000', '1', '1300000', 'Bilya staff1', 'Split Payment', '75920', '45000', 1, NULL, NULL, 'H J textiles', '2800000', '0.00', '1255000', NULL, '0', '0', '2800000', '2026-03-28 17:24:35', NULL, 'pending', NULL, 0),
(12, 'MURG/001', '6', 12, 'YJ 4#', '255000', '1', '255000', 'Bilya staff1', 'Split Payment', '75920', '45000', 1, NULL, NULL, 'H J textiles', '2800000', '0.00', '210000', NULL, '0', '0', '2800000', '2026-03-28 17:24:35', NULL, 'pending', NULL, 0),
(13, 'MURG/001', '6', 7, 'Gold Luxury', '420000', '1', '420000', 'Bilya staff1', 'Credit', '177471889268', '5000', 1, 7, 'HAMZA Shop', NULL, '0', '0', '415000', NULL, '0', '0', '0', '2026-03-28 17:28:12', '2026-03-28 17:28:12', 'pending', NULL, 0),
(14, 'MURG/001', '6', 12, 'YJ 4#', '255000', '2', '510000', 'Bilya staff1', 'Credit', '177471900827', '50000', 1, 6, 'BASH YENZI', NULL, '0', '0', '460000', NULL, '0', '0', '0', '2026-03-28 17:30:08', '2026-03-28 17:30:08', 'pending', NULL, 0),
(15, 'MURG/001', '6', 13, 'GK PLAIN 200y', '400000', '3', '1200000', 'Bilya staff1', 'Credit', '177471938014', '59000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '1141000', NULL, '0', '0', '0', '2026-03-28 17:36:20', '2026-03-28 17:36:20', 'pending', NULL, 0),
(16, 'MURG/001', '6', 19, 'FASHION GOLD', '1140000', '1', '1140000', 'Bilya staff1', 'Credit', '177471938014', '59000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '1081000', NULL, '0', '0', '0', '2026-03-28 17:36:20', '2026-03-28 17:36:20', 'pending', NULL, 0),
(17, 'MURG/001', '6', 21, 'VIP ILLUSION AD', '1350000', '1', '1350000', 'Bilya staff1', 'Credit', '177471938014', '59000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '1291000', NULL, '0', '0', '0', '2026-03-28 17:36:20', '2026-03-28 17:36:20', 'pending', NULL, 0),
(18, 'MURG/001', '6', 22, 'PROFESSOR AD', '1300000', '1', '1300000', 'Bilya staff1', 'Credit', '177471938014', '59000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '1241000', NULL, '0', '0', '0', '2026-03-28 17:36:20', '2026-03-28 17:36:20', 'pending', NULL, 0),
(19, 'MURG/001', '6', 23, 'WISE MAN AD', '1300000', '1', '1300000', 'Bilya staff1', 'Credit', '177471938014', '59000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '1241000', NULL, '0', '0', '0', '2026-03-28 17:36:20', '2026-03-28 17:36:20', 'pending', NULL, 0),
(22, 'MURG/001', '4', 13, 'GK PLAIN 200y', '400000', '2', '800000', 'Alh Yasir', 'Split Payment', '177478261197', '67000', 1, NULL, NULL, 'MURG G-Baba A64', '1113000', '0.00', '733000', NULL, '0', '0', '1113000', '2026-03-29 11:10:11', NULL, 'pending', NULL, 0),
(23, 'MURG/001', '4', 9, 'THE ONE AMZ', '380000', '1', '380000', 'Alh Yasir', 'Split Payment', '177478261197', '67000', 1, NULL, NULL, 'MURG G-Baba A64', '1113000', '0.00', '313000', NULL, '0', '0', '1113000', '2026-03-29 11:10:11', NULL, 'pending', NULL, 0),
(25, 'MURG/001', '4', 13, 'GK PLAIN 200y', '400000', '2', '800000', 'Alh Yasir', 'Split Payment', '177478326515', '150000', 1, NULL, NULL, 'H J textiles', '2430000', '0.00', '650000', NULL, '0', '0', '2430000', '2026-03-29 11:21:05', NULL, 'pending', NULL, 0),
(26, 'MURG/001', '4', 9, 'THE ONE AMZ', '380000', '1', '380000', 'Alh Yasir', 'Split Payment', '177478326515', '150000', 1, NULL, NULL, 'H J textiles', '2430000', '0.00', '230000', NULL, '0', '0', '2430000', '2026-03-29 11:21:05', NULL, 'pending', NULL, 0),
(27, 'MURG/001', '4', 6, 'PORTMANN AMZ PLAIN', '700000', '2', '1400000', 'Alh Yasir', 'Split Payment', '177478326515', '150000', 1, NULL, NULL, 'H J textiles', '2430000', '0.00', '1250000', NULL, '0', '0', '2430000', '2026-03-29 11:21:05', NULL, 'pending', NULL, 0),
(28, 'MURG/001', '4', 20, 'AUSTRAILIAN WIFI', '2050000', '1', '2050000', 'Alh Yasir', 'Credit', '177478368210', '170000', 1, 3, 'MURG G-Jallaba 6a.7a', NULL, '1150000', '0', '1880000', NULL, '0', '0', '1150000', '2026-03-29 11:28:02', '2026-03-29 11:28:03', 'pending', NULL, 0),
(29, 'MURG/001', '4', 6, 'PORTMANN AMZ PLAIN', '700000', '2', '1400000', 'Alh Yasir', 'Credit', '177478368210', '170000', 1, 3, 'MURG G-Jallaba 6a.7a', NULL, '1150000', '0', '1230000', NULL, '0', '0', '1150000', '2026-03-29 11:28:02', '2026-03-29 11:28:03', 'pending', NULL, 0),
(30, 'MURG/001', '4', 11, 'PHANTOM noble wool', '820000', '1', '820000', 'Alh Yasir', 'Credit', '177478368210', '170000', 1, 3, 'MURG G-Jallaba 6a.7a', NULL, '1150000', '0', '650000', NULL, '0', '0', '1150000', '2026-03-29 11:28:02', '2026-03-29 11:28:03', 'pending', NULL, 0),
(31, 'MURG/001', '4', 6, 'PORTMANN AMZ PLAIN', '700000', '2', '1400000', 'Alh Yasir', 'Credit', '177478553654', '170000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '1230000', NULL, '0', '0', '0', '2026-03-29 11:58:56', '2026-03-29 11:58:57', 'pending', NULL, 0),
(32, 'MURG/001', '4', 11, 'PHANTOM noble wool', '820000', '1', '820000', 'Alh Yasir', 'Credit', '177478553654', '170000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '650000', NULL, '0', '0', '0', '2026-03-29 11:58:56', '2026-03-29 11:58:57', 'pending', NULL, 0),
(33, 'MURG/001', '4', 9, 'THE ONE AMZ', '380000', '1', '380000', 'Alh Yasir', 'Credit', '177478553654', '170000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '210000', NULL, '0', '0', '0', '2026-03-29 11:58:56', '2026-03-29 11:58:57', 'pending', NULL, 0),
(34, 'MURG/001', '4', 6, 'PORTMANN AMZ PLAIN', '700000', '1', '700000', 'Alh Yasir', 'Credit', '177478837038', '70000', 1, 9, 'Goma 10', NULL, '0', '0', '630000', NULL, '0', '0', '0', '2026-03-29 12:46:10', '2026-03-29 12:46:11', 'pending', NULL, 0),
(35, 'MURG/001', '4', 12, 'YJ 4#', '255000', '1', '255000', 'Alh Yasir', 'Split Payment', '177478854559', '15000', 1, NULL, NULL, 'alh isah ', '240000', '0.00', '240000', NULL, '0', '0', '240000', '2026-03-29 12:49:05', NULL, 'pending', NULL, 0),
(36, 'MURG/001', '4', 26, 'swiss Okutex AD', '1120000', '1', '1120000', 'Alh Yasir', 'Credit', '177479461560', '0', 1, 3, 'MURG G-Jallaba 6a.7a', NULL, '0', '0', '1120000', NULL, '0', '0', '0', '2026-03-29 14:30:15', '2026-03-29 14:30:15', 'pending', NULL, 0),
(37, 'MURG/001', '4', 3, 'WATCHMAN ', '200000', '1', '200000', 'Alh Yasir', 'Split Payment', '177479743591', '10000', 1, NULL, NULL, 'ishaka bungel', '190000', '0.00', '190000', 'zenith bank', '0', '0', '190000', '2026-03-29 15:17:15', NULL, 'pending', NULL, 0),
(38, 'MURG/001', '4', 27, 'SOFT COTTON shadda', '1600000', '1', '1600000', 'Alh Yasir', 'Credit', '177479803744', '35000', 1, 10, 'ISHAKA BUNGEL', NULL, '1700000', '0', '1565000', 'zenith bank', '0', '0', '1700000', '2026-03-29 15:27:17', '2026-03-29 15:27:17', 'pending', NULL, 0),
(39, 'MURG/001', '4', 3, 'WATCHMAN ', '200000', '1', '200000', 'Alh Yasir', 'Credit', '177479803744', '35000', 1, 10, 'ISHAKA BUNGEL', NULL, '1700000', '0', '165000', 'zenith bank', '0', '0', '1700000', '2026-03-29 15:27:17', '2026-03-29 15:27:17', 'pending', NULL, 0),
(40, 'MURG/001', '4', 13, 'GK PLAIN 200y', '400000', '1', '400000', 'Alh Yasir', 'Credit', '177479803744', '35000', 1, 10, 'ISHAKA BUNGEL', NULL, '1700000', '0', '365000', 'zenith bank', '0', '0', '1700000', '2026-03-29 15:27:17', '2026-03-29 15:27:17', 'pending', NULL, 0),
(41, 'MURG/001', '4', 12, 'YJ 4#', '255000', '1', '255000', 'Alh Yasir', 'Credit', '177479803744', '35000', 1, 10, 'ISHAKA BUNGEL', NULL, '1700000', '0', '220000', 'zenith bank', '0', '0', '1700000', '2026-03-29 15:27:17', '2026-03-29 15:27:17', 'pending', NULL, 0),
(42, 'MURG/001', '4', 13, 'GK PLAIN 200y', '400000', '3', '1200000', 'Alh Yasir', 'Credit', '177489034535', '570000', 1, 5, 'AYACO TEX. ', NULL, '3438400', '0', '630000', 'zenith bank', '0', '0', '3438400', '2026-03-30 17:05:45', '2026-03-30 17:05:45', 'pending', NULL, 0),
(43, 'MURG/001', '4', 11, 'PHANTOM noble wool', '820000', '1', '820000', 'Alh Yasir', 'Credit', '177489034535', '570000', 1, 5, 'AYACO TEX. ', NULL, '3438400', '0', '250000', 'zenith bank', '0', '0', '3438400', '2026-03-30 17:05:45', '2026-03-30 17:05:45', 'pending', NULL, 0),
(44, 'MURG/001', '4', 7, 'Gold Luxury', '420000', '1', '420000', 'Alh Yasir', 'Credit', '177489034535', '570000', 1, 5, 'AYACO TEX. ', NULL, '3438400', '0', '-150000', 'zenith bank', '0', '0', '3438400', '2026-03-30 17:05:45', '2026-03-30 17:05:45', 'pending', NULL, 0),
(45, 'MURG/001', '4', 2, 'SILVER CROWN ', '600000', '2', '1200000', 'Alh Yasir', 'Credit', '177489034535', '570000', 1, 5, 'AYACO TEX. ', NULL, '3438400', '0', '630000', 'zenith bank', '0', '0', '3438400', '2026-03-30 17:05:45', '2026-03-30 17:05:45', 'pending', NULL, 0),
(46, 'MURG/001', '4', 8, 'G-CELSIO', '370000', '2', '740000', 'Alh Yasir', 'Credit', '177489034535', '570000', 1, 5, 'AYACO TEX. ', NULL, '3438400', '0', '170000', 'zenith bank', '0', '0', '3438400', '2026-03-30 17:05:45', '2026-03-30 17:05:45', 'pending', NULL, 0),
(47, 'MURG/001', '4', 1, 'LAS VEGAS ', '450000', '4', '1800000', 'Alh Yasir', 'Credit', '177489034535', '570000', 1, 5, 'AYACO TEX. ', NULL, '3438400', '0', '1230000', 'zenith bank', '0', '0', '3438400', '2026-03-30 17:05:45', '2026-03-30 17:05:45', 'pending', NULL, 0),
(48, 'MURG/001', '4', 15, 'GENTLEMAN A#', '480000', '2', '960000', 'Alh Yasir', 'Credit', '177489034535', '570000', 1, 5, 'AYACO TEX. ', NULL, '3438400', '0', '390000', 'zenith bank', '0', '0', '3438400', '2026-03-30 17:05:45', '2026-03-30 17:05:45', 'pending', NULL, 0),
(49, 'MURG/001', '4', 6, 'PORTMANN AMZ PLAIN', '700000', '2', '1400000', 'Alh Yasir', 'Credit', '177489034535', '570000', 1, 5, 'AYACO TEX. ', NULL, '3438400', '0', '830000', 'zenith bank', '0', '0', '3438400', '2026-03-30 17:05:45', '2026-03-30 17:05:45', 'pending', NULL, 0),
(57, 'MURG/001', '4', 12, 'YJ 4#', '255000', '1', '255000', 'Alh Yasir', 'Credit', '177496163055', '45000', 1, 4, 'H.J Textile A7 ', NULL, '528250', '0', '210000', 'zenith bank', '0', '0', '528250', '2026-03-31 12:53:50', '2026-03-31 12:53:50', 'pending', NULL, 0),
(58, 'MURG/001', '4', 18, 'JU WOOL A florence', '480000', '1', '480000', 'Alh Yasir', 'Credit', '177496163055', '45000', 1, 4, 'H.J Textile A7 ', NULL, '528250', '0', '435000', 'zenith bank', '0', '0', '528250', '2026-03-31 12:53:50', '2026-03-31 12:53:50', 'pending', NULL, 0),
(60, 'MURG/001', '4', 12, 'YJ 4#', '255000', '2', '510000', 'Alh Yasir', 'Credit', '177496191578', '70000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '440000', NULL, '0', '0', '0', '2026-03-31 12:58:35', '2026-03-31 12:58:35', 'pending', NULL, 0),
(61, 'MURG/001', '4', 18, 'JU WOOL A florence', '480000', '1', '480000', 'Alh Yasir', 'Credit', '177496191578', '70000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '410000', NULL, '0', '0', '0', '2026-03-31 12:58:35', '2026-03-31 12:58:35', 'pending', NULL, 0),
(63, 'MURG/001', '4', 12, 'YJ 4#', '255000', '2', '510000', 'Alh Yasir', 'Credit', '177496284997', '70000', 1, 2, 'MURG A64 G-baba', NULL, '0', '0', '440000', NULL, '0', '0', '0', '2026-03-31 13:14:09', '2026-03-31 13:14:09', 'pending', NULL, 0),
(64, 'MURG/001', '4', 18, 'JU WOOL A florence', '480000', '1', '480000', 'Alh Yasir', 'Credit', '177496284997', '70000', 1, 2, 'MURG A64 G-baba', NULL, '0', '0', '410000', NULL, '0', '0', '0', '2026-03-31 13:14:09', '2026-03-31 13:14:09', 'pending', NULL, 0),
(66, 'MURG/001', '4', 13, 'GK PLAIN 200y', '400000', '1', '400000', 'Alh Yasir', 'Credit', '177497050768', '35000', 1, 8, 'AUWAL DUBAI apex', NULL, '315000', '0', '365000', 'zenith bank', '0', '0', '315000', '2026-03-31 15:21:47', '2026-03-31 15:21:47', 'pending', NULL, 0),
(67, 'MURG/001', '4', 14, 'Mr MURACCA', '450000', '1', '450000', 'Alh Yasir', 'Credit', '177497050768', '35000', 1, 8, 'AUWAL DUBAI apex', NULL, '315000', '0', '415000', 'zenith bank', '0', '0', '315000', '2026-03-31 15:21:47', '2026-03-31 15:21:47', 'pending', NULL, 0),
(68, 'MURG/001', '6', 12, 'YJ 4#', '255000', '1', '255000', 'Bilya staff1', 'Split Payment', '18684', '15000', 1, NULL, NULL, 'ABDUL RAHMAN ME LAFIYA', '240000', '0.00', '240000', NULL, '0', '240000', '0', '2026-04-01 10:54:33', NULL, 'pending', NULL, 0),
(69, 'MURG/001', '6', 12, 'YJ 4#', '255000', '1', '255000', 'Bilya staff1', 'Split Payment', '47464', '15000', 1, NULL, NULL, 'Kumurya', '240000', '0.00', '240000', NULL, '0', '0', '240000', '2026-04-01 15:32:26', NULL, 'pending', NULL, 0),
(70, 'MURG/001', '4', 8, 'G-CELSIO', '370000', '1', '370000', 'Alh Yasir', 'Credit', '177505899094', '35000', 1, 11, 'MAIBARGO ABBA', NULL, '0', '0', '335000', NULL, '0', '0', '0', '2026-04-01 15:56:30', '2026-04-01 15:56:30', 'pending', NULL, 0),
(72, 'MURG/001', '4', 1, 'LAS VEGAS ', '450000', '2', '900000', 'Alh Yasir', 'Credit', '177506033356', '80000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '820000', NULL, '0', '0', '0', '2026-04-01 16:18:53', '2026-04-01 16:18:54', 'pending', NULL, 0),
(73, 'MURG/001', '6', 18, 'JU WOOL A florence', '480000', '1', '480000', 'Bilya staff1', 'Split Payment', '34466', '20000', 1, NULL, NULL, 'ABDULFATAH', '460000', '0.00', '460000', NULL, '0', '460000', '0', '2026-04-02 12:25:12', NULL, 'pending', NULL, 0),
(74, 'MURG/001', '4', 8, 'G-CELSIO', '370000', '1', '370000', 'Alh Yasir', 'Credit', '177514154847', '210000', 1, 4, 'H.J Textile A7 ', NULL, '0', '0', '160000', NULL, '0', '0', '0', '2026-04-02 14:52:28', '2026-04-02 14:52:28', 'pending', NULL, 0),
(75, 'MURG/001', '4', 1, 'LAS VEGAS ', '450000', '2', '900000', 'Alh Yasir', 'Credit', '177514154847', '210000', 1, 4, 'H.J Textile A7 ', NULL, '0', '0', '690000', NULL, '0', '0', '0', '2026-04-02 14:52:28', '2026-04-02 14:52:28', 'pending', NULL, 0),
(76, 'MURG/001', '4', 17, 'TIMBUKTU', '390000', '1', '390000', 'Alh Yasir', 'Credit', '177514154847', '210000', 1, 4, 'H.J Textile A7 ', NULL, '0', '0', '180000', NULL, '0', '0', '0', '2026-04-02 14:52:28', '2026-04-02 14:52:28', 'pending', NULL, 0),
(77, 'MURG/001', '4', 14, 'Mr MURACCA', '450000', '2', '900000', 'Alh Yasir', 'Credit', '177514154847', '210000', 1, 4, 'H.J Textile A7 ', NULL, '0', '0', '690000', NULL, '0', '0', '0', '2026-04-02 14:52:28', '2026-04-02 14:52:28', 'pending', NULL, 0),
(81, 'MURG/001', '6', 8, 'G-CELSIO', '370000', '1', '370000', 'Bilya staff1', 'Credit', '177514416542', '210000', 1, 2, 'MURG A64 G-baba', NULL, '0', '0', '160000', NULL, '0', '0', '0', '2026-04-02 15:36:05', '2026-04-02 15:36:06', 'pending', NULL, 0),
(82, 'MURG/001', '6', 1, 'LAS VEGAS ', '450000', '2', '900000', 'Bilya staff1', 'Credit', '177514416542', '210000', 1, 2, 'MURG A64 G-baba', NULL, '0', '0', '690000', NULL, '0', '0', '0', '2026-04-02 15:36:05', '2026-04-02 15:36:06', 'pending', NULL, 0),
(83, 'MURG/001', '6', 17, 'TIMBUKTU', '390000', '1', '390000', 'Bilya staff1', 'Credit', '177514416542', '210000', 1, 2, 'MURG A64 G-baba', NULL, '0', '0', '180000', NULL, '0', '0', '0', '2026-04-02 15:36:05', '2026-04-02 15:36:06', 'pending', NULL, 0),
(84, 'MURG/001', '6', 14, 'Mr MURACCA', '450000', '2', '900000', 'Bilya staff1', 'Credit', '177514416542', '210000', 1, 2, 'MURG A64 G-baba', NULL, '0', '0', '690000', NULL, '0', '0', '0', '2026-04-02 15:36:05', '2026-04-02 15:36:06', 'pending', NULL, 0),
(88, 'MURG/001', '6', 8, 'G-CELSIO', '370000', '1', '370000', 'Bilya staff1', 'Credit', '177514498636', '150000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '220000', NULL, '0', '0', '0', '2026-04-02 15:49:46', '2026-04-02 15:49:46', 'pending', NULL, 0),
(89, 'MURG/001', '6', 13, 'GK PLAIN 200y', '400000', '2', '800000', 'Bilya staff1', 'Credit', '177514498636', '150000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '650000', NULL, '0', '0', '0', '2026-04-02 15:49:46', '2026-04-02 15:49:46', 'pending', NULL, 0),
(90, 'MURG/001', '6', 14, 'Mr MURACCA', '450000', '2', '900000', 'Bilya staff1', 'Credit', '177514498636', '150000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '750000', NULL, '0', '0', '0', '2026-04-02 15:49:46', '2026-04-02 15:49:46', 'pending', NULL, 0),
(91, 'MURG/001', '6', 17, 'TIMBUKTU', '390000', '1', '390000', 'Bilya staff1', 'Credit', '177514498636', '150000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '240000', NULL, '0', '0', '0', '2026-04-02 15:49:46', '2026-04-02 15:49:46', 'pending', NULL, 0),
(92, 'MURG/001', '4', 2, 'SILVER CROWN ', '600000', '1', '600000', 'Alh Yasir', 'Split Payment', '177522359027', '30000', 1, NULL, NULL, 'Mukthar hamza', '570000', '0.00', '570000', 'zenith bank', '0', '0', '570000', '2026-04-03 13:39:50', NULL, 'pending', NULL, 0),
(93, 'MURG/001', '6', 8, 'G-CELSIO', '370000', '1', '370000', 'Bilya staff1', 'Split Payment', '40042', '20000', 1, NULL, NULL, 'HAMZA', '350000', '0.00', '350000', NULL, '0', '350000', '0', '2026-04-03 16:54:53', NULL, 'pending', NULL, 0),
(94, 'MURG/001', '4', 28, 'MARADONA Astere', '420000', '2', '840000', 'Alh Yasir', 'Credit', '177529544090', '20000', 1, 4, 'H.J Textile A7 ', NULL, '0', '0', '820000', NULL, '0', '0', '0', '2026-04-04 09:37:20', '2026-04-04 09:37:20', 'pending', NULL, 0),
(95, 'MURG/001', '4', 28, 'MARADONA Astere', '420000', '4', '1680000', 'Alh Yasir', 'Credit', '177529568491', '56000', 1, 5, 'AYACO TEX. ', NULL, '0', '0', '1624000', NULL, '0', '0', '0', '2026-04-04 09:41:24', '2026-04-04 09:41:24', 'pending', NULL, 0),
(96, 'MURG/001', '4', 28, 'MARADONA Astere', '420000', '2', '840000', 'Alh Yasir', 'Credit', '177529650436', '1550', 1, 2, 'MURG A64 G-baba', NULL, '0', '0', '838450', NULL, '0', '0', '0', '2026-04-04 09:55:04', '2026-04-04 09:55:04', 'pending', NULL, 0),
(97, 'MURG/001', '4', 28, 'MARADONA Astere', '420000', '2', '840000', 'Alh Yasir', 'Credit', '177529663929', '9750', 1, 1, 'MURG BIG mur', NULL, '0', '0', '830250', NULL, '0', '0', '0', '2026-04-04 09:57:19', '2026-04-04 09:57:19', 'pending', NULL, 0),
(98, 'MURG/001', '6', 16, 'GENTLEMAN B#', '450000', '1', '450000', 'Bilya staff1', 'Credit', '177539180043', '35000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '415000', NULL, '0', '0', '0', '2026-04-05 12:23:20', '2026-04-05 12:23:20', 'pending', NULL, 0),
(99, 'MURG/001', '6', 16, 'GENTLEMAN B#', '450000', '1', '450000', 'Bilya staff1', 'Credit', '177539188735', '35000', 1, 2, 'MURG A64 G-baba', NULL, '0', '0', '415000', NULL, '0', '0', '0', '2026-04-05 12:24:47', '2026-04-05 12:24:47', 'pending', NULL, 0),
(100, 'MURG/001', '6', 16, 'GENTLEMAN B#', '450000', '1', '450000', 'Bilya staff1', 'Credit', '177539199826', '35000', 1, 4, 'H.J Textile A7 ', NULL, '0', '0', '415000', NULL, '0', '0', '0', '2026-04-05 12:26:38', '2026-04-05 12:26:38', 'pending', NULL, 0),
(101, 'MURG/001', '4', 8, 'G-CELSIO', '370000', '1', '370000', 'Alh Yasir', 'Split Payment', '177548577885', '25000', 1, NULL, NULL, 'mudassir', '345000', '0.00', '345000', NULL, '0', '345000', '0', '2026-04-06 14:29:38', NULL, 'pending', NULL, 0),
(102, 'MURG/001', '4', 30, 'VIP VOCTORY shadda 300y', '2120000', '1', '2120000', 'Alh Yasir', 'Credit', '177549121545', '30000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '2090000', NULL, '0', '0', '0', '2026-04-06 16:00:15', '2026-04-06 16:00:15', 'pending', NULL, 0),
(103, 'MURG/001', '4', 31, 'VIDA 300m', '2120000', '1', '2120000', 'Alh Yasir', 'Credit', '177549135099', '30000', 1, 3, 'MURG G-Jallaba 6a.7a', NULL, '0', '0', '2090000', NULL, '0', '0', '0', '2026-04-06 16:02:30', '2026-04-06 16:02:30', 'pending', NULL, 0),
(104, 'MURG/001', '4', 32, 'Special Extention all white 300m', '1150000', '1', '1150000', 'Alh Yasir', 'Credit', '177549271224', '0', 1, 4, 'H.J Textile A7 ', NULL, '0', '0', '1150000', NULL, '0', '0', '0', '2026-04-06 16:25:12', '2026-04-06 16:25:12', 'pending', NULL, 0),
(105, 'MURG/001', '4', 32, 'Special Extention all white 300m', '1150000', '1', '1150000', 'Alh Yasir', 'Credit', '177549298480', '0', 1, 1, 'MURG BIG mur', NULL, '0', '0', '1150000', NULL, '0', '0', '0', '2026-04-06 16:29:44', '2026-04-06 16:29:44', 'pending', NULL, 0),
(106, 'MURG/001', '6', 12, 'YJ 4#', '255000', '1', '255000', 'Bilya staff1', 'Split Payment', '65238', '15000', 1, NULL, NULL, 'ALIYU Yallow', '240000', '0.00', '240000', NULL, '0', '0', '240000', '2026-04-07 12:29:01', NULL, 'pending', NULL, 0),
(107, 'MURG/001', '4', 33, 'CONGRESS P-AD 300m', '1470000', '1', '1470000', 'Alh Yasir', 'Credit', '177583534882', '65000', 1, 4, 'H.J Textile A7 ', NULL, '0', '0', '1405000', NULL, '0', '0', '0', '2026-04-10 15:35:48', '2026-04-10 15:35:48', 'pending', NULL, 0),
(108, 'MURG/001', '4', 35, '7star U&ME ', '320000', '4', '1280000', 'Alh Yasir', 'Credit', '177583534882', '65000', 1, 4, 'H.J Textile A7 ', NULL, '0', '0', '1215000', NULL, '0', '0', '0', '2026-04-10 15:35:48', '2026-04-10 15:35:48', 'pending', NULL, 0),
(109, 'MURG/001', '4', 34, 'SILVER SEA florence', '380000', '1', '380000', 'Alh Yasir', 'Credit', '177583534882', '65000', 1, 4, 'H.J Textile A7 ', NULL, '0', '0', '315000', NULL, '0', '0', '0', '2026-04-10 15:35:48', '2026-04-10 15:35:48', 'pending', NULL, 0),
(110, 'MURG/001', '4', 35, '7star U&ME ', '320000', '4', '1280000', 'Alh Yasir', 'Credit', '177583984818', '65000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '1215000', NULL, '0', '0', '0', '2026-04-10 16:50:48', '2026-04-10 16:50:48', 'pending', NULL, 0),
(111, 'MURG/001', '4', 33, 'CONGRESS P-AD 300m', '1470000', '1', '1470000', 'Alh Yasir', 'Credit', '177583984818', '65000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '1405000', NULL, '0', '0', '0', '2026-04-10 16:50:48', '2026-04-10 16:50:48', 'pending', NULL, 0),
(112, 'MURG/001', '4', 34, 'SILVER SEA florence', '380000', '1', '380000', 'Alh Yasir', 'Credit', '177583984818', '65000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '315000', NULL, '0', '0', '0', '2026-04-10 16:50:48', '2026-04-10 16:50:48', 'pending', NULL, 0),
(113, 'MURG/001', '6', 35, '7star U&ME ', '320000', '4', '1280000', 'Bilya staff1', 'Credit', '177590357240', '50000', 1, 2, 'MURG A64 G-baba', NULL, '0', '0', '1230000', NULL, '0', '0', '0', '2026-04-11 10:32:52', '2026-04-11 10:32:52', 'pending', NULL, 0),
(114, 'MURG/001', '6', 34, 'SILVER SEA florence', '380000', '1', '380000', 'Bilya staff1', 'Credit', '177590357240', '50000', 1, 2, 'MURG A64 G-baba', NULL, '0', '0', '330000', NULL, '0', '0', '0', '2026-04-11 10:32:52', '2026-04-11 10:32:52', 'pending', NULL, 0),
(116, 'MURG/001', '6', 38, 'Phanta 300m', '1320000', '1', '1320000', 'Bilya staff1', 'Split Payment', '89115', '5000', 1, NULL, NULL, 'Dahiru', '1315000', '0.00', '1315000', NULL, '0', '1315000', '0', '2026-04-11 14:54:03', NULL, 'pending', NULL, 0),
(117, 'MURG/001', '6', 37, 'Micro Inso 300m', '1470000', '1', '1470000', 'Bilya staff1', 'Split Payment', '50629', '0', 1, NULL, NULL, 'Hamisu', '1470000', '0.00', '1470000', NULL, '0', '0', '1470000', '2026-04-12 12:41:07', NULL, 'pending', NULL, 0),
(118, 'MURG/001', '4', 35, '7star U&ME ', '320000', '1', '320000', 'Alh Yasir', 'Credit', '177601009510', '5000', 1, 7, 'HAMZA Shop', NULL, '0', '0', '315000', NULL, '0', '0', '0', '2026-04-12 16:08:15', '2026-04-12 16:08:15', 'pending', NULL, 0),
(119, 'MURG/001', '4', 37, 'Micro Inso 300m', '1470000', '1', '1470000', 'Alh Yasir', 'Credit', '177601069378', '0', 1, 13, 'ALAMIN R. kings', NULL, '0', '0', '1470000', NULL, '0', '0', '0', '2026-04-12 16:18:13', '2026-04-12 16:18:13', 'pending', NULL, 0),
(120, 'MURG/001', '4', 36, 'Ambassadola 300m', '1470000', '1', '1470000', 'Alh Yasir', 'Credit', '177601081564', '10000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '1460000', NULL, '0', '0', '0', '2026-04-12 16:20:15', '2026-04-12 16:20:15', 'pending', NULL, 0),
(121, 'MURG/001', '4', 36, 'Ambassadola 300m', '1470000', '1', '1470000', 'Alh Yasir', 'Credit', '177601090079', '10000', 1, 4, 'H.J Textile A7 ', NULL, '0', '0', '1460000', NULL, '0', '0', '0', '2026-04-12 16:21:40', '2026-04-12 16:21:40', 'pending', NULL, 0),
(122, 'MURG/001', '4', 41, 'Regency TR PRIDE 174y ', '1113600', '1', '1113600', 'Alh Yasir', 'Credit', '177607568912', '177800', 1, 14, 'USSY ZARA', NULL, '0', '0', '935800', NULL, '0', '0', '0', '2026-04-13 10:21:29', '2026-04-13 10:21:29', 'pending', NULL, 0),
(123, 'MURG/001', '4', 47, 'Regency TR PRIDE 195y ', '1248000', '1', '1248000', 'Alh Yasir', 'Credit', '177607568912', '177800', 1, 14, 'USSY ZARA', NULL, '0', '0', '1070200', NULL, '0', '0', '0', '2026-04-13 10:21:29', '2026-04-13 10:21:29', 'pending', NULL, 0),
(124, 'MURG/001', '4', 1, 'LAS VEGAS ', '450000', '2', '900000', 'Alh Yasir', 'Credit', '177607568912', '177800', 1, 14, 'USSY ZARA', NULL, '0', '0', '722200', NULL, '0', '0', '0', '2026-04-13 10:21:29', '2026-04-13 10:21:29', 'pending', NULL, 0),
(125, 'MURG/001', '4', 13, 'GK PLAIN 200y', '400000', '1', '400000', 'Alh Yasir', 'Credit', '177607568912', '177800', 1, 14, 'USSY ZARA', NULL, '0', '0', '222200', NULL, '0', '0', '0', '2026-04-13 10:21:29', '2026-04-13 10:21:29', 'pending', NULL, 0),
(126, 'MURG/001', '4', 28, 'MARADONA Astere', '420000', '1', '420000', 'Alh Yasir', 'Credit', '177607568912', '177800', 1, 14, 'USSY ZARA', NULL, '0', '0', '242200', NULL, '0', '0', '0', '2026-04-13 10:21:29', '2026-04-13 10:21:29', 'pending', NULL, 0),
(127, 'MURG/001', '4', 26, 'swiss Okutex AD', '1120000', '1', '1120000', 'Alh Yasir', 'Credit', '177607568912', '177800', 1, 14, 'USSY ZARA', NULL, '0', '0', '942200', NULL, '0', '0', '0', '2026-04-13 10:21:29', '2026-04-13 10:21:29', 'pending', NULL, 0),
(129, 'MURG/001', '4', 3, 'WATCHMAN ', '200000', '1', '200000', 'Alh Yasir', 'Split Payment', '177607826374', '100000', 1, NULL, NULL, 'khalifa YOLA', '1350000', '0.00', '100000', 'zenith bank', '0', '0', '1350000', '2026-04-13 11:04:23', NULL, 'pending', NULL, 0),
(130, 'MURG/001', '4', 4, 'MR FENDY', '200000', '1', '200000', 'Alh Yasir', 'Split Payment', '177607826374', '100000', 1, NULL, NULL, 'khalifa YOLA', '1350000', '0.00', '100000', 'zenith bank', '0', '0', '1350000', '2026-04-13 11:04:23', NULL, 'pending', NULL, 0),
(131, 'MURG/001', '4', 1, 'LAS VEGAS ', '450000', '1', '450000', 'Alh Yasir', 'Split Payment', '177607826374', '100000', 1, NULL, NULL, 'khalifa YOLA', '1350000', '0.00', '350000', 'zenith bank', '0', '0', '1350000', '2026-04-13 11:04:23', NULL, 'pending', NULL, 0),
(132, 'MURG/001', '4', 2, 'SILVER CROWN ', '600000', '1', '600000', 'Alh Yasir', 'Split Payment', '177607826374', '100000', 1, NULL, NULL, 'khalifa YOLA', '1350000', '0.00', '500000', 'zenith bank', '0', '0', '1350000', '2026-04-13 11:04:23', NULL, 'pending', NULL, 0),
(136, 'MURG/001', '4', 33, 'CONGRESS P-AD 300y', '1470000', '1', '1470000', 'Alh Yasir', 'Credit', '177607923295', '0', 1, 15, 'Soja babban wa', NULL, '0', '0', '1470000', NULL, '0', '0', '0', '2026-04-13 11:20:32', '2026-04-13 11:20:32', 'pending', NULL, 0),
(137, 'MURG/001', '4', 28, 'MARADONA Astere', '420000', '2', '840000', 'Alh Yasir', 'Credit', '177607961617', '185000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '655000', NULL, '0', '0', '0', '2026-04-13 11:26:56', '2026-04-13 11:26:56', 'pending', NULL, 0),
(138, 'MURG/001', '4', 2, 'SILVER CROWN ', '600000', '1', '600000', 'Alh Yasir', 'Credit', '177607961617', '185000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '415000', NULL, '0', '0', '0', '2026-04-13 11:26:56', '2026-04-13 11:26:56', 'pending', NULL, 0),
(139, 'MURG/001', '4', 13, 'GK PLAIN 200y', '400000', '1', '400000', 'Alh Yasir', 'Credit', '177607961617', '185000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '215000', NULL, '0', '0', '0', '2026-04-13 11:26:56', '2026-04-13 11:26:56', 'pending', NULL, 0),
(140, 'MURG/001', '4', 8, 'G-CELSIO', '370000', '1', '370000', 'Alh Yasir', 'Credit', '177607961617', '185000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '185000', NULL, '0', '0', '0', '2026-04-13 11:26:56', '2026-04-13 11:26:56', 'pending', NULL, 0),
(141, 'MURG/001', '4', 10, 'CASSADA AMZ', '370000', '1', '370000', 'Alh Yasir', 'Credit', '177607961617', '185000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '185000', NULL, '0', '0', '0', '2026-04-13 11:26:56', '2026-04-13 11:26:56', 'pending', NULL, 0),
(142, 'MURG/001', '4', 29, 'GOLF 12000 mhood', '450000', '3', '1350000', 'Alh Yasir', 'Credit', '177607961617', '185000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '1165000', NULL, '0', '0', '0', '2026-04-13 11:26:56', '2026-04-13 11:26:56', 'pending', NULL, 0),
(144, 'MURG/001', '4', 38, 'Phanta 300m', '1320000', '1', '1320000', 'Alh Yasir', 'Credit', '177609776659', '10000', 1, 1, 'MURG BIG mur', NULL, '0', '0', '1310000', NULL, '0', '0', '0', '2026-04-13 16:29:26', '2026-04-13 16:29:27', 'pending', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `orderID` varchar(255) NOT NULL,
  `stockID` int(11) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `outstand`
--

CREATE TABLE `outstand` (
  `id` int(11) NOT NULL,
  `facilityID` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customerID` varchar(200) DEFAULT NULL,
  `staffID` varchar(200) NOT NULL,
  `Customer` varchar(200) NOT NULL,
  `staff` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `balance` varchar(200) NOT NULL,
  `creation` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `outstand`
--

INSERT INTO `outstand` (`id`, `facilityID`, `customerID`, `staffID`, `Customer`, `staff`, `amount`, `balance`, `creation`, `updation`) VALUES
(1, 'MURG/001', '1', '6', 'MURG BIG mur', 'Bilya staff1', '14981000', '13605250', '2026-03-26 16:14:07', '2026-04-13 17:08:12'),
(2, 'MURG/001', '7', '6', 'HAMZA Shop', 'Bilya staff1', '730000', '0', '2026-03-28 17:28:12', '2026-04-12 16:09:29'),
(3, 'MURG/001', '6', '6', 'BASH YENZI', 'Bilya staff1', '0', '460000', '2026-03-28 17:30:08', NULL),
(4, 'MURG/001', '3', '4', 'MURG G-Jallaba 6a.7a', 'Alh Yasir', '2850000', '3310000', '2026-03-29 11:28:02', '2026-04-12 16:33:41'),
(5, 'MURG/001', '9', '4', 'Goma 10', 'Alh Yasir', '0', '630000', '2026-03-29 12:46:10', NULL),
(6, 'MURG/001', '10', '4', 'ISHAKA BUNGEL', 'Alh Yasir', '200000', '520000', '2026-03-29 15:27:17', '2026-04-10 12:09:12'),
(7, 'MURG/001', '5', '4', 'AYACO TEX. ', 'Alh Yasir', '1500000', '4655600', '2026-03-30 17:05:45', '2026-04-08 15:57:46'),
(8, 'MURG/001', '4', '4', 'H.J Textile A7 ', 'Alh Yasir', '7100000', '2321750', '2026-03-31 12:53:50', '2026-04-12 16:21:40'),
(9, 'MURG/001', '2', '4', 'MURG A64 G-baba', 'Alh Yasir', '4715000', '1418450', '2026-03-31 13:14:09', '2026-04-13 17:09:40'),
(10, 'MURG/001', '8', '4', 'AUWAL DUBAI apex', 'Alh Yasir', '250000', '250000', '2026-03-31 15:21:47', '2026-04-10 15:28:09'),
(11, 'MURG/001', '11', '4', 'MAIBARGO ABBA', 'Alh Yasir', '200000', '135000', '2026-04-01 15:56:30', '2026-04-11 14:02:03'),
(12, 'MURG/001', '12', '4', 'ALIYU BASAKKWACHE', 'Alh Yasir', '225000', '190000', '2026-04-01 16:06:44', NULL),
(13, 'MURG/001', '13', '4', 'ALAMIN R. kings', 'Alh Yasir', '0', '1470000', '2026-04-12 16:18:13', NULL),
(14, 'MURG/001', '14', '4', 'USSY ZARA', 'Alh Yasir', '0', '5023800', '2026-04-13 10:21:29', NULL),
(15, 'MURG/001', '15', '4', 'Soja babban wa', 'Alh Yasir', '0', '1470000', '2026-04-13 11:20:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_deposit_history`
--

CREATE TABLE `purchase_deposit_history` (
  `id` int(11) NOT NULL,
  `purchaseID` int(11) NOT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `previous_balance` decimal(15,2) NOT NULL,
  `new_balance` decimal(15,2) NOT NULL,
  `processed_by` varchar(100) DEFAULT NULL,
  `deposit_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_history`
--

CREATE TABLE `purchase_history` (
  `id` int(11) NOT NULL,
  `facilityID` int(11) DEFAULT NULL,
  `purchaser` varchar(255) DEFAULT NULL,
  `purchase_from` varchar(255) DEFAULT NULL,
  `stock_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cost_price` decimal(10,2) DEFAULT NULL,
  `total_cost` decimal(10,2) DEFAULT NULL,
  `amount_paid` decimal(15,2) DEFAULT 0.00,
  `balance` decimal(15,2) DEFAULT 0.00,
  `for_desc` varchar(255) DEFAULT '',
  `purchase_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_history`
--

INSERT INTO `purchase_history` (`id`, `facilityID`, `purchaser`, `purchase_from`, `stock_name`, `quantity`, `cost_price`, `total_cost`, `amount_paid`, `balance`, `for_desc`, `purchase_date`) VALUES
(1, 0, NULL, 'U&ME', 'LAS VEGAS ', 19, 401000.00, 7619000.00, 0.00, 7619000.00, '', '2026-03-26 14:07:40'),
(2, 0, NULL, 'Goma ', 'SILVER CROWN ', 9, 560000.00, 5040000.00, 0.00, 5040000.00, '', '2026-03-26 14:11:10'),
(3, 0, NULL, 'Bash Yenzi ', 'WATCHMAN ', 19, 190000.00, 3610000.00, 0.00, 3610000.00, '', '2026-03-26 14:14:20'),
(4, 0, NULL, 'Bash Yenzi ', 'MR FENDY', 3, 190000.00, 570000.00, 0.00, 570000.00, '', '2026-03-26 14:16:03'),
(5, 0, NULL, 'Bash Yenzi ', 'STARLIGHT', 1, 190000.00, 190000.00, 0.00, 190000.00, '', '2026-03-26 14:16:50'),
(6, 0, NULL, 'Goma ', 'PORTMANN AMZ PLAIN', 9, 640000.00, 5760000.00, 0.00, 5760000.00, '', '2026-03-26 14:18:25'),
(7, 0, NULL, 'Jabeer yards', 'Gold Luxury', 5, 395000.00, 1975000.00, 0.00, 1975000.00, '', '2026-03-26 14:24:09'),
(8, 0, NULL, 'Jabeer yards', 'G-CELSIO', 10, 330000.00, 3300000.00, 0.00, 3300000.00, '', '2026-03-26 14:26:01'),
(9, 0, NULL, 'Goma ', 'THE ONE AMZ', 3, 350000.00, 1050000.00, 0.00, 1050000.00, '', '2026-03-26 14:27:23'),
(10, 0, NULL, 'Goma ', 'CASSADA AMZ', 1, 350000.00, 350000.00, 0.00, 350000.00, '', '2026-03-26 14:29:57'),
(11, 0, NULL, 'Goma ', 'PHANTOM noble wool', 3, 780000.00, 2340000.00, 0.00, 2340000.00, '', '2026-03-26 16:24:11'),
(12, 0, NULL, 'Bash Yenzi ', 'YJ 4#', 35, 220000.00, 7700000.00, 0.00, 7700000.00, '', '2026-03-28 17:18:49'),
(13, 0, NULL, 'Jamilü unity', 'GK PLAIN 200y', 20, 390000.00, 7800000.00, 0.00, 7800000.00, '', '2026-03-28 17:21:30'),
(14, 0, NULL, 'Jamilü unity', 'Mr MURACCA', 10, 420000.00, 4200000.00, 0.00, 4200000.00, '', '2026-03-28 17:29:39'),
(15, 0, NULL, 'Jamilü unity', 'GENTLEMAN A#', 5, 450000.00, 2250000.00, 0.00, 2250000.00, '', '2026-03-28 17:31:14'),
(16, 0, NULL, 'Jamilü unity', 'GENTLEMAN B#', 5, 420000.00, 2100000.00, 0.00, 2100000.00, '', '2026-03-28 17:33:24'),
(17, 0, NULL, 'Jamilü unity', 'TIMBUKTU', 5, 360000.00, 1800000.00, 0.00, 1800000.00, '', '2026-03-28 17:35:37'),
(18, 0, NULL, 'Jamilü unity', 'JU WOOL A florence', 5, 450000.00, 2250000.00, 0.00, 2250000.00, '', '2026-03-28 17:38:11'),
(19, 0, NULL, 'Goma ', 'FASHION GOLD', 1, 1125000.00, 1125000.00, 0.00, 1125000.00, '', '2026-03-28 17:42:21'),
(20, 0, NULL, 'Goma ', 'AUSTRAILIAN WIFI', 1, 2010000.00, 2010000.00, 0.00, 2010000.00, '', '2026-03-28 17:44:37'),
(21, 0, NULL, 'Goma ', 'VIP ILLUSION AD', 1, 1325000.00, 1325000.00, 0.00, 1325000.00, '', '2026-03-28 17:45:53'),
(22, 0, NULL, 'Goma ', 'PROFESSOR AD', 1, 1285000.00, 1285000.00, 0.00, 1285000.00, '', '2026-03-28 17:47:17'),
(23, 0, NULL, 'Goma ', 'WISE MAN AD', 1, 1285000.00, 1285000.00, 0.00, 1285000.00, '', '2026-03-28 17:49:54'),
(24, 0, NULL, 'Goma ', 'SILK ROAD AD', 1, 1285000.00, 1285000.00, 0.00, 1285000.00, '', '2026-03-28 17:51:52'),
(25, 0, NULL, 'Goma ', 'OCEAN BLUE blsk', 1, 1275000.00, 1275000.00, 0.00, 1275000.00, '', '2026-03-28 17:53:18'),
(26, 0, NULL, 'Abdulgee tex', 'swiss Okutex AD', 2, 1100000.00, 2200000.00, 0.00, 2200000.00, '', '2026-03-29 15:25:24'),
(27, 0, NULL, 'hamza Ali blocking', 'SOFT COTTON shadda', 1, 1580000.00, 1580000.00, 0.00, 1580000.00, '', '2026-03-29 15:29:34'),
(28, 0, NULL, 'Hayatu ', 'MARADONA Astere', 10, 406000.00, 4060000.00, 0.00, 4060000.00, '', '2026-04-03 12:16:57'),
(29, 0, NULL, 'Hayatu ', 'MARADONA Astere', 20, 406000.00, 8120000.00, 0.00, 8120000.00, '', '2026-04-04 17:12:44'),
(30, 0, NULL, 'Abba AGYL', 'GOLF 12000 mhood', 15, 425000.00, 6375000.00, 0.00, 6375000.00, '', '2026-04-06 15:33:30'),
(31, 0, NULL, 'hamza Ali blocking', 'VIP VOCTORY shadda 300y', 1, 2080000.00, 2080000.00, 0.00, 2080000.00, '', '2026-04-06 16:56:55'),
(32, 0, NULL, 'hamza Ali blocking', 'VIDA 300m', 1, 2080000.00, 2080000.00, 0.00, 2080000.00, '', '2026-04-06 16:59:17'),
(33, 0, NULL, 'Goma ', 'Special Extention all white 300m', 3, 1125000.00, 3375000.00, 0.00, 3375000.00, '', '2026-04-06 17:24:11'),
(34, 0, NULL, 'hamza Ali blocking', 'CONGRESS P-AD 300m', 3, 1455000.00, 4365000.00, 0.00, 4365000.00, '', '2026-04-08 16:53:22'),
(35, 0, NULL, 'U&ME', 'SILVER SEA florence', 5, 365000.00, 1825000.00, 0.00, 1825000.00, '', '2026-04-08 16:54:23'),
(36, 0, NULL, 'Goma ', 'SILVER CROWN ', 3, 560000.00, 1680000.00, 0.00, 1680000.00, '', '2026-04-08 16:55:03'),
(37, 0, NULL, 'U&ME', '7star U&ME ', 20, 306000.00, 6120000.00, 0.00, 6120000.00, '', '2026-04-10 13:16:59'),
(38, 0, NULL, 'Goma ', 'Ambassadola 300m', 2, 1455000.00, 2910000.00, 0.00, 2910000.00, '', '2026-04-11 15:05:36'),
(39, 0, NULL, 'Goma ', 'Micro Inso 300m', 2, 1455000.00, 2910000.00, 0.00, 2910000.00, '', '2026-04-11 15:06:55'),
(40, 0, NULL, 'Goma ', 'Phanta 300m', 2, 1305000.00, 2610000.00, 0.00, 2610000.00, '', '2026-04-11 15:08:33'),
(41, 0, NULL, 'Faruk PRIDE', 'Fasino Check PRIDE 141y', 1, 874200.00, 874200.00, 0.00, 874200.00, '', '2026-04-13 10:52:35'),
(42, 0, NULL, 'Faruk PRIDE', 'Regency TR PRIDE 178y ', 1, 1103600.00, 1103600.00, 0.00, 1103600.00, '', '2026-04-13 10:59:32'),
(43, 0, NULL, 'Faruk PRIDE', 'Regency TR PRIDE 174y ', 1, 1078800.00, 1078800.00, 0.00, 1078800.00, '', '2026-04-13 11:00:53'),
(44, 0, NULL, 'Faruk PRIDE', 'TR GOLD PRIDE 196y', 1, 1293600.00, 1293600.00, 0.00, 1293600.00, '', '2026-04-13 11:02:46'),
(45, 0, NULL, 'Faruk PRIDE', 'Vayana 02 PRIDE 155y', 1, 961000.00, 961000.00, 0.00, 961000.00, '', '2026-04-13 11:04:18'),
(46, 0, NULL, 'Faruk PRIDE', 'Fasino Check PRIDE 154y', 1, 954800.00, 954800.00, 0.00, 954800.00, '', '2026-04-13 11:05:40'),
(47, 0, NULL, 'Faruk PRIDE', 'TR GOLD PRIDE 204y', 1, 1346400.00, 1346400.00, 0.00, 1346400.00, '', '2026-04-13 11:07:34'),
(48, 0, NULL, 'Faruk PRIDE', 'Regency TR PRIDE 198y ', 1, 1227600.00, 1227600.00, 0.00, 1227600.00, '', '2026-04-13 11:08:49'),
(49, 0, NULL, 'Faruk PRIDE', 'Regency TR PRIDE 195y ', 1, 1209000.00, 1209000.00, 0.00, 1209000.00, '', '2026-04-13 11:10:08'),
(50, 0, NULL, 'Faruk PRIDE', 'Vayana 02 PRIDE 146y', 1, 905200.00, 905200.00, 0.00, 905200.00, '', '2026-04-13 11:13:59'),
(51, 0, NULL, 'U&ME', 'LAS VEGAS ', 10, 401000.00, 4010000.00, 0.00, 4010000.00, '', '2026-04-13 16:43:29'),
(52, 0, NULL, 'Faruk PRIDE', 'Regency TR PRIDE 199y ', 1, 1233800.00, 1233800.00, 0.00, 1233800.00, '', '2026-04-13 17:09:14'),
(53, 0, NULL, 'Faruk PRIDE', 'Lycra Tanish PRIDE 150y', 2, 930000.00, 1860000.00, 0.00, 1860000.00, '', '2026-04-13 17:13:50'),
(54, 0, NULL, 'Faruk PRIDE', 'Sonet PRIDE 100y', 3, 620000.00, 1860000.00, 0.00, 1860000.00, '', '2026-04-13 17:16:01'),
(55, 0, NULL, 'Faruk PRIDE', 'Sonet PRIDE 98y', 1, 607600.00, 607600.00, 0.00, 607600.00, '', '2026-04-13 17:17:30'),
(56, 0, NULL, 'Faruk PRIDE', 'Leebay PRIDE 100y', 2, 620000.00, 1240000.00, 0.00, 1240000.00, '', '2026-04-13 17:18:42'),
(57, 0, NULL, 'Faruk PRIDE', 'Regency TR PRIDE 200y ', 1, 1240000.00, 1240000.00, 0.00, 1240000.00, '', '2026-04-13 17:19:48'),
(58, 0, NULL, 'Faruk PRIDE', 'Ethnic PRIDE 150y', 1, 930000.00, 930000.00, 0.00, 930000.00, '', '2026-04-13 17:21:04'),
(59, 0, NULL, 'Faruk PRIDE', 'Ethnic PRIDE 186y', 1, 1153200.00, 1153200.00, 0.00, 1153200.00, '', '2026-04-13 17:22:17'),
(60, 0, NULL, 'Faruk PRIDE', 'Turkish TR PRIDE 71y', 1, 440200.00, 440200.00, 0.00, 440200.00, '', '2026-04-13 17:24:57'),
(61, 0, NULL, 'Faruk PRIDE', 'Dedication PRIDE 120y', 1, 744000.00, 744000.00, 0.00, 744000.00, '', '2026-04-13 17:26:33'),
(62, 0, NULL, 'Faruk PRIDE', 'Dedication PRIDE 129y', 1, 799800.00, 799800.00, 0.00, 799800.00, '', '2026-04-13 17:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(11) NOT NULL,
  `facilityID` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `buying` varchar(200) NOT NULL,
  `selling` varchar(200) NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `Bsubtotal` varchar(200) DEFAULT NULL,
  `Ssubtotal` varchar(200) DEFAULT NULL,
  `expiry` varchar(200) DEFAULT NULL,
  `creation` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `sync_status` enum('pending','synced','failed') DEFAULT 'pending',
  `last_sync` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `facilityID`, `name`, `buying`, `selling`, `quantity`, `Bsubtotal`, `Ssubtotal`, `expiry`, `creation`, `updation`, `sync_status`, `last_sync`) VALUES
(1, 'MURG/001', 'LAS VEGAS ', '401000', '450000', '10', '4010000', '4500000', '', '2026-03-26 13:07:40', '2026-04-13 15:43:29', 'pending', NULL),
(2, 'MURG/001', 'SILVER CROWN ', '560000', '600000', '4', '3360000', '3600000', '', '2026-03-26 13:11:10', '2026-04-13 11:23:53', 'pending', NULL),
(3, 'MURG/001', 'WATCHMAN ', '190000', '200000', '16', '3610000', '3800000', '', '2026-03-26 13:14:20', '2026-04-13 10:55:33', 'pending', NULL),
(4, 'MURG/001', 'MR FENDY', '190000', '200000', '2', '570000', '600000', '', '2026-03-26 13:16:03', '2026-04-13 10:55:45', 'pending', NULL),
(5, 'MURG/001', 'STARLIGHT', '190000', '200000', '1', '190000', '200000', '', '2026-03-26 13:16:50', NULL, 'pending', NULL),
(6, 'MURG/001', 'PORTMANN AMZ PLAIN', '640000', '700000', '0', '5760000', '6300000', '', '2026-03-26 13:18:25', '2026-03-30 17:00:40', 'pending', NULL),
(7, 'MURG/001', 'Gold Luxury', '395000', '420000', '0', '1975000', '2100000', '', '2026-03-26 13:24:09', '2026-03-30 16:56:19', 'pending', NULL),
(8, 'MURG/001', 'G-CELSIO', '330000', '370000', '1', '3300000', '3700000', '', '2026-03-26 13:26:01', '2026-04-13 11:24:56', 'pending', NULL),
(9, 'MURG/001', 'THE ONE AMZ', '350000', '380000', '0', '1050000', '1140000', '', '2026-03-26 13:27:23', '2026-03-29 11:55:24', 'pending', NULL),
(10, 'MURG/001', 'CASSADA AMZ', '350000', '370000', '0', '350000', '370000', '', '2026-03-26 13:29:57', '2026-04-13 11:25:28', 'pending', NULL),
(11, 'MURG/001', 'PHANTOM noble wool', '780000', '820000', '0', '2340000', '2460000', '', '2026-03-26 15:24:11', '2026-03-30 16:56:04', 'pending', NULL),
(12, 'MURG/001', 'YJ 4#', '220000', '255000', '22', '7700000', '8925000', '', '2026-03-28 16:18:49', '2026-04-07 12:27:23', 'pending', NULL),
(13, 'MURG/001', 'GK PLAIN 200y', '390000', '400000', '4', '7800000', '8000000', '', '2026-03-28 16:21:30', '2026-04-13 11:24:09', 'pending', NULL),
(14, 'MURG/001', 'Mr MURACCA', '420000', '450000', '3', '4200000', '4500000', '', '2026-03-28 16:29:39', '2026-04-02 15:39:17', 'pending', NULL),
(15, 'MURG/001', 'GENTLEMAN A#', '450000', '480000', '3', '2250000', '2400000', '', '2026-03-28 16:31:14', '2026-03-30 16:59:35', 'pending', NULL),
(16, 'MURG/001', 'GENTLEMAN B#', '420000', '450000', '2', '2100000', '2250000', '', '2026-03-28 16:33:24', '2026-04-05 12:26:02', 'pending', NULL),
(17, 'MURG/001', 'TIMBUKTU', '360000', '390000', '2', '1800000', '1950000', '', '2026-03-28 16:35:37', '2026-04-02 15:39:40', 'pending', NULL),
(18, 'MURG/001', 'JU WOOL A florence', '450000', '480000', '1', '2250000', '2400000', '', '2026-03-28 16:38:11', '2026-04-02 12:19:26', 'pending', NULL),
(19, 'MURG/001', 'FASHION GOLD', '1125000', '1140000', '0', '1125000', '1140000', '', '2026-03-28 16:42:21', '2026-03-28 17:32:00', 'pending', NULL),
(20, 'MURG/001', 'AUSTRAILIAN WIFI', '2010000', '2050000', '0', '2010000', '2050000', '', '2026-03-28 16:44:37', '2026-03-29 11:25:43', 'pending', NULL),
(21, 'MURG/001', 'VIP ILLUSION AD', '1325000', '1350000', '0', '1325000', '1350000', '', '2026-03-28 16:45:53', '2026-03-28 17:32:21', 'pending', NULL),
(22, 'MURG/001', 'PROFESSOR AD', '1285000', '1300000', '0', '1285000', '1300000', '', '2026-03-28 16:47:17', '2026-03-28 17:33:02', 'pending', NULL),
(23, 'MURG/001', 'WISE MAN AD', '1285000', '1300000', '0', '1285000', '1300000', '', '2026-03-28 16:49:54', '2026-03-28 17:34:05', 'pending', NULL),
(24, 'MURG/001', 'SILK ROAD AD', '1285000', '1300000', '0', '1285000', '1300000', '', '2026-03-28 16:51:52', '2026-03-28 17:22:16', 'pending', NULL),
(25, 'MURG/001', 'OCEAN BLUE blsk', '1275000', '1290000', '0', '1275000', '1290000', '', '2026-03-28 16:53:18', '2026-03-28 17:21:49', 'pending', NULL),
(26, 'MURG/001', 'swiss Okutex AD', '1100000', '1120000', '0', '2200000', '2240000', '', '2026-03-29 14:25:24', '2026-04-13 10:19:03', 'pending', NULL),
(27, 'MURG/001', 'SOFT COTTON shadda', '1580000', '1600000', '0', '1580000', '1600000', '', '2026-03-29 14:29:34', '2026-03-29 15:25:45', 'pending', NULL),
(28, 'MURG/001', 'MARADONA Astere', '406000', '420000', '17', '8120000', '8400000', '', '2026-04-03 11:16:57', '2026-04-13 11:23:39', 'pending', NULL),
(29, 'MURG/001', 'GOLF 12000 mhood', '425000', '450000', '12', '6375000', '6750000', '', '2026-04-06 14:33:30', '2026-04-13 11:25:45', 'pending', NULL),
(30, 'MURG/001', 'VIP VOCTORY shadda 300y', '2080000', '2120000', '0', '2080000', '2120000', '', '2026-04-06 15:56:55', '2026-04-06 16:00:00', 'pending', NULL),
(31, 'MURG/001', 'VIDA 300m', '2080000', '2120000', '0', '2080000', '2120000', '', '2026-04-06 15:59:17', '2026-04-06 16:02:20', 'pending', NULL),
(32, 'MURG/001', 'Special Extention all white 300m', '1125000', '1150000', '1', '3375000', '3450000', '', '2026-04-06 16:24:11', '2026-04-06 16:29:40', 'pending', NULL),
(33, 'MURG/001', 'CONGRESS P-AD 300y', '1455000', '1470000', '0', '1455000', '1470000', '', '2026-04-08 15:53:22', '2026-04-13 11:20:28', 'pending', NULL),
(34, 'MURG/001', 'SILVER SEA florence', '365000', '380000', '2', '1825000', '1900000', '', '2026-04-08 15:54:23', '2026-04-11 10:27:48', 'pending', NULL),
(35, 'MURG/001', '7star U&ME ', '306000', '320000', '7', '6120000', '6400000', '', '2026-04-10 12:16:59', '2026-04-12 16:07:54', 'pending', NULL),
(36, 'MURG/001', 'Ambassadola 300m', '1455000', '1470000', '0', '2910000', '2940000', '', '2026-04-11 14:05:36', '2026-04-12 16:21:30', 'pending', NULL),
(37, 'MURG/001', 'Micro Inso 300m', '1455000', '1470000', '0', '2910000', '2940000', '', '2026-04-11 14:06:55', '2026-04-12 16:18:09', 'pending', NULL),
(38, 'MURG/001', 'Phanta 300m', '1305000', '1320000', '0', '2610000', '2640000', '', '2026-04-11 14:08:33', '2026-04-13 16:29:15', 'pending', NULL),
(39, 'MURG/001', 'Fasino Check PRIDE 141y', '874200', '902400', '1', '874200', '902400', '', '2026-04-13 09:52:35', NULL, 'pending', NULL),
(40, 'MURG/001', 'Regency TR PRIDE 178y ', '1103600', '1139200', '1', '1103600', '1139200', '', '2026-04-13 09:59:32', NULL, 'pending', NULL),
(41, 'MURG/001', 'Regency TR PRIDE 174y ', '1078800', '1113600', '0', '1078800', '1113600', '', '2026-04-13 10:00:53', '2026-04-13 10:16:15', 'pending', NULL),
(42, 'MURG/001', 'TR GOLD PRIDE 196y', '1293600', '1332800', '1', '1293600', '1332800', '', '2026-04-13 10:02:46', NULL, 'pending', NULL),
(43, 'MURG/001', 'Vayana 02 PRIDE 155y', '961000', '992000', '1', '961000', '992000', '', '2026-04-13 10:04:18', NULL, 'pending', NULL),
(44, 'MURG/001', 'Fasino Check PRIDE 154y', '954800', '985600', '1', '954800', '985600', '', '2026-04-13 10:05:40', NULL, 'pending', NULL),
(45, 'MURG/001', 'TR GOLD PRIDE 204y', '1346400', '1387200', '1', '1346400', '1387200', '', '2026-04-13 10:07:34', NULL, 'pending', NULL),
(46, 'MURG/001', 'Regency TR PRIDE 198y ', '1227600', '1267200', '1', '1227600', '1267200', '', '2026-04-13 10:08:49', NULL, 'pending', NULL),
(47, 'MURG/001', 'Regency TR PRIDE 195y ', '1209000', '1248000', '0', '1209000', '1248000', '', '2026-04-13 10:10:08', '2026-04-13 10:16:43', 'pending', NULL),
(48, 'MURG/001', 'Vayana 02 PRIDE 146y', '905200', '934400', '1', '905200', '934400', '', '2026-04-13 10:13:59', NULL, 'pending', NULL),
(49, 'MURG/001', 'Regency TR PRIDE 199y ', '1233800', '1273600', '1', '1233800', '1273600', '', '2026-04-13 16:09:14', NULL, 'pending', NULL),
(50, 'MURG/001', 'Lycra Tanish PRIDE 150y', '930000', '960000', '2', '1860000', '1920000', '', '2026-04-13 16:13:50', NULL, 'pending', NULL),
(51, 'MURG/001', 'Sonet PRIDE 100y', '620000', '650000', '3', '1860000', '1950000', '', '2026-04-13 16:16:01', NULL, 'pending', NULL),
(52, 'MURG/001', 'Sonet PRIDE 98y', '607600', '637000', '1', '607600', '637000', '', '2026-04-13 16:17:30', NULL, 'pending', NULL),
(53, 'MURG/001', 'Leebay PRIDE 100y', '620000', '650000', '2', '1240000', '1300000', '', '2026-04-13 16:18:42', NULL, 'pending', NULL),
(54, 'MURG/001', 'Regency TR PRIDE 200y ', '1240000', '1280000', '1', '1240000', '1280000', '', '2026-04-13 16:19:48', NULL, 'pending', NULL),
(55, 'MURG/001', 'Ethnic PRIDE 150y', '930000', '960000', '1', '930000', '960000', '', '2026-04-13 16:21:04', NULL, 'pending', NULL),
(56, 'MURG/001', 'Ethnic PRIDE 186y', '1153200', '1190400', '1', '1153200', '1190400', '', '2026-04-13 16:22:17', NULL, 'pending', NULL),
(57, 'MURG/001', 'Turkish TR PRIDE 71y', '440200', '461500', '1', '440200', '461500', '', '2026-04-13 16:24:57', NULL, 'pending', NULL),
(58, 'MURG/001', 'Dedication PRIDE 120y', '744000', '780000', '1', '744000', '780000', '', '2026-04-13 16:26:33', NULL, 'pending', NULL),
(59, 'MURG/001', 'Dedication PRIDE 129y', '799800', '838500', '1', '799800', '838500', '', '2026-04-13 16:27:25', NULL, 'pending', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conca`
--
ALTER TABLE `conca`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `debt_cart`
--
ALTER TABLE `debt_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit_history`
--
ALTER TABLE `deposit_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outstand`
--
ALTER TABLE `outstand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_deposit_history`
--
ALTER TABLE `purchase_deposit_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_history`
--
ALTER TABLE `purchase_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `conca`
--
ALTER TABLE `conca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `debt_cart`
--
ALTER TABLE `debt_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `deposit_history`
--
ALTER TABLE `deposit_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `facility`
--
ALTER TABLE `facility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `outstand`
--
ALTER TABLE `outstand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `purchase_deposit_history`
--
ALTER TABLE `purchase_deposit_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_history`
--
ALTER TABLE `purchase_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
