-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1build0.15.04.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 23, 2016 at 11:42 PM
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
`ID` int(20) NOT NULL,
  `FNAME` varchar(25) NOT NULL,
  `LNAME` varchar(25) NOT NULL,
  `GENDER` varchar(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

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
`admin_id` int(5) NOT NULL,
  `adminname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `age` int(3) NOT NULL,
  `country` varchar(25) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `adminname`, `email`, `password`, `age`, `country`) VALUES
(1, 'stud', 'studadmin@gmail.com', 'f4c46b2431cac848b28cc71e5903c358', -100, 'studcountry'),
(2, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 21, 'india');

-- --------------------------------------------------------

--
-- Table structure for table `casts`
--

CREATE TABLE IF NOT EXISTS `casts` (
  `pid` int(20) NOT NULL,
  `mid` int(20) NOT NULL,
  `role` varchar(50) NOT NULL
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
`id` int(11) NOT NULL,
  `FNAME` varchar(25) NOT NULL,
  `LNAME` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

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
  `genre` varchar(50) NOT NULL
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
(10, 'Romance'),
(11, 'Drama'),
(12, 'Biography'),
(12, 'Adventure');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `userid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`userid`, `mid`, `rating`) VALUES
(10, 1, 4),
(11, 8, 4),
(10, 8, 5),
(10, 8, 4),
(10, 8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE IF NOT EXISTS `movie` (
`id` int(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `YEAR` date NOT NULL,
  `description` varchar(400) NOT NULL DEFAULT 'This is a movie description'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `NAME`, `YEAR`, `description`) VALUES
(1, 'The Huntsman: Winter''s War', '2016-04-22', 'As a war between rival queen sisters Ravenna and Freya escalates, Eric and fellow warrior Sara, members of the Huntsmen army raised to protect Freya, try to conceal their forbidden love as they combat'),
(2, 'Elvis & Nixon', '2016-04-22', 'The untold true story behind the meeting between the King of Rock ''n Roll and President Nixon, resulting in this revealing, yet humorous moment immortalized in the most requested photograph in the National Archives.'),
(3, 'A Hologram for the King', '2016-04-22', 'A failed American businessman looks to recoup his losses by traveling to Saudi Arabia and selling his idea to a wealthy monarch.'),
(4, 'Tale of Tales', '2016-04-22', 'From the bitter quest of the Queen of Longtrellis, to two mysterious sisters who provoke the passion of a king, to the King of Highhills obsessed with a giant Flea, these tales are inspired by the fairytales by Giambattista Basile.\r\n'),
(5, 'Compadres', '2016-04-22', 'As former cop Garza seeks revenge on Santos, the crime lord who framed him, he forms an unlikely team with a young hacker who successfully stole $10 million from Santos.'),
(6, 'The Meddler', '2016-04-22', 'An aging widow from New York City follows her daughter to Los Angeles in hopes of starting a new life after her husband passes away.'),
(7, 'The Boss', '2016-04-08', 'A titan of industry is sent to prison after she''s caught insider trading. When she emerges ready to rebrand herself as America''s latest sweetheart, not everyone she screwed over is so quick to forgive and forget.'),
(8, 'Batman v Superman: Dawn of Justice', '2016-04-25', 'Fearing that the actions of Superman are left unchecked, Batman takes on the Man of Steel, while the world wrestles with what kind of a hero it really needs.'),
(9, 'Zootopia (2016)', '2016-04-04', 'In a city of anthropomorphic animals, a rookie bunny cop and a cynical con artist fox must work together to uncover a conspiracy.'),
(10, 'My Big Fat Greek Wedding ', '2016-04-25', 'A Portokalos family secret brings the beloved characters back together for an even bigger and Greeker wedding.'),
(11, 'Fightclub', '1999-10-15', 'An insomniac office worker, looking for a way to change his life, crosses paths with a devil-may-care soap maker, forming an underground fight club that evolves into something much, much more...'),
(12, 'The Revenant', '2016-01-08', 'A frontiersman on a fur trading expedition in the 1820s fights for survival after being mauled by a bear and left for dead by members of his own hunting team.');

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
-- Stand-in structure for view `movieview`
--
CREATE TABLE IF NOT EXISTS `movieview` (
`id` int(20)
,`NAME` varchar(50)
,`YEAR` date
);
-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE IF NOT EXISTS `ratings` (
  `mid` int(10) NOT NULL,
  `userid` int(25) NOT NULL,
  `rating` float NOT NULL,
  `comment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`mid`, `userid`, `rating`, `comment`) VALUES
(1, 6, 5, ''),
(1, 7, 3, ''),
(2, 6, 3, ''),
(2, 7, 4, ''),
(3, 6, 2, ''),
(3, 7, 4, ''),
(4, 6, 4, ''),
(4, 7, 4, ''),
(5, 6, 2, ''),
(5, 7, 4, ''),
(6, 6, 5, ''),
(6, 7, 4, ''),
(7, 6, 4, ''),
(7, 7, 2, ''),
(8, 6, 4, ''),
(8, 7, 3, ''),
(9, 6, 1, ''),
(9, 7, 2, ''),
(10, 6, 5, ''),
(10, 7, 1, ''),
(11, 6, 2, ''),
(11, 7, 0, ''),
(12, 10, 2.5, 'very'),
(5, 10, 4, 'It was an awesome movie watch it'),
(1, 10, 5, ''),
(6, 10, 3, ''),
(8, 10, 5, ''),
(4, 10, 1, ''),
(2, 10, 5, ''),
(8, 11, 4.5, 'this is an awesome movie ');

--
-- Triggers `ratings`
--
DELIMITER //
CREATE TRIGGER `history_trigger` BEFORE UPDATE ON `ratings`
 FOR EACH ROW INSERT INTO history values (Old.userid,old.mid,old.rating)
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `userprofile`
--

CREATE TABLE IF NOT EXISTS `userprofile` (
  `userid` int(20) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `age` int(3) NOT NULL,
  `country` varchar(25) NOT NULL,
  `registered` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userprofile`
--

INSERT INTO `userprofile` (`userid`, `gender`, `age`, `country`, `registered`) VALUES
(7, 'm', 15, 'india', '2015-02-15'),
(6, 'm', 25, 'india', '2016-03-18'),
(8, 'm', 15, 'africa', '2012-02-25'),
(9, 'm', 14, 'usa', '2015-07-17'),
(11, 'm', 20, 'India', '2015-02-12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(8, 'hemu', 'hemu@gmail.com', '2f136c631ad82d127490bc97a6244327'),
(7, 'abhi', 'abhilaashdarla@gmail.com', 'f0064aa2614c197fe192810ab40b2930'),
(6, 'bharath', 'bharath0045@gmail.com', '7616b81196ee6fe328497da3f1d9912d'),
(9, 'hemanth', 'kota@gmail.com', '31d9bb37999652d494ba78feb642a73f'),
(10, 'manoj', 'manojdevender@gmail.com', 'f0064aa2614c197fe192810ab40b2930'),
(11, 'hari', 'harikrishna@gmail.com', 'a9bcf1e4d7b95a22e2975c812d938889');

-- --------------------------------------------------------

--
-- Structure for view `movieview`
--
DROP TABLE IF EXISTS `movieview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `movieview` AS select `movie`.`id` AS `id`,`movie`.`NAME` AS `NAME`,`movie`.`YEAR` AS `YEAR` from `movie` order by `movie`.`YEAR` desc;

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
MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `admin_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
