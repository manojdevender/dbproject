-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 20, 2016 at 02:14 AM
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
  `ID` int(10) NOT NULL,
  `FNAME` varchar(25) NOT NULL,
  `LNAME` varchar(25) NOT NULL,
  `GENDER` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`ID`, `FNAME`, `LNAME`, `GENDER`) VALUES
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
(31, 9973, 'Itsel'),
(33, 492418, 'Stevi'),
(33, 1099849, 'Himsel'),
(33, 1321034, 'Young Le'),
(33, 1401350, 'lyricis'),
(33, 1401350, 'Variou'),
(34, 325837, 'Nigth Club Owne'),
(35, 659228, 'Gitano '),
(37, 37, 'Acto'),
(38, 38, 'Acto'),
(38, 39, 'Acto'),
(38, 40, 'Acto'),
(38, 496259, 'Acto'),
(38, 619310, 'Himsel'),
(38, 1151210, 'Himsel'),
(38, 1167388, 'Himsel'),
(38, 1203101, 'Himsel'),
(38, 1205936, 'Himsel'),
(38, 1212189, 'Himsel'),
(38, 1514330, 'Himsel'),
(40, 399834, 'Himsel'),
(40, 745962, 'Acto'),
(40, 904039, 'Himsel'),
(40, 904767, 'Acto'),
(40, 909758, 'Himsel'),
(40, 1502691, 'Himsel'),
(40, 1514097, 'Staff Humoris'),
(40, 1515349, 'Staff Humoris'),
(40, 1526782, 'Staff Humoris'),
(41, 342393, 'Bailao'),
(42, 1090793, 'Himsel'),
(44, 378976, 'Amigo Cigala #'),
(45, 320368, 'Segundo Cuadro Flamenco '''),
(46, 156546, 'Chavo Banda Galeria'),
(47, 320368, 'Tercer Cuadro Flamenco ''S'),
(48, 156546, 'Froilán plaza del estudia'),
(50, 320368, 'Cuarto Cuadro Flamenco ''T'),
(51, 368858, 'Agente #'),
(52, 342393, 'Cantao'),
(53, 308504, 'Himsel'),
(54, 177386, 'Grandfathe'),
(55, 81268, 'Pokerspiele'),
(56, 89823, 'Himsel'),
(56, 243798, 'Himsel'),
(56, 259374, 'Himself - Hos'),
(56, 543281, 'Himsel'),
(56, 549969, 'Big John Littl'),
(56, 556386, 'Disc Jocke'),
(56, 556386, 'Himsel'),
(56, 587812, 'Himsel'),
(56, 596515, 'Himsel'),
(56, 668098, 'Himsel'),
(56, 711175, 'Himsel'),
(56, 767300, 'Rock'),
(56, 800583, 'Big Har'),
(56, 1321883, 'Himsel'),
(56, 1447834, 'Himsel'),
(57, 608215, 'Montañ'),
(58, 394275, 'Alexis? Thu'),
(58, 565082, 'Marcu'),
(58, 575787, 'Officer War'),
(59, 649437, 'Victorian');

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE IF NOT EXISTS `directors` (
  `ID` int(10) NOT NULL,
  `FNAME` varchar(25) NOT NULL,
  `LNAME` varchar(25) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`ID`, `FNAME`, `LNAME`) VALUES
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
  `genre` varchar(25) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`mid`, `genre`) VALUES
