-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2019 at 01:30 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_files`
--

CREATE TABLE `admin_files` (
  `admin_file_id` int(11) NOT NULL,
  `admin_files` varchar(255) NOT NULL,
  `admin_file_description` varchar(255) NOT NULL,
  `admin_file_created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `admin_course_type` varchar(255) NOT NULL,
  `cipher` varchar(255) NOT NULL,
  `file_type` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_files`
--

INSERT INTO `admin_files` (`admin_file_id`, `admin_files`, `admin_file_description`, `admin_file_created_on`, `admin_course_type`, `cipher`, `file_type`) VALUES
(7, 'hcIhpGG+h7VX6fbtHBC3Qhx1Lx79qiF7iJCvxbL0g1M=', 'test', '2019-04-11 07:04:50', 'SEO', 'I1klRiTPVIeFlUQ+SDO3MfOX5ZYKwn4vwuDO83RiuBpjtKzo8BPIfF+gad/tEW8kbj/sotXujhBOgB8Qe08org==', 'Jv1B4q9tVTg0BRa/5Aa50Y2VuhuiVZSBeT8QLoJFFDw4cEYzzO1sUiEsMWK7Yxwa1cbMoULSgu1xqFZySBCaRg=='),
(8, 'xdtPeiIk7aooDEZuvW0KttfSwrpWYrv6r8qmJR3RLe5Nrd985TEaZclW/34ND4gYUk4pr9F6Z8EhL+2b5BzUgXffo6As7U3DQShXsHW/mo0atLGZJE5hdI6j/5WQpfQo', 'vedio', '2019-04-11 07:10:32', 'SEO', 'jkR1vhi7+QKaEsycsMkJJEVi+9fT1h+P4+L8xLc46iWs95ZgDel8O4b/psyDw1bqKjSPf+vOd9o6AJWo59RpBNRzd3AL1ogHNv8PT0DyvlbnIiZL6LxUFPNvghcsltSFl4cnHp3ikpBjTwbw2Zxf676muK0+vOvnHDrm3QjkHWs=', 'qV/PCA2EUAncGJP3r7DB3EoYBR0WMbUA5oy0ppgS0QfZfcxIIylbM0rKq64fFrzUuW4+y70mLNkTRQwCbfdj+A=='),
(9, 'cEAW1cAwHl+euDaMFUBg0W3capzKZK7zLQ1orYKywe0=', 'test', '2019-04-11 07:10:45', 'SEO', 'dgtRU+O7eW/QO54j7F1UKXbixw9vVG5xhCm1CNSrSL92HccLDFGlPMqJhjIB+uOqmS4tTliAU1Fe8FsMgywj9Q==', 'sKIFWFs6btA269woUAEf84VPO1X/Lk2hRwpZIGbk3H3tYrEmSvIx5kjpahd7VFfd8EmaEP4oPSj2ze+6F/Corw=='),
(11, 'hcIhpGG+h7VX6fbtHBC3Qhx1Lx79qiF7iJCvxbL0g1M=', 'test', '2019-04-11 07:16:36', 'SEO', 'e0rMB0quscSs2DN+7NamRmhqVHPG4mdYYyHLb8xOlPRMQD+leMX23GnTxWl4A2PYC8Smj/YtXWWldGuPTxk4bA==', 'gAaQu4P6TTS1az9f//Yu6vW6PaT4Fvrbpzw5sO8I2gftkx8Mh71KHwfskOSqVMDRyvL01VES/HawwgKhW5LDsg==');

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `id` bigint(13) UNSIGNED NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `word` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `captcha`
--

INSERT INTO `captcha` (`id`, `captcha_time`, `ip_address`, `word`) VALUES
(1, 1554783523, '::1', 'gtEnlp2Z'),
(2, 1554784493, '::1', '1cR7iedO'),
(3, 1554784740, '::1', 'rGiZUmvF'),
(4, 1554785941, '::1', 'epcBjeuJ'),
(5, 1554787964, '::1', 'fvvNO2Rr'),
(6, 1554788337, '::1', 'CWGQ8PKL'),
(7, 1554788506, '::1', 'jYY0f1Ss'),
(8, 1554788521, '::1', 'CANaMg5d'),
(9, 1554788532, '::1', 'fSlOWf9b'),
(10, 1554788551, '::1', 'RBag7bab'),
(11, 1554791117, '::1', '5BcKbgIX'),
(12, 1554794209, '::1', 'Yj9Ji6wS'),
(13, 1554794510, '::1', 'uHFmSto7'),
(14, 1554794811, '::1', 'SVVcrrY4'),
(15, 1554799392, '::1', '2L88hpBO'),
(16, 1554799410, '::1', 'KwzR9mls'),
(17, 1554799429, '::1', 'tl8xUcRJ'),
(18, 1554799452, '::1', 'agZsbUyZ'),
(19, 1554799857, '::1', '3erVMdbp'),
(20, 1554805963, '::1', 'mldF01RS'),
(21, 1554807249, '::1', 'iepYRW47'),
(22, 1554807823, '::1', 'E8uUJk8P'),
(23, 1554807933, '::1', 'glzMiisL'),
(24, 1554807947, '::1', 'yOT7NIfa'),
(25, 1554807961, '::1', 's4gqVxcS'),
(26, 1554807984, '::1', 'CdkyWUOh'),
(27, 1554808001, '::1', 'FN1msRM7'),
(28, 1554808233, '::1', 'ZhqsmKHw'),
(29, 1554808250, '::1', 'FdX3IMB0'),
(30, 1554808266, '::1', 's0QIhDGo'),
(31, 1554808654, '::1', 'e4J343xF'),
(32, 1554809142, '::1', 'BPFjTJ6E'),
(33, 1554809148, '::1', 'uIfPYRHQ'),
(34, 1554809470, '::1', '8Woh7zuf'),
(35, 1554810174, '::1', 'X5Ssm84d'),
(36, 1554810429, '::1', 'nDueizwm'),
(37, 1554810903, '::1', 'h801bDnh'),
(38, 1554810921, '::1', 'lasklGlB'),
(39, 1554812187, '::1', 'YOZB4kcW'),
(40, 1554812208, '::1', 'xNQugbNw'),
(41, 1554812365, '::1', 'zaXM0o7A'),
(42, 1554813122, '::1', '9df5AKnl'),
(43, 1554813152, '::1', 'FMlwWCZ4'),
(44, 1554813273, '::1', 'PsHPWPYH'),
(45, 1554813376, '::1', '30vSoHbg'),
(46, 1554813717, '::1', 'BosJ1hwP'),
(47, 1554813976, '::1', 'qBuYkRPs'),
(48, 1554814273, '::1', 'JG3DTMP4'),
(49, 1554870066, '::1', 'jG2tJ2sm'),
(50, 1554871325, '::1', 'djMGGgPv'),
(51, 1554871925, '::1', 'Jt0WDAly'),
(52, 1554872525, '::1', 'UaKaFQT9'),
(53, 1554873125, '::1', 'ozdeK3iF'),
(54, 1554873725, '::1', 'SWjtjb1H'),
(55, 1554874325, '::1', 'w9iWV7Nk'),
(56, 1554874925, '::1', 'Fcmpb7iO'),
(57, 1554874974, '::1', 'etGp4sP3'),
(58, 1554875088, '::1', 'VnXHaLin'),
(59, 1554875189, '::1', 'VoRb17IS'),
(60, 1554875228, '::1', 'SBFav9Ht'),
(61, 1554875234, '::1', 'iOBletSK'),
(62, 1554875235, '::1', 'fyCTAGyr'),
(63, 1554875237, '::1', 'czc8PbO2'),
(64, 1554875252, '::1', 'sF3UQjKk'),
(65, 1554875279, '::1', 'xAgJ7w3V'),
(66, 1554875289, '::1', 'rqC2BH3L'),
(67, 1554877077, '::1', 'hjZ90806'),
(68, 1554877261, '::1', 'hPjjRoYA'),
(69, 1554877625, '::1', 'xDNs4uRi'),
(70, 1554877747, '::1', 'UXeGCOWW'),
(71, 1554877762, '::1', 'DZ1yBJQs'),
(72, 1554877950, '::1', 'ZSP9mbwk'),
(73, 1554878005, '::1', 'hI2PWPok'),
(74, 1554878175, '::1', 'IpqIiEMd'),
(75, 1554878275, '::1', 'uDVPdKxc'),
(76, 1554878364, '::1', '5spnL5tP'),
(77, 1554878603, '::1', '6oam5qGR'),
(78, 1554878805, '::1', 'KIxBvRR5'),
(79, 1554878879, '::1', 'MZPBmfSv'),
(80, 1554878954, '::1', 'Vb0R01Ex'),
(81, 1554879215, '::1', 'CGKOHLJV'),
(82, 1554879229, '::1', 'r2QEgjhp'),
(83, 1554879917, '::1', 'MyLprHQ4'),
(84, 1554880175, '::1', 'Jf1cnLi4'),
(85, 1554955796, '::1', '5pHQprrF'),
(86, 1554956096, '::1', 'awVNIyjh'),
(87, 1554956297, '::1', 'oyqonDia'),
(88, 1554956310, '::1', 'oXLahG79'),
(89, 1554956568, '::1', 'al3xG2jU'),
(90, 1554956595, '::1', 'b7EdKrqr'),
(91, 1554956747, '::1', 'jK4rMArR'),
(92, 1554956937, '::1', '7BMZa2jm'),
(93, 1554957040, '::1', 'fZog7Ksk'),
(94, 1554957126, '::1', 'MiFOT5Fb'),
(95, 1554957261, '::1', 'jBxicry0'),
(96, 1554957276, '::1', 'AkoDnL3v'),
(97, 1554958070, '::1', 'TAWJHt9f'),
(98, 1554958405, '::1', 'evECTVtk'),
(99, 1554959218, '::1', 'hhJ1SFfQ'),
(100, 1554959236, '::1', 'G5R9VIHl'),
(101, 1554959398, '::1', 'tTEAClDD'),
(102, 1554959416, '::1', 'I4erAQiy'),
(103, 1554959551, '::1', 'hrvt8dyA'),
(104, 1554959862, '::1', 'OXAaTJ7u'),
(105, 1554960253, '::1', 'PGvNReve'),
(106, 1554962112, '::1', 'iPhJx66e'),
(107, 1554962877, '::1', 'k7nKscIu'),
(108, 1554963065, '::1', 'UsjDYCmC'),
(109, 1554963353, '::1', 'GdCHsHyV'),
(110, 1554963586, '::1', 'UdedO4o9'),
(111, 1554963610, '::1', 'Pr6TY3c0'),
(112, 1554963626, '::1', 'mo49N8aC'),
(113, 1554963721, '::1', 'oXWKVoq1'),
(114, 1554963820, '::1', 'eqgPRckT'),
(115, 1554963947, '::1', 'E63Tm42R'),
(116, 1554964071, '::1', 'CF7AW9OJ'),
(117, 1554964086, '::1', 'LULQXVpe'),
(118, 1554964157, '::1', '54osKmVI'),
(119, 1554964220, '::1', 'nIOX6nSC'),
(120, 1554966053, '::1', 'BqwwSfcN'),
(121, 1554966304, '::1', 'KhmpaleN'),
(122, 1554966317, '::1', 'ZWiz4DnU'),
(123, 1554966607, '::1', 'O0bF9xxt'),
(124, 1554966856, '::1', 'cQkzTSUK'),
(125, 1554966933, '::1', 'LhSLaeG6'),
(126, 1554979766, '::1', 'q28vl5Um'),
(127, 1554979782, '::1', 'hG9CBxaY'),
(128, 1554980823, '::1', 'wgmhX7L9'),
(129, 1554984010, '::1', 'iBAT0ajX'),
(130, 1554984605, '::1', 's13aK06t'),
(131, 1554985204, '::1', 'OWYSn9tQ'),
(132, 1554985800, '::1', '020vtBa7'),
(133, 1554986397, '::1', 'h1gwhNeH'),
(134, 1554986994, '::1', 'aMFc0d4K'),
(135, 1555062031, '::1', 'txVQCxqd'),
(136, 1555062632, '::1', 'SgelRa6h'),
(137, 1555063457, '::1', 'OpXr2BkF'),
(138, 1555064056, '::1', '11LNWgXY'),
(139, 1555064368, '::1', 'o0BX8WiW'),
(140, 1555064669, '::1', 'S16Qce4S'),
(141, 1555064969, '::1', 'Fmp78o1Y'),
(142, 1555065270, '::1', 'F6bSCbtG'),
(143, 1555065406, '::1', 'qiEaLznA'),
(144, 1555065570, '::1', 'WRtlyMPA'),
(145, 1555065871, '::1', 'ydVT8m9j'),
(146, 1555912414, '::1', 'cUCalk8x'),
(147, 1555913363, '::1', 'OJRnBivF'),
(148, 1555913963, '::1', 'khWhQEkO'),
(149, 1555914563, '::1', 'Fn5Cfo5y'),
(150, 1555915163, '::1', 'QK6I1C3W'),
(151, 1556173718, '::1', '3XDHLpov'),
(152, 1557320440, '::1', 'QbF5MkBw'),
(153, 1557320448, '::1', '33iFVzux');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('9g9qpdk87orl1gmfe1f2mf80lrjka8kl', '::1', 1555063276, 0x757365725f6e616d657c733a313a2261223b757365725f6d61696c5f69647c733a31313a226140676d61696c2e636f6d223b757365725f69647c733a313a2232223b73657373696f6e5f69647c733a33323a223967397170646b38376f726c31676d66653166326d6638306c726a6b61386b6c223b),
('6tiiqu1hqujdbflqojdsl93p6e6tbfv1', '::1', 1555063623, ''),
('qvsltg59ft66p8v1runpvguo1v0k9erg', '::1', 1555064056, ''),
('hurtjku1jpu1sb08jsjikd7buqrno5ef', '::1', 1555064368, ''),
('t5joakrkgimrjtb7ffqbijn4j861lgm7', '::1', 1555064668, ''),
('tic88uhjdhcupj88mb79u0aqcpk57re7', '::1', 1555064969, ''),
('1h27e1cqmhn5qc19ng2btrbje00s9ns8', '::1', 1555065269, ''),
('oc5bj4tvp8hc77qg58klms71j3m102og', '::1', 1555065406, ''),
('ocgvr3igvdhivtnsej35taknhklpdro1', '::1', 1555065570, ''),
('qmdbd3lsqkr05r3j7vq71b22bao6vliv', '::1', 1555065870, ''),
('is3b0kv6o950rqapv9bfj6qlb5qj552t', '::1', 1555912457, 0x757365725f6e616d657c733a313a2261223b757365725f6d61696c5f69647c733a31313a226140676d61696c2e636f6d223b757365725f69647c733a313a2232223b73657373696f6e5f69647c733a33323a2269733362306b76366f39353072716170763962666a36716c6235716a35353274223b),
('mkqomdj41h4i0ed1elegtufn1ag0h6vl', '::1', 1555913963, ''),
('748d6ou4va27bs1iok889lueehv4d2av', '::1', 1555914563, ''),
('lmgpauk1jg6r8jbgmosh2bb2fr7eofcc', '::1', 1555915163, ''),
('4tnk6pb5v58o99skcku2j4aah7bmc0ot', '::1', 1556173717, ''),
('1qk569jadttmr22uricre84c7ctbp56q', '::1', 1557320440, ''),
('9tra8s4r1kkcg7k8p14673j8a4qld68s', '::1', 1557320448, '');

-- --------------------------------------------------------

--
-- Table structure for table `e_learning_admin`
--

CREATE TABLE `e_learning_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `e_learning_admin`
--

