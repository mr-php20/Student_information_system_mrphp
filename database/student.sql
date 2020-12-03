-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2020 at 09:12 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'avg.creations@gmail.com', 'Test@123', '2019-02-28 20:31:45', '2019-12-17');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `CGPA` float NOT NULL,
  `feespm` int(11) NOT NULL,
  `foodstatus` int(11) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `course` varchar(500) NOT NULL,
  `regno` int(11) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `onesem` float NOT NULL,
  `twosem` float NOT NULL,
  `threesem` float NOT NULL,
  `foursem` float NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresState` varchar(500) NOT NULL,
  `corresPincode` int(11) NOT NULL,
  `fivesem` float NOT NULL,
  `sixsem` float NOT NULL,
  `sevensem` float NOT NULL,
  `eightsem` float NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `CGPA`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `onesem`, `twosem`, `threesem`, `foursem`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `fivesem`, `sixsem`, `sevensem`, `eightsem`, `postingDate`, `updationDate`) VALUES
(7, 100, 8.02, 7000, 1, '2018-06-17', 40, 'Computer Science and Engineering', 1801011, 'User', '', '1', 'male', 9489434207, 'user1@gmail.com', 7.89, 8.2, 7.8, 8.1, 'Address, street, area, city', 'Trichy', 'Tamil Nadu', 620021, 0, 0, 0, 0, '2020-06-23 11:54:35', ''),
(8, 112, 8.2, 7000, 0, '2018-06-27', 40, 'Computer Science and Engineering', 1801005, 'User', '', '2', 'Female', 6369410274, 'user2@gmail.com', 7.9, 8.3, 8.4, 8.2, 'newaddress,street,area', 'Chennai', 'Tamil Nadu', 600001, 0, 0, 0, 0, '2020-06-26 16:31:08', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(7, 10, 'user1@gmail.com', 0x3a3a31, '', '', '2020-11-16 05:53:10'),
(8, 10, 'user1@gmail.com', 0x3a3a31, '', '', '2020-11-23 09:35:48'),
(9, 10, 'user1@gmail.com', 0x3a3a31, '', '', '2020-11-23 09:46:51'),
(10, 10, 'user1@gmail.com', 0x3a3a31, '', '', '2020-11-23 10:22:55'),
(11, 10, 'user1@gmail.com', 0x3a3a31, '', '', '2020-11-24 05:35:33'),
(12, 10, 'user1@gmail.com', 0x3a3a31, '', '', '2020-11-29 12:36:20'),
(13, 10, 'user1@gmail.com', 0x3a3a31, '', '', '2020-12-02 12:42:12'),
(14, 10, 'user1@gmail.com', 0x3a3a31, '', '', '2020-12-02 12:50:58'),
(15, 10, 'user1@gmail.com', 0x3a3a31, '', '', '2020-12-02 13:08:28'),
(16, 19, 'user2@gmail.com', 0x3a3a31, '', '', '2020-12-02 13:41:45'),
(17, 10, 'user1@gmail.com', 0x3a3a31, '', '', '2020-12-02 13:46:00'),
(18, 10, 'user1@gmail.com', 0x3a3a31, '', '', '2020-12-02 13:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(10, '1801011', 'User', '', '1', 'male', 9489434207, 'user1@gmail.com', 'Test@1', '2020-06-22 04:21:33', '02-12-2020 06:25:33', '22-06-2016 05:16:49'),
(19, '1801005', 'User', '', '2', 'female', 6369410274, 'user2@gmail.com', 'Test@2', '2020-06-26 16:33:36', '02-12-2020 07:12:20', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
