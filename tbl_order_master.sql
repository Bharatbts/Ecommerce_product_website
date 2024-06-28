-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2024 at 10:06 AM
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
-- Database: `productdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_master`
--

CREATE TABLE `tbl_order_master` (
  `order_id` int(11) NOT NULL,
  `order_date` varchar(50) NOT NULL,
  `order_status` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shipping_name` varchar(50) NOT NULL,
  `shipping_mobile` bigint(20) NOT NULL,
  `shipping_address` varchar(200) NOT NULL,
  `payment_mode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order_master`
--

INSERT INTO `tbl_order_master` (`order_id`, `order_date`, `order_status`, `user_id`, `shipping_name`, `shipping_mobile`, `shipping_address`, `payment_mode`) VALUES
(1, '2024-03-23', 'Confirm', 1, 'Bharat Kumar', 9511328401, 'Underpass Shahibaug, airport road, shahibaug, Ahmedabad, 380004', 'Cash'),
(2, '2024-03-23', 'Confirm', 2, 'Ravi', 9863734588, 'kumawat dharmsala, bheru chawk, sumerpur, Rajasthan, 306902', 'Online'),
(3, '2024-03-23', 'Confirm', 2, 'Tarun', 8865435345, 'BHERU CHAWK, SUMERPUR, PALI, RAJASTHAN,306902', 'Online'),
(4, '2024-03-23', 'Confirm', 1, 'Rohit', 7999097643, 'Kalupur, Ahmedabad, 380001', 'Cash'),
(5, '2024-03-28', 'Confirm', 2, 'Karthik', 8899234678, 'BHERU CHAWK, SUMERPUR, PALI, RAJASTHAN\r\nBHERU CHAWK', 'Online');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_order_master`
--
ALTER TABLE `tbl_order_master`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_order_master`
--
ALTER TABLE `tbl_order_master`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
