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
(10, '', 7896541330, '9353597075', 'this@this.com', 'uytrewasdxfcgvhbjnm,', 'jgfdssdfcgvbn', 78945, 'poiuytrewqasdxcvbnm'),
(11, '', 789462, '9353597075', 'email@gmail.com', 'guguwyedkh,', 'education', 9898765, 'qshhufg'),
(13, '', 7541147, '9632117873', 'email@gmail.com', 'guguwyedkh,', 'education', 8965, 'qshhufg'),
(15, '', 789632145, '789651334', 'email@gmail.com', 'hguyduy,', 'education', 100000, 'qshhufg'),
(17, '', 9999999999, '9353597075', 'email@gmail.com', 'mangalore,', 'education', 100000, 'i want to study'),
(20, '', 86521, '89654321', 'email@gmail.com', 'mangalore,', 'education', 4512, 'i want to study'),
(22, '', 7896541230, '9353597075', 'apekshapai18@gmail.com', 'Bhatkal,', 'education', 100000, 'i want to study'),
(25, '', 789654136, '9353597075', 'email@gmail.com', 'mangalore,', 'education', 789654, ''),
(27, '', 8645312, '562', 'email@gmail.com', 'mangalore,', 'education', 8452, 'i want to study'),
(29, '', 65645656, '65656', 'dfdsfs@dgf', 'dasdada,', 'xczxc', 64894, 'sfsdf'),
(32, '', 645132, '58975', 'email@gmail.com', 'Bhatkal,', 'education', 8, ''),
(33, '', 87845154, '89765423', 'apekshapai18@gmail.com', 'Bhatkal,', 'education', 7892, 'iutrdx'),
(34, '', 123654789, '7896541230', 'vaishemail@gmail.com', 'mangalore,', 'foreign education', 2500000, 'i want to study'),
(36, '', 1234, '987653456', 'apekshapai18@gmail.com', 'mangalore,', 'foreign education', 23000000, 'sfsdf'),
(38, '', 12334, '908765234', 'email@gmail.com', 'mangalore,', 'education', 1234456, 'sfsdf'),
(39, '', 1236547, '123695874', 'dfdsfs@dgf', 'mangalore,', 'Agriculture', 76854, 'simply'),
(42, '', 0, '0', '', ',', 'Education', 0, ''),
(46, '', 7899654123012, '9353597075', 'email@gmail.com', 'Bhatkal,', 'Agriculture', 76854, 'bvxzdstyt'),
(48, '', 784125963214, '9359537075', 'apekshapai18@gmail.com', 'Bhatkal,', 'Gold', 100000, 'I WANT GOLD'),
(49, '', 741258963214, '9359537075', 'apekshapai18@gmail.com', 'Bhatkal,', 'Gold', 789654, 'i want gold'),
(50, 'apeksha', 123456789, '1234567890', 'apekshapai18@gmail.com', 'Bhatkal,', 'Agriculture', 76854, 'i want to grow grains');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`loan_id`),
  ADD UNIQUE KEY `number` (`number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
