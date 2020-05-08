-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 08, 2020 at 04:30 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `birthday` date NOT NULL,
  `Email` varchar(40) NOT NULL,
  `STUDENT_ID_NUMBER` varchar(8) NOT NULL,
  `PASSPORT_ID_NUMBER` varchar(10) NOT NULL,
  `Course` enum('fresh','soph','jun','sen') NOT NULL,
  `Mobile_Number` bigint(12) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `Address` varchar(30) NOT NULL,
  `City` varchar(30) NOT NULL,
  `Pin_Code` bigint(6) NOT NULL,
  `State` varchar(30) NOT NULL,
  `Country` varchar(12) NOT NULL,
  `Room` enum('RN1A','RN1B','RN2A','RN2B','RN3A','RN3B','RN4A','RN4B','RN5A','RN5B') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `First_Name`, `Last_Name`, `birthday`, `Email`, `STUDENT_ID_NUMBER`, `PASSPORT_ID_NUMBER`, `Course`, `Mobile_Number`, `gender`, `Address`, `City`, `Pin_Code`, `State`, `Country`, `Room`) VALUES
(1, 'Firdavs', 'Zikirov', '0000-00-00', 'firdavszikirov16@gmail.com', 'U1810041', 'Ab4742111', 'soph', 99893683333, 'm', 'ko;bol\'p;', 'Tashkent ', 234345, 'uzbek', 'Uzbekistan', 'RN1A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
