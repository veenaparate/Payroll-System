-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2017 at 07:59 AM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `payrollsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `empsalery`
--

CREATE TABLE IF NOT EXISTS `empsalery` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `empemail` varchar(100) DEFAULT NULL,
  `leavecount` varchar(100) DEFAULT NULL,
  `deduction` varchar(100) DEFAULT NULL,
  `finalsalary` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `empsalery`
--

INSERT INTO `empsalery` (`id`, `empemail`, `leavecount`, `deduction`, `finalsalary`) VALUES
(1, 'pramod@gmail.com', '2.0', '1333.3333333333333', '18666.666666666668');

-- --------------------------------------------------------

--
-- Table structure for table `leasverequest`
--

CREATE TABLE IF NOT EXISTS `leasverequest` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `useremail` varchar(100) DEFAULT NULL,
  `leavedate` varchar(100) DEFAULT NULL,
  `count` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `leasverequest`
--

INSERT INTO `leasverequest` (`id`, `useremail`, `leavedate`, `count`) VALUES
(1, 'dhanno@gmail.com', '5/2/2017', '1'),
(2, 'pramod@gmail.com', '7/2/2017', '1'),
(3, 'pramod@gmail.com', '8/2/2017', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `doj` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `salery` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `gender`, `email`, `mobile`, `doj`, `designation`, `salery`, `password`) VALUES
(2, 'Pramod', 'Pawar', 'male', 'pramod@gmail.com', '95555555555', '3/2/2017', 'developer', '20000', '123'),
(3, 'Dhanashree', 'Kumbhar', 'female', 'dhanno@gmail.com', '9527263646', '2/2/2017', 'developer', '25000', '123');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
