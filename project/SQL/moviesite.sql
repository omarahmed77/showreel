-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2018 at 08:17 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviesite`
--
CREATE DATABASE IF NOT EXISTS `moviesite` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `moviesite`;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE IF NOT EXISTS `bookings` (
  `booking_id` int(5) NOT NULL,
  `email_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `show_id` int(5) NOT NULL,
  `tickets` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `email_id` (`email_id`),
  KEY `show_id` (`show_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `city` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`city`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `email_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cust_name` int(50) NOT NULL,
  `password` int(40) NOT NULL,
  `phone` int(10) NOT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `movie_id` int(5) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `genre` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rating` decimal(3,1) NOT NULL,
  `description` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cast` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `director` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `poster_loc` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE IF NOT EXISTS `shows` (
  `show_id` int(5) NOT NULL AUTO_INCREMENT,
  `theatre_id` int(5) NOT NULL,
  `movie_id` int(5) NOT NULL,
  `date` date NOT NULL,
  `timing` time NOT NULL,
  PRIMARY KEY (`show_id`),
  KEY `theatre_id` (`theatre_id`),
  KEY `movie_id` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `theatres`
--

CREATE TABLE IF NOT EXISTS `theatres` (
  `theatre_id` int(5) NOT NULL AUTO_INCREMENT,
  `theatre_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`theatre_id`),
  KEY `city` (`city`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `email_id_fk` FOREIGN KEY (`email_id`) REFERENCES `customers` (`email_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `show_id_fk` FOREIGN KEY (`show_id`) REFERENCES `shows` (`show_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `shows`
--
ALTER TABLE `shows`
  ADD CONSTRAINT `movie_id_fk` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `theatre_id_fk` FOREIGN KEY (`theatre_id`) REFERENCES `theatres` (`theatre_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `theatres`
--
ALTER TABLE `theatres`
  ADD CONSTRAINT `city_fk` FOREIGN KEY (`city`) REFERENCES `cities` (`city`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
