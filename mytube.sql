-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2022 at 09:45 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mytube`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'om', 'om@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `country` varchar(50) NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `fname`, `lname`, `email`, `country`, `text`) VALUES
(1, 'om', 'gohel', 'omgohel7866@gmail.com', 'indin', 'sfsfjosfjpofsj'),
(2, 'parth', 'alogo', 'p@rku.ac.in', 'indin', 'csckcoskokcokc'),
(3, 'vishal', 'vashani', 'v@gmail.com', 'us', 'dkosfskfoskfsofkopfof'),
(4, 'dfg', 'vfg', 'd@rku.ac.in', 'japan', 'cgbccvbcvbcvcvbcbvc'),
(5, 'grtreer', 'huhuhu', 'q@gmaol.covm', 'indin', 'josjoisfjsoifoffoj'),
(6, 'sachin', 'gohel', 's@gmal.com', 'us', 'okosfkoffokf'),
(7, 'grtreer', 'huhuhu', 'q@gmaol.covm', 'indin', 'josjoisfjsoifoffoj');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(25) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `Email`, `password`) VALUES
('om', 'o@okook', '123');

-- --------------------------------------------------------

--
-- Table structure for table `review_table`
--

CREATE TABLE `review_table` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_rating` varchar(50) NOT NULL,
  `user_review` varchar(50) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review_table`
--

INSERT INTO `review_table` (`id`, `user_name`, `user_rating`, `user_review`, `datetime`) VALUES
(1, 'om', '4', 'cvxcvxcv', '0000-00-00 00:00:00'),
(2, 'om', '5', 'hty', '0000-00-00 00:00:00'),
(3, 'parth ', '5', 'good', '0000-00-00 00:00:00'),
(4, 'cv', '2', 'jffj', '0000-00-00 00:00:00'),
(5, 'ccc', '1', 'cccxxc', '0000-00-00 00:00:00'),
(6, 'ccc', '1', 'mvxv', '0000-00-00 00:00:00'),
(7, 'ccc', '1', 'mvxv', '0000-00-00 00:00:00'),
(8, 'ccc', '1', 'xcvcv', '0000-00-00 00:00:00'),
(9, 'himloo', '2', 'doad', '0000-00-00 00:00:00'),
(10, 'aajy', '5', 'good girl', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `contactno` varchar(11) DEFAULT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`, `contactno`, `posting_date`) VALUES
(1, 'Om', 'Gohel', 'Om@rku.ac.in', '123456', '1234567890', '2022-08-31 04:17:17'),
(2, 'om', 'lol', 'om@gmail.com', '123456', '1234567890', '2022-09-01 03:44:07'),
(3, 'qwert', 'qwert', 'o@gmail.com', '123456', '123456789', '2022-09-01 03:44:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
