-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 07, 2019 at 04:36 PM
-- Server version: 10.1.41-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mypos`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `gender`, `phone`, `address`, `created`, `updated`) VALUES
(1, 'test', 'L', '019234', 'test coba', '2019-10-01 14:45:19', '2019-10-01 15:10:28'),
(2, 'test lagi', 'P', '325435', 'testasdf', '2019-10-01 14:45:44', NULL),
(3, 'test3', 'L', '93285', 'aksdfaksdjf', '2019-10-01 15:04:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p_category`
--

CREATE TABLE `p_category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `p_category`
--

INSERT INTO `p_category` (`category_id`, `name`, `created`, `updated`) VALUES
(3, 'test1test', '2019-10-01 16:27:55', '2019-10-07 14:01:43'),
(4, 'test2', '2019-10-02 08:56:48', NULL),
(5, 'test3', '2019-10-07 14:01:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p_unit`
--

CREATE TABLE `p_unit` (
  `unit_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `p_unit`
--

INSERT INTO `p_unit` (`unit_id`, `name`, `created`, `updated`) VALUES
(3, 'kg', '2019-10-01 16:27:55', '2019-10-07 14:36:12'),
(4, 'grosir', '2019-10-02 08:56:48', '2019-10-07 14:36:22');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(200) NOT NULL,
  `description` text,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `name`, `phone`, `address`, `description`, `created`, `updated`) VALUES
(1, 'Toko A', '081333859475', 'Mojokerto', NULL, '2019-09-27 14:55:18', NULL),
(2, 'Toko B baru', '3215858934', 'Surabaya gitu lowh', 'Toko ATK terbesar di surabaya', '2019-09-27 14:55:18', '2019-10-01 14:12:38'),
(4, 'Test update', '123321', 'alamat test', 'test update', '2019-09-30 15:24:05', '2019-10-01 13:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `address` varchar(200) NOT NULL,
  `level` int(1) NOT NULL COMMENT '1:admin, 2:kasir'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `address`, `level`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Nur Achmad Agus Ismail', 'Mojokerto', 1),
(2, 'kasir1', '874c0ac75f323057fe3b7fb3f5a8a41df2b94b1d', 'Fiqih', 'Pasuruan', 2),
(5, 'agus1994', '926d25da04429a0cf2e8113409d3fb4caa11f132', 'Nur Achmad Agus Ismail', 'Mojokerto', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `p_category`
--
ALTER TABLE `p_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `p_unit`
--
ALTER TABLE `p_unit`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `p_category`
--
ALTER TABLE `p_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `p_unit`
--
ALTER TABLE `p_unit`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
