-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2023 at 02:52 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `name` varchar(25) NOT NULL,
  `number` bigint(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `adhar` bigint(12) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `national` varchar(152) NOT NULL,
  `acc` varchar(25) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `branchcity` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`name`, `number`, `email`, `address`, `adhar`, `gender`, `national`, `acc`, `branch`, `branchcity`) VALUES
('apeksha', 1233584656, 'apekshapai18@gmail.com', 'South Korea', 74651324589, 'female', 'Indian', 'savings', 'Venkatapura', 'bhatkal'),
('apeksha', 7233584656, 'apekshapai18@gmail.com', 'South Korea', 74651324589, 'female', 'Indian', 'savings', 'Venkatapura', 'bhatkal'),
('ADITI BHOVI', 7412587417, 'ADITI@GMAIL.COM', 'KAIGA', 123965874125, 'FEMALE', 'INDIAN', 'SAVINGS', 'KAIGA', 'KARWAR'),
('Neha', 7412589630, 'email@gmail.com', 'South Korea', 369852147789, 'female', 'Indian', 'savings', 'Venkatapura', 'bhatkal');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch` varchar(30) NOT NULL,
  `branchcity` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch`, `branchcity`) VALUES
('KAIGA', 'KARWAR'),
('Venkatapura', 'bhatkal');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerid` bigint(11) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerid`, `password`) VALUES
(11, 'vaish'),
(12, 'vaish'),
(20, 'vaish'),
(30, '1234'),
(50, 'adi'),
(78, 'vaish'),
(100, 'appy'),
(101, '123456'),
(102, '1234'),
(110, 'vaish'),
(111, '1234'),
(115, '1234'),
(117, '1234'),
(200, '200'),
(456, '1234'),
(500, '500'),
(600, '500'),
(987, '1234'),
(1321, '1234'),
(4567, ''),
(7894, '1234'),
(7895, '1234'),
(10000, '1235'),
(12345, '1234');

-- --------------------------------------------------------

--
-- Table structure for table `customerlog`
--

