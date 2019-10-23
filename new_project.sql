-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2019 at 11:52 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `server`
--

CREATE TABLE IF NOT EXISTS `server` (
  `id` int(11) NOT NULL,
  `servername` varchar(200) NOT NULL,
  `servertype` varchar(200) NOT NULL,
  `serverstructure` varchar(200) NOT NULL,
  `os` varchar(200) NOT NULL,
  `susername` varchar(200) NOT NULL,
  `spassword` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `server`
--

INSERT INTO `server` (`id`, `servername`, `servertype`, `serverstructure`, `os`, `susername`, `spassword`) VALUES
(1, 'rms', 'FileServer', 'AS/400', 'Windows', 'rms', 'ba431d163238dc15bc32c6a9ad77ca92'),
(39, 'allsolution', 'ApplicationServer', 'Virtual', 'Netware', 'allsolution', 'c9e2862b26a0c4c70cb8fc1868ad5f33'),
(40, 'new', 'PrintServer', 'CHServer', 'LinuxorUnix', 'new', 'chinta'),
(41, 'rmsmani', 'PrintServer', 'AS/400', 'LinuxorUnix', 'rmsmani', '07cd55c7b42715ec44c133a6a165e8d2'),
(55, 'suren', 'FileServer', 'AS/100', 'Windows', 's', '03c7c0ace395d80182db07ae2c30f034'),
(56, 'cash', 'PrintServer', 'AS100', 'Windows', 'ss', '3691308f2a4c2f6983f2880d32e29c84'),
(60, 'suren', 'PrintServer', 'AS', 'Windows', 'a', '0cc175b9c0f1b6a831c399e269772661'),
(62, 'c', 'FileServer', 'AS/400', 'Windows', 'c', 'a0186f666ac7c111cacfbc21b80974a3'),
(63, 'g', 'FileServer', 'AS/100', 'Windows', 'g', 'b2f5ff47436671b6e533d8dc3614845d'),
(65, 'erasier', 'PrintServer', 'CHServer', 'LinuxorUnix', 'erasier', '9f530e929e7db5cdea866782f34f2d3a');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `Firstname` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `cpassword` varchar(200) NOT NULL,
  `servername` varchar(200) NOT NULL,
  `susername` varchar(200) NOT NULL,
  `spassword` varchar(200) NOT NULL,
  `captcha_code` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Firstname`, `username`, `email`, `password`, `cpassword`, `servername`, `susername`, `spassword`, `captcha_code`) VALUES
(1, 'mani', 'mani', 'mani@gmail.com', 'mani', 'mani', '1', '', '914', ''),
(40, 'test_k', 'test_k_last', 'test_k@gmail.com', 'c6633beb129908e142470626a230d4ad', 'c6633beb129908e142470626a230d4ad', '0', '', '', ''),
(41, 'k', 'k', 'k@gmail.com', '8ce4b16b22b58894aa86c421e8759df3', '8ce4b16b22b58894aa86c421e8759df3', '0', '', '', ''),
(42, 'hello', 'hello', 'hello@gmail.com', '5d41402abc4b2a76b9719d911017c592', '5d41402abc4b2a76b9719d911017c592', '0', '', '', ''),
(47, 'happy', 'happy', 'happy@gmail.com', '56ab24c15b72a457069c5ea42fcfc640', '56ab24c15b72a457069c5ea42fcfc640', '0', '', '', ''),
(55, 'phone', 'phone', 'phone@gmail.com', 'f7a42fe7211f98ac7a60a285ac3a9e87', 'f7a42fe7211f98ac7a60a285ac3a9e87', '0', '', '', ''),
(56, 'guires', 'solution', 'guiressolution@gmail.com', 'c00425797de3c98e7b32e814b54a6ec5', 'c00425797de3c98e7b32e814b54a6ec5', '0', '', '', ''),
(57, 'k1', 'k1', 'k1@gmail.com', 'b637b17af08aced8850c18cccde915da', 'b637b17af08aced8850c18cccde915da', '0', '', '', ''),
(58, 'surya', 'bala', 'surya@gmail.com', 'aff8fbcbf1363cd7edc85a1e11391173', 'aff8fbcbf1363cd7edc85a1e11391173', '0', '', '', ''),
(59, 'advance', 'advance', 'advance@gmail.com', 'e0bd4e89620ec924b27166975a2dda57', 'e0bd4e89620ec924b27166975a2dda57', '0', '', '', ''),
(60, 'rack', 'rack', 'rack@gmail.com', '11690b09f16021ff06a6857d784a1870', '11690b09f16021ff06a6857d784a1870', '0', '', '', ''),
(61, 'about', 'about', 'about@gmail.com', '46b3931b9959c927df4fc65fdee94b07', '46b3931b9959c927df4fc65fdee94b07', '0', '', '', ''),
(62, '', '', '', '', '', '$servername', '$s_username', '$s_password', '');

-- --------------------------------------------------------

--
-- Table structure for table `website`
--

CREATE TABLE IF NOT EXISTS `website` (
  `id` int(11) NOT NULL,
  `websitename` varchar(200) NOT NULL,
  `websitetype` varchar(200) NOT NULL,
  `websitestructure` varchar(200) NOT NULL,
  `wos` varchar(200) NOT NULL,
  `wusername` varchar(200) NOT NULL,
  `wpassword` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website`
--

INSERT INTO `website` (`id`, `websitename`, `websitetype`, `websitestructure`, `wos`, `wusername`, `wpassword`) VALUES
(1, 'mani', 'FileServer', 'CHServer', 'Windows', 'mani', 'b9b89293b51f92dec2557c86d5bdfacf'),
(2, 'admin1', 'PrintServer', 'CHServer', 'Windows', 'admin1', '77e2edcc9b40441200e31dc57dbb8829'),
(3, 'color', 'Application Server', 'Blade', 'Netware', 'color', '70dda5dfb8053dc6d1c492574bce9bfd'),
(4, 'images123', 'PrintServer', 'CHServer', 'LinuxorUnix', 'images123', '7a65a3832be70db8e6d4228051e48213'),
(9, 'u', 'FileServer', 'AS/100', 'Windows', 'u', '7b774effe4a349c6dd82ad4f4f21d34c'),
(10, 'mani', 'FileServer', 'AS/100', 'Windows', 'mani', '07cd55c7b42715ec44c133a6a165e8d2'),
(11, 'pencil', 'PrintServer', 'CHServer', 'LinuxorUnix', 'pencil', 'a8f6830bce790a8a67fc2e84e12093ba');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `server`
--
ALTER TABLE `server`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `server`
--
ALTER TABLE `server`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `website`
--
ALTER TABLE `website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