(42, 'Film-Noir'),
(45, 'Film-Noir'),
(61, 'Film-Noir'),
(65, 'Film-Noir'),
(76, 'Film-Noir'),
(371655, 'Action'),
(371693, 'Action'),
(371736, 'Action'),
(371751, 'Action'),
(371784, 'Action'),
(371799, 'Action'),
(371819, 'Action'),
(371841, 'Action'),
(371842, 'Action'),
(371848, 'Action'),
(371875, 'Action'),
(371970, 'Film-Noir'),
(371985, 'Film-Noir'),
(372013, 'Film-Noir'),
(372067, 'Film-Noir'),
(372084, 'Action'),
(372117, 'Action'),
(372145, 'Action'),
(372171, 'Action'),
(372219, 'Action'),
(372224, 'Action'),
(372227, 'Action'),
(372252, 'Action'),
(372288, 'Action'),
(372305, 'Action'),
(372337, 'Action'),
(372343, 'Action'),
(372349, 'Action'),
(372371, 'Action'),
(372393, 'Action'),
(372418, 'Action'),
(372446, 'Action'),
(372458, 'Action'),
(372461, 'Action'),
(372495, 'Action'),
(372496, 'Action'),
(372572, 'Action'),
(372605, 'Action'),
(372654, 'Action'),
(372678, 'Action'),
(372690, 'Action'),
(372744, 'Action'),
(372787, 'Action'),
(372804, 'Action'),
(406754, 'Action'),
(406801, 'Action'),
(406812, 'Action'),
(406825, 'Action'),
(406829, 'Action'),
(406844, 'Action'),
(406899, 'Action'),
(406919, 'Action'),
(406947, 'Action'),
(406982, 'Action'),
(407000, 'Action'),
(407027, 'Action'),
(407033, 'Action'),
(407055, 'Action'),
(407098, 'Action'),
(407112, 'Action'),
(407119, 'Action'),
(407130, 'Action'),
(407163, 'Action'),
(407176, 'Action'),
(407189, 'Action'),
(407192, 'Action'),
(407197, 'Action'),
(407223, 'Action'),
(407234, 'Action');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE IF NOT EXISTS `movie` (
  `ID` int(10) NOT NULL,
  `NAME` varchar(25) NOT NULL,
  `YEAR` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`ID`, `NAME`, `YEAR`) VALUES
(31, 'BÃ¤stisar', '2006-01-01'),
(32, '20 Minuten Aufenthalt', '1960-01-01'),
(34, 'Alex in Wonderland', '1970-01-01'),
(35, '360 grados en torno a Car', '1972-01-01'),
(36, 'Ask a Policeman', '1938-01-01'),
(37, 'Byeoksokui yeoja', '1969-01-01'),
(39, 'A LÃ©lek Ã³rÃ¡sa', '1923-01-01'),
(41, 'Chandrahasa', '1947-01-01'),
(42, 'Beggar''s Belief', '2004-01-01'),
(43, 'Case of the Cold Storage ', '1963-01-01'),
(44, 'Botta e risposta', '1950-01-01'),
(45, 'Beach', '2008-01-01'),
(46, 'Affair with a Stranger', '1953-01-01'),
(47, 'A Letter to Uncle Sam', '1913-01-01'),
(48, 'A Woman Scorned', '1999-01-01'),
(50, 'Caryl of the Mountains', '1914-01-01'),
(51, 'Ang pumatay ng dahil sa i', '1989-01-01'),
(52, 'Bampira', '1997-01-01'),
(53, 'Alfa Tau!', '1942-01-01'),
(54, 'A vÃ­rus', '2005-01-01'),
(57, 'Bout-de-Zan et le mannequ', '1913-01-01'),
(58, 'Babami ariyorum', '1997-01-01'),
(59, 'Amarillo by Morning', '1998-01-01'),
(60, 'Carmen', '1927-01-01'),
(61, 'Between', '2000-01-01'),
(63, 'Celebrity Challenge of th', '1977-01-01'),
(64, 'Adventures in Diplomacy', '1914-01-01'),
(65, 'A Scooby-Doo! Christmas', '2004-01-01'),
(66, 'Bezbiletnaya passazhirka', '1978-01-01'),
(67, 'Becket', '1964-01-01'),
(68, 'A Christmas Ballet Concer', '1990-01-01'),
(69, 'Adventures of Huckleberry', '1985-01-01'),
(71, '...und sowas nennt sich S', '1971-01-01'),
(72, 'Butter', '1998-01-01'),
(73, 'Belaya ten', '1979-01-01'),
(74, 'Chatra Bakavali', '1932-01-01'),
(75, 'Bo chi oi nei', '2009-01-01'),
(76, '0_1_0', '2008-01-01'),
(77, 'Bill Gives a Smoker', '1915-01-01'),
(78, 'Bosko''s Easter Eggs', '1937-01-01'),
(79, '97 fung lau mung', '1994-01-01'),
(80, 'Anton Ivanovich serditsya', '1941-01-01'),
(82, 'Anything for Love', '1985-01-01'),
(84, 'Captain Power: The Beginn', '1989-01-01'),
(85, 'Amerasia', '1986-01-01'),
(86, 'Caught in the Headlights', '2004-01-01'),
(87, '1253 za edin den', '1979-01-01'),
(89, 'AcÃºstico - La telenovela', '1997-01-01'),
(90, 'Blind Corner', '1963-01-01'),
(91, 'Alkeste - Die Bedeutung, ', '1970-01-01');

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
  `userid` varchar(25) NOT NULL,
  `rating` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`mid`, `userid`, `rating`) VALUES
