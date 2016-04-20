-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 20, 2016 at 04:43 PM
-- Server version: 5.5.47-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE IF NOT EXISTS `actor` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FNAME` varchar(25) NOT NULL,
  `LNAME` varchar(25) NOT NULL,
  `GENDER` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`ID`, `FNAME`, `LNAME`, `GENDER`) VALUES
(1, 'Chris', 'Hemsworth', 'm'),
(2, 'Charlize', 'Theron', 'f'),
(3, 'Jessica', 'Chastain', 'f'),
(4, 'Michael', 'Shannon', 'm'),
(5, 'Kevin', 'Spacey', 'm'),
(6, 'Alex', 'Pettyfer', 'm'),
(7, 'Tom', 'Hanks', 'm'),
(8, 'Alexander', 'Black', 'm'),
(9, 'Sarita', 'Choudhury', 'f'),
(10, 'Eric', 'Roberts', 'm'),
(11, 'Kevin', 'Pollak', 'm'),
(12, 'Aislinn', 'Derbez', 'f'),
(13, 'Susan', 'Sarandon', 'f'),
(14, 'Rose', 'Byrne', 'f'),
(15, 'J.K.', 'Simmons', 'm'),
(16, 'Melissa', 'McCarthy', 'f'),
(17, 'Kristen', 'Bell', 'f'),
(18, 'Peter', 'Dinklage', 'm'),
(19, 'Ben', 'Affleck', 'm'),
(20, 'Henry', 'Cavill', 'm'),
(21, 'Ginnifer', 'Goodwin', 'm'),
(22, 'Jason', 'Bateman', 'm'),
(23, 'Jenny', 'Slate', 'f'),
(24, 'Idris', 'Elba', 'm'),
(25, 'Bonnie', 'Hunt', 'f');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(5) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(25) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `adminname`, `email`, `password`) VALUES
(1, 'stud', 'studadmin@gmail.com', 'f4c46b2431cac848b28cc71e5903c358');

-- --------------------------------------------------------

--
-- Table structure for table `casts`
--

CREATE TABLE IF NOT EXISTS `casts` (
  `pid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `casts`
--

INSERT INTO `casts` (`pid`, `mid`, `role`) VALUES
(1, 1, 'The Huntsman'),
(2, 1, 'Ravenna'),
(3, 1, 'Sara'),
(4, 2, 'Elvis Presley'),
(5, 2, 'Richard Nixon'),
(6, 2, 'Jerry Schilling'),
(7, 3, 'Alan'),
(8, 3, 'Yousef'),
(9, 3, 'Zahra'),
(10, 4, 'Dalton'),
(11, 4, 'Tex The Banker'),
(12, 4, 'María'),
(13, 5, 'Marnie'),
(14, 5, 'Lori'),
(15, 5, 'Zipper'),
(16, 6, 'Michelle Darnell'),
(17, 6, 'Claire'),
(18, 6, 'Renault'),
(19, 7, 'Bruce Wayne / Batman'),
(20, 7, 'Clark Kent / Superman'),
(21, 8, 'Judy Hopps'),
(22, 9, 'Nick Wilde'),
(23, 9, 'Bellwether'),
(24, 10, 'Chief Bogo'),
(25, 10, 'Bonnie Hopps');

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE IF NOT EXISTS `directors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FNAME` varchar(25) NOT NULL,
  `LNAME` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`id`, `FNAME`, `LNAME`) VALUES
(1, 'Cedric', 'Nicolas-Troyan'),
(2, 'Liza', 'Johnson'),
(3, 'Tom', 'Tykwer'),
(4, 'Matteo', 'Garrone'),
(5, 'Enrique', 'Begne'),
(6, 'Lorene', 'Scafaria'),
(7, 'Ben', 'Falcone'),
(8, 'Zack', 'Snyder'),
(9, 'Byron', 'Howard'),
(10, 'Rich', 'Moore'),
(11, 'Kirk', 'Jones');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE IF NOT EXISTS `genre` (
  `mid` int(10) NOT NULL,
  `genre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`mid`, `genre`) VALUES
(1, 'Action'),
(1, 'Adventure'),
(1, 'Drama'),
(1, 'Fantasy'),
(2, 'Comedy'),
(2, 'History'),
(3, 'Drama'),
(4, 'Fantasy'),
(4, 'Horror'),
(4, 'Romance'),
(5, 'Action'),
(5, 'Comedy'),
(6, 'Comedy'),
(6, 'Drama'),
(7, 'Comedy'),
(8, 'Action'),
(8, 'Adventure'),
(8, 'Fantasy'),
(8, 'Sci-Fi'),
(9, 'Animation'),
(9, 'Action'),
(9, 'Adventure'),
(9, 'Comedy'),
(9, 'Crime'),
(9, 'Family'),
(10, 'Comedy'),
(10, 'Romance');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE IF NOT EXISTS `movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(25) NOT NULL,
  `YEAR` date NOT NULL,
  `description` varchar(200) NOT NULL DEFAULT 'This is a movie description',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `NAME`, `YEAR`, `description`) VALUES
(1, 'The Huntsman: Winter''s Wa', '2016-04-22', 'This is a movie description'),
(2, 'Elvis & Nixon', '2016-04-22', 'This is a movie description'),
(3, 'A Hologram for the King', '2016-04-22', 'This is a movie description'),
(4, 'Tale of Tales', '2016-04-22', 'This is a movie description'),
(5, 'Compadres', '2016-04-22', 'This is a movie description'),
(6, 'The Meddler', '2016-04-22', 'This is a movie description'),
(7, 'The Boss', '2016-04-08', 'This is a movie description'),
(8, 'Batman v Superman: Dawn o', '2016-04-25', 'This is a movie description'),
(9, 'Zootopia (2016)', '2016-04-04', 'This is a movie description'),
(10, 'My Big Fat Greek Wedding ', '2016-04-25', 'This is a movie description');

-- --------------------------------------------------------

--
-- Table structure for table `moviedirectors`
--

CREATE TABLE IF NOT EXISTS `moviedirectors` (
  `did` int(10) NOT NULL,
  `mid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moviedirectors`
--

INSERT INTO `moviedirectors` (`did`, `mid`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 9),
(11, 10);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE IF NOT EXISTS `ratings` (
  `mid` int(10) NOT NULL,
  `userid` int(25) NOT NULL,
  `rating` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userprofile`
--

CREATE TABLE IF NOT EXISTS `userprofile` (
  `userid` int(10) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `age` int(3) NOT NULL,
  `country` varchar(25) NOT NULL,
  `registered` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(8, 'hemu', 'hemu@gmail.com', '2f136c631ad82d127490bc97a6244327'),
(7, 'manoj', 'manojdevender@gmail.com', 'f0064aa2614c197fe192810ab40b2930'),
(6, 'bharath', 'bharath0045@gmail.com', '7616b81196ee6fe328497da3f1d9912d'),
(9, 'hemanth', 'kota@gmail.com', '31d9bb37999652d494ba78feb642a73f');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
