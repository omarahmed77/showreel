-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2018 at 02:46 PM
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
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `show_id` int(5) NOT NULL,
  `tickets` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `email_id` (`username`),
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

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city`) VALUES
('Bengaluru'),
('Hyderabad'),
('Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` int(10) NOT NULL,
  PRIMARY KEY (`username`)
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
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cast` varchar(400) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `director` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `poster_loc` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40013 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `movie_name`, `language`, `genre`, `rating`, `description`, `cast`, `director`, `poster_loc`) VALUES
(10000, 'Ready Player One', 'English', 'Action', '7.9', 'In the year 2045, people can escape their harsh reality in the OASIS, an immersive virtual world where you can go anywhere, do anything, be anyone-the only limits are your own imagination. OASIS creator James Halliday left his immense fortune and control of the Oasis to the winner of a contest designed to find a worthy heir. When unlikely hero Wade Watts conquers the first challenge of the reality-bending treasure hunt, he and his friends-known as the High Five-are hurled into a fantastical universe of discovery and danger to save the OASIS and their world.', 'Tye Sheridan, Olivia Cooke, Ben Mendelsohn, Lena Waithe, Simon Pegg, Hannah John-Kamen and Mark Rylance', 'Steven Spielberg', './images/movies/english/readyplayerone/rpo1.jpg'),
(10001, 'Rampage', 'English', 'Action', '6.5', 'Primatologist Davis Okoye (Johnson), a man who keeps people at a distance, shares an unshakable bond with George, the extraordinarily intelligent, silverback gorilla who has been in his care since birth. But a rogue genetic experiment gone awry mutates this gentle ape into a raging creature of enormous size. To make matters worse, it\'s soon discovered there are other similarly altered animals. As these newly created alpha predators tear across North America, destroying everything in their path, Okoye teams with a discredited genetic engineer to secure an antidote, fighting his way through an ever-changing battlefield, not only to halt a global catastrophe but to save the fearsome creature that was once his friend.', 'Dwayne Johnson, Naomie Harris, Malin Åkerman, Jake Lacy, Joe Manganiello, and Jeffrey Dean Morgan', 'Brad Peyton', './images/movies/english/rampage/rmp1.jpg'),
(10002, 'Avengers: Infinity War', 'English', 'Action, Sci-Fi', '0.0', 'An unprecedented cinematic journey ten years in the making and spanning the entire Marvel Cinematic Universe, Marvel Studios\' \"Avengers: Infinity War\" brings to the screen the ultimate, deadliest showdown of all time. The Avengers and their Super Hero allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.', ' Robert Downey Jr., Chris Hemsworth, Mark Ruffalo, Chris Evans, Scarlett Johansson, Benedict Cumberbatch, Don Cheadle, Tom Holland, Chadwick Boseman, Paul Bettany, Elizabeth Olsen, Anthony Mackie, Sebastian Stan, Danai Gurira, Letitia Wright, Dave Bautista, Zoe Saldana, Josh Brolin, and Chris Pratt', ' Anthony Russo, Joe Russo', './images/movies/english/avengers4/avg1.jpg'),
(10003, 'Solo: A Star Wars Story', 'English', 'Action, Drama', '0.0', 'Board the Millennium Falcon and journey to a galaxy far, far away in Solo: A Star Wars Story, an all-new adventure with the most beloved scoundrel in the galaxy. Through a series of daring escapades deep within a dark and dangerous criminal underworld, Han Solo meets his mighty future copilot Chewbacca and encounters the notorious gambler Lando Calrissian, in a journey that will set the course of one of the Star Wars saga\'s most unlikely heroes.', 'Alden Ehrenreich, Woody Harrelson, Emilia Clarke, Donald Glover, Thandie Newton, Phoebe Waller-Bridge, Joonas Suotamo, and Paul Bettany', 'Ron Howard', './images/movies/english/solo/solo1.jpg'),
(20110, 'Bharat Ane Nenu', 'Telugu', 'Drama, Thriller', '0.0', 'To make good on a promise he made to his mother, a university graduate returns to India and becomes disillusioned by the government corruption he encounters.', 'Mahesh Babu, Kiara Advani, Prakash Raj, R. Sarathkumar, Rama Prabha and Devara', 'Koratala Siva', './images/movies/telugu/ban/ban1.jpg'),
(20112, 'Rangasthalam', 'Telugu', 'Action, Drama', '9.4', 'Chitti Babu (Ram Charan) who is deaf and runs a motor for his livelihood becomes the trusted person to powerful landlords fighting for supremacy in village politics and handles the situation when his brother files nomination against these landlords. ', 'Ram Charan, Samantha Akkineni, Aadhi Pinisetty, Jagapati Babu, Prakash Raj, Naresh and Anasuya', 'Sukumar', './images/movies/telugu/rst/rst1.jp'),
(20121, 'Chal Mohan Ranga', 'Telugu', 'Romantic Comedy', '6.2', 'Mohan Ranga and Megha in the US during the rainy season, fall in love during the winter and go their separate ways during the summer. While Mohan Ranga is reeling from the breakup, Megha is still thinking if breaking up was the right thing to do and is looking for signs that might show her the way. Does she find a sign and more importantly, do they end up together? ', 'Nithiin, Megha Akash, Madhunandan, Rao Ramesh, Naresh and Lissy', 'Krishna Chaitanya', './images/movies/telugu/cmr/cmr1.jpg'),
(20124, 'Krishnarjuna Yudham', 'Telugu', 'Action, Comedy', '6.3', 'Krishna and Arjun are both playboys, hailing from different parts of the world. While Krishna woos the Indian village belles, Arjun is a Prague based rockstar and heartthrob of Indian origin. Things change suddenly when Krishna falls head-over-heels for a girl in his hometown and Arjun falls for a girl in Prague. But several difficulties hound the love birds. One fine day, Krishna and Arjun come face to face and find out that they\'re lookalikes. Also, when Krishna and Arjun get together they are ready to wage wars for their loved ones. ', ' Nani, Anupama Parameswaran, Rukshar Dhillon, Brahmaji and Nagineedu', 'Merlapaka Gandhi', './images/movies/telugu/kay/kay1.jpg'),
(30011, 'Baaghi 2', 'Hindi', 'Action, Thriller', '5.4', 'A battle-hardened army officer goes in search of his ex-lover\'s child who is mysteriously kidnapped. Neha reaches out to the only person who can help her with her plight, Ronnie. He goes deep into the underbelly of Goa, facing off against drug lords, menacing Russian henchmen, and blood thirsty animals. Daring stunts, chase sequences, air strikes, bomb blasts and other large-scale action sequences will be done with a bona-fide, larger than life approach, truly making it a spectacle. ', 'Tiger Shroff, Disha Patani, Prateik Babbar, Manoj Bajpayee, Darshan Kumar and Randeep Hooda', 'Ahmed Khan', './images/movies/hindi/bg2/bg21.jpg'),
(30101, 'Blackmail', 'Hindi', 'Drama, Thriller', '7.3', 'Dev, a toilet paper salesman, in an attempt to spice up his rather monotonous and boring married life, returns home early one day to only find his wife in bed with her lover, Ranjit. Perplexed, the man decides to do something unusual; he starts blackmailing Ranjit for money, leading to a series of outrageous yet hilarious events. ', 'Irrfan Khan, Kirti Kulhari, Divya Dutta, Arunoday Singh and Omi Vaidya', 'Abhinay Deo', './images/movies/hindi/bml/bml1.png'),
(30111, 'October', 'Hindi', 'Drama, Romance', '8.5', 'Dan (Varun DHawan) is living the life of any carefree 21 year old, revolving around a bunch of friends and fellow hotel interns who feed off each other\'s everyday moments, their ups and downs. Shiuli (Banita Sandhu) is one such intern at the same hotel, who at times is at a receiving end of Dan\'s audaciousness. Life goes on until a sudden turn of events smashes Dan and Shiuli\'s lives together, into a bond that\'s unlike any 21 year olds. The emotional connection between them goes through a metamorphoses that brings out a form of love that\'s unlike any other eventually leading to an internal awakening. October is not a Love Story, but rather a story about love.', 'Varun Dhawan, Banita Sandhu, Gitanjali Rao, Sahil Vedoliyaa and Ashish Ghosh ', 'Shoojit Sircar', './images/movies/hindi/oct/oct1.jpg'),
(40010, 'Gultoo', 'Kannada', 'Drama, Mystery', '8.7', 'Struggling to find a foot in the start-up scene, two aspiring entrepreneurs are entangled in a vicious loop of investigative trials following an unprecedented crime. What follows is an intriguing journey of the youngsters in their bid to wriggle out of the complexities and their quest to be successful entrepreneurs. Why were they framed? Who holds the strings? And more importantly, what is the outlandish crime that has wreaked havoc in the minds of the people? ', 'Naveen Shankar, Sonu Gowda, Rangayana Raghu, Avinash and Pawan Kumar', 'Janardhan Chikkanna', './images/movies/kannada/gultoo/gul1.jpg'),
(40011, 'Mercury', 'Kannada', 'Drama, Thriller', '6.8', 'Five long-time friends, all of whom are maimed as a result of Mercury poisoning, come together for their high school reunion. But a moment of mischief and misfortune during the after-party puts them on a one way road to hell. ', 'Prabhu Deva, Sananth Reddy, Remya Nambeesan, Deepak Paramesh, Shashank Purushotham, Anish Padmanabhan, Indhuja and Gajaraj', 'Karthik Subbaraj', './images/movies/kannada/mercury/mer1.jpg'),
(40012, 'Seizer', 'Kannada', 'Crime, Thriller', '8.2', 'Seizer (played by Chiranjeevi Sarja) and his hitman (played by V. Ravichandran) work as loan recovery agents in a private finance company. The main job of the two is to seize the vehicles from the defaulters, however, the hitman doesn\'t hesitate to use force or even kill if need be. During one of their vehicle seizing operations, they get involved in a scuffle with the antagonist (played by Prakash Raj) and a series of violent encounters ensue.', 'Chiranjeevi Sarja, V. Ravichandran, Parul Yadav, Prakash Raj, Nagineedu, Sadhu Kokila, Raviprakash, Avinash and Ramesh Bhat', 'Vinay Krishna', './images/movies/kannada/seizer/sez1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `screens`
--

CREATE TABLE IF NOT EXISTS `screens` (
  `screen_id` int(4) NOT NULL AUTO_INCREMENT,
  `screen_num` int(1) NOT NULL,
  `theatre_id` int(5) NOT NULL,
  PRIMARY KEY (`screen_id`),
  KEY `theatre_id` (`theatre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4906 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `screens`
