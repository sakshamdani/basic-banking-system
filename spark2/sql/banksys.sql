-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 20, 2021 at 11:18 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banksys`
--

-- --------------------------------------------------------

--
-- Table structure for table `banksystem`
--

DROP TABLE IF EXISTS `banksystem`;
CREATE TABLE IF NOT EXISTS `banksystem` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `amount` int(255) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banksystem`
--

INSERT INTO `banksystem` (`id`, `name`, `email`, `amount`) VALUES
(1, 'shiva', 'shiva@gmail.com', 14000),
(2, 'saksham', 'saksham1@gmail.com', 107000);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `transid` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `datetime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`transid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transid`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(2, 'shiva', 'saksham', 1000, '2021-04-20 10:02:01.055303'),
(3, 'shiva', 'saksham', 1000, '2021-04-20 11:11:32.450309'),
(4, 'shiva', 'saksham', 1000, '2021-04-20 11:17:15.194792'),
(5, 'Umang Shrivastava', 'Shourya Mishra', 15000, '2021-04-20 11:17:29.929914');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `amount` int(255) NOT NULL,
  `contact` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `amount`, `contact`) VALUES
(1, 'Shiva  Kant Sharma', 'shiva@gmail.com', 19000, 354546),
(2, 'Saksham Dani', 'saksham1@gmail.com', 101000, 2718716),
(3, 'Umang Shrivastava', 'umang@gmail.com', 125000, 799935),
(4, 'Shourya Mishra', 'shourya@gmail.com', 185000, 831861),
(5, 'Shivam Singh', 'shivams@gmail.com', 150000, 794321),
(6, 'Sarwar Alam', 'sarwar@gmail.com', 45000, 991524),
(7, 'Deepika Shah', 'deepika@gmail.com', 70000, 632789),
(8, 'Kunal Raj', 'kunal@gmail.com', 45000, 991524),
(9, 'Darshan Dewan', 'darshan@gmail.com', 69000, 681432),
(10, 'Deep das', 'deep@gmail.com', 54000, 237896),
(11, 'Anubhav Singh', 'anubhav@gmail.com', 23000, 892056);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
