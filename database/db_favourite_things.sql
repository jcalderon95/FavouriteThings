-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 05, 2019 at 12:21 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favourite_things`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_items`
--

CREATE TABLE `tbl_items` (
  `ID` int(11) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Colour` varchar(80) NOT NULL,
  `Price` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_items`
--

INSERT INTO `tbl_items` (`ID`, `Name`, `Image`, `Description`, `Colour`, `Price`) VALUES
(1, 'Apple Airpods', 'airpods.png', 'Now with more talk time, voice-activated Siri access — and a new wireless charging case — AirPods deliver an unparalleled wireless headphone experience. Simply take them out and they’re ready to use with all your devices. Put them in your ears and they connect immediately, immersing you in rich, high-quality sound. Just like magic.', 'White', '$219.00'),
(2, 'MacBook Pro', 'macbook.png', 'MacBook Pro elevates the notebook to a whole new level of performance and portability. Wherever your ideas take you, you’ll get there faster than ever with high performance processors and memory, advanced graphics, blazing fast storage and more. Build code, run multiple virtual machines and see your work take shape — faster than ever before.', 'Space Grey', '$2,999.00'),
(3, 'Apple Watch', 'watch.png', 'An Apple Watch is a smartwatch manufactured by Apple Inc. It is designed to integrate various fitness tracking and health-related apps with the Apple operating system, iOS. Apple Watch is dependent on iPhone 5 and later models (iOS 8.2 and above) for many of its default functions as well as to access Apple products and services through Bluetooth and/or Wi-Fi.', 'Matte Black', '$529');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_items`
--
ALTER TABLE `tbl_items`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_items`
--
ALTER TABLE `tbl_items`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
