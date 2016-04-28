-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1build0.15.04.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 28, 2016 at 05:32 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

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
(25, 'Bonnie', 'Hunt', 'f'),
(31, 'Thonet', '#18', 'M'),
(32, 'Steve', '$', 'M'),
(33, 'Michael', '''babeepower'' Viera', 'M'),
(34, 'Ramon', '''Cartucho'' Pena', 'M'),
(35, 'Eloy', '''Chincheta''', 'M'),
(36, 'Luis', '''Cuba''', 'M'),
(37, 'Antonio', '''El de Chipiona''', 'M'),
(38, 'José', '''El Francés''', 'M'),
(39, 'Blanquito', '''El Galgo PornoStar''', 'M'),
(40, 'Félix', '''El Gato''', 'M'),
(41, '''El Guisa''', '', 'M'),
(42, 'Miguel', '''El Happy'' Lora', 'M'),
(43, 'Marcial', '''El Jalisco''', 'M'),
(44, 'José', '''El Morito''', 'M'),
(45, 'Francisco', '''El Niño de la Manola''', 'M'),
(46, 'Víctor', '''El Payaso''', 'M'),
(47, 'Antonio', '''El Pescaíto''', 'M'),
(48, 'Luis', '''El Plojo''', 'M'),
(49, 'Janny', '''el Portugues''', 'M'),
(50, 'Antonio', '''El Rilete''', 'M'),
(51, 'Baltazar', '''El Toro''', 'M'),
(52, '''El Viti''', '', 'M'),
(53, 'Luis Roberto', '''Formiga''', 'M'),
(54, '''Goochi''', '', 'M'),
(55, 'Fred', '''Hairy Cowboy''', 'M'),
(56, 'Murray the', '''K''', 'M'),
(57, 'Néstor', '''Kick Boxer''', 'M'),
(58, 'Johnny', '''Koolout'' Starks', 'M');

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
(25, 10, 'Bonnie Hopps'),
(31, 9, 'Itself'),
(33, 4, 'Stevie'),
(33, 1, 'Himself'),
(33, 1, 'Young Leo'),
(33, 1, 'lyricist'),
(33, 10, 'Various'),
(34, 3, 'Nigth Club Owner'),
(35, 6, 'Gitano 1'),
(37, 3, 'Actor'),
(38, 3, 'Actor'),
(38, 3, 'Actor'),
(38, 4, 'Actor'),
(38, 4, 'Actor'),
(38, 6, 'Himself'),
(38, 1, 'Himself'),
(38, 1, 'Himself'),
(38, 1, 'Himself'),
(38, 1, 'Himself'),
(38, 1, 'Himself'),
(38, 1, 'Himself'),
(40, 3, 'Himself'),
(40, 7, 'Actor'),
(40, 9, 'Himself'),
(40, 9, 'Actor'),
(40, 9, 'Himself'),
(40, 1, 'Himself'),
(40, 1, 'Staff Humorist'),
(40, 1, 'Staff Humorist'),
(40, 10, 'Staff Humorist'),
(41, 3, 'Bailaor'),
(42, 1, 'Himself'),
(44, 3, 'Amigo Cigala #2'),
(45, 3, 'Segundo Cuadro Flamenco ''Tango'),
(46, 1, 'Chavo Banda Galerias'),
(47, 3, 'Tercer Cuadro Flamenco ''Solear'),
(48, 1, 'Froilán plaza del estudiante'),
(50, 3, 'Cuarto Cuadro Flamenco ''Tarant'),
(51, 3, 'Agente #1'),
(52, 3, 'Cantaor'),
(53, 3, 'Himself'),
(54, 1, 'Grandfather'),
(55, 8, 'Pokerspieler'),
(56, 8, 'Himself'),
(56, 2, 'Himself'),
(56, 2, 'Himself - Host'),
(56, 5, 'Himself'),
(56, 5, 'Big John Little'),
(56, 5, 'Disc Jockey'),
(56, 5, 'Himself'),
(56, 5, 'Himself'),
(56, 5, 'Himself'),
(56, 6, 'Himself'),
(56, 7, 'Himself'),
(56, 7, 'Rocky'),
(56, 8, 'Big Hart'),
(56, 1, 'Himself'),
(56, 1, 'Himself'),
(57, 6, 'Montaña'),
(58, 3, 'Alexis? Thug'),
(58, 5, 'Marcus'),
(58, 5, 'Officer Ward'),
(59, 6, 'Victoriano');

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE IF NOT EXISTS `directors` (
`id` int(11) NOT NULL,
  `FNAME` varchar(25) NOT NULL,
  `LNAME` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`id`, `FNAME`, `LNAME`) VALUES
(1, ' Ja''far', '''Abd Al-Hamid'),
(2, ' Frans', '''t Hoen'),
(3, ' Léon', '''t Joen'),
(4, ' Todd', '1'),
(5, ' Les', '12 Poissons'),
(6, ' Phoenix', '13'),
(7, '1312', ''),
(8, ' The', '3rd Grade of the Jesus Lo'),
(9, '50 Cent', ''),
(10, ' Powers', '93'),
(11, ' F.', 'a Ressende'),
(12, ' Lejaren', 'a''Hiller'),
(13, ' Nian', 'A'),
(14, ' Khairiya', 'A-Mansour'),
(15, ' Ricardo', 'A. Solla'),
(16, ' Alexandra', 'A.'),
(17, ' James', 'A.'),
(18, ' Kodanda Rami Reddy', 'A.'),
(19, ' Mark', 'A.'),
(20, ' Nageswara Rao', 'A.'),
(21, ' Temitope', 'A.'),
(22, ' Yuri', 'A.'),
(23, ' Swamy', 'A.S.A.'),
(24, ' Per', 'Aabel'),
(25, ' Eivind', 'Aaeng'),
(26, ' Mang', 'Aag'),
(27, ' Sigfred', 'Aagaard'),
(28, ' Michael', 'Aaglund'),
(29, ' Safdar', 'Aah'),
(30, ' Law Hong', 'Aai'),
(31, ' Grant', 'Aaker'),
(32, 'Aakkoo', ''),
(33, ' Astrid', 'Aakra'),
(34, ' Beth', 'Aala'),
(35, ' Steve', 'Aalam'),
(36, ' Mohamad Reza', 'Aalami'),
(37, ' Jefri', 'Aalmuhammed'),
(38, ' Eeli', 'Aalto'),
(39, ' Erkki', 'Aalto'),
(40, ' Reetta', 'Aalto'),
(41, ' Rostislav', 'Aalto'),
(42, ' Heidi', 'Aaltonen'),
(43, ' Jouko', 'Aaltonen'),
(44, ' Risto', 'Aaltonen'),
(45, ' Veikko', 'Aaltonen'),
(46, ' Pål', 'Aam'),
(47, ' Kevin', 'Aames'),
(48, ' Willie', 'Aames'),
(49, ' V. Blackhawk', 'Aamodt'),
(50, ' Quentin', 'Aanenson'),
(51, ' Simon', 'Aappli'),
(52, ' Aslak', 'Aarhus'),
(53, ' Jussi', 'Aarnio'),
(54, ' Douglas', 'Aarniokoski'),
(55, ' Tony', 'Aaron II'),
(56, ' Aash', 'Aaron'),
(57, ' Barnaby', 'Aaron'),
(58, ' Bles', 'Aaron');

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
(12, 'Adventure'),
(5, 'Action'),
(3, 'Action'),
(6, 'Action'),
(1, 'Action'),
(4, 'Action'),
(5, 'Documentary'),
(3, 'Documentary'),
(4, 'Documentary'),
(7, 'Documentary'),
(6, 'Documentary'),
(5, 'Documentary'),
(0, 'Drama'),
(4, 'Drama'),
(5, 'Drama'),
(8, 'Drama'),
(3, 'Drama'),
(7, 'Drama'),
(8, 'Drama'),
(9, 'Family'),
(6, 'Family'),
(0, 'Family'),
(8, 'Family'),
(1, 'Family'),
(4, 'Music'),
(9, 'Music'),
(5, 'Music'),
(3, 'Music'),
(7, 'Mystery'),
(9, 'Mystery'),
(2, 'Mystery'),
(0, 'Mystery'),
(8, 'Mystery'),
(5, 'Romance'),
(3, 'Romance'),
(7, 'Romance'),
(1, 'Romance'),
(6, 'Romance'),
(8, 'Romance'),
(5, 'Short'),
(6, 'Short'),
(7, 'Short'),
(0, 'Thriller'),
(2, 'Thriller'),
(3, 'Thriller'),
(5, 'Thriller'),
(7, 'Thriller'),
(1, 'Thriller'),
(10, 'Western'),
(7, 'Western'),
(5, 'Western'),
(2, 'Western'),
(4, 'Western'),
(0, 'Western');

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
(10, 8, 4),
(7, 3, 4),
(7, 8, 3),
(7, 8, 4),
(7, 8, 5),
(7, 8, 4),
(7, 8, 5),
(7, 8, 4),
(7, 11, 0),
(7, 11, 4),
(7, 18, 4),
(7, 18, 4),
(7, 14, 3),
(7, 14, 2),
(7, 17, 2),
(7, 28, 4);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE IF NOT EXISTS `movie` (
`id` int(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `YEAR` date NOT NULL,
  `description` varchar(400) NOT NULL DEFAULT 'This is a movie description'
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

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
(12, 'The Revenant', '2016-01-08', 'A frontiersman on a fur trading expedition in the 1820s fights for survival after being mauled by a bear and left for dead by members of his own hunting team.'),
(13, 'Case of the Cold Storage Yegg', '1963-01-01', ''),
(14, 'Botta e risposta', '1950-01-01', ''),
(15, 'Beach', '2008-01-01', ''),
(16, 'Affair with a Stranger', '1953-01-01', ''),
(17, 'A Letter to Uncle Sam', '1913-01-01', ''),
(18, 'A Woman Scorned', '1999-01-01', ''),
(20, 'Caryl of the Mountains', '1914-01-01', ''),
(21, 'Ang pumatay ng dahil sa iyo', '1989-01-01', ''),
(22, 'Bampira', '1997-01-01', ''),
(23, 'Alfa Tau!', '1942-01-01', ''),
(24, 'A vÃ­rus', '2005-01-01', ''),
(27, 'Bout-de-Zan et le mannequin', '1913-01-01', ''),
(28, 'Babami ariyorum', '1997-01-01', ''),
(29, 'Amarillo by Morning', '1998-01-01', ''),
(30, 'Carmen', '1927-01-01', ''),
(31, 'Between', '2000-01-01', ''),
(33, 'Celebrity Challenge of the Sexes 2', '1977-01-01', ''),
(34, 'Adventures in Diplomacy', '1914-01-01', ''),
(35, 'A Scooby-Doo! Christmas', '2004-01-01', ''),
(36, 'Bezbiletnaya passazhirka', '1978-01-01', ''),
(37, 'Becket', '1964-01-01', ''),
(38, 'A Christmas Ballet Concert', '1990-01-01', ''),
(39, 'Adventures of Huckleberry Finn', '1985-01-01', '');

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
(11, 10),
(12, 1),
(13, 33),
(14, 15),
(15, 20),
(15, 32),
(15, 30),
(15, 15),
(16, 33),
(18, 38),
(18, 38),
(18, 34),
(20, 35),
(21, 37),
(22, 25),
(23, 32),
(24, 24),
(24, 17),
(25, 1),
(25, 1),
(26, 17),
(27, 20),
(27, 25),
(28, 26),
(29, 11),
(30, 27),
(31, 36),
(32, 21),
(32, 29),
(33, 26),
(33, 11),
(33, 10),
(34, 11),
(35, 28),
(36, 27),
(36, 10),
(37, 33),
(38, 18),
(38, 22),
(38, 22),
(38, 27),
(39, 15),
(40, 27),
(41, 38),
(41, 13),
(41, 14),
(42, 10),
(42, 10),
(42, 10),
(43, 31),
(43, 11),
(44, 13),
(45, 20),
(45, 15),
(45, 15),
(45, 15),
(45, 15),
(46, 24),
(48, 5),
(49, 24),
(50, 21),
(51, 21),
(52, 34),
(53, 10),
(54, 24),
(54, 27),
(54, 13);

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
(3, 7, 2.5, ''),
(4, 6, 4, ''),
(4, 7, 4, ''),
(5, 6, 2, ''),
(5, 7, 4, ''),
(6, 6, 5, ''),
(6, 7, 4, ''),
(7, 6, 4, ''),
(7, 7, 2, ''),
(8, 6, 4, ''),
(8, 7, 5, ''),
(9, 6, 1, ''),
(9, 7, 2, ''),
(10, 6, 5, ''),
(10, 7, 1, ''),
(11, 6, 2, ''),
(11, 7, 3, ''),
(12, 10, 2.5, 'very'),
(5, 10, 4, 'It was an awesome movie watch it'),
(1, 10, 5, ''),
(6, 10, 3, ''),
(8, 10, 5, ''),
(4, 10, 1, ''),
(2, 10, 5, ''),
(8, 11, 4.5, 'this is an awesome movie '),
(15, 7, 5, ' '),
(18, 7, 4.5, ''),
(12, 7, 5, ''),
(14, 7, 3, ''),
(17, 7, 2, ''),
(21, 7, 0.5, ''),
(20, 7, 4, 'nice'),
(28, 7, 3.5, 'wat a movie');

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(8, 'hemu', 'hemu@gmail.com', '2f136c631ad82d127490bc97a6244327'),
(7, 'abhi', 'abhilaashdarla@gmail.com', 'f0064aa2614c197fe192810ab40b2930'),
(6, 'bharath', 'bharath0045@gmail.com', '7616b81196ee6fe328497da3f1d9912d'),
(9, 'hemanth', 'kota@gmail.com', '31d9bb37999652d494ba78feb642a73f'),
(10, 'manoj', 'manojdevender@gmail.com', 'f0064aa2614c197fe192810ab40b2930'),
(11, 'hari', 'harikrishna@gmail.com', 'a9bcf1e4d7b95a22e2975c812d938889'),
(12, 'anoopk', 'a@b.com', '9a8df520928110c9174243109100891a'),
(13, 'anoopk', 'a@bb.com', '900150983cd24fb0d6963f7d28e17f72');

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
MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `admin_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