CREATE TABLE `customerlog` (
  `sno` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `action` varchar(20) NOT NULL,
  `cdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerlog`
--

INSERT INTO `customerlog` (`sno`, `cid`, `action`, `cdate`) VALUES
(1, 555, 'inserted', '2023-01-09 18:45:44'),
(2, 666, 'inserted', '2023-01-09 18:46:23'),
(3, 101, 'inserted', '2023-01-12 10:09:46'),
(4, 102, 'inserted', '2023-01-12 10:10:01'),
(5, 117, 'inserted', '2023-01-12 10:58:37'),
(6, 115, 'inserted', '2023-01-12 11:03:52'),
(7, 123, 'inserted', '2023-01-12 11:22:15'),
(8, 7894, 'inserted', '2023-01-12 11:26:27'),
(9, 7895, 'inserted', '2023-01-12 11:51:49'),
(10, 11, 'inserted', '2023-01-12 21:53:13'),
(11, 110, 'inserted', '2023-01-12 21:53:23'),
(12, 111, 'inserted', '2023-01-12 22:05:12'),
(13, 987, 'inserted', '2023-01-12 22:53:37'),
(14, 456, 'inserted', '2023-01-12 23:20:29'),
(15, 4567, 'inserted', '2023-01-12 23:20:39'),
(16, 10000, 'inserted', '2023-01-12 23:21:30'),
(17, 12345, 'inserted', '2023-01-14 11:56:12'),
(18, 1321, 'inserted', '2023-01-15 12:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `customerlogin`
--

CREATE TABLE `customerlogin` (
  `sno` int(11) NOT NULL,
  `customerid` int(3) NOT NULL,
  `password` varchar(15) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerlogin`
--

INSERT INTO `customerlogin` (`sno`, `customerid`, `password`, `dt`) VALUES
(1, 1234, '1234', '2023-01-01 12:34:29'),
(2, 11, 'vaish', '2023-01-02 19:53:18'),
(3, 12, 'vaish@123', '2023-01-02 19:53:53'),
(4, 12, 'apekapek', '2023-01-02 19:58:57'),
(5, 1234, '1234', '2023-01-02 20:02:54'),
(6, 1234, '7894', '2023-01-02 20:32:52'),
(7, 12, 'vaish', '2023-01-02 20:33:42'),
(8, 11, 'vaish', '2023-01-02 21:22:44'),
(9, 0, '', '2023-01-02 21:31:11'),
(10, 1234, '1234', '2023-01-02 21:35:08'),
(26, 20, 'vaish', '2023-01-04 21:11:48'),
(27, 20, 'vaish', '2023-01-04 21:12:41'),
(28, 1130, 'vaish', '2023-01-04 21:12:49'),
(29, 789, '741', '2023-01-04 22:15:39'),
(30, 500, '500', '2023-01-04 22:20:34'),
(31, 500, '500', '2023-01-04 22:25:34'),
(32, 600, '500', '2023-01-04 22:25:43'),
(33, 78, 'vaish', '2023-01-05 10:04:42'),
(34, 741, 'vaish', '2023-01-05 10:06:32'),
(35, 101, '123456', '2023-01-05 11:40:59'),
(36, 999, 'vaish', '2023-01-05 11:50:56'),
(37, 700, '7412', '2023-01-07 23:09:39'),
(38, 700, 'vaish', '2023-01-07 23:13:10'),
(39, 701, '1234', '2023-01-07 23:16:40'),
(42, 456, '1234', '2023-01-09 16:25:22'),
(43, 555, '1234', '2023-01-09 18:45:44'),
(44, 666, '1234', '2023-01-09 18:46:23'),
(45, 101, '1234', '2023-01-12 10:09:46'),
(46, 102, '1234', '2023-01-12 10:10:01'),
(47, 117, '1234', '2023-01-12 10:58:37'),
(48, 115, '1234', '2023-01-12 11:03:52'),
(49, 123, '1234', '2023-01-12 11:22:15'),
(50, 7894, '1234', '2023-01-12 11:26:27'),
(51, 7895, '1234', '2023-01-12 11:51:49'),
(52, 11, 'vaish', '2023-01-12 21:53:13'),
(53, 110, 'vaish', '2023-01-12 21:53:23'),
(54, 111, '1234', '2023-01-12 22:05:12'),
(55, 987, '1234', '2023-01-12 22:53:37'),
(56, 456, '1234', '2023-01-12 23:20:29'),
(57, 4567, '', '2023-01-12 23:20:39'),
(58, 10000, '1235', '2023-01-12 23:21:30'),
(59, 12345, '1234', '2023-01-14 11:56:12'),
(60, 1321, '1234', '2023-01-15 12:49:50');

--
-- Triggers `customerlogin`
--
DELIMITER $$
CREATE TRIGGER `insertlog` AFTER INSERT ON `customerlogin` FOR EACH ROW insert into customerlog values(null,NEW.customerid,'inserted',NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `loan_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` bigint(10) NOT NULL,
  `pnum` decimal(10,0) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `reason` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`loan_id`, `name`, `number`, `pnum`, `email`, `address`, `type`, `amount`, `reason`) VALUES
(50, 'apeksha', 123456789, '1234567890', 'apekshapai18@gmail.com', 'Bhatkal,', 'Agriculture', 76854, 'i want to grow grains');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `managerid` int(11) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`managerid`, `password`) VALUES
(1234, 1234);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`number`,`branch`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `customerlog`
--
ALTER TABLE `customerlog`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `customerlogin`
--
ALTER TABLE `customerlogin`
  ADD PRIMARY KEY (`sno`,`customerid`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`loan_id`),
  ADD UNIQUE KEY `number` (`number`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`managerid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customerlog`
--
ALTER TABLE `customerlog`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `customerlogin`
--
ALTER TABLE `customerlogin`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
