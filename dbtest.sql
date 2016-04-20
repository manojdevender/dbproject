-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1build0.15.04.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 20, 2016 at 02:47 PM
-- Server version: 5.6.28-0ubuntu0.15.04.1
-- PHP Version: 5.6.4-4ubuntu6.4

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
`ID` int(11) NOT NULL,
  `FNAME` varchar(25) NOT NULL,
  `LNAME` varchar(25) NOT NULL,
  `GENDER` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`admin_id` int(5) NOT NULL,
  `adminname` varchar(25) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE IF NOT EXISTS `directors` (
`id` int(11) NOT NULL,
  `FNAME` varchar(25) NOT NULL,
  `LNAME` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE IF NOT EXISTS `genre` (
  `mid` int(10) NOT NULL,
  `genre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE IF NOT EXISTS `movie` (
`id` int(11) NOT NULL,
  `NAME` varchar(25) NOT NULL,
  `YEAR` date NOT NULL,
  `description` varchar(200) NOT NULL DEFAULT 'This the default Description of the movie'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 12250),
(1, 31),
(2, 151323),
(2, 31),
(2, 1209773),
(2, 1249468),
(3, 246663),
(4, 34),
(5, 417523),
(7, 3869),
(8, 533912),
(9, 32),
(10, 475406),
(11, 85942),
(12, 548918),
(13, 33),
(14, 151450),
(15, 208717),
(15, 32),
(15, 601477),
(15, 602559),
(15, 604151),
(15, 604683),
(15, 606338),
(15, 608527),
(15, 610200),
(15, 611091),
(15, 617535),
(15, 619090),
(15, 620180),
(15, 620518),
(15, 620927),
(15, 623277),
(15, 624195),
(15, 626361),
(15, 628754),
(15, 629948),
(15, 631653),
(15, 631907),
(15, 632529),
(15, 632940),
(15, 635309),
(15, 636648),
(15, 638328),
(15, 642149),
(15, 642152),
(15, 642795),
(15, 646786),
(15, 649275),
(15, 650839),
(15, 652694),
(15, 656079),
(15, 656092),
(15, 657777),
(15, 664643),
(15, 670959),
(15, 671273),
(15, 675166),
(15, 675405),
(15, 677658),
(15, 680260),
(15, 682573),
(15, 684152),
(15, 685098),
(15, 688503),
(15, 690124),
(15, 694332),
(15, 695947),
(15, 695990),
(15, 697176),
(15, 697782),
(15, 698360),
(15, 704494),
(15, 706764),
(15, 709063),
(15, 711601),
(15, 770894),
(15, 771191),
(15, 779149),
(15, 1029792),
(15, 1054445),
(15, 1063089),
(15, 1090452),
(15, 1104272),
(15, 1108731),
(15, 1109254),
(15, 1110732),
(15, 1113059),
(15, 1118660),
(15, 1124904),
(15, 1129881),
(15, 1135994),
(15, 1137158),
(15, 1137185),
(15, 1138630),
(15, 1147796),
(15, 1158579),
(15, 1160405),
(15, 1162832),
(15, 1163764),
(15, 1165227),
(15, 1165612),
(15, 1168167),
(15, 1169086),
(15, 1169474),
(15, 1172175),
(15, 1176619),
(15, 1196996),
(15, 1514334),
(16, 631588),
(18, 3873),
(18, 7247),
(18, 15073),
(18, 38108),
(18, 43571),
(18, 49408),
(18, 63155),
(18, 64069),
(18, 102924),
(18, 161480),
(18, 170501),
(18, 174373),
(18, 227189),
(18, 227592),
(18, 241419),
(18, 248977),
(18, 252078),
(18, 257918),
(18, 264511),
(18, 272456),
(18, 282779),
(18, 287428),
(18, 311548),
(18, 342250),
(18, 342930),
(18, 358281),
(18, 370918),
(18, 375995),
(18, 380990),
(18, 382800),
(18, 403766),
(18, 419846),
(18, 435329),
(18, 445207),
(18, 445347),
(18, 449418),
(18, 452770),
(18, 453911),
(18, 465861),
(18, 469546),
(18, 475033),
(18, 476121),
(18, 479245),
(18, 482495),
(18, 489143),
(18, 540772),
(18, 541774),
(18, 603159),
(18, 619296),
(18, 671042),
(18, 690108),
(20, 352415),
(21, 377514),
(22, 654164),
(23, 321639),
(24, 244613),
(24, 471454),
(25, 713789),
(25, 715266),
(25, 715422),
(25, 718139),
(25, 735230),
(25, 735393),
(25, 736934),
(25, 740870),
(25, 762716),
(25, 766012),
(25, 771112),
(25, 784394),
(25, 787735),
(25, 793362),
(26, 172557),
(27, 201157),
(27, 257418),
(28, 262525),
(29, 41374),
(30, 271382),
(31, 36281),
(32, 21367),
(32, 294149),
(33, 265867),
(33, 410582),
(33, 1093355),
(34, 1125577),
(35, 286873),
(36, 27169),
(36, 80001),
(36, 86916),
(36, 150463),
(36, 390321),
(36, 424242),
(36, 437014),
(36, 554642),
(37, 33198),
(38, 189815),
(38, 227796),
(38, 229551),
(38, 275589),
(38, 277588),
(38, 308335),
(38, 389991),
(38, 426107),
(38, 426909),
(38, 486388),
(38, 510572),
(38, 672768),
(39, 158252),
(40, 670590),
(41, 193324),
(41, 306107),
(41, 343858),
(41, 385546),
(41, 385856),
(41, 431799),
(41, 443141),
(42, 220881),
(42, 226802),
(42, 322093),
(42, 463871),
(42, 1032260),
(42, 1059432),
(42, 1061862),
(42, 1068232),
(42, 1081990),
(43, 222691),
(43, 248416),
(43, 295434),
(43, 314889),
(43, 417051),
(44, 484644),
(44, 1066784),
(44, 1337716),
(44, 1382812),
(45, 57956),
(45, 65003),
(45, 209648),
(45, 276398),
(45, 278579),
(45, 336267),
(45, 342091),
(45, 353679),
(45, 446804),
(45, 473944),
(45, 517231),
(45, 550275),
(45, 680616),
(45, 906208),
(45, 907004),
(45, 909463),
(45, 914600),
(45, 918207),
(45, 919110),
(45, 920135),
(45, 934098),
(45, 934181),
(45, 936517),
(45, 941595),
(45, 941938),
(45, 942006),
(45, 945507),
(45, 945919),
(45, 949112),
(45, 952723),
(45, 954596),
(45, 957495),
(45, 958874),
(45, 972608),
(45, 976702),
(45, 977588),
(45, 981599),
(45, 987557),
(45, 990857),
(45, 1064721),
(45, 1129884),
(45, 1367336),
(45, 1374225),
(45, 1387545),
(45, 1517957),
(45, 1533292),
(45, 1544134),
(45, 1562983),
(46, 24975),
(48, 523655),
(48, 745727),
(48, 748916),
(48, 757166),
(48, 773776),
(48, 778842),
(49, 244380),
(50, 21909),
(51, 61873),
(52, 341832),
(53, 1025974),
(54, 64273),
(54, 274443),
(54, 433291);

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
`user_id` int(5) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(8, 'hemu', 'hemu@gmail.com', '2f136c631ad82d127490bc97a6244327'),
(7, 'manoj', 'manojdevender@gmail.com', 'f0064aa2614c197fe192810ab40b2930'),
(6, 'bharath', 'bharath0045@gmail.com', '7616b81196ee6fe328497da3f1d9912d'),
(9, 'hemanth', 'kota@gmail.com', '31d9bb37999652d494ba78feb642a73f');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`admin_id`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
 ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `admin_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
