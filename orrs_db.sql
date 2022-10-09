-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2022 at 01:22 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orrs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `message_list`
--

CREATE TABLE `message_list` (
  `id` int(30) NOT NULL,
  `fullname` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message_list`
--

INSERT INTO `message_list` (`id`, `fullname`, `contact`, `email`, `message`, `status`, `date_created`) VALUES
(1, 'Mark Cooper', '09456123789', 'mcooper@sample.com', 'Sample Inquiry only', 1, '2022-01-06 09:13:14'),
(2, 'yyy', '23567', 'peterjoel65@gmail.com', 'jhfgfugf', 0, '2022-10-05 20:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

CREATE TABLE `pay` (
  `inpes` int(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pay`
--

INSERT INTO `pay` (`inpes`, `token`) VALUES
(1, 'jhkghf'),
(2, 'jhkghf'),
(3, 'asdasf'),
(4, 'jhaxcas'),
(5, 'jhaxcas'),
(6, 'asdasf'),
(7, 'knljhn'),
(8, 'jhvkhj'),
(9, 'jhvkhj'),
(10, 'hvlh'),
(11, 'hvlh'),
(12, 'ifyufkuy'),
(13, 'jkvvhv'),
(14, 'jkvvhv'),
(15, 'hjgi'),
(16, 'hjgi'),
(17, 'hjgi'),
(18, 'hjgi'),
(19, 'hkv'),
(20, 'jbggff'),
(21, 'ffghhj'),
(22, 'ffghhj'),
(23, 'njzxbj'),
(24, 'njzxbj'),
(25, 'mn'),
(26, 'kjasfasf'),
(27, 'asfasfa'),
(28, 'asfasfa'),
(29, 'safasf'),
(30, 'safasf'),
(31, 'safasf'),
(32, 'safasf'),
(33, 'safasf'),
(34, 'safasf'),
(35, 'nnnn'),
(36, 'nmvmnv'),
(37, 'nnn'),
(38, 'nn'),
(39, 'v'),
(40, 'ASED'),
(41, 'dd');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_list`
--

CREATE TABLE `reservation_list` (
  `id` int(30) NOT NULL,
  `seat_num` varchar(50) NOT NULL,
  `schedule_id` int(30) NOT NULL,
  `schedule` datetime NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text NOT NULL,
  `lastname` text NOT NULL,
  `seat_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=First Class, 2 = Economy',
  `fare_amount` float NOT NULL DEFAULT 0,
  `payment_status` varchar(10) NOT NULL DEFAULT 'pending',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation_list`
--

INSERT INTO `reservation_list` (`id`, `seat_num`, `schedule_id`, `schedule`, `firstname`, `middlename`, `lastname`, `seat_type`, `fare_amount`, `payment_status`, `date_created`, `date_updated`, `token`) VALUES
(1, 'FC-001', 1, '2022-01-07 07:00:00', 'John', 'D', 'Smith', 1, 50, 'pending', '2022-01-05 16:26:00', NULL, ''),
(3, 'FC-003', 1, '2022-01-07 07:00:00', 'Mark', 'D', 'Cooper', 1, 50, 'pending', '2022-01-05 16:27:56', NULL, ''),
(4, 'FC-001', 2, '2022-01-07 08:00:00', 'John', 'D', 'Smith', 1, 250, 'pending', '2022-01-05 16:31:27', NULL, ''),
(5, 'FC-002', 2, '2022-01-07 08:00:00', 'Claire', 'C', 'Blake', 1, 250, 'pending', '2022-01-05 16:31:27', NULL, ''),
(6, 'E-001', 1, '2022-01-07 07:00:00', 'John', 'D', 'Smith', 2, 25, 'pending', '2022-01-06 08:35:53', NULL, ''),
(7, 'E-002', 1, '2022-01-07 07:00:00', 'Claire', 'C ', 'Blake', 2, 25, 'pending', '2022-01-06 08:35:53', NULL, ''),
(8, 'E-001', 2, '2022-01-07 08:00:00', 'Mark', 'D', 'Cooper', 2, 170, 'pending', '2022-01-06 09:24:57', NULL, ''),
(9, 'E-002', 2, '2022-01-07 08:00:00', 'Samantha', 'C', 'Cooper', 2, 170, 'pending', '2022-01-06 09:24:57', NULL, ''),
(10, 'E-001', 1, '2022-09-10 07:00:00', 'suma', '', 'lee', 2, 25, 'pending', '2022-09-10 16:21:29', NULL, ''),
(11, 'FC-001', 3, '2022-09-13 08:30:00', 'ghen', '', 'hulo', 1, 100, 'pending', '2022-09-10 16:27:19', NULL, ''),
(12, 'FC-002', 3, '2022-09-13 08:30:00', 'dee', '', 'ross', 1, 100, 'pending', '2022-09-10 16:27:19', NULL, ''),
(13, 'E-001', 1, '2022-09-21 07:00:00', 'fey', '', 'ghew', 2, 25, 'pending', '2022-09-12 19:10:23', NULL, ''),
(14, 'E-001', 1, '2022-10-05 07:00:00', 'suma', '', 'wenu', 2, 25, 'pending', '2022-10-03 12:19:16', NULL, ''),
(15, 'E-002', 1, '2022-10-05 07:00:00', 'suma', '', 'wenu', 2, 0, 'pending', '2022-10-03 12:19:37', NULL, ''),
(16, 'FC-001', 1, '2022-10-04 07:00:00', 'winter', '', 'wen', 1, 50, 'pending', '2022-10-03 12:36:54', NULL, ''),
(17, 'E-001', 1, '2022-10-20 07:00:00', 'ghen', '', 'ghew', 2, 25, 'pending', '2022-10-03 12:55:05', NULL, ''),
(18, 'FC-001', 1, '2022-10-03 07:00:00', 'suma', '', 'ghew', 1, 50, 'pending', '2022-10-03 13:06:53', NULL, ''),
(19, 'FC-002', 1, '2022-10-03 07:00:00', 'suma', '', 'ghew', 1, 0, 'pending', '2022-10-03 13:07:05', NULL, ''),
(20, 'FC-003', 1, '2022-10-03 07:00:00', 'suma', '', 'wenu', 1, 50, 'pending', '2022-10-03 13:08:01', NULL, ''),
(21, 'FC-004', 1, '2022-10-03 07:00:00', 'suma', '', 'wenu', 1, 0, 'pending', '2022-10-03 13:10:16', NULL, ''),
(22, 'FC-005', 1, '2022-10-03 07:00:00', 'suma', '', 'wenu', 1, 0, 'pending', '2022-10-03 13:12:24', NULL, ''),
(23, 'FC-006', 1, '2022-10-03 07:00:00', 'suma', '', 'wenu', 1, 0, 'pending', '2022-10-03 13:12:33', NULL, ''),
(24, 'E-001', 1, '2022-11-04 07:00:00', 'suma', '', 'wenu', 2, 25, 'pending', '2022-10-03 13:13:33', NULL, ''),
(25, 'FC-007', 1, '2022-10-03 07:00:00', 'suma', '', 'wenu', 1, 50, 'pending', '2022-10-03 13:14:35', NULL, ''),
(26, 'E-001', 1, '2022-10-03 07:00:00', 'ghen', '', 'wenu', 2, 25, 'pending', '2022-10-03 13:17:09', NULL, ''),
(27, 'E-002', 1, '2022-10-03 07:00:00', 'ghen', '', 'wenu', 2, 0, 'pending', '2022-10-03 13:17:32', NULL, ''),
(28, 'E-003', 1, '2022-10-03 07:00:00', 'ghen', '', 'wenu', 2, 0, 'pending', '2022-10-03 13:18:11', NULL, ''),
(29, 'E-004', 1, '2022-10-03 07:00:00', 'ghen', '', 'wenu', 2, 0, 'pending', '2022-10-03 13:45:21', NULL, ''),
(30, 'E-005', 1, '2022-10-03 07:00:00', 'ghen', '', 'wenu', 2, 0, 'pending', '2022-10-03 13:45:32', NULL, ''),
(31, 'E-001', 1, '2022-10-28 07:00:00', 'suma', '', 'ghew', 2, 25, 'pending', '2022-10-03 13:46:33', NULL, ''),
(32, 'E-006', 1, '2022-10-03 07:00:00', 'ghen', '', 'wenu', 2, 0, 'pending', '2022-10-03 13:46:49', NULL, ''),
(33, 'E-007', 1, '2022-10-03 07:00:00', 'ghen', '', 'wenu', 2, 0, 'pending', '2022-10-03 13:59:33', NULL, ''),
(34, 'FC-008', 1, '2022-10-03 07:00:00', 'suma', '', 'ghew', 1, 50, 'pending', '2022-10-03 14:00:48', NULL, ''),
(35, 'FC-009', 1, '2022-10-03 07:00:00', 'suma', '', 'ghew', 1, 0, 'pending', '2022-10-03 14:01:54', NULL, ''),
(36, 'FC-010', 1, '2022-10-03 07:00:00', 'suma', '', 'ghew', 1, 0, 'pending', '2022-10-03 14:07:49', NULL, ''),
(37, 'FC-011', 1, '2022-10-03 07:00:00', 'suma', '', 'ghew', 1, 0, 'pending', '2022-10-03 14:10:12', NULL, ''),
(38, 'FC-012', 1, '2022-10-03 07:00:00', 'suma', '', 'ghew', 1, 0, 'pending', '2022-10-03 14:11:09', NULL, ''),
(39, 'FC-013', 1, '2022-10-03 07:00:00', 'suma', '', 'ghew', 1, 0, 'pending', '2022-10-03 14:18:32', NULL, ''),
(40, 'FC-001', 1, '2022-10-11 07:00:00', 'suma', '', 'LEE', 1, 50, 'pending', '2022-10-03 14:22:22', NULL, ''),
(41, 'FC-001', 1, '2022-10-05 07:00:00', 'wer', '', 'hty', 1, 50, 'pending', '2022-10-03 14:43:31', NULL, ''),
(42, 'E-001', 1, '2022-10-12 07:00:00', 'cos', '', 'kiu', 2, 25, 'pending', '2022-10-03 14:50:38', NULL, ''),
(43, 'FC-001', 1, '2022-10-10 07:00:00', 'xre', '', 'tyu', 1, 50, 'pending', '2022-10-03 14:53:51', NULL, ''),
(44, 'FC-002', 1, '2022-10-05 07:00:00', 'wexx', '', 'ghen', 1, 50, 'pending', '2022-10-03 14:58:15', NULL, ''),
(45, 'FC-003', 1, '2022-10-05 07:00:00', 'wexx', '', 'ghen', 1, 0, 'pending', '2022-10-03 15:00:47', NULL, ''),
(46, 'FC-004', 1, '2022-10-05 07:00:00', 'wexx', '', 'ghen', 1, 0, 'pending', '2022-10-03 15:01:01', NULL, ''),
(47, 'FC-005', 1, '2022-10-05 07:00:00', 'wexx', '', 'ghen', 1, 0, 'pending', '2022-10-03 15:01:07', NULL, ''),
(48, 'FC-006', 1, '2022-10-05 07:00:00', 'wexx', '', 'ghen', 1, 0, 'pending', '2022-10-03 15:04:34', NULL, ''),
(49, 'FC-007', 1, '2022-10-05 07:00:00', 'wexx', '', 'ghen', 1, 0, 'pending', '2022-10-03 15:04:39', NULL, ''),
(50, 'FC-008', 1, '2022-10-05 07:00:00', 'wexx', '', 'ghen', 1, 0, 'pending', '2022-10-03 15:08:01', NULL, ''),
(51, 'FC-002', 1, '2022-10-04 07:00:00', 'aaaa', '', 'aaaaa', 1, 50, 'pending', '2022-10-03 15:11:46', NULL, ''),
(52, 'FC-014', 1, '2022-10-03 07:00:00', 'aaaaa', '', 'aaaaa', 1, 50, 'pending', '2022-10-03 15:13:52', NULL, ''),
(53, 'FC-015', 1, '2022-10-03 07:00:00', 'aaaaa', '', 'aaaaa', 1, 0, 'pending', '2022-10-03 15:16:03', NULL, ''),
(54, 'E-008', 1, '2022-10-03 07:00:00', 'winter', '', 'wenu', 2, 25, 'pending', '2022-10-03 15:17:01', NULL, ''),
(55, 'E-009', 1, '2022-10-03 07:00:00', 'winter', '', 'wenu', 2, 0, 'pending', '2022-10-03 15:17:38', NULL, ''),
(56, 'E-010', 1, '2022-10-03 07:00:00', 'winter', '', 'wenu', 2, 0, 'pending', '2022-10-03 15:20:58', NULL, ''),
(57, 'E-011', 1, '2022-10-03 07:00:00', 'winter', '', 'wenu', 2, 0, 'pending', '2022-10-03 15:21:23', NULL, ''),
(58, 'E-012', 1, '2022-10-03 07:00:00', 'winter', '', 'wenu', 2, 0, 'pending', '2022-10-03 15:22:24', NULL, ''),
(59, 'FC-016', 1, '2022-10-03 07:00:00', 'suma', '', 'ghew', 1, 50, 'pending', '2022-10-03 15:22:46', NULL, ''),
(60, 'FC-017', 1, '2022-10-03 07:00:00', 'suma', '', 'ghew', 1, 0, 'pending', '2022-10-03 15:23:34', NULL, ''),
(61, 'FC-018', 1, '2022-10-03 07:00:00', 'suma', '', 'ghew', 1, 0, 'pending', '2022-10-03 15:24:24', NULL, ''),
(62, 'E-001', 1, '2022-10-19 07:00:00', 'suma', '', 'wenu', 2, 25, 'pending', '2022-10-03 15:25:52', NULL, ''),
(63, 'E-001', 1, '2022-10-06 07:00:00', 'wexx', '', 'wenu', 2, 25, 'pending', '2022-10-03 15:26:49', NULL, ''),
(64, 'E-013', 1, '2022-10-03 07:00:00', 'Faith', '', 'mwenda', 2, 25, 'pending', '2022-10-03 15:33:40', NULL, ''),
(65, 'E-014', 1, '2022-10-03 07:00:00', 'Mwenzegule', '', 'Kipipa', 2, 25, 'pending', '2022-10-03 15:33:40', NULL, ''),
(66, 'FC-019', 1, '2022-10-03 07:00:00', 'ghen', '', 'kiu', 1, 50, 'pending', '2022-10-03 15:41:41', NULL, ''),
(67, 'FC-020', 1, '2022-10-03 07:00:00', 'winter', '', 'kiu', 1, 50, 'pending', '2022-10-03 16:00:03', NULL, ''),
(68, 'FC-021', 1, '2022-10-03 07:00:00', 'winter', '', 'kiu', 1, 0, 'pending', '2022-10-03 16:04:35', NULL, ''),
(69, 'FC-022', 1, '2022-10-03 07:00:00', 'sele', '', 'wetu', 1, 50, 'pending', '2022-10-03 16:11:18', NULL, ''),
(70, 'FC-023', 1, '2022-10-03 07:00:00', 'sele', '', 'wetu', 1, 0, 'pending', '2022-10-03 16:12:18', NULL, ''),
(71, 'FC-024', 1, '2022-10-03 07:00:00', 'sele', '', 'wetu', 1, 0, 'pending', '2022-10-03 16:13:53', NULL, ''),
(72, 'FC-025', 1, '2022-10-03 07:00:00', 'sele', '', 'wetu', 1, 0, 'pending', '2022-10-03 16:15:14', NULL, ''),
(73, 'E-001', 1, '2022-10-04 07:00:00', 'suma', '', 'kiu', 2, 25, 'pending', '2022-10-04 16:41:03', NULL, ''),
(74, 'E-002', 1, '2022-10-04 07:00:00', 'suma', '', 'kiu', 2, 25, 'pending', '2022-10-04 16:41:46', NULL, ''),
(75, 'E-003', 1, '2022-10-04 07:00:00', 'suma', '', 'kiu', 2, 25, 'pending', '2022-10-05 14:13:53', NULL, ''),
(76, 'FC-009', 1, '2022-10-05 07:00:00', 'yen', '', 'aa', 1, 50, 'pending', '2022-10-05 14:22:07', NULL, ''),
(77, 'FC-010', 1, '2022-10-05 07:00:00', 'Payment', '', 'No', 1, 50, 'pending', '2022-10-05 15:03:12', NULL, ''),
(78, 'FC-001', 1, '2022-10-06 07:00:00', 'jkasr', 'g', 'lhtt', 1, 50, 'pending', '2022-10-05 15:07:25', NULL, ''),
(79, 'FC-001', 1, '2022-11-02 07:00:00', 'eer', '', 'rty', 1, 50, 'pending', '2022-10-05 15:12:25', NULL, ''),
(80, 'E-003', 1, '2022-10-05 07:00:00', 'wet', '', 'qwed', 2, 25, 'pending', '2022-10-05 15:37:52', NULL, ''),
(81, 'E-001', 1, '2022-10-07 07:00:00', 'nml.j', '', 'jbnm', 2, 25, 'pending', '2022-10-06 20:36:11', NULL, ''),
(82, 'FC-001', 1, '2022-10-07 07:00:00', 'rewt', '', 'trrrt', 1, 50, 'pending', '2022-10-06 22:25:45', NULL, ''),
(83, 'FC-001', 1, '2022-10-08 07:00:00', 'hdh', '', 'jjlkkgk', 1, 50, 'pending', '2022-10-06 22:34:12', NULL, ''),
(84, 'FC-001', 1, '2022-10-20 07:00:00', 'hdjf', '', 'bvmh', 1, 50, 'pending', '2022-10-06 22:36:45', NULL, ''),
(85, 'FC-002', 1, '2022-10-20 07:00:00', 'hduyd', '', 'bhjkjhlj', 1, 50, 'pending', '2022-10-06 22:47:22', NULL, ''),
(86, 'E-001', 1, '2022-11-02 07:00:00', 'tyrsyt', '', 'tduydtg', 2, 25, 'pending', '2022-10-06 22:50:54', NULL, ''),
(87, 'FC-001', 1, '2022-10-13 07:00:00', 'saf', '', 'QWERQ', 1, 50, 'pending', '2022-10-07 01:35:25', NULL, ''),
(88, 'E-002', 1, '2022-10-19 07:00:00', 'hb', '', 'ghg', 2, 25, 'pending', '2022-10-07 01:43:44', NULL, ''),
(89, 'FC-002', 1, '2022-10-13 07:00:00', 'bBS', '', 'hjhjh', 1, 50, 'pending', '2022-10-07 01:48:04', NULL, ''),
(90, 'FC-001', 1, '2022-10-21 07:00:00', 'nhhh', '', 'hhhh', 1, 50, 'pending', '2022-10-07 01:48:41', NULL, ''),
(91, 'FC-003', 1, '2022-10-13 07:00:00', 'nnnn', '', 'fdgh', 1, 50, 'pending', '2022-10-07 01:49:52', NULL, ''),
(92, 'FC-004', 1, '2022-10-13 07:00:00', 'nnnn', '', 'fdgh', 1, 50, 'pending', '2022-10-07 01:49:54', NULL, ''),
(93, 'FC-005', 1, '2022-10-13 07:00:00', 'nnnn', '', 'fdgh', 1, 50, 'pending', '2022-10-07 01:50:37', NULL, ''),
(94, 'FC-001', 1, '2022-10-12 07:00:00', ' bnb', '', 'vbbvx', 1, 50, 'pending', '2022-10-07 02:07:41', NULL, ''),
(95, 'E-002', 1, '2022-10-20 07:00:00', 'Joel', '', 'Kundu lako', 2, 25, 'pending', '2022-10-07 02:13:11', NULL, ''),
(96, 'FC-002', 1, '2022-10-12 07:00:00', 'API', '', 'My Ass', 1, 50, 'pending', '2022-10-07 02:17:31', NULL, ''),
(97, 'FC-003', 1, '2022-10-12 07:00:00', 'API', '', 'My Ass', 1, 50, 'pending', '2022-10-07 02:17:58', NULL, ''),
(98, 'E-001', 1, '2022-10-27 07:00:00', 'Sa', '', 'd', 2, 25, 'pending', '2022-10-07 02:19:41', NULL, ''),
(99, 'E-002', 1, '2022-10-27 07:00:00', 'Sa', '', 'd', 2, 25, 'pending', '2022-10-07 02:20:10', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_list`
--

CREATE TABLE `schedule_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `train_id` int(30) NOT NULL,
  `route_from` text NOT NULL,
  `route_to` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = daily, 2= One-Time Schedule',
  `date_schedule` date DEFAULT NULL,
  `time_schedule` time NOT NULL,
  `first_class_fare` float NOT NULL DEFAULT 0,
  `economy_fare` float NOT NULL DEFAULT 0,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `Payment` varchar(10) NOT NULL,
  `Payment No` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule_list`
--

INSERT INTO `schedule_list` (`id`, `code`, `train_id`, `route_from`, `route_to`, `type`, `date_schedule`, `time_schedule`, `first_class_fare`, `economy_fare`, `delete_flag`, `date_created`, `date_updated`, `Payment`, `Payment No`) VALUES
(1, '202201-0001', 1, 'Dar Es Salaam', 'Kapiri Mposhi', 1, NULL, '07:00:00', 50, 25, 0, '2022-01-05 13:14:45', '2022-10-04 16:16:24', 'TIGOPESA', 653659002),
(2, '202201-0003', 2, 'Kisaki', 'Ifakara', 2, '2022-01-07', '08:00:00', 250, 170, 0, '2022-01-05 13:17:49', '2022-10-04 16:16:24', 'M-PESA', 754266882),
(3, '202201-0002', 1, 'Mlimba', 'Makambako', 1, NULL, '08:30:00', 100, 75, 0, '2022-01-05 13:18:25', '2022-10-04 16:16:25', 'AIRTEL-MON', 785263298),
(4, '202201-0004', 1, 'Mbeya ', 'Vwawa', 1, NULL, '00:00:00', 123, 89, 1, '2022-01-05 13:59:44', '2022-10-04 16:16:25', 'HALO-PESA', 621548796);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'TAZARA RAILWAY '),
(6, 'short_name', 'TAZARA'),
(11, 'logo', 'uploads/logo-1641351863.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1641351863.png'),
(15, 'content', 'Array'),
(16, 'email', 'info@tazara.com'),
(17, 'contact', '0653659002/754288665'),
(18, 'from_time', '11:00'),
(19, 'to_time', '21:30'),
(20, 'address', 'Dar es salaam,Tanzania');