--

INSERT INTO `screens` (`screen_id`, `screen_num`, `theatre_id`) VALUES
(3501, 1, 54635),
(3502, 2, 54635),
(4201, 1, 54542),
(4202, 2, 54542),
(4301, 1, 54543),
(4302, 2, 54543),
(4501, 1, 54545),
(4502, 2, 54545),
(4801, 1, 54548),
(4802, 2, 54548),
(4901, 1, 54549),
(4902, 2, 54549);

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE IF NOT EXISTS `seats` (
  `show_id` int(5) NOT NULL,
  `seat_no` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `booked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`show_id`,`seat_no`),
  KEY `show_id` (`show_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`show_id`, `seat_no`, `booked`) VALUES
(76522, 'A1', 0),
(76522, 'A2', 0),
(76522, 'A3', 0),
(76522, 'A4', 0),
(76522, 'A5', 0),
(76522, 'A6', 0),
(76522, 'A7', 0),
(76522, 'A8', 0),
(76522, 'B1', 0),
(76522, 'B2', 0),
(76522, 'B3', 0),
(76522, 'B4', 0),
(76522, 'B5', 0),
(76522, 'B6', 0),
(76522, 'B7', 0),
(76522, 'B8', 0),
(76522, 'C1', 0),
(76522, 'C2', 0),
(76522, 'C3', 0),
(76522, 'C4', 0),
(76522, 'C5', 0),
(76522, 'C6', 0),
(76522, 'C7', 0),
(76522, 'C8', 0),
(76522, 'D1', 0),
(76522, 'D2', 0),
(76522, 'D3', 0),
(76522, 'D4', 0),
(76522, 'D5', 0),
(76522, 'D6', 0),
(76522, 'D7', 0),
(76522, 'D8', 0),
(76522, 'E1', 0),
(76522, 'E2', 0),
(76522, 'E3', 0),
(76522, 'E4', 0),
(76522, 'E5', 0),
(76522, 'E6', 0),
(76522, 'E7', 0),
(76522, 'E8', 0),
(76523, 'A1', 0),
(76523, 'A2', 0),
(76523, 'A3', 0),
(76523, 'A4', 0),
(76523, 'A5', 0),
(76523, 'A6', 0),
(76523, 'A7', 0),
(76523, 'A8', 0),
(76523, 'B1', 0),
(76523, 'B2', 0),
(76523, 'B3', 0),
(76523, 'B4', 0),
(76523, 'B5', 0),
(76523, 'B6', 0),
(76523, 'B7', 0),
(76523, 'B8', 0),
(76523, 'C1', 0),
(76523, 'C2', 0),
(76523, 'C3', 0),
(76523, 'C4', 0),
(76523, 'C5', 0),
(76523, 'C6', 0),
(76523, 'C7', 0),
(76523, 'C8', 0),
(76523, 'D1', 0),
(76523, 'D2', 0),
(76523, 'D3', 0),
(76523, 'D4', 0),
(76523, 'D5', 0),
(76523, 'D6', 0),
(76523, 'D7', 0),
(76523, 'D8', 0),
(76523, 'E1', 0),
(76523, 'E2', 0),
(76523, 'E3', 0),
(76523, 'E4', 0),
(76523, 'E5', 0),
(76523, 'E6', 0),
(76523, 'E7', 0),
(76523, 'E8', 0),
(76524, 'A1', 0),
(76524, 'A2', 0),
(76524, 'A3', 0),
(76524, 'A4', 0),
(76524, 'A5', 0),
(76524, 'A6', 0),
(76524, 'A7', 0),
(76524, 'A8', 0),
(76524, 'B1', 0),
(76524, 'B2', 0),
(76524, 'B3', 0),
(76524, 'B4', 0),
(76524, 'B5', 0),
(76524, 'B6', 0),
(76524, 'B7', 0),
(76524, 'B8', 0),
(76524, 'C1', 0),
(76524, 'C2', 0),
(76524, 'C3', 0),
(76524, 'C4', 0),
(76524, 'C5', 0),
(76524, 'C6', 0),
(76524, 'C7', 0),
(76524, 'C8', 0),
(76524, 'D1', 0),
(76524, 'D2', 0),
(76524, 'D3', 0),
(76524, 'D4', 0),
(76524, 'D5', 0),
(76524, 'D6', 0),
(76524, 'D7', 0),
(76524, 'D8', 0),
(76524, 'E1', 0),
(76524, 'E2', 0),
(76524, 'E3', 0),
(76524, 'E4', 0),
(76524, 'E5', 0),
(76524, 'E6', 0),
(76524, 'E7', 0),
(76524, 'E8', 0),
(76525, 'A1', 0),
(76525, 'A2', 0),
(76525, 'A3', 0),
(76525, 'A4', 0),
(76525, 'A5', 0),
(76525, 'A6', 0),
(76525, 'A7', 0),
(76525, 'A8', 0),
(76525, 'B1', 0),
(76525, 'B2', 0),
(76525, 'B3', 0),
(76525, 'B4', 0),
(76525, 'B5', 0),
(76525, 'B6', 0),
(76525, 'B7', 0),
(76525, 'B8', 0),
(76525, 'C1', 0),
(76525, 'C2', 0),
(76525, 'C3', 0),
(76525, 'C4', 0),
(76525, 'C5', 0),
(76525, 'C6', 0),
(76525, 'C7', 0),
(76525, 'C8', 0),
(76525, 'D1', 0),
(76525, 'D2', 0),
(76525, 'D3', 0),
(76525, 'D4', 0),
(76525, 'D5', 0),
(76525, 'D6', 0),
(76525, 'D7', 0),
(76525, 'D8', 0),
(76525, 'E1', 0),
(76525, 'E2', 0),
(76525, 'E3', 0),
(76525, 'E4', 0),
(76525, 'E5', 0),
(76525, 'E6', 0),
(76525, 'E7', 0),
(76525, 'E8', 0),
(76526, 'A1', 0),
(76526, 'A2', 0),
(76526, 'A3', 0),
(76526, 'A4', 0),
(76526, 'A5', 0),
(76526, 'A6', 0),
(76526, 'A7', 0),
(76526, 'A8', 0),
(76526, 'B1', 0),
(76526, 'B2', 0),
(76526, 'B3', 0),
(76526, 'B4', 0),
(76526, 'B5', 0),
(76526, 'B6', 0),
(76526, 'B7', 0),
(76526, 'B8', 0),
(76526, 'C1', 0),
(76526, 'C2', 0),
(76526, 'C3', 0),
(76526, 'C4', 0),
(76526, 'C5', 0),
(76526, 'C6', 0),
(76526, 'C7', 0),
(76526, 'C8', 0),
(76526, 'D1', 0),
(76526, 'D2', 0),
(76526, 'D3', 0),
(76526, 'D4', 0),
(76526, 'D5', 0),
(76526, 'D6', 0),
(76526, 'D7', 0),
(76526, 'D8', 0),
(76526, 'E1', 0),
(76526, 'E2', 0),
(76526, 'E3', 0),
(76526, 'E4', 0),
(76526, 'E5', 0),
(76526, 'E6', 0),
(76526, 'E7', 0),
(76526, 'E8', 0),
(76527, 'A1', 0),
(76527, 'A2', 0),
(76527, 'A3', 0),
(76527, 'A4', 0),
(76527, 'A5', 0),
(76527, 'A6', 0),
(76527, 'A7', 0),
(76527, 'A8', 0),
(76527, 'B1', 0),
(76527, 'B2', 0),
(76527, 'B3', 0),
(76527, 'B4', 0),
(76527, 'B5', 0),
(76527, 'B6', 0),
(76527, 'B7', 0),
(76527, 'B8', 0),
(76527, 'C1', 0),
(76527, 'C2', 0),
(76527, 'C3', 0),
(76527, 'C4', 0),
(76527, 'C5', 0),
(76527, 'C6', 0),
(76527, 'C7', 0),
(76527, 'C8', 0),
(76527, 'D1', 0),
(76527, 'D2', 0),
(76527, 'D3', 0),
(76527, 'D4', 0),
(76527, 'D5', 0),
(76527, 'D6', 0),
(76527, 'D7', 0),
(76527, 'D8', 0),
(76527, 'E1', 0),
(76527, 'E2', 0),
(76527, 'E3', 0),
(76527, 'E4', 0),
(76527, 'E5', 0),
(76527, 'E6', 0),
(76527, 'E7', 0),
(76527, 'E8', 0),
(76528, 'A1', 0),
(76528, 'A2', 0),
(76528, 'A3', 0),
(76528, 'A4', 0),
(76528, 'A5', 0),
(76528, 'A6', 0),
(76528, 'A7', 0),
(76528, 'A8', 0),
(76528, 'B1', 0),
(76528, 'B2', 0),
(76528, 'B3', 0),
(76528, 'B4', 0),
(76528, 'B5', 0),
(76528, 'B6', 0),
(76528, 'B7', 0),
(76528, 'B8', 0),
(76528, 'C1', 0),
(76528, 'C2', 0),
(76528, 'C3', 0),
(76528, 'C4', 0),
(76528, 'C5', 0),
(76528, 'C6', 0),
(76528, 'C7', 0),
(76528, 'C8', 0),
(76528, 'D1', 0),
(76528, 'D2', 0),
(76528, 'D3', 0),
(76528, 'D4', 0),
(76528, 'D5', 0),
(76528, 'D6', 0),
(76528, 'D7', 0),
(76528, 'D8', 0),
(76528, 'E1', 0),
(76528, 'E2', 0),
(76528, 'E3', 0),
(76528, 'E4', 0),
(76528, 'E5', 0),
(76528, 'E6', 0),
(76528, 'E7', 0),
(76528, 'E8', 0),
(76529, 'A1', 0),
(76529, 'A2', 0),
(76529, 'A3', 0),
(76529, 'A4', 0),
(76529, 'A5', 0),
(76529, 'A6', 0),
(76529, 'A7', 0),
(76529, 'A8', 0),
(76529, 'B1', 0),
(76529, 'B2', 0),
(76529, 'B3', 0),
(76529, 'B4', 0),
(76529, 'B5', 0),
(76529, 'B6', 0),
(76529, 'B7', 0),
(76529, 'B8', 0),
(76529, 'C1', 0),
(76529, 'C2', 0),
(76529, 'C3', 0),
(76529, 'C4', 0),
(76529, 'C5', 0),
(76529, 'C6', 0),
(76529, 'C7', 0),
(76529, 'C8', 0),
(76529, 'D1', 0),
(76529, 'D2', 0),
(76529, 'D3', 0),
(76529, 'D4', 0),
(76529, 'D5', 0),
(76529, 'D6', 0),
(76529, 'D7', 0),
(76529, 'D8', 0),
(76529, 'E1', 0),
(76529, 'E2', 0),
(76529, 'E3', 0),
(76529, 'E4', 0),
(76529, 'E5', 0),
(76529, 'E6', 0),
(76529, 'E7', 0),
(76529, 'E8', 0),
(76530, 'A1', 0),
(76530, 'A2', 0),
(76530, 'A3', 0),
(76530, 'A4', 0),
(76530, 'A5', 0),
(76530, 'A6', 0),
(76530, 'A7', 0),
(76530, 'A8', 0),
(76530, 'B1', 0),
(76530, 'B2', 0),
(76530, 'B3', 0),
(76530, 'B4', 0),
(76530, 'B5', 0),
(76530, 'B6', 0),
(76530, 'B7', 0),
(76530, 'B8', 0),
(76530, 'C1', 0),
(76530, 'C2', 0),
(76530, 'C3', 0),
(76530, 'C4', 0),
(76530, 'C5', 0),
(76530, 'C6', 0),
(76530, 'C7', 0),
(76530, 'C8', 0),
(76530, 'D1', 0),
(76530, 'D2', 0),
(76530, 'D3', 0),
(76530, 'D4', 0),
(76530, 'D5', 0),
(76530, 'D6', 0),
(76530, 'D7', 0),
(76530, 'D8', 0),
(76530, 'E1', 0),
(76530, 'E2', 0),
(76530, 'E3', 0),
(76530, 'E4', 0),
(76530, 'E5', 0),
(76530, 'E6', 0),
(76530, 'E7', 0),
(76530, 'E8', 0),
(76531, 'A1', 0),
(76531, 'A2', 0),
(76531, 'A3', 0),
(76531, 'A4', 0),
(76531, 'A5', 0),
(76531, 'A6', 0),
(76531, 'A7', 0),
(76531, 'A8', 0),
(76531, 'B1', 0),
(76531, 'B2', 0),
(76531, 'B3', 0),
(76531, 'B4', 0),
(76531, 'B5', 0),
(76531, 'B6', 0),
(76531, 'B7', 0),
(76531, 'B8', 0),
(76531, 'C1', 0),
(76531, 'C2', 0),
(76531, 'C3', 0),
(76531, 'C4', 0),
(76531, 'C5', 0),
(76531, 'C6', 0),
(76531, 'C7', 0),
(76531, 'C8', 0),
(76531, 'D1', 0),
(76531, 'D2', 0),
(76531, 'D3', 0),
(76531, 'D4', 0),
(76531, 'D5', 0),
(76531, 'D6', 0),
(76531, 'D7', 0),
(76531, 'D8', 0),
(76531, 'E1', 0),
(76531, 'E2', 0),
(76531, 'E3', 0),
(76531, 'E4', 0),
(76531, 'E5', 0),
(76531, 'E6', 0),
(76531, 'E7', 0),
(76531, 'E8', 0),
(76532, 'A1', 0),
(76532, 'A2', 0),
(76532, 'A3', 0),
(76532, 'A4', 0),
(76532, 'A5', 0),
(76532, 'A6', 0),
(76532, 'A7', 0),
(76532, 'A8', 0),
(76532, 'B1', 0),
(76532, 'B2', 0),
(76532, 'B3', 0),
(76532, 'B4', 0),
(76532, 'B5', 0),
(76532, 'B6', 0),
(76532, 'B7', 0),
(76532, 'B8', 0),
(76532, 'C1', 0),
(76532, 'C2', 0),
(76532, 'C3', 0),
(76532, 'C4', 0),
(76532, 'C5', 0),
(76532, 'C6', 0),
(76532, 'C7', 0),
(76532, 'C8', 0),
(76532, 'D1', 0),
(76532, 'D2', 0),
(76532, 'D3', 0),
(76532, 'D4', 0),
(76532, 'D5', 0),
(76532, 'D6', 0),
(76532, 'D7', 0),
(76532, 'D8', 0),
(76532, 'E1', 0),
(76532, 'E2', 0),
(76532, 'E3', 0),
(76532, 'E4', 0),
(76532, 'E5', 0),
(76532, 'E6', 0),
(76532, 'E7', 0),
(76532, 'E8', 0),
(76533, 'A1', 0),
(76533, 'A2', 0),
(76533, 'A3', 0),
(76533, 'A4', 0),
(76533, 'A5', 0),
(76533, 'A6', 0),
(76533, 'A7', 0),
(76533, 'A8', 0),
(76533, 'B1', 0),
(76533, 'B2', 0),
(76533, 'B3', 0),
(76533, 'B4', 0),
(76533, 'B5', 0),
(76533, 'B6', 0),
(76533, 'B7', 0),
(76533, 'B8', 0),
(76533, 'C1', 0),
(76533, 'C2', 0),
(76533, 'C3', 0),
(76533, 'C4', 0),
(76533, 'C5', 0),
(76533, 'C6', 0),
(76533, 'C7', 0),
(76533, 'C8', 0),
(76533, 'D1', 0),
(76533, 'D2', 0),
(76533, 'D3', 0),
(76533, 'D4', 0),
(76533, 'D5', 0),
(76533, 'D6', 0),
(76533, 'D7', 0),
(76533, 'D8', 0),
(76533, 'E1', 0),
(76533, 'E2', 0),
(76533, 'E3', 0),
(76533, 'E4', 0),
(76533, 'E5', 0),
(76533, 'E6', 0),
(76533, 'E7', 0),
(76533, 'E8', 0);

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE IF NOT EXISTS `shows` (
  `show_id` int(5) NOT NULL AUTO_INCREMENT,
  `screen_id` int(4) NOT NULL,
  `movie_id` int(5) NOT NULL,
  `date` date NOT NULL,
  `timing` time NOT NULL,
  PRIMARY KEY (`show_id`),
  KEY `movie_id` (`movie_id`),
  KEY `screen_id` (`screen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76534 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`show_id`, `screen_id`, `movie_id`, `date`, `timing`) VALUES
(76522, 4201, 20112, '2018-04-19', '13:30:00'),
(76523, 4201, 20112, '2018-04-19', '16:30:00'),
(76524, 4201, 20112, '2018-04-19', '19:30:00'),
(76525, 4201, 20112, '2018-04-19', '22:30:00'),
(76526, 4202, 30011, '2018-04-19', '13:30:00'),
(76527, 4202, 30011, '2018-04-19', '16:30:00'),
(76528, 4202, 30011, '2018-04-19', '19:30:00'),
(76529, 4202, 10000, '2018-04-19', '22:30:00'),
(76530, 4301, 20112, '2018-04-19', '14:00:00'),
(76531, 4301, 20112, '2018-04-19', '17:00:00'),
(76532, 4301, 20112, '2018-04-19', '20:00:00'),
(76533, 4301, 20112, '2018-04-19', '23:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=54723 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theatres`
--

INSERT INTO `theatres` (`theatre_id`, `theatre_name`, `location`, `city`) VALUES
(54542, 'PVR', 'Jubilee Hills', 'Hyderabad'),
(54543, 'Cinepolis', 'Kondapur', 'Hyderabad'),
(54545, 'PVR', 'Kothaguda', 'Hyderabad'),
(54548, 'Cinepolis', 'Kukatpally', 'Hyderabad'),
(54549, 'Asian', 'Banjara Hills', 'Hyderabad'),
(54635, 'INOX', 'Malleswaram', 'Bengaluru'),
(54640, 'Cinepolis', 'Hulimaavu', 'Bengaluru'),
(54642, 'PVR', 'Koramangla', 'Bengaluru'),
(54643, 'PVR IMAX', 'Mahadevpura', 'Bengaluru'),
(54710, 'Cinepolis', 'Magnet Mall, Bhandup (W)', 'Mumbai'),
(54711, 'Cinepolis', 'Viviana Mall, Thane', 'Mumbai'),
(54720, 'PVR ICON', 'Versova', 'Mumbai'),
(54722, 'PVR', 'Growel, Kandivali(E)', 'Mumbai');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `show_id_fk` FOREIGN KEY (`show_id`) REFERENCES `shows` (`show_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `username_fk` FOREIGN KEY (`username`) REFERENCES `customers` (`username`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `screens`
--
ALTER TABLE `screens`
  ADD CONSTRAINT `screens_ibfk_1` FOREIGN KEY (`theatre_id`) REFERENCES `theatres` (`theatre_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `shows` (`show_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shows`
--
ALTER TABLE `shows`
  ADD CONSTRAINT `movie_id_fk` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `shows_ibfk_1` FOREIGN KEY (`screen_id`) REFERENCES `screens` (`screen_id`) ON UPDATE CASCADE;

--
-- Constraints for table `theatres`
--
ALTER TABLE `theatres`
  ADD CONSTRAINT `city_fk` FOREIGN KEY (`city`) REFERENCES `cities` (`city`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
