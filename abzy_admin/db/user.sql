-- phpMyabzy_admin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyabzy_admin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2019 at 01:16 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autoden_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `user_level` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pswd` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `encrypt_pswd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `user_level`, `username`, `email`, `pswd`, `created`, `updated`, `encrypt_pswd`) VALUES
(1, 1, 'abzy_admin test', 'abzy_admin@abzy_admin.com', 'abzy_admin123', '2019-10-04 16:45:39', '2019-10-04 16:45:39', ''),
(2, 3, 'abzy_admin', 'deepakamble281@gmail.com', 'ram1950', '2019-10-14 16:05:09', '2019-10-14 16:05:09', ''),
(3, 2, 'abzy_admin', 'sona20.kamble@gmail.com', 'ram1950', '2019-10-14 16:09:30', '2019-10-14 16:09:30', ''),
(4, 3, 'abzy_admin', 'advertiser@gmail.com', '123456789', '2019-10-14 16:11:57', '2019-10-14 16:11:57', ''),
(5, 2, 'abzy_admin', 'test123@test.com', '123456', '2019-10-14 16:12:19', '2019-10-14 16:12:19', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