-- --------------------------------------------------------

--
-- Table structure for table `train_list`
--

CREATE TABLE `train_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `first_class_capacity` float NOT NULL DEFAULT 0,
  `economy_capacity` float NOT NULL DEFAULT 0,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `train_list`
--

INSERT INTO `train_list` (`id`, `code`, `name`, `first_class_capacity`, `economy_capacity`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'TIR-1001', 'MUKUBA EXPRESS', 100, 200, 0, '2022-01-05 11:05:42', '2022-10-03 14:32:59'),
(2, 'TIR-1002', 'MUKUBA EXPRESS', 100, 200, 0, '2022-01-05 11:11:41', '2022-10-03 14:33:16'),
(3, 'TIR-1003', 'MUKUBA EXPRESS', 150, 300, 0, '2022-01-05 11:11:56', '2022-10-03 14:33:31'),
(4, 'TIR-1004', 'MUKUBA EXPRESS', 150, 300, 0, '2022-01-05 11:12:15', '2022-10-03 14:33:43'),
(5, 'TIR-1005', 'KILIMANJARO ORDINARY', 800, 1500, 1, '2022-01-05 11:13:00', '2022-10-03 14:34:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatar-1.png?v=1639468007', NULL, 1, 1, '2021-01-20 14:02:37', '2021-12-14 15:47:08'),
(4, 'Smantha', NULL, 'Lou', 'slou', '1ed1255790523a907da869eab7306f5a', 'uploads/avatar-4.png?v=1641346647', NULL, 2, 1, '2022-01-05 09:36:56', '2022-01-05 09:37:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message_list`
--
ALTER TABLE `message_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`inpes`);

--
-- Indexes for table `reservation_list`
--
ALTER TABLE `reservation_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_id` (`schedule_id`);

--
-- Indexes for table `schedule_list`
--
ALTER TABLE `schedule_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `train_id` (`train_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `train_list`
--
ALTER TABLE `train_list`
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
-- AUTO_INCREMENT for table `message_list`
--
ALTER TABLE `message_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pay`
--
ALTER TABLE `pay`
  MODIFY `inpes` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `reservation_list`
--
ALTER TABLE `reservation_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `schedule_list`
--
ALTER TABLE `schedule_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `train_list`
--
ALTER TABLE `train_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservation_list`
--
ALTER TABLE `reservation_list`
  ADD CONSTRAINT `reservation_list_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `schedule_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedule_list`
--
ALTER TABLE `schedule_list`
  ADD CONSTRAINT `schedule_list_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `train_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