(31, 'user_000471', 1),
(31, 'user_000003', 1),
(31, 'user_000575', 0),
(31, 'user_000009', 0),
(31, 'user_000209', 0),
(31, 'user_000190', 0),
(31, 'user_000523', 0),
(31, 'user_000760', 0),
(31, 'user_000184', 0),
(31, 'user_000010', 0),
(31, 'user_000943', 0),
(31, 'user_000623', 0),
(32, 'user_000011', 0),
(32, 'user_000738', 0),
(32, 'user_000970', 0),
(32, 'user_000019', 0),
(32, 'user_000169', 0),
(32, 'user_000471', 0),
(32, 'user_000388', 0),
(32, 'user_000173', 0),
(32, 'user_000957', 0),
(32, 'user_000681', 0),
(32, 'user_000237', 0),
(32, 'user_000657', 0),
(32, 'user_000433', 0),
(32, 'user_000292', 0),
(34, 'user_000296', 0),
(34, 'user_000592', 0),
(34, 'user_000395', 0),
(34, 'user_000028', 0),
(34, 'user_000597', 1),
(34, 'user_000530', 0),
(34, 'user_000873', 0),
(34, 'user_000046', 0),
(34, 'user_000104', 0),
(34, 'user_000881', 0),
(34, 'user_000483', 0),
(34, 'user_000546', 0),
(34, 'user_000152', 0),
(34, 'user_000874', 0),
(34, 'user_000234', 0),
(34, 'user_000001', 0),
(34, 'user_000976', 0),
(34, 'user_000178', 0),
(34, 'user_000694', 0),
(35, 'user_000969', 0),
(35, 'user_000203', 0),
(35, 'user_000592', 0),
(35, 'user_000872', 0),
(36, 'user_000333', 0),
(36, 'user_000442', 0),
(36, 'user_000732', 0),
(36, 'user_000979', 0),
(36, 'user_000159', 0),
(36, 'user_000203', 0),
(36, 'user_000916', 0),
(36, 'user_000838', 1),
(36, 'user_000807', 0),
(36, 'user_000472', 0),
(36, 'user_000137', 0),
(37, 'user_000292', 0),
(37, 'user_000564', 0),
(37, 'user_000983', 0),
(37, 'user_000508', 0),
(37, 'user_000192', 0),
(37, 'user_000234', 0),
(37, 'user_000057', 0),
(37, 'user_000461', 1),
(37, 'user_000537', 0),
(37, 'user_000152', 0),
(37, 'user_000085', 0),
(37, 'user_000199', 1),
(37, 'user_000738', 0),
(37, 'user_000386', 0),
(37, 'user_000313', 0),
(37, 'user_000159', 0),
(37, 'user_000528', 0),
(37, 'user_000210', 0),
(37, 'user_000884', 0),
(37, 'user_000006', 0),
(37, 'user_000486', 0),
(37, 'user_000483', 0),
(37, 'user_000330', 0),
(37, 'user_000207', 0),
(37, 'user_000290', 0),
(37, 'user_000254', 0),
(37, 'user_000123', 0),
(37, 'user_000037', 0),
(37, 'user_000038', 0),
(37, 'user_000039', 0),
(37, 'user_000040', 0),
(37, 'user_000070', 0),
(37, 'user_000445', 0),
(37, 'user_000786', 0),
(37, 'user_000625', 0),
(37, 'user_000410', 0),
(37, 'user_000205', 0),
(37, 'user_000984', 0),
(37, 'user_000768', 0),
(37, 'user_000888', 0),
(38, 'user_000038', 0),
(38, 'user_000039', 0),
(38, 'user_000040', 0),
(40, 'user_000038', 0),
(40, 'user_000039', 0),
(40, 'user_000040', 0),
(41, 'user_000364', 0),
(41, 'user_000468', 0),
(41, 'user_000838', 1),
(41, 'user_000085', 0),
(41, 'user_000849', 0),
(41, 'user_000551', 0),
(41, 'user_000824', 1),
(42, 'user_000762', 0),
(42, 'user_000505', 0),
(42, 'user_000667', 0),
(42, 'user_000425', 0),
(42, 'user_000608', 1),
(42, 'user_000452', 0),
(42, 'user_000979', 0),
(42, 'user_000517', 0),
(42, 'user_000488', 0),
(42, 'user_000149', 0),
(42, 'user_000577', 0),
(42, 'user_000945', 0),
(42, 'user_000254', 0),
(42, 'user_000678', 0),
(42, 'user_000706', 0),
(42, 'user_000330', 0),
(42, 'user_000844', 0),
(42, 'user_000924', 0),
(42, 'user_000639', 0),
(42, 'user_000974', 1),
(42, 'user_000583', 0),
(42, 'user_000377', 0),
(42, 'user_000328', 0),
(42, 'user_000395', 0),
(42, 'user_000070', 1),
(42, 'user_000966', 0),
(42, 'user_000271', 0),
(42, 'user_000481', 0),
(42, 'user_000779', 0),
(42, 'user_000373', 0),
(42, 'user_000305', 0),
(42, 'user_000251', 0),
(42, 'user_000292', 0),
(42, 'user_000566', 0),
(42, 'user_000203', 1),
(42, 'user_000364', 0),
(42, 'user_000053', 0),
(42, 'user_000419', 0),
(42, 'user_000525', 0),
(42, 'user_000055', 0),
(42, 'user_000907', 1),
(42, 'user_000875', 0),
(43, 'user_000181', 0),
(43, 'user_000200', 0),
(43, 'user_000657', 0),
(43, 'user_000082', 0),
(43, 'user_000159', 1),
(43, 'user_000672', 0),
(43, 'user_000162', 0),
(43, 'user_000829', 0),
(43, 'user_000540', 1),
(43, 'user_000600', 0),
(43, 'user_000373', 0),
(43, 'user_000701', 1),
(43, 'user_000049', 0),
(43, 'user_000358', 0),
(44, 'user_000551', 0),
(44, 'user_000333', 1),
(44, 'user_000414', 0),
(44, 'user_000286', 0),
(44, 'user_000297', 0),
(44, 'user_000395', 0),
(44, 'user_000681', 0),
(44, 'user_000829', 0),
(44, 'user_000684', 0),
(31, '471', 10),
(31, '3', 10),
(31, '575', 6),
(31, '9', 6),
(31, '209', 7),
(31, '190', 5),
(31, '523', 2),
(31, '760', 8),
(31, '184', 3),
(31, '10', 5),
(31, '943', 2),
(31, '623', 3),
(32, '11', 6),
(32, '738', 5),
(32, '970', 9),
(32, '19', 9),
(32, '169', 4),
(32, '471', 2),
(32, '388', 3),
(32, '173', 1),
(32, '957', 5),
(32, '681', 1),
(32, '237', 1),
(32, '657', 6),
(32, '433', 5),
(32, '292', 8),
(34, '296', 3),
(34, '592', 8),
(34, '395', 5),
(34, '28', 8),
(34, '597', 10),
(34, '530', 8),
(34, '873', 3),
(34, '46', 7),
(34, '104', 6),
(34, '881', 2),
(34, '483', 9),
(34, '546', 6),
(34, '152', 3),
(34, '874', 5),
(34, '234', 3),
(34, '1', 6),
(34, '976', 4),
(34, '178', 4),
(34, '694', 6),
(35, '969', 6),
(35, '203', 5),
(35, '592', 1),
(35, '872', 1),
(36, '333', 6),
(36, '442', 3),
(36, '732', 8),
(36, '979', 7),
(36, '159', 8),
(36, '203', 7),
(36, '916', 4),
(36, '838', 10),
(36, '807', 9),
(36, '472', 4),
(36, '137', 2),
(37, '292', 9),
(37, '564', 9),
(37, '983', 2),
(37, '508', 5),
(37, '192', 8),
(37, '234', 4),
(37, '57', 3),
(37, '461', 10),
(37, '537', 3),
(37, '152', 5),
(37, '85', 8),
(37, '199', 10),
(37, '738', 2),
(37, '386', 3),
(37, '313', 6),
(37, '159', 5),
(37, '528', 7),
(37, '210', 8),
(37, '884', 5),
(37, '6', 7),
(37, '486', 5),
(37, '483', 1),
(37, '330', 5),
(37, '207', 6),
(37, '290', 7),
(37, '254', 9),
(37, '123', 3),
(37, '37', 5),
(37, '38', 1),
(37, '39', 1),
(37, '40', 6),
(37, '70', 8),
(37, '445', 1),
(37, '786', 1),
(37, '625', 5),
(37, '410', 6),
(37, '205', 6),
(37, '984', 9),
(37, '768', 5),
(37, '888', 2),
(38, '38', 9),
(38, '39', 9),
(38, '40', 1),
(40, '38', 3),
(40, '39', 9),
(40, '40', 1),
(41, '364', 7),
(41, '468', 8),
(41, '838', 10),
(41, '85', 5),
(41, '849', 6),
(41, '551', 7),
(41, '824', 10),
(42, '762', 5),
(42, '505', 4),
(42, '667', 9),
(42, '425', 6),
(42, '608', 10),
(42, '452', 3),
(42, '979', 3),
(42, '517', 6),
(42, '488', 4),
(42, '149', 5),
(42, '577', 2),
(42, '945', 5),
(42, '254', 9),
(42, '678', 4),
(42, '706', 3),
(42, '330', 9),
(42, '844', 7),
(42, '924', 5),
(42, '639', 7),
(42, '974', 10),
(42, '583', 2),
(42, '377', 4),
(42, '328', 3),
(42, '395', 3),
(42, '70', 10),
(42, '966', 2),
(42, '271', 2),
(42, '481', 8),
(42, '779', 4),
(42, '373', 1),
(42, '305', 3),
(42, '251', 4),
(42, '292', 2),
(42, '566', 1),
(42, '203', 10),
(42, '364', 6),
(42, '53', 9),
(42, '419', 7),
(42, '525', 9),
(42, '55', 6),
(42, '907', 10),
(42, '875', 6),
(43, '181', 6),
(43, '200', 8),
(43, '657', 1),
(43, '82', 2),
(43, '159', 10),
(43, '672', 6),
(43, '162', 1),
(43, '829', 2),
(43, '540', 10),
(43, '600', 5),
(43, '373', 2),
(43, '701', 10),
(43, '49', 1),
(43, '358', 2),
(44, '551', 1),
(44, '333', 10),
(44, '414', 1),
(44, '286', 7),
(44, '297', 1),
(44, '395', 5),
(44, '681', 8),
(44, '829', 4),
(44, '684', 6);

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

