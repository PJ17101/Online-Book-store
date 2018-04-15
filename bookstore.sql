-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2018 at 04:15 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin1`
--

CREATE TABLE `admin1` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin1`
--

INSERT INTO `admin1` (`fname`, `lname`, `username`, `password`, `email`) VALUES
('Subham', 'Barudwale', 'Barud', 'qwerty12', 'b@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` varchar(10) NOT NULL,
  `book_name` varchar(50) NOT NULL,
  `price` int(10) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `author_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_name`, `price`, `genre`, `author_name`) VALUES
('1', 'scion of ikshvaku', 164, 'fiction', 'Amish Tripathi'),
('10', 'Best Kept Secret', 239, 'fiction', 'Jeffrey Archer'),
('11', 'Five point someone', 123, 'fiction', 'Chetan Bhagat'),
('12', 'Half girlfriend', 88, 'Romance', 'Chetan Bhagat'),
('13', 'One night at the call centre', 99, 'fiction', 'Chetan Bhagat'),
('14', 'Three mistakes of my life', 107, 'fiction', 'Chetan Bhagat'),
('15', 'Two states', 78, 'fiction', 'Chetan Bhagat'),
('16', 'Revolution 2020', 107, 'fiction', 'Chetan Bhagat'),
('17', 'Immortals of meluha', 147, 'fiction', 'Amish Tripathi'),
('2', 'selection day', 389, 'fiction', 'Aravind Adiga'),
('3', 'inferno', 231, 'thriller', 'Dan Brown'),
('4', 'the da-vinci code', 225, 'thriller', 'Dan Brown'),
('5', 'The Lost Symbol', 230, 'thriller', 'Dan Brown'),
('6', 'Angel and Demons', 248, 'thriller', 'Dan Brown'),
('7', 'Kane and Abel', 229, 'fiction', 'Jefferey Archer'),
('8', 'The Sins of the Father', 245, 'fiction', 'Jeffrey Archer'),
('9', 'Only Time Will tell', 265, 'fiction', 'Jeffrey Archer');

-- --------------------------------------------------------

--
-- Table structure for table `oders`
--

CREATE TABLE `oders` (
  `oder_p` varchar(30) NOT NULL,
  `username_p` varchar(20) NOT NULL,
  `shipped_p` varchar(20) NOT NULL,
  `total_price_p` varchar(20) NOT NULL,
  `piece` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oders`
--

INSERT INTO `oders` (`oder_p`, `username_p`, `shipped_p`, `total_price_p`, `piece`) VALUES
('13', 'vaishnu', '1', '108.90', '1'),
('2', 'vaishnu', '1', '1711.60', '4'),
('7', 'vaishnu', '0', '687', '3'),
('11', 'pbhatia', '1', '369', '3'),
('12', 'pbhatia', '0', '290.40', '3'),
('11', 'wasim', '0', '135.3', '1'),
('16', 'wasim', '0', '321', '3'),
('12', 'Shakti', '1', '484.00', '5'),
('14', 'Shakti', '0', '235.40', '2'),
('12', 'raja', '0', '440', '5'),
('14', 'gargabhay', '0', '588.50', '5'),
('16', 'raja', '0', '535', '5'),
('4', 'raja', '0', '900', '4'),
('10', 'Honey', '1', '478', '2'),
('16', 'Honey', '1', '535', '5'),
('16', 'Honey', '1', '535', '5'),
('12', 'Honey', '0', '440', '5'),
('13', 'Honey', '1', '396', '4'),
('16', 'Honey', '1', '535', '5'),
('1', 'Honey', '0', '360.80', '2'),
('1', 'Honey', '0', '360.80', '2'),
('1', 'Honey', '0', '', ''),
('12', 'Honey', '0', '440', '5'),
('12', 'Honey', '0', '484.00', '5');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `fname` varchar(11) NOT NULL,
  `lname` varchar(11) NOT NULL,
  `username` varchar(11) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`fname`, `lname`, `username`, `password`, `email`) VALUES
('abhay', 'garg', 'gargabhay', '123ert', 'gargabhay1999@gmail.com'),
('Honey', 'Rajput', 'Honey', '789', 'H@gmail.com'),
('hgf', 'ttt', 'kjh', 'lki', '123@yahoo.com'),
('prayag', 'akram', 'raja', '456', 'saksham@gmail.com'),
('Shivam', 'Pratap Sing', 'shivam', '123456789', 's@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin1`
--
ALTER TABLE `admin1`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
