-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 14, 2022 at 09:34 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toymartdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `invoiceno` int(5) NOT NULL AUTO_INCREMENT,
  `date` varchar(11) NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`invoiceno`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`invoiceno`, `date`, `total`) VALUES
(6, '2022.02.07', 29000),
(5, '2022.02.05', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

DROP TABLE IF EXISTS `cashier`;
CREATE TABLE IF NOT EXISTS `cashier` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phoneNo` int(20) NOT NULL,
  `userAddress` varchar(50) NOT NULL,
  `nicNo` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`ID`, `userName`, `password`, `name`, `phoneNo`, `userAddress`, `nicNo`) VALUES
(8, 'sumudu', '3344', 'Sumudu', 754213256, '167/7 Kirindiwela,Gampaha', '199987967560'),
(7, 'gayan4', '2244', 'Gayan', 784457046, '178/1 Akarawita,Gampaha', '200034578976');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
CREATE TABLE IF NOT EXISTS `manager` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `phoneNo` int(11) NOT NULL,
  `userAddress` varchar(50) NOT NULL,
  `nicNo` int(15) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`ID`, `userName`, `password`, `name`, `phoneNo`, `userAddress`, `nicNo`) VALUES
(1, 'Lakindu', '2233', 'Lakindu', 754213219, 'No.52 Akarawita,Gampaha', 2000325776);

-- --------------------------------------------------------

--
-- Table structure for table `toy`
--

DROP TABLE IF EXISTS `toy`;
CREATE TABLE IF NOT EXISTS `toy` (
  `itemID` varchar(11) NOT NULL,
  `itemname` varchar(10) NOT NULL,
  `price` varchar(10) NOT NULL,
  `quantity` varchar(5) NOT NULL,
  `ageGroup` varchar(10) NOT NULL,
  PRIMARY KEY (`itemID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toy`
--

INSERT INTO `toy` (`itemID`, `itemname`, `price`, `quantity`, `ageGroup`) VALUES
('2', 'Batman', '4000', '20', '4-6'),
('1', 'puzzle', '2000', '10', '10-12'),
('3', 'Superman', '3500', '20', '10-12'),
('4', 'Hulk', '2000', '15', '10-12'),
('5', 'Rc Ship', '9000', '14', '12-16'),
('6', 'Hotwheels', '600', '50', '12-16'),
('7', 'Spiderman', '1900', '10', '4-6');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
