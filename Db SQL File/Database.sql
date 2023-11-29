-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 04, 2022 at 08:29 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vaccine`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('yash', 'yash'),
('mahek', 'mahek'),
('drashti', 'drashti');

-- --------------------------------------------------------

--
-- Table structure for table `ragistration`
--

CREATE TABLE `ragistration` (
  `sn` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(5) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `aadhar` varchar(12) NOT NULL,
  `city` varchar(120) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `date` date NOT NULL,
  `timeslot` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ragistration`
--

INSERT INTO `ragistration` (`sn`, `name`, `age`, `contact`, `aadhar`, `city`, `email`, `gender`, `date`, `timeslot`, `status`) VALUES
(9, 'yash', 19, '9558619062', '09998', 'upleta', 'yash.murani0@gmail.com', 'male', '2022-03-01', '03pm:07pm', '0'),
(11136, 'yash', 12, '1212', '1212121', 'upleta', 'yash.murani0@gmail.com', 'male', '2022-03-01', '', '0'),
(11137, 'Yash Patel', 3, '09558619062', '45', 'upleta : Govtschool', 'YASH.MURANI0@GMAIL.COM', 'male', '2022-03-17', '01pm : 03pm', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ragistration_2`
--

CREATE TABLE `ragistration_2` (
  `sn` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(3) NOT NULL,
  `contact` int(12) NOT NULL,
  `aadhar` int(12) NOT NULL,
  `city` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ragistration_2`
--

INSERT INTO `ragistration_2` (`sn`, `name`, `age`, `contact`, `aadhar`, `city`, `email`, `gender`, `status`) VALUES
(1, 'Yash Patel', 4, 955861906, 45, 'upleta : Govtschool', 'YASH.MURANI0@GMAIL.COM', 'Male', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine`
--

CREATE TABLE `vaccine` (
  `sno` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(5) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `aadhar` varchar(12) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vaccine`
--

INSERT INTO `vaccine` (`sno`, `name`, `age`, `mobile`, `aadhar`, `password`) VALUES
(82, 'yash', 17, '9558619062', '121212121212', 'yash');

-- --------------------------------------------------------

--
-- Table structure for table `zipcode`
--

CREATE TABLE `zipcode` (
  `pin` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zipcode`
--

INSERT INTO `zipcode` (`pin`) VALUES
(360001),
(360410),
(360490);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ragistration`
--
ALTER TABLE `ragistration`
  ADD PRIMARY KEY (`sn`),
  ADD UNIQUE KEY `aadhar` (`aadhar`);

--
-- Indexes for table `ragistration_2`
--
ALTER TABLE `ragistration_2`
  ADD PRIMARY KEY (`sn`),
  ADD UNIQUE KEY `aadhar` (`aadhar`);

--
-- Indexes for table `vaccine`
--
ALTER TABLE `vaccine`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `aadhar` (`aadhar`);

--
-- Indexes for table `zipcode`
--
ALTER TABLE `zipcode`
  ADD PRIMARY KEY (`pin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ragistration`
--
ALTER TABLE `ragistration`
  MODIFY `sn` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11138;

--
-- AUTO_INCREMENT for table `ragistration_2`
--
ALTER TABLE `ragistration_2`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vaccine`
--
ALTER TABLE `vaccine`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
