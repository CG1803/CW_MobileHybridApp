-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2019 at 02:43 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblevent`
--

CREATE TABLE `tblevent` (
  `evt_id` int(11) NOT NULL,
  `evt_title` text NOT NULL,
  `staff_id` int(11) NOT NULL,
  `evt_timestamp` datetime NOT NULL,
  `evt_address` varchar(200) NOT NULL,
  `evt_desc` text NOT NULL,
  `evt_image` TEXT,
  `evt_Lat` decimal(20,15) DEFAULT NULL,
  `evt_Lon` decimal(20,15) DEFAULT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblevent`
--

INSERT INTO `tblevent` (`evt_id`, `evt_title`, `staff_id`, `evt_timestamp`, `evt_address`, `evt_desc`, `evt_image`, `evt_Lat`, `evt_Lon`) VALUES
(1, 'MITIA SPORTS AND FUN DAY', 1, '2019-09-17 09:11:00', 'la route de Cascavelle', 'sportifs et moins sportifs et toute taille', 'http://localhost:8080/MobileHybrid/www/event/elevated.png', '-20.289730000000000', '57.414902000000000');

-- --------------------------------------------------------

--
-- Table structure for table `tblnews`
--

CREATE TABLE `tblnews` (
  `news_id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `std_id` varchar(200) DEFAULT NULL,
  `news_title` text NOT NULL,
  `news_timestamp` datetime NOT NULL,
  `news_desc` text NOT NULL,
  `news_image` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblnews`
--

INSERT INTO `tblnews` (`news_id`, `staff_id`, `std_id`, `news_title`, `news_timestamp`, `news_desc`, `news_image`) VALUES
(1, 1, NULL, 'Exam Entry Form', '2019-09-17 09:00:00', 'Deadline 17/10/2019', 'http://localhost:8080/HybridMobileApp/img/news/elevated.jpg'),
(2, 2, NULL, 'Student Election', '2019-10-07 09:10:00', 'Require Student ID', 'http://localhost:8080/HybridMobileApp/img/news/elevated1.jpg'),
(3, 3, NULL, 'Student Week', '2019-10-05 10:02:00', 'Fun Day', 'http://localhost:8080/HybridMobileApp/img/news/elevated2.jpg'),
(4, NULL, '1803_15000', 'Universade', '2019-09-28 11:12:00', 'Register and form your teams', 'http://localhost:8080/HybridMobileApp/img/news/elevated3.jpg'),
(5, 4, NULL, 'UTM Adventurer Club', '2019-09-25 11:30:00', 'Climbers join us', 'http://localhost:8080/HybridMobileApp/img/news/elevated4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `staff_id` int(11) NOT NULL,
  `staff_fname` text NOT NULL,
  `staff_lname` text NOT NULL,
  `staff_email` varchar(25) NOT NULL,
  `staff_phone` varchar(8) NOT NULL,
  `staff_pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`staff_id`, `staff_fname`, `staff_lname`, `staff_email`, `staff_phone`, `staff_pass`) VALUES
(1, 'Rolland', 'Jaylon', 'rolland@hotmail.com', '57483621', 1111),
(2, 'Didem', 'Avelina', 'didem@gmail.com', '54334971', 2222),
(3, ' Susanna', 'Desmond', 'desmond@live.com', '52937389', 3333),
(4, 'Sunan', 'Desmond', 'sunan@live.com', '52616587', 4444);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `std_id` varchar(200) NOT NULL,
  `std_Fname` text NOT NULL,
  `std_Lname` text NOT NULL,
  `std_pass` text NOT NULL,
  `std_Email` text, 
  `std_age` int(10) NOT NULL,
  `std_phone` int(10) NOT NULL,
  `std_address` varchar(200) NOT NULL,
  `std_cohort` text NOT NULL
  
  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`std_id`, `std_Fname`, `std_Lname`,`std_pass`, `std_Email`, `std_age`, `std_phone`, `std_address`, `std_cohort`) VALUES
('1803_15000', 'Rozanne', 'Cronus','1234', 'cro20@gmail.com', 20, 52129838, 'casernes', 'BSE18AFT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblevent`
--
ALTER TABLE `tblevent`
  ADD PRIMARY KEY (`evt_id`),
  ADD KEY `event_staff_id_fk` (`staff_id`);

--
-- Indexes for table `tblnews`
--
ALTER TABLE `tblnews`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `news_staff_id_fk` (`staff_id`),
  ADD KEY `news_std_id_fk` (`std_id`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `staff_email_uk` (`staff_email`),
  ADD UNIQUE KEY `staff_phone_uk` (`staff_phone`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`std_id`),
  ADD UNIQUE KEY `std_std_phone_uk` (`std_phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblevent`
--
ALTER TABLE `tblevent`
  MODIFY `evt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `tblnews`
--
ALTER TABLE `tblnews`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblevent`
--
ALTER TABLE `tblevent`
  ADD CONSTRAINT `event_staff_id_fk` FOREIGN KEY (`staff_id`) REFERENCES `tblstaff` (`staff_id`);

--
-- Constraints for table `tblnews`
--
ALTER TABLE `tblnews`
  ADD CONSTRAINT `news_staff_id_fk` FOREIGN KEY (`staff_id`) REFERENCES `tblstaff` (`staff_id`),
  ADD CONSTRAINT `news_std_id_fk` FOREIGN KEY (`std_id`) REFERENCES `tblstudent` (`std_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
