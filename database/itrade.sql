-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2018 at 06:40 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `itrade`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE IF NOT EXISTS `agent` (
`id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_image` varchar(255) NOT NULL,
  `main_cat` varchar(255) NOT NULL,
  `sub_cat` varchar(255) NOT NULL,
  `pro_discrip` varchar(255) NOT NULL,
  `company_profile` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `organization` varchar(255) NOT NULL,
  `mo_no` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `agriculture`
--

CREATE TABLE IF NOT EXISTS `agriculture` (
`id` int(11) NOT NULL,
  `news` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE IF NOT EXISTS `buyer` (
`id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_image` varchar(255) NOT NULL,
  `main_cat` varchar(255) NOT NULL,
  `sub_cat` varchar(255) NOT NULL,
  `pro_discrip` varchar(255) NOT NULL,
  `company_profile` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `organization` varchar(255) NOT NULL,
  `mo_no` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
`city_id` int(255) NOT NULL,
  `state_id` varchar(255) NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `state_id`, `city_name`) VALUES
(2, '1', 'ewee'),
(3, '1', 'gg');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
`country_id` int(255) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'Rajkot'),
(3, 'india');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE IF NOT EXISTS `enquiry` (
  `full name` varchar(255) NOT NULL,
  `organization_name` varchar(255) NOT NULL,
  `mo_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
`id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `email`, `type`) VALUES
(1, 'punam', 'punam', 'tank.mina1997@gmail.com', ''),
(3, 'mina', 'mina', 'tank.mina1997@gmail.com', 'admin'),
(5, 'kuldeep', 'kuldeep', 'tank.mina1997@gmail.com', 'admin'),
(6, 'kuldeepshihjadeja', 'kuldeepshihjadeja', 'kuldeepshihjadeja@gmail.com', ''),
(7, 'kuldeepshihjadeja', 'kuldeepshihjadeja', 'kuldeepshihjadeja@gmail.com', ''),
(8, 'shivam', '12345', 'asharashivam@gmail.com', ''),
(9, 'shivam', '12345', 'asharashivam@gmail.com', ''),
(10, 'kuldeep', 'kuldeep', 'mina@gmail.com', ''),
(11, 'kuldeep', 'kuldeep', 'mina@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `main_cat`
--

CREATE TABLE IF NOT EXISTS `main_cat` (
`id` int(11) NOT NULL,
  `main_name` varchar(255) NOT NULL,
  `main_image` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_cat`
--

INSERT INTO `main_cat` (`id`, `main_name`, `main_image`) VALUES
(1, 'ererr', 'Jellyfish.jpg'),
(2, 'cars', 'Penguins.jpg'),
(3, 'bike', 'Hydrangeas.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE IF NOT EXISTS `membership` (
`u_id` int(11) NOT NULL,
  `Pass` varchar(255) NOT NULL,
  `retype_pass` varchar(255) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `contact_person` varchar(255) NOT NULL,
  `mo_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `c_address` varchar(255) NOT NULL,
  `membership_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`pro_id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `pro_name` varchar(255) NOT NULL,
  `pro_image` varchar(255) NOT NULL,
  `pro_descrip` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `sub_id`, `pro_name`, `pro_image`, `pro_descrip`) VALUES
(2, 5, 'bike', 'Hydrangeas.jpg', 'bbbb'),
(3, 4, 'car', 'Tulips.jpg', 'super car');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE IF NOT EXISTS `seller` (
`id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_image` varchar(255) NOT NULL,
  `main_cat` varchar(255) NOT NULL,
  `sub_cat` varchar(255) NOT NULL,
  `pro_discrip` varchar(255) NOT NULL,
  `company_profile` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `organization` varchar(255) NOT NULL,
  `mo_no` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
`state_id` int(255) NOT NULL,
  `country_id` varchar(255) NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `country_id`, `state_name`) VALUES
(1, '1', 'hujjbhjbgv'),
(3, '3', 'mp'),
(4, '1', 'godal');

-- --------------------------------------------------------

--
-- Table structure for table `sub_cat`
--

CREATE TABLE IF NOT EXISTS `sub_cat` (
`sub_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `sub_cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_cat`
--

INSERT INTO `sub_cat` (`sub_id`, `id`, `sub_cat_name`) VALUES
(3, 2, 'bmw'),
(4, 2, 'od'),
(5, 3, 'honda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agriculture`
--
ALTER TABLE `agriculture`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
 ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
 ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_cat`
--
ALTER TABLE `main_cat`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
 ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
 ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `sub_cat`
--
ALTER TABLE `sub_cat`
 ADD PRIMARY KEY (`sub_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `agriculture`
--
ALTER TABLE `agriculture`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
MODIFY `city_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
MODIFY `country_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `main_cat`
--
ALTER TABLE `main_cat`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
MODIFY `state_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sub_cat`
--
ALTER TABLE `sub_cat`
MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
