-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2020 at 07:19 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_email` varchar(255) NOT NULL,
  `c_balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`c_id`, `c_name`, `c_email`, `c_balance`) VALUES
(1, 'shilpa', 'vshilpa.2103@gmail.com', 5000),
(2, 'aarya', 'arya@gmail.com', 50000),
(3, 'sharu', 'sharu@gmail.com', 45000),
(4, 'abhi', 'abhi@gmail.com', 9000),
(5, 'dhakshu', 'dhakshu@gmail.com', 13000),
(6, 'navya', 'navya@gmail.com', 2000),
(7, 'anu', 'anu@gmail.com', 1800),
(8, 'Aarya naidu', 'naidu@gmail.com', 15000),
(9, 'vraj', 'raj@gmail.com', 10000),
(10, 'sangeetha', 'sangeetha@gmail.com', 19000);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_history`
--

CREATE TABLE `transfer_history` (
  `t_id` int(11) NOT NULL,
  `t_sender` varchar(255) NOT NULL,
  `t_receiver` varchar(255) NOT NULL,
  `t_amount` int(11) NOT NULL,
  `t_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transfer_history`
--

INSERT INTO `transfer_history` (`t_id`, `t_sender`, `t_receiver`, `t_amount`, `t_time`) VALUES
(1, 'arya', 'sharu', 8000, '2020-10-20 13:18:44'),
(2, 'anu', 'navya', 80, '2020-10-20 14:08:00'),
(3, 'navya', 'sharu', 12, '2020-10-20 14:17:07'),
(4, 'abhi', 'shilpa', 2000, '2020-10-20 14:27:06'),
(5, 'shilpa', 'anu', 3000, '2020-10-20 14:33:25'),
(15, 'dhakshu', 'anu', 2000, '2020-10-20 20:18:41'),
(16, 'anu', 'abhi', 5000, '2020-10-20 20:20:53'),
(17, 'abhi', 'arya', 3000, '2020-10-20 20:25:54'),
(18, 'arya', 'sharu', 8000, '2020-10-20 20:30:23'),
(19, 'shilpa', 'arya', 1200, '2020-10-20 20:31:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `c_name` (`c_name`),
  ADD UNIQUE KEY `c_email` (`c_email`);

--
-- Indexes for table `transfer_history`
--
ALTER TABLE `transfer_history`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_details`
--
ALTER TABLE `customer_details`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transfer_history`
--
ALTER TABLE `transfer_history`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
