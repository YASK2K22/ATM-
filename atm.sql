-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2025 at 06:02 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atm`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `r_id` int(9) NOT NULL,
  `r_name` varchar(255) NOT NULL,
  `r_cont` bigint(15) NOT NULL,
  `r_age` int(9) NOT NULL,
  `r_username` varchar(255) NOT NULL,
  `r_pass` varchar(255) NOT NULL,
  `r_add` varchar(255) NOT NULL,
  `r_pin` varchar(255) NOT NULL,
  `r_acc_no` varchar(255) NOT NULL,
  `r_ifsc` varchar(255) NOT NULL,
  `r_acc_type` varchar(255) NOT NULL,
  `r_nominee` varchar(255) NOT NULL,
  `r_flag` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`r_id`, `r_name`, `r_cont`, `r_age`, `r_username`, `r_pass`, `r_add`, `r_pin`, `r_acc_no`, `r_ifsc`, `r_acc_type`, `r_nominee`, `r_flag`) VALUES
(4, 'Yash Kandikatla', 978797971, 32, '123123', '12345', '1857, Datta Nagar , Solapur-413005', 'ACE12345', 'SAMBK123', 'SAVINGS', 'sushant shrimal', '123123', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`r_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `r_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