INSERT INTO `e_learning_admin` (`admin_id`, `admin_username`, `admin_email`, `admin_password`) VALUES
(1, 'LMS_admin', 'lmsadmin2019@gmail.com', 'LMS_admin_19');

-- --------------------------------------------------------

--
-- Table structure for table `false_authentication`
--

CREATE TABLE `false_authentication` (
  `false_id` int(11) NOT NULL,
  `false_count` int(11) NOT NULL,
  `user_mail_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `private_files`
--

CREATE TABLE `private_files` (
  `private_file_id` int(11) NOT NULL,
  `private_files` varchar(255) NOT NULL,
  `private_file_description` varchar(255) NOT NULL,
  `user_mail_id` varchar(255) NOT NULL,
  `private_file_created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cipher` varchar(255) NOT NULL,
  `private_course` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `private_files`
--

INSERT INTO `private_files` (`private_file_id`, `private_files`, `private_file_description`, `user_mail_id`, `private_file_created_on`, `cipher`, `private_course`, `file_type`) VALUES
(1, 'hcIhpGG+h7VX6fbtHBC3Qhx1Lx79qiF7iJCvxbL0g1M=', 'test', 'a@gmail.com', '2019-04-12 09:59:14', '23Qh6wt0rb9IePeVoQdrOPrhVa5UDOxJwDxXTTNtKR6faI/hYI3T/Zjmqbnkd/Fi1VfJ2esPG/DDGKQXK8Ee3A==', 'SEO', 'Z95ZfLJSeas/m2jOfp7ogYQPvxuipSs3YiwpZARy4gh0bZ4IgdsGKJJbLbz7n9sYVOL8RS4KgIYQ6/Q/72hinw=='),
(2, 'hcIhpGG+h7VX6fbtHBC3Qhx1Lx79qiF7iJCvxbL0g1M=', 'test', 'a@gmail.com', '2019-04-12 09:59:46', 'r1JFXfXdSt1TFvecohql+/LVKmQbGUGkpaqR9Up2duH7fckC6XXHMLUS1Txu4Vpv6TiSVAeW2GnaqKgOIQT8oQ==', 'SEO', 'Kkpba+m+deiUgV0u/RaEMWW8sAcrOL76ZPnOj9EsglTF2b5z46kljP69r4FQFxmyIQjx+NWF/opusALrxzq8YQ=='),
(3, 'hcIhpGG+h7VX6fbtHBC3Qhx1Lx79qiF7iJCvxbL0g1M=', 'test', 'a@gmail.com', '2019-04-12 10:00:26', 'SfQUWvQ14CYIyVs0xHv26OYtpjcVwbe4pjXJcv/GDcswdEM+YuyJ9ZtAdea4wxkijQS0l0GSqXJYuyw1Trf3MA==', 'SEO', 'jkHeE8HGavPLlQY/kjCd8b2gSuJgYKq53/w0AICz9zJvBf1NUxVRDBcSlMDVXnvXPDItOTuYkcBN8cZdeAfZWw=='),
(4, 'hcIhpGG+h7VX6fbtHBC3Qhx1Lx79qiF7iJCvxbL0g1M=', 'test', 'a@gmail.com', '2019-04-12 10:01:16', '8XPMgQFWxNdD+vJ0i/nl8OYLl4eGn6o3IQ4UWi63PtbfVdspZrgXGQQC9HIyNvt9w1o9GWefSsRl71Q3cOs39Q==', 'SEO', 'PG6UGcbx5W9mk+/KgvsxQoXVS/QTOcho8UzifwKnBzb9yM6AZ5qE05bV7eIHz4vTjb84gAxVrXjkgh9NR/n89w==');

-- --------------------------------------------------------

--
-- Table structure for table `public_files`
--

CREATE TABLE `public_files` (
  `public_file_id` int(11) NOT NULL,
  `public_files` varchar(255) NOT NULL,
  `public_file_description` varchar(255) NOT NULL,
  `user_mail_id` varchar(255) NOT NULL,
  `public_file_created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cipher` varchar(255) NOT NULL,
  `public_course` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `public_files`
--

INSERT INTO `public_files` (`public_file_id`, `public_files`, `public_file_description`, `user_mail_id`, `public_file_created_on`, `cipher`, `public_course`, `file_type`) VALUES
(1, 'hcIhpGG+h7VX6fbtHBC3Qhx1Lx79qiF7iJCvxbL0g1M=', 'test', 'a@gmail.com', '2019-04-12 09:58:45', 'xaz2nE8PqCWMR8EP9QMswMS20qkVgvrYmSV81sRLB/sbe7tiyuXQBrf+gEJ8ur2yF4plWZEEPUvLyrLvmw//0g==', 'SEO', 'HgkYdh6cWb237veFJaNyAyTqpmdpACJdQcO/KdO+BbqY6wLGDXBhv1YCcAs0CApikaQP77HOceX9nclz6dao8A=='),
(2, 'ct+ilK2XvYywatK9wNR77gEyOFSBGiFOeb1S+NwgFj4=', 'test', 'a@gmail.com', '2019-04-22 05:54:17', '42s8mrIks0lA/R4MX5VA+XXHMG69HY9Ps+WUkOUPGU0WXSSuQkLzW0lhNP2rHLXvY0WbGIDZ1x7pkRoLLojcyg==', 'SEO', 'EBzp1XSP0jRLYQ1JBi/DOkP+EssVfH58QA8HJWUP4cmcu5TCbN94CwhRXTiYVSP0wd9iT8rmjcjxN1fTtukuiA==');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `user_id` int(11) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_mail_id` varchar(255) NOT NULL,
  `user_dob` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_confirm_password` varchar(255) NOT NULL,
  `user_mobile_number` varchar(255) NOT NULL,
  `user_district` varchar(255) NOT NULL,
  `user_state` varchar(255) NOT NULL,
  `user_courses` varchar(255) NOT NULL,
  `user_check` varchar(255) NOT NULL,
  `user_secret_question` varchar(255) NOT NULL,
  `user_secret_answer` varchar(255) NOT NULL,
  `user_ip` varchar(255) NOT NULL,
  `user_login_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_firstname`, `user_lastname`, `user_mail_id`, `user_dob`, `user_password`, `user_confirm_password`, `user_mobile_number`, `user_district`, `user_state`, `user_courses`, `user_check`, `user_secret_question`, `user_secret_answer`, `user_ip`, `user_login_status`) VALUES
(2, 'a', 'a', 'a@gmail.com', '2019-03-12', 'a', 'a', '8754875487', 'Chennai', 'Kerela', 'SEO', 'on', '3', '0000', '::1', '0'),
(7, 'ab', 'ab_last', 'ab@gmail.com', '2019-03-14', 'ab', 'ab', '9856237410', '', 'Tamil Nadu', 'PHYTHON', 'on', '2', 'me', '::1', '0'),
(8, 'abc', 'abc', 'abc@gmail.com', '2019-03-14', 'abc', 'abc', '9876543210', 'Chennai', 'Tamil Nadu', 'PHYTHON', 'on', '1', 'Nokia', '::1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `user_secret`
--

CREATE TABLE `user_secret` (
  `id` int(11) NOT NULL,
  `user_secret_question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_secret`
--

INSERT INTO `user_secret` (`id`, `user_secret_question`) VALUES
(1, 'What was your first Mobile brand?'),
(2, 'Who hates you the most?'),
(3, 'What are the last 4 digits of your Mother Mobile number?');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_files`
--
ALTER TABLE `admin_files`
  ADD PRIMARY KEY (`admin_file_id`);

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`id`),
  ADD KEY `word` (`word`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `false_authentication`
--
ALTER TABLE `false_authentication`
  ADD PRIMARY KEY (`false_id`);

--
-- Indexes for table `private_files`
--
ALTER TABLE `private_files`
  ADD PRIMARY KEY (`private_file_id`);

--
-- Indexes for table `public_files`
--
ALTER TABLE `public_files`
  ADD PRIMARY KEY (`public_file_id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_secret`
--
ALTER TABLE `user_secret`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_files`
--
ALTER TABLE `admin_files`
  MODIFY `admin_file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `id` bigint(13) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `false_authentication`
--
ALTER TABLE `false_authentication`
  MODIFY `false_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `private_files`
--
ALTER TABLE `private_files`
  MODIFY `private_file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `public_files`
--
ALTER TABLE `public_files`
  MODIFY `public_file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_secret`
--
ALTER TABLE `user_secret`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
