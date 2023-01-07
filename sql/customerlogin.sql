-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2023 at 06:14 PM
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
-- Table structure for table `customerlogin`
--

CREATE TABLE `customerlogin` (
  `sno` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
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
(11, 25, '1234', '2023-01-03 10:55:27'),
(12, 25, 'vaish', '2023-01-03 11:06:20'),
(13, 25, 'vaish', '2023-01-03 12:48:00'),
(14, 30, '1234', '2023-01-03 12:53:59'),
(15, 30, '1234', '2023-01-03 17:14:17'),
(16, 11, 'vaish', '2023-01-03 17:14:30'),
(17, 11, 'vaish', '2023-01-03 17:16:37'),
(18, 30, '1234', '2023-01-03 17:16:42'),
(19, 11, 'vaish', '2023-01-03 17:16:59'),
(20, 12, 'vaish', '2023-01-03 17:17:13'),
(21, 50, 'adi', '2023-01-03 19:01:06'),
(22, 100, 'appy', '2023-01-04 02:32:16'),
(23, 100, '1236', '2023-01-04 02:33:38'),
(24, 100, '100', '2023-01-04 18:29:51'),
(25, 200, '200', '2023-01-04 18:30:24'),
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
(36, 999, 'vaish', '2023-01-05 11:50:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customerlogin`
--
ALTER TABLE `customerlogin`
  ADD PRIMARY KEY (`sno`,`customerid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customerlogin`
--
ALTER TABLE `customerlogin`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