--
-- Dumping data for table `userprofile`
--

INSERT INTO `userprofile` (`userid`, `gender`, `age`, `country`, `registered`) VALUES
(3, 'm', 22, 'United States', '2005-10-03'),
(8, 'm', 23, 'Slovakia', '2006-09-02'),
(9, 'f', 19, 'United States', '2007-01-01'),
(10, 'm', 19, 'Poland', '2006-05-00'),
(11, 'm', 21, 'Finland', '2005-09-00'),
(12, 'f', 28, 'United States', '2005-03-03'),
(13, 'f', 25, 'Romania', '2006-09-02'),
(17, 'm', 22, 'Morocco', '2007-08-02'),
(19, 'f', 29, 'Mexico', '2005-11-01'),
(20, 'f', 27, 'Germany', '2006-07-02'),
(21, 'm', 27, 'Canada', '2005-03-01'),
(22, 'm', 38, 'United Kingdom', '2006-05-01'),
(24, 'f', 25, 'United States', '2004-10-00'),
(26, 'm', 22, 'Turkey', '2005-12-02'),
(27, 'm', 24, 'United States', '2005-07-02'),
(28, 'm', 20, 'United Kingdom', '2005-11-01'),
(32, 'm', 23, 'Italy', '2005-02-02'),
(33, 'f', 20, 'Poland', '2005-12-02'),
(34, 'f', 35, 'Brazil', '2005-09-01'),
(35, 'm', 22, 'Australia', '2005-03-00'),
(37, 'f', 21, 'India', '2007-02-01'),
(38, 'm', 29, 'India', '2006-07-00'),
(39, 'm', 21, 'India', '2006-06-00'),
(40, 'f', 21, 'India', '2006-04-02'),
(41, 'm', 30, 'Sweden', '2005-06-01'),
(42, 'f', 24, 'United States', '2005-12-02'),
(43, 'f', 26, 'United States', '2006-03-01'),
(44, 'f', 21, 'Italy', '2007-02-02'),
(45, 'm', 29, 'Chile', '2006-07-00'),
(46, 'm', 24, 'Greece', '2007-04-02'),
(47, 'f', 19, 'Croatia', '2006-08-02'),
(48, 'm', 33, 'Italy', '2006-12-02'),
(50, 'f', 24, 'United Kingdom', '2006-02-01'),
(51, 'f', 25, 'Brazil', '2006-08-01'),
(52, 'm', 20, 'Russian Federation', '2006-10-01'),
(53, 'm', 29, 'Germany', '2005-11-03'),
(54, 'm', 28, 'Brazil', '2004-11-03'),
(55, 'm', 21, 'Serbia', '2006-08-00'),
(1, 'm', 22, 'Japan', '2006-08-01'),
(2, 'f', 22, 'Peru', '2006-02-02'),
(5, 'm', 22, 'Bulgaria', '2006-06-02'),
(7, 'f', 22, 'United States', '2006-01-02'),
(16, 'm', 22, 'United Kingdom', '2005-08-00'),
(56, 'm', 22, 'United States', '2006-01-01'),
(57, 'm', 17, 'United Kingdom', '2006-08-02'),
(58, 'f', 24, 'Poland', '2006-02-02'),
(59, 'f', 24, 'United States', '2005-09-00'),
(60, 'f', 22, 'United States', '2005-10-01'),
(63, 'f', 22, 'Poland', '2005-09-02'),
(64, 'm', 21, 'Finland', '2005-12-01'),
(65, 'm', 35, 'United States', '2005-10-02'),
(66, 'f', 20, 'United States', '2006-05-00'),
(67, 'm', 36, 'Canada', '2005-03-00'),
(69, 'm', 23, 'United States', '2005-07-01'),
(71, 'm', 7, 'Netherlands', '2005-12-01'),
(72, 'f', 25, 'Armenia', '2006-11-02'),
(73, 'm', 34, 'United Kingdom', '2007-05-03'),
(74, 'm', 35, 'Turkey', '2005-06-00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
