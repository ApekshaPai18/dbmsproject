-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2023 at 06:11 PM
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
('Neha', 7412589630, 'email@gmail.com', 'South Korea', 369852147789, 'female', 'Indian', 'savings', 'Venkatapura', 'bhatkal'),
('appy', 7794461236, 'email@gmail.com', 'Bhatkal', 789632145645, 'female', 'Indian', 'savings', 'udupi', 'bhatkal'),
('appy', 7894461236, 'email@gmail.com', 'Bhatkal', 789632145645, 'female', 'Indian', 'savings', 'udupi', 'bhatkal'),
('apeksha', 7894561231, 'apekshapai18@gmail.com', 'Bhatkal', 123654789321, 'female', 'Indian', 'savings', 've', 'bhatkal'),
('appy', 7894561233, 'email@gmail.com', 'Bhatkal', 789632145645, 'female', 'Indian', 'savings', 'Venkatapura', 'bhatkal'),
('appy', 7894561236, 'email@gmail.com', 'Bhatkal', 789632145645, 'female', 'Indian', 'savings', 'udupi', 'bhatkal'),
('apeksha', 7896541330, 'this@this.com', 'bhatkal', 78965412321, 'female', 'indian', 'savings', 'bhatkal', 'bhatkal'),
('apeksha', 9353597075, 'apekshapai18@gmail.com', 'mangalore', 789456123123, 'female', 'Indian', 'savings', 'Venkatapura', 'bhatkal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`number`,`branch`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
