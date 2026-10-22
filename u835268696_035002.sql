-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 22, 2026 at 12:16 PM
-- Server version: 11.8.9-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u835268696_035002`
--

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE `food_items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'ชื่อรายการอาหาร',
  `type` enum('general','frozen','perishable') DEFAULT 'general' COMMENT 'ประเภทคลาส (ทั่วไป, แช่แข็ง, ของสด)',
  `category` varchar(100) DEFAULT 'ทั่วไป',
  `quantity` decimal(10,2) NOT NULL DEFAULT 1.00 COMMENT 'จำนวน หรือ ปริมาณ',
  `unit` varchar(50) NOT NULL COMMENT 'หน่วยนับ เช่น ชิ้น, กิโลกรัม, ลิตร',
  `expiry_date` date DEFAULT NULL COMMENT 'วันหมดอายุ (สำหรับ PerishableFood)',
  `temperature_required` decimal(5,2) DEFAULT NULL COMMENT 'อุณหภูมิจัดเก็บที่ต้องการ (สำหรับ FrozenFood)',
  `added_date` timestamp NULL DEFAULT current_timestamp() COMMENT 'วันที่นำเข้าตู้เย็น'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_items`
--

INSERT INTO `food_items` (`id`, `name`, `type`, `category`, `quantity`, `unit`, `expiry_date`, `temperature_required`, `added_date`) VALUES
(1, 'เนื้อหมูสด', 'perishable', 'ทั่วไป', 2.50, 'kg', '2026-10-08', NULL, '2026-10-05 01:27:59'),
(2, 'ไอศกรีมวานิลลา', 'frozen', 'ทั่วไป', 1.00, 'box', NULL, -18.00, '2026-10-05 01:27:59'),
(3, 'ไข่ไก่', 'perishable', 'ทั่วไป', 12.00, 'eggs', '2026-10-15', NULL, '2026-10-05 01:27:59'),
(4, 'น้ำดื่ม', 'general', 'ทั่วไป', 6.00, 'bottles', NULL, NULL, '2026-10-05 01:27:59'),
(5, 'ไส้กรอก', 'frozen', 'เนื้อสัตว์', 1.00, 'ถุง', '2026-10-29', 3.00, '2026-10-22 11:49:40'),
(6, 'โยเกิร์ต', 'general', 'ขนม/ของว่าง', 1.00, 'ชิ้น', '2026-10-25', 3.00, '2026-10-22 11:53:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food_items`
--
ALTER TABLE `food_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
