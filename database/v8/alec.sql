-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2022 at 06:30 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alec`
--

-- --------------------------------------------------------

--
-- Table structure for table `badge`
--

CREATE TABLE `badge` (
  `badge_id` int(11) NOT NULL,
  `badge_name` varchar(30) NOT NULL,
  `badge_description` varchar(100) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `badge_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `badge`
--

INSERT INTO `badge` (`badge_id`, `badge_name`, `badge_description`, `points`, `course_id`, `badge_image`) VALUES
(94, 'Achiever', '', 100, 47, '2022_03_23_11_13_26pm.png'),
(95, 'Achiever', '', 100, 48, '2022_03_23_11_13_26pm.png'),
(96, 'Achiever', '', 100, 49, '2022_03_23_11_13_26pm.png'),
(97, 'Achiever', '', 100, 50, '2022_03_23_11_13_26pm.png'),
(98, 'Achiever', '', 100, 51, '2022_03_23_11_13_26pm.png'),
(99, 'Achiever', '', 100, 52, '2022_03_23_11_13_26pm.png'),
(100, 'Achiever', '', 100, 53, '2022_03_23_11_13_26pm.png'),
(101, 'Achiever', '', 100, 54, '2022_03_23_11_13_26pm.png'),
(102, 'Achiever', '', 100, 55, '2022_03_23_11_13_26pm.png'),
(103, 'Achiever', '', 100, 56, '2022_03_23_11_13_26pm.png'),
(104, 'Achiever', '', 100, 57, '2022_03_23_11_13_26pm.png'),
(105, 'Achiever', '', 100, 58, '2022_03_23_11_13_26pm.png'),
(106, 'Achiever', '', 100, 59, '2022_03_23_11_13_26pm.png'),
(107, 'Achiever', '', 100, 60, '2022_03_23_11_13_26pm.png'),
(108, 'Achiever', '', 100, 61, '2022_03_23_11_13_26pm.png'),
(109, 'Achiever', '', 100, 62, '2022_03_23_11_13_26pm.png'),
(110, 'Achiever', '', 100, 63, '2022_03_23_11_13_26pm.png'),
(111, 'Achiever', '', 100, 64, '2022_03_23_11_13_26pm.png'),
(112, 'Achiever', '', 100, 65, '2022_03_23_11_13_26pm.png'),
(113, 'Achiever', '', 100, 66, '2022_03_23_11_13_26pm.png'),
(114, 'Achiever', '', 100, 67, '2022_03_23_11_13_26pm.png'),
(115, 'Achiever', '', 100, 68, '2022_03_23_11_13_26pm.png'),
(116, 'Achiever', '', 100, 69, '2022_03_23_11_13_26pm.png'),
(117, 'Achiever', '', 100, 70, '2022_03_23_11_13_26pm.png'),
(118, 'Achiever', '', 100, 71, '2022_03_23_11_13_26pm.png'),
(119, 'Achiever', '', 100, 72, '2022_03_23_11_13_26pm.png'),
(120, 'Achiever', '', 100, 73, '2022_03_23_11_13_26pm.png'),
(121, 'Achiever', '', 100, 74, '2022_03_23_11_13_26pm.png'),
(122, 'Achiever', '', 100, 75, '2022_03_23_11_13_26pm.png'),
(123, 'Achiever', '', 100, 76, '2022_03_23_11_13_26pm.png'),
(124, 'Achiever', '', 100, 80, '2022_03_23_11_13_26pm.png'),
(125, 'Achiever', '', 100, 81, '2022_03_23_11_13_26pm.png'),
(126, 'Achiever', '', 100, 82, '2022_03_23_11_13_26pm.png'),
(127, 'Achiever', '', 100, 83, '2022_03_23_11_13_26pm.png'),
(128, 'Achiever', '', 100, 84, '2022_03_23_11_13_26pm.png'),
(129, 'Achiever', '', 100, 85, '2022_03_23_11_13_26pm.png'),
(130, 'Achiever', '', 100, 86, '2022_03_23_11_13_26pm.png'),
(131, 'Achiever', '', 100, 87, '2022_03_23_11_13_26pm.png'),
(132, 'Achiever', '', 100, 88, '2022_03_23_11_13_26pm.png'),
(133, 'Achiever', '', 100, 89, '2022_03_23_11_13_26pm.png'),
(134, 'Achiever', '', 100, 90, '2022_03_23_11_13_26pm.png'),
(135, 'Achiever', '', 100, 91, '2022_03_23_11_13_26pm.png'),
(136, 'Achiever', '', 100, 92, '2022_03_23_11_13_26pm.png'),
(137, 'Achiever', '', 100, 93, '2022_03_23_11_13_26pm.png'),
(138, 'Achiever', '', 100, 94, '2022_03_23_11_13_26pm.png'),
(139, 'Achiever', '', 100, 95, '2022_03_23_11_13_26pm.png'),
(140, 'Achiever', '', 100, 96, '2022_03_23_11_13_26pm.png'),
(141, 'Achiever', '', 100, 97, '2022_03_23_11_13_26pm.png'),
(142, 'Achiever', '', 100, 98, '2022_03_23_11_13_26pm.png'),
(143, 'Achiever', '', 100, 99, '2022_03_23_11_13_26pm.png'),
(144, 'Achiever', '', 100, 100, '2022_03_23_11_13_26pm.png'),
(145, 'Achiever', '', 100, 101, '2022_03_23_11_13_26pm.png'),
(146, 'Achiever', '', 100, 102, '2022_03_23_11_13_26pm.png'),
(147, 'Achiever', '', 100, 103, '2022_03_23_11_13_26pm.png'),
(148, 'Achiever', '', 100, 104, '2022_03_23_11_13_26pm.png'),
(149, 'Achiever', '', 100, 105, '2022_03_23_11_13_26pm.png'),
(150, 'Achiever', '', 100, 106, '2022_03_23_11_13_26pm.png'),
(151, 'Achiever', '', 100, 107, '2022_03_23_11_13_26pm.png'),
(152, 'Achiever', '', 100, 108, '2022_03_23_11_13_26pm.png'),
(153, 'Achiever', '', 100, 109, '2022_03_23_11_13_26pm.png'),
(154, 'Achiever', '', 100, 110, '2022_03_23_11_13_26pm.png'),
(155, 'Achiever', '', 100, 111, '2022_03_23_11_13_26pm.png'),
(156, 'Achiever', '', 100, 112, '2022_03_23_11_13_26pm.png'),
(157, 'Achiever', '', 100, 113, '2022_03_23_11_13_26pm.png'),
(158, 'Achiever', '', 100, 114, '2022_03_23_11_13_26pm.png'),
(159, 'Achiever', '', 100, 115, '2022_03_23_11_13_26pm.png'),
(160, 'Achiever', '', 100, 116, '2022_03_23_11_13_26pm.png'),
(161, 'Achiever', '', 100, 117, '2022_03_23_11_13_26pm.png'),
(162, 'Achiever', '', 100, 118, '2022_03_23_11_13_26pm.png'),
(163, 'Achiever', '', 100, 119, '2022_03_23_11_13_26pm.png'),
(164, 'Achiever', '', 100, 120, '2022_03_23_11_13_26pm.png'),
(165, 'Achiever', '', 100, 121, '2022_03_23_11_13_26pm.png'),
(166, 'Appreciation', '', 100, 47, '2022_03_23_11_34_13pm.png'),
(167, 'Appreciation', '', 100, 48, '2022_03_23_11_34_13pm.png'),
(168, 'Appreciation', '', 100, 49, '2022_03_23_11_34_13pm.png'),
(169, 'Appreciation', '', 100, 50, '2022_03_23_11_34_13pm.png'),
(170, 'Appreciation', '', 100, 51, '2022_03_23_11_34_13pm.png'),
(171, 'Appreciation', '', 100, 52, '2022_03_23_11_34_13pm.png'),
(172, 'Appreciation', '', 100, 53, '2022_03_23_11_34_13pm.png'),
(173, 'Appreciation', '', 100, 54, '2022_03_23_11_34_13pm.png'),
(174, 'Appreciation', '', 100, 55, '2022_03_23_11_34_13pm.png'),
(175, 'Appreciation', '', 100, 56, '2022_03_23_11_34_13pm.png'),
(176, 'Appreciation', '', 100, 57, '2022_03_23_11_34_13pm.png'),
(177, 'Appreciation', '', 100, 58, '2022_03_23_11_34_13pm.png'),
(178, 'Appreciation', '', 100, 59, '2022_03_23_11_34_13pm.png'),
(179, 'Appreciation', '', 100, 60, '2022_03_23_11_34_13pm.png'),
(180, 'Appreciation', '', 100, 61, '2022_03_23_11_34_13pm.png'),
(181, 'Appreciation', '', 100, 62, '2022_03_23_11_34_13pm.png'),
(182, 'Appreciation', '', 100, 63, '2022_03_23_11_34_13pm.png'),
(183, 'Appreciation', '', 100, 64, '2022_03_23_11_34_13pm.png'),
(184, 'Appreciation', '', 100, 65, '2022_03_23_11_34_13pm.png'),
(185, 'Appreciation', '', 100, 66, '2022_03_23_11_34_13pm.png'),
(186, 'Appreciation', '', 100, 67, '2022_03_23_11_34_13pm.png'),
(187, 'Appreciation', '', 100, 68, '2022_03_23_11_34_13pm.png'),
(188, 'Appreciation', '', 100, 69, '2022_03_23_11_34_13pm.png'),
(189, 'Appreciation', '', 100, 70, '2022_03_23_11_34_13pm.png'),
(190, 'Appreciation', '', 100, 71, '2022_03_23_11_34_13pm.png'),
(191, 'Appreciation', '', 100, 72, '2022_03_23_11_34_13pm.png'),
(192, 'Appreciation', '', 100, 73, '2022_03_23_11_34_13pm.png'),
(193, 'Appreciation', '', 100, 74, '2022_03_23_11_34_13pm.png'),
(194, 'Appreciation', '', 100, 75, '2022_03_23_11_34_13pm.png'),
(195, 'Appreciation', '', 100, 76, '2022_03_23_11_34_13pm.png'),
(196, 'Appreciation', '', 100, 80, '2022_03_23_11_34_13pm.png'),
(197, 'Appreciation', '', 100, 81, '2022_03_23_11_34_13pm.png'),
(198, 'Appreciation', '', 100, 82, '2022_03_23_11_34_13pm.png'),
(199, 'Appreciation', '', 100, 83, '2022_03_23_11_34_13pm.png'),
(200, 'Appreciation', '', 100, 84, '2022_03_23_11_34_13pm.png'),
(201, 'Appreciation', '', 100, 85, '2022_03_23_11_34_13pm.png'),
(202, 'Appreciation', '', 100, 86, '2022_03_23_11_34_13pm.png'),
(203, 'Appreciation', '', 100, 87, '2022_03_23_11_34_13pm.png'),
(204, 'Appreciation', '', 100, 88, '2022_03_23_11_34_13pm.png'),
(205, 'Appreciation', '', 100, 89, '2022_03_23_11_34_13pm.png'),
(206, 'Appreciation', '', 100, 90, '2022_03_23_11_34_13pm.png'),
(207, 'Appreciation', '', 100, 91, '2022_03_23_11_34_13pm.png'),
(208, 'Appreciation', '', 100, 92, '2022_03_23_11_34_13pm.png'),
(209, 'Appreciation', '', 100, 93, '2022_03_23_11_34_13pm.png'),
(210, 'Appreciation', '', 100, 94, '2022_03_23_11_34_13pm.png'),
(211, 'Appreciation', '', 100, 95, '2022_03_23_11_34_13pm.png'),
(212, 'Appreciation', '', 100, 96, '2022_03_23_11_34_13pm.png'),
(213, 'Appreciation', '', 100, 97, '2022_03_23_11_34_13pm.png'),
(214, 'Appreciation', '', 100, 98, '2022_03_23_11_34_13pm.png'),
(215, 'Appreciation', '', 100, 99, '2022_03_23_11_34_13pm.png'),
(216, 'Appreciation', '', 100, 100, '2022_03_23_11_34_13pm.png'),
(217, 'Appreciation', '', 100, 101, '2022_03_23_11_34_13pm.png'),
(218, 'Appreciation', '', 100, 102, '2022_03_23_11_34_13pm.png'),
(219, 'Appreciation', '', 100, 103, '2022_03_23_11_34_13pm.png'),
(220, 'Appreciation', '', 100, 104, '2022_03_23_11_34_13pm.png'),
(221, 'Appreciation', '', 100, 105, '2022_03_23_11_34_13pm.png'),
(222, 'Appreciation', '', 100, 106, '2022_03_23_11_34_13pm.png'),
(223, 'Appreciation', '', 100, 107, '2022_03_23_11_34_13pm.png'),
(224, 'Appreciation', '', 100, 108, '2022_03_23_11_34_13pm.png'),
(225, 'Appreciation', '', 100, 109, '2022_03_23_11_34_13pm.png'),
(226, 'Appreciation', '', 100, 110, '2022_03_23_11_34_13pm.png'),
(227, 'Appreciation', '', 100, 111, '2022_03_23_11_34_13pm.png'),
(228, 'Appreciation', '', 100, 112, '2022_03_23_11_34_13pm.png'),
(229, 'Appreciation', '', 100, 113, '2022_03_23_11_34_13pm.png'),
(230, 'Appreciation', '', 100, 114, '2022_03_23_11_34_13pm.png'),
(231, 'Appreciation', '', 100, 115, '2022_03_23_11_34_13pm.png'),
(232, 'Appreciation', '', 100, 116, '2022_03_23_11_34_13pm.png'),
(233, 'Appreciation', '', 100, 117, '2022_03_23_11_34_13pm.png'),
(234, 'Appreciation', '', 100, 118, '2022_03_23_11_34_13pm.png'),
(235, 'Appreciation', '', 100, 119, '2022_03_23_11_34_13pm.png'),
(236, 'Appreciation', '', 100, 120, '2022_03_23_11_34_13pm.png'),
(237, 'Appreciation', '', 100, 121, '2022_03_23_11_34_13pm.png'),
(238, 'Genius', '', 100, 47, '2022_03_23_11_36_07pm.png'),
(239, 'Genius', '', 100, 48, '2022_03_23_11_36_07pm.png'),
(240, 'Genius', '', 100, 49, '2022_03_23_11_36_07pm.png'),
(241, 'Genius', '', 100, 50, '2022_03_23_11_36_07pm.png'),
(242, 'Genius', '', 100, 51, '2022_03_23_11_36_07pm.png'),
(243, 'Genius', '', 100, 52, '2022_03_23_11_36_07pm.png'),
(244, 'Genius', '', 100, 53, '2022_03_23_11_36_07pm.png'),
(245, 'Genius', '', 100, 54, '2022_03_23_11_36_07pm.png'),
(246, 'Genius', '', 100, 55, '2022_03_23_11_36_07pm.png'),
(247, 'Genius', '', 100, 56, '2022_03_23_11_36_07pm.png'),
(248, 'Genius', '', 100, 57, '2022_03_23_11_36_07pm.png'),
(249, 'Genius', '', 100, 58, '2022_03_23_11_36_07pm.png'),
(250, 'Genius', '', 100, 59, '2022_03_23_11_36_07pm.png'),
(251, 'Genius', '', 100, 60, '2022_03_23_11_36_07pm.png'),
(252, 'Genius', '', 100, 61, '2022_03_23_11_36_07pm.png'),
(253, 'Genius', '', 100, 62, '2022_03_23_11_36_07pm.png'),
(254, 'Genius', '', 100, 63, '2022_03_23_11_36_07pm.png'),
(255, 'Genius', '', 100, 64, '2022_03_23_11_36_07pm.png'),
(256, 'Genius', '', 100, 65, '2022_03_23_11_36_07pm.png'),
(257, 'Genius', '', 100, 66, '2022_03_23_11_36_07pm.png'),
(258, 'Genius', '', 100, 67, '2022_03_23_11_36_07pm.png'),
(259, 'Genius', '', 100, 68, '2022_03_23_11_36_07pm.png'),
(260, 'Genius', '', 100, 69, '2022_03_23_11_36_07pm.png'),
(261, 'Genius', '', 100, 70, '2022_03_23_11_36_07pm.png'),
(262, 'Genius', '', 100, 71, '2022_03_23_11_36_07pm.png'),
(263, 'Genius', '', 100, 72, '2022_03_23_11_36_07pm.png'),
(264, 'Genius', '', 100, 73, '2022_03_23_11_36_07pm.png'),
(265, 'Genius', '', 100, 74, '2022_03_23_11_36_07pm.png'),
(266, 'Genius', '', 100, 75, '2022_03_23_11_36_07pm.png'),
(267, 'Genius', '', 100, 76, '2022_03_23_11_36_07pm.png'),
(268, 'Genius', '', 100, 80, '2022_03_23_11_36_07pm.png'),
(269, 'Genius', '', 100, 81, '2022_03_23_11_36_07pm.png'),
(270, 'Genius', '', 100, 82, '2022_03_23_11_36_07pm.png'),
(271, 'Genius', '', 100, 83, '2022_03_23_11_36_07pm.png'),
(272, 'Genius', '', 100, 84, '2022_03_23_11_36_07pm.png'),
(273, 'Genius', '', 100, 85, '2022_03_23_11_36_07pm.png'),
(274, 'Genius', '', 100, 86, '2022_03_23_11_36_07pm.png'),
(275, 'Genius', '', 100, 87, '2022_03_23_11_36_07pm.png'),
(276, 'Genius', '', 100, 88, '2022_03_23_11_36_07pm.png'),
(277, 'Genius', '', 100, 89, '2022_03_23_11_36_07pm.png'),
(278, 'Genius', '', 100, 90, '2022_03_23_11_36_07pm.png'),
(279, 'Genius', '', 100, 91, '2022_03_23_11_36_07pm.png'),
(280, 'Genius', '', 100, 92, '2022_03_23_11_36_07pm.png'),
(281, 'Genius', '', 100, 93, '2022_03_23_11_36_07pm.png'),
(282, 'Genius', '', 100, 94, '2022_03_23_11_36_07pm.png'),
(283, 'Genius', '', 100, 95, '2022_03_23_11_36_07pm.png'),
(284, 'Genius', '', 100, 96, '2022_03_23_11_36_07pm.png'),
(285, 'Genius', '', 100, 97, '2022_03_23_11_36_07pm.png'),
(286, 'Genius', '', 100, 98, '2022_03_23_11_36_07pm.png'),
(287, 'Genius', '', 100, 99, '2022_03_23_11_36_07pm.png'),
(288, 'Genius', '', 100, 100, '2022_03_23_11_36_07pm.png'),
(289, 'Genius', '', 100, 101, '2022_03_23_11_36_07pm.png'),
(290, 'Genius', '', 100, 102, '2022_03_23_11_36_07pm.png'),
(291, 'Genius', '', 100, 103, '2022_03_23_11_36_07pm.png'),
(292, 'Genius', '', 100, 104, '2022_03_23_11_36_07pm.png'),
(293, 'Genius', '', 100, 105, '2022_03_23_11_36_07pm.png'),
(294, 'Genius', '', 100, 106, '2022_03_23_11_36_07pm.png'),
(295, 'Genius', '', 100, 107, '2022_03_23_11_36_07pm.png'),
(296, 'Genius', '', 100, 108, '2022_03_23_11_36_07pm.png'),
(297, 'Genius', '', 100, 109, '2022_03_23_11_36_07pm.png'),
(298, 'Genius', '', 100, 110, '2022_03_23_11_36_07pm.png'),
(299, 'Genius', '', 100, 111, '2022_03_23_11_36_07pm.png'),
(300, 'Genius', '', 100, 112, '2022_03_23_11_36_07pm.png'),
(301, 'Genius', '', 100, 113, '2022_03_23_11_36_07pm.png'),
(302, 'Genius', '', 100, 114, '2022_03_23_11_36_07pm.png'),
(303, 'Genius', '', 100, 115, '2022_03_23_11_36_07pm.png'),
(304, 'Genius', '', 100, 116, '2022_03_23_11_36_07pm.png'),
(305, 'Genius', '', 100, 117, '2022_03_23_11_36_07pm.png'),
(306, 'Genius', '', 100, 118, '2022_03_23_11_36_07pm.png'),
(307, 'Genius', '', 100, 119, '2022_03_23_11_36_07pm.png'),
(308, 'Genius', '', 100, 120, '2022_03_23_11_36_07pm.png'),
(309, 'Genius', '', 100, 121, '2022_03_23_11_36_07pm.png'),
(310, 'Super Questioner', '', 50, 72, '2022_03_23_11_37_13pm.png'),
(311, 'Super Respondent', '', 50, 72, '2022_03_23_11_37_47pm.png');

-- --------------------------------------------------------

--
-- Table structure for table `badge_assign`
--

CREATE TABLE `badge_assign` (
  `student_id` int(11) NOT NULL,
  `badge_id` int(11) NOT NULL,
  `lecturer_id` int(11) NOT NULL,
  `awarded_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `badge_assign`
--

INSERT INTO `badge_assign` (`student_id`, `badge_id`, `lecturer_id`, `awarded_date`) VALUES
(1497, 119, 883, '2022-03-26 15:46:30'),
(1497, 191, 883, '2022-03-27 11:31:35'),
(1497, 263, 883, '2022-03-27 11:33:11'),
(1497, 310, 883, '2022-03-27 11:39:52'),
(1511, 119, 883, '2022-03-27 20:33:49');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `course_description` varchar(2000) DEFAULT NULL,
  `year` int(1) NOT NULL,
  `active_session_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_description`, `year`, `active_session_id`) VALUES
(47, 'SCS 1202 - Programming Using C', 'The following objectives are covered in this course. Analyze and explain \r\nthe behavior of simple programs involving the fundamental programming \r\nconstructs using a functional paradigm such as Scheme\'\'\'\'\'\'\'\'', 1, NULL),
(48, 'SCS 1203 - Database I', 'Database I, introduces the components of a database system and major \r\nDBMS functions. Data modelling, Relational database design, Structured \r\nQuery Languages (SQL) are covered in the course module.\'', 1, NULL),
(49, 'SCS 1204 - Discrete Mathematics I', 'This course module includes sets, relations and functions such as Union and \r\nIntersection. Also basic logic is introduced here with truth tables, predicate logic \r\nand propositional logic. It also di', 1, NULL),
(50, 'SCS 1205 - Computer Systems', 'Computer Systems introduces the history of the computer systems, along with the knowledge of how the computer works\r\nstarting from the data representation, basic logic circuit design to the CPU cycles and memory', 1, NULL),
(51, 'SCS 1206 - Laboratory I', 'Laboratory I gives the laboratory exposure to use an operating system (Ubuntu \r\nLinux). The student will gain practical experience in handling the operating \r\nsystem through the graphical user interfa', 1, NULL),
(52, 'SCS 1207 - Software Engineering I', 'Software Engineering I is the introductory course of Software Engineering. \r\nAlong with the definitions and the need for Software engineering, the \r\nprocess will be explained in stages: Requirements e', 1, NULL),
(53, 'ENH 1201 - Enhancement I', 'The aim of this course module is to enhance the student’s communication \r\nskills in general. An attention will be given to accurate the pronunciation, \r\nactive listening and responding. The correct us', 1, NULL),
(54, 'SCS 1208 - Data Structures And Algorithms II', 'Data Structures and Algorithms II will be built upon the first part of the \r\nmodule, discussing variants of the Tree data structure such as General Trees, \r\nBinary Trees, Binary search trees, AVL tree', 1, NULL),
(55, 'SCS 1209 - Object Oriented Programming', 'This course introduces the concepts of programming, coding algorithms \r\nin C language and the use of data structures in a C program. In addition \r\nwe will look at some other concepts which were not in', 1, NULL),
(56, 'SCS 1210 - Software Engineering II', 'This is an advanced course in Software Engineering which is based on Software \r\nEngineering I module and provides an understanding of Object Oriented \r\nAnalysis and Design (OOAD) concepts. After compl', 1, NULL),
(57, 'SCS 1211 - Mathematical Methods I', 'Mathematical Methods I is the introduction to the concepts of calculus including \r\ndifferential equations. Real numbers, real functions, algebra of limits and \r\nalgebra of derivatives, Mean value theo', 1, NULL),
(58, 'SCS 1212 - Foundation of Computer Science', 'This course module introduces the historic origins of computational models, \r\nmathematical theory that has led the establishment of computer science. It will \r\ndiscuss the theory on algorithmic proble', 1, NULL),
(59, 'SCS 1213 - Probability and Statistics', 'This course offers the theory and background on random variables, probability, \r\nseveral discrete and continuous distributions and to apply the knowledge of \r\nthe distributions and the tools of probab', 1, NULL),
(60, 'SCS 1214 - Operating Systems I', 'This course provides an understanding of entire process within Operating Systems. It covers overview of\r\nOperating Systems, Operating System principles, concurrency, scheduling and dispatch, memory management,\r\nsecurity and protection, virtual machines, device management and file systems.', 1, NULL),
(61, 'ENH 1202 - Enhancement II', 'Humanities is offered as a student enhancement course module, focusing \r\non the non-technical and aesthetic subjects such as performing arts, Music, \r\nPainting, Philosophy, Literature, History etc. It', 1, NULL),
(62, 'SCS 2201 - Data Structures and Algorithms III ', 'This is an advanced course in data structures and algorithms which is built on \r\nthe fundamentals introduced in SCS 1201 and SCS 1208 to provide profound \r\nknowledge to design, use, analyze and to pro', 2, NULL),
(63, 'SCS 2202 - Group Project I', 'This course is designed to enable students to apply the knowledge acquired \r\nthrough system analysis, design, development, verification and validation, \r\nmaintenance and project management while worki', 2, NULL),
(64, 'SCS 2203 - Software Engineering III', 'This course complements the material already covered in Software Engineering \r\nI and II courses and discusses Object-Oriented Modelling and Unified Process \r\nModels in more detail. The course also int', 2, NULL),
(65, 'SCS 2204 - Functional Programming', 'Functional programming is becoming increasingly widespread in industry. This \r\ntrend is driven by the adoption of Scala as the main programming language \r\nfor many applications. In this course student', 2, NULL),
(66, 'SCS 2205 - Computer Networks I', 'This course is designed to provide knowledge in conceptual and technological \r\naspects behind computer networking. The major areas include data \r\ncommunication, computer networks, LAN architectures, s', 2, NULL),
(67, 'SCS 2206 - Mathematical Methods II', 'Mathematical Methods II introduces topics such as vectors, matrices, matrix \r\nalgebra, determinants, Eigenvalues and Eigenvectors and Euclidean spaces \r\netc.', 2, NULL),
(68, 'SCS 2207 - Programming Language Concepts', 'This course provides the key features of a programming languages. It \r\ncovers the areas such as programming domains, language evaluation \r\ncriteria, influences on language design, implementation metho', 2, NULL),
(69, 'SCS 2208 - Rapid Application Development', 'This course is designed to ensure the fact that the students have been provided \r\na suitable knowledge of the core concepts of Agile practices, the Agile values \r\nand the principles, across a breadth ', 2, NULL),
(70, 'SCS 2209 - Database II', 'This course aims to provide introductory knowledge in advanced database \r\nconcepts such as access control for secure databases, transaction management \r\nand serializability, indexing methods, writing ', 2, NULL),
(71, 'SCS 2211 - Laboratory II', 'This course is designed to provide an understanding of how to explore and \r\ndescribe various real-life data sets, using R. After the completion of this course \r\nthe student will be able to understand ', 2, NULL),
(72, 'SCS 2212 - Automata Theory', 'This course mainly focus on determining a language’s place in the Chomsky hierarchy and to convert among\r\nequivalently powerful notations for a language. The areas covered are Chomsky hierarchy, sets and languages,\r\ncontext-free languages and the halting problem.\r\n\r\n“When you change the way you look at things,\r\nthe things you look at change.”\r\n- Max Planck-', 2, 20),
(73, 'SCS 2214 - Information System Security', 'This course provides students an understanding of the fundamentals of \r\ninformation security in both information storage and information traveling \r\nin computer networks. This course also focuses on m', 2, NULL),
(74, 'ENH 2201 - Enhancement III ', 'The course is taught through a real-life customer development context where \r\nstudents acquire the skills and know-how to develop their business idea all the \r\nway from the conceptual stage to the mar', 2, NULL),
(75, 'SCS 2213 - Electronics and Physical Computing', 'This course is organized around a series of practical hands-on exercises \r\nwhich introduce the fundamentals of circuits, embedded programming, signal \r\nprocessing, simple mechanisms, actuation, and ti', 2, NULL),
(76, 'SCS 2210 - Discrete Mathematics II', 'This course is to acquaint students with basic number theory and basic \r\ncombinatorial methods that provide a foundation for further studies in the field \r\nas well as for applications in related areas', 2, NULL),
(80, 'SCS 3201 - Machine Learning and Neural Computing', 'This course unit consists of the following: Introduction to Machine Learning and Pattern Recognition,  and adaptive control. ', 3, NULL),
(81, 'SCS 3202 - Advanced Computer Architecture', 'This course provides students a fundamental concepts behind middleware and the role played by middleware in distributed systems. ', 3, NULL),
(82, 'SCS 3204 - Management', 'After successful completion of this course students will be able to describe fundamental concepts and principles \r\nof management, including the basic roles, skills, and functions of management; ', 3, NULL),
(83, 'SCS 3205 - Computer Graphics I', 'This course provides an introduction to Image Processing and Computer Graphics programming.', 3, NULL),
(84, 'SCS 3206 - Graph Theory ', 'Under this course the following topics will be discussed. Introduction to graphs, Multigraphs, Directed graphs \r\nand Weighted graphs,Trees...', 3, NULL),
(85, 'SCS 3207 - Software Quality Assurance', 'The course delivery is a two-hour lecture session done by course coordinators and industry experts. ', 3, NULL),
(86, 'SCS 3208 - Software Project Management', 'This course unit covers the following topics: Introduction to project management, Project selection, Approach \r\nselection, Project planning, Risk management, etc.', 3, NULL),
(87, 'SCS 3209 - Human-Computer Interaction', 'This course will discuss the humans, machines and how do the humans interact with machines in their day-to-day lives.', 3, NULL),
(88, 'SCS 3210 - Systems and Network Administration', 'This course introduces the technical operational tasks of a system and network administrator through both lectures and practical sessions. ', 3, NULL),
(89, 'SCS 3211 - Compiler Theory ', 'This course discusses contemporary techniques in implementation of programming language translators. ', 3, NULL),
(90, 'SCS 3212 - Mobile Application Development', 'This course covers topics such as introduction, operating systems for wireless mobile devices, android overview \r\nand android development environment, etc.', 3, NULL),
(91, 'SCS 3213 - Game Development', 'This course introduces fundamental concepts of game development industry and its development process. ', 3, NULL),
(92, 'SCS 3214 - Group project II', 'Third year group project is a mandatory course for those who follow 3 year degree programme in both CS and IS streams. ', 3, NULL),
(93, 'SCS 3215 - Professional Practice', 'After completion of the course, students will be able to identify the ethical issues in the development and \r\napplication of computing technology.', 3, NULL),
(94, 'SCS 3216 - Research Methods ', 'This course discusses different approaches, methods and techniques used in scientific research in general and \r\nprovides an introduction to research in computer science and information systems. T', 3, NULL),
(95, 'ENH 3201 - Industry Placement-Industry Project', 'The Industry Placement provides the much needed industrial exposure for the students, which is an essential part \r\nof education in order to meet Industrial standards.', 3, NULL),
(96, 'SCS 4201 - Ethical Issues and Legal Aspects in IT', 'During this course students will gain an ability to describe what the term information technology ethics means, \r\nidentify various advantages and disadvantages related to the code of ethics in IT.', 4, NULL),
(97, 'SCS 4202 - Cognitive Robotics T', 'This course discusses two different approaches for developing robots: conventional artificial intelligence (AI) \r\nbased approaches and new AI based approaches. ', 4, NULL),
(98, 'SCS 4203 - Database III ', 'This is an advanced course in databases to provide in-depth knowledge on Data Storage and Querying, Query \r\nProcessing and Optimization, Transaction Management, etc.', 4, NULL),
(99, 'SCS 4204 - Data Analytics T', 'This course constitutes two parts. Part I covers an introduction to Data Mining. Part II consists of pattern recognition.', 4, NULL),
(100, 'SCS 4205 - Computer Networks II ', 'This course covers topics such as vector spaces, linear codes; unicast routing, multicast routing, key based routing, mobile routing; multi-access protocols - csma and variants; virtualization. ', 4, NULL),
(101, 'SCS 4206 - Computer Graphics II', 'The following content is covered in this course. Introduction to Virtual/Augmented Reality Environment Technology \r\nand Applications, Game Design, Game Programming, Game AI, etc.', 4, NULL),
(102, 'SCS 4207 - Image Processing and Computer Vision', 'This course covers topics such as Image Characterization: Introduction to Image Processing and Computer \r\nVision, Digital Image Representation, Color Theory; Spatial Domain Image Processing: ', 4, NULL),
(103, 'SCS 4208 - Theory of Computation', 'This course covers topics such as DFA, NDFA; regular languages, context free grammars, pumping lemma, pushdown automata; Lambda and Pi calculi.', 4, NULL),
(104, 'SCS 4209 - Natural Language Processing', 'Natural Language Processing, also referred to as Computational Linguistics is the fascinating field of building \r\ncomputational models of Human Language. ', 4, NULL),
(105, 'SCS 4210 - Parallel Computing', 'This course is designed to introduce students to parallel computing. As Pre-requisites to the course knowledge of C is desired although not essential. ', 4, NULL),
(106, 'SCS 4211 - Research Seminar', 'The research seminar course introduces students to research communication, evaluation and presentation \r\nculture.', 4, NULL),
(107, 'SCS 4212 - Formal Methods Software Verification', 'This course provides a hands-on introduction to formal methods and software verification. ', 4, NULL),
(108, 'SCS 4213 - Digital Forensics', 'With the profound usage of digital media and its connectivity to cyber space, cyber crime incidents are enormously increasing in numbers.', 4, NULL),
(109, 'SCS 4214 - Natural Algorithms', 'This course covers topics such as Introduction; Sorting, Shortest Path, Travelling Salesman Problem; Evolutionary \r\nComputing: Genetic Algorithms (GA), etc.', 4, NULL),
(110, 'SCS 4215 - Computational Biology', 'After successful completion of the course students should be able to: Explain the necessary principles and methods of genomics, gene expression and proteomics.', 4, NULL),
(111, 'SCS 4216 - Advanced Topics in Mathematics', 'This course covers the most elementary techniques in combinatorics such as pigeonhole principle, inclusion-exclusion principle, recurrence relations and generating functions.', 4, NULL),
(112, 'SCS 4217 - Embedded Systems', 'This course gives a technological and scientific perspective of embedded systems.', 4, NULL),
(113, 'SCS 4218 - Operating Systems II', 'After completing this course the student will be able to use well established advanced concepts as well as recent advancements in operating systems to solve problems related to computer systems.', 4, NULL),
(114, 'SCS 4219 - Distributed Systems', 'This course covers Leader election, consensus, byzantine agreement, atomic commit, logical clocks, snapshots, \r\nbroadcast variants, memory consistency models, Lamport registers, ..', 4, NULL),
(115, 'SCS 4220 - Data Structures and Algorithms IV ', 'This course module provides an understanding of specialized areas in the study of algorithms and gives the ability to analyze amortized cost and randomized running time complexities. ', 4, NULL),
(116, 'SCS 4221 - Software Engineering IV', 'Software Engineering IV is intended for advanced learners who wish to specialize in software engineering \r\nsub-discipline of Computing. ', 4, NULL),
(117, 'SCS 4222 - Logic Programming', 'This course discusses the logic programing paradigm through PROLOG. ', 4, NULL),
(118, 'SCS 4225 - Philosophy of Science', 'This course is designed to provide a basic introduction to the main philosophical questions concerning scientific knowledge. ', 4, NULL),
(119, 'SCS 4226 - Intelligent Systems', 'Philosophy of AI, Search (Heuristic/Adversarial/Informed/Uninformed), Knowledge Representation and Reasoning, Introduction to NLP and Linguistics, Intelligent Agents, Semantic Web, Emerging Trends.', 4, NULL),
(120, 'SCS 4223 - Final Year Project in SE', 'This final year project course is designed to support the students following the honours degree programme in SE to focus on the development of software products and their entire life cycle.', 4, NULL),
(121, 'SCS 4224 - Final Year Project in Computer Science', 'Final Year Project in Computer Science (SCS 4224) is a part requirement for the award of BSc (Hons) in Computer Science degree at the University of Colombo School of Computing (UCSC). ', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_registration_lec`
--

CREATE TABLE `course_registration_lec` (
  `course_id` int(11) NOT NULL,
  `lecturer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_registration_lec`
--

INSERT INTO `course_registration_lec` (`course_id`, `lecturer_id`) VALUES
(47, 885),
(60, 883),
(60, 885),
(72, 883),
(72, 885),
(73, 883),
(73, 885);

-- --------------------------------------------------------

--
-- Table structure for table `course_registration_stu`
--

CREATE TABLE `course_registration_stu` (
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_registration_stu`
--

INSERT INTO `course_registration_stu` (`course_id`, `student_id`) VALUES
(47, 1494),
(47, 1496),
(47, 1498),
(47, 1499),
(47, 1500),
(47, 1501),
(47, 1502),
(47, 1503),
(47, 1504),
(47, 1505),
(60, 1494),
(60, 1496),
(60, 1497),
(60, 1498),
(60, 1499),
(60, 1500),
(60, 1501),
(60, 1502),
(60, 1503),
(60, 1504),
(60, 1505),
(60, 1506),
(60, 1507),
(60, 1508),
(60, 1509),
(60, 1510),
(60, 1511),
(60, 1512),
(60, 1513),
(60, 1514),
(60, 1515),
(60, 1516),
(60, 1517),
(60, 1518),
(60, 1519),
(60, 1520),
(60, 1521),
(60, 1522),
(60, 1524),
(60, 1525),
(60, 1526),
(60, 1527),
(60, 1528),
(60, 1529),
(60, 1530),
(60, 1531),
(60, 1532),
(60, 1533),
(60, 1534),
(60, 1536),
(60, 1537),
(60, 1538),
(60, 1539),
(60, 1540),
(60, 1541),
(60, 1542),
(60, 1543),
(60, 1544),
(60, 1545),
(60, 1546),
(60, 1547),
(60, 1548),
(60, 1549),
(60, 1550),
(60, 1551),
(60, 1552),
(60, 1553),
(60, 1554),
(60, 1555),
(60, 1556),
(60, 1557),
(60, 1558),
(60, 1559),
(60, 1560),
(60, 1561),
(60, 1562),
(60, 1563),
(60, 1564),
(60, 1565),
(60, 1566),
(60, 1567),
(60, 1568),
(60, 1569),
(60, 1570),
(60, 1571),
(60, 1572),
(60, 1573),
(60, 1574),
(60, 1575),
(60, 1576),
(60, 1577),
(60, 1578),
(60, 1579),
(60, 1580),
(60, 1581),
(60, 1582),
(60, 1583),
(60, 1584),
(60, 1585),
(60, 1586),
(60, 1587),
(60, 1588),
(60, 1589),
(60, 1590),
(60, 1591),
(60, 1592),
(60, 1593),
(60, 1594),
(60, 1595),
(60, 1596),
(60, 1597),
(60, 1598),
(72, 1494),
(72, 1496),
(72, 1497),
(72, 1498),
(72, 1499),
(72, 1500),
(72, 1501),
(72, 1502),
(72, 1503),
(72, 1504),
(72, 1505),
(72, 1506),
(72, 1507),
(72, 1508),
(72, 1509),
(72, 1510),
(72, 1511),
(72, 1512),
(72, 1513),
(72, 1514),
(72, 1515),
(72, 1516),
(72, 1517),
(72, 1518),
(72, 1519),
(72, 1520),
(72, 1521),
(72, 1522),
(72, 1524),
(72, 1525),
(72, 1526),
(72, 1527),
(72, 1528),
(72, 1529),
(72, 1530),
(72, 1531),
(72, 1532),
(72, 1533),
(72, 1534),
(72, 1536),
(72, 1537),
(72, 1538),
(72, 1539),
(72, 1540),
(72, 1541),
(72, 1542),
(72, 1543),
(72, 1544),
(72, 1545),
(72, 1546),
(72, 1547),
(72, 1548),
(72, 1549),
(72, 1550),
(72, 1551),
(72, 1552),
(72, 1553),
(72, 1554),
(72, 1555),
(72, 1556),
(72, 1557),
(72, 1558),
(72, 1559),
(72, 1560),
(72, 1561),
(72, 1562),
(72, 1563),
(72, 1564),
(72, 1565),
(72, 1566),
(72, 1567),
(72, 1568),
(72, 1569),
(72, 1570),
(72, 1571),
(72, 1572),
(72, 1573),
(72, 1574),
(72, 1575),
(72, 1576),
(72, 1577),
(72, 1578),
(72, 1579),
(72, 1580),
(72, 1581),
(72, 1582),
(72, 1583),
(72, 1584),
(72, 1585),
(72, 1586),
(72, 1587),
(72, 1588),
(72, 1589),
(72, 1590),
(72, 1591),
(72, 1592),
(72, 1593),
(72, 1594),
(72, 1595),
(72, 1596),
(72, 1597),
(72, 1598),
(73, 1494),
(73, 1496),
(73, 1497),
(73, 1498),
(73, 1499),
(73, 1500),
(73, 1501),
(73, 1502),
(73, 1503),
(73, 1504),
(73, 1505),
(73, 1506),
(73, 1507),
(73, 1508),
(73, 1509),
(73, 1510),
(73, 1511),
(73, 1512),
(73, 1513),
(73, 1514),
(73, 1515),
(73, 1516),
(73, 1517),
(73, 1518),
(73, 1519),
(73, 1520),
(73, 1521),
(73, 1522),
(73, 1524),
(73, 1525),
(73, 1526),
(73, 1527),
(73, 1528),
(73, 1529),
(73, 1530),
(73, 1531),
(73, 1532),
(73, 1533),
(73, 1534),
(73, 1536),
(73, 1537),
(73, 1538),
(73, 1539),
(73, 1540),
(73, 1541),
(73, 1542),
(73, 1543),
(73, 1544),
(73, 1545),
(73, 1546),
(73, 1547),
(73, 1548),
(73, 1549),
(73, 1550),
(73, 1551),
(73, 1552),
(73, 1553),
(73, 1554),
(73, 1555),
(73, 1556),
(73, 1557),
(73, 1558),
(73, 1559),
(73, 1560),
(73, 1561),
(73, 1562),
(73, 1563),
(73, 1564),
(73, 1565),
(73, 1566),
(73, 1567),
(73, 1568),
(73, 1569),
(73, 1570),
(73, 1571),
(73, 1572),
(73, 1573),
(73, 1574),
(73, 1575),
(73, 1576),
(73, 1577),
(73, 1578),
(73, 1579),
(73, 1580),
(73, 1581),
(73, 1582),
(73, 1583),
(73, 1584),
(73, 1585),
(73, 1586),
(73, 1587),
(73, 1588),
(73, 1589),
(73, 1590),
(73, 1591),
(73, 1592),
(73, 1593),
(73, 1594),
(73, 1595),
(73, 1596),
(73, 1597),
(73, 1598);

-- --------------------------------------------------------

--
-- Table structure for table `course_topic`
--

CREATE TABLE `course_topic` (
  `topic_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `lecturer_id` int(11) NOT NULL,
  `topic_name` varchar(30) NOT NULL,
  `topic_description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_topic`
--

INSERT INTO `course_topic` (`topic_id`, `course_id`, `lecturer_id`, `topic_name`, `topic_description`) VALUES
(34, 72, 883, 'Preliminaries', ''),
(35, 72, 883, 'DFA & NFA', ''),
(36, 72, 883, 'Transducers', ''),
(37, 72, 883, 'Regular Language', ''),
(38, 72, 883, 'Context Free Languages', ''),
(39, 72, 883, 'Push Down Automata', ''),
(42, 60, 883, 'Introduction', '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `question` varchar(150) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_lecture`
--

CREATE TABLE `feedback_lecture` (
  `student_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `feedback_id` int(11) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_quiz`
--

CREATE TABLE `feedback_quiz` (
  `student_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `feedback_id` int(11) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `forum_id` int(11) NOT NULL,
  `forum_name` varchar(50) NOT NULL,
  `forum_description` varchar(200) DEFAULT NULL,
  `course_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum`
--

INSERT INTO `forum` (`forum_id`, `forum_name`, `forum_description`, `course_Id`) VALUES
(3, 'SCS 1202 - Programming Using C', NULL, 47),
(4, 'SCS 1203 - Database I', NULL, 48),
(5, 'SCS 1204 - Discrete Mathematics I', NULL, 49),
(6, 'SCS 1205 - Computer Systems', NULL, 50),
(7, 'SCS 1206 - Laboratory I', NULL, 51),
(8, 'SCS 1207 - Software Engineering I', NULL, 52),
(9, 'ENH 1201 - Enhancement I', NULL, 53),
(10, 'SCS 1208 - Data Structures And Algorithms II', NULL, 54),
(11, 'SCS 1209 - Object Oriented Programming', NULL, 55),
(12, 'SCS 1210 - Software Engineering II', 'Please use this Discussion Forum to discuss any matters related to this course. All the students and the lecturers are in this list and anyone can post or reply to a message.', 56),
(13, 'SCS 1211 - Mathematical Methods I', NULL, 57),
(14, 'SCS 1212 - Foundation of Computer Science', NULL, 58),
(15, 'SCS 1213 - Probability and Statistics', NULL, 59),
(16, 'SCS 1214 - Operating Systems I', NULL, 60),
(17, 'ENH 1202 - Enhancement II', NULL, 61),
(18, 'SCS 2201 - Data Structures and Algorithms III ', NULL, 62),
(19, 'SCS 2202 - Group Project I', 'Please use this Discussion Forum to discuss any matters related to this course. All the students and the lecturers are in this list and anyone can post or reply to a message. You can use this forum to', 63),
(20, 'SCS 2203 - Software Engineering III', 'You can use this forum to discuss any problems in our video lectures as well.\r\n\r\nSajana Wanigasuriya.', 64),
(21, 'SCS 2204 - Functional Programming', NULL, 65),
(22, 'SCS 2205 - Computer Networks I', NULL, 66),
(23, 'SCS 2206 - Mathematical Methods II', NULL, 67),
(24, 'SCS 2207 - Programming Language Concepts', NULL, 68),
(25, 'SCS 2208 - Rapid Application Development', NULL, 69),
(26, 'SCS 2209 - Database II', NULL, 70),
(27, 'SCS 2211 - Laboratory II', NULL, 71),
(28, 'SCS 2212 - Automata Theory', NULL, 72),
(29, 'SCS 2214 - Information System Security', NULL, 73),
(30, 'ENH 2201 - Enhancement III ', NULL, 74),
(31, 'SCS 2213 - Electronics and Physical Computing', NULL, 75),
(32, 'SCS 2210 - Discrete Mathematics II', NULL, 76),
(36, 'SCS 3201 - Machine Learning and Neural Computing', NULL, 80),
(37, 'SCS 3202 - Advanced Computer Architecture', NULL, 81),
(38, 'SCS 3204 - Management', NULL, 82),
(39, 'SCS 3205 - Computer Graphics I', NULL, 83),
(40, 'SCS 3206 - Graph Theory ', NULL, 84),
(41, 'SCS 3207 - Software Quality Assurance', NULL, 85),
(42, 'SCS 3208 - Software Project Management', NULL, 86),
(43, 'SCS 3209 - Human-Computer Interaction', NULL, 87),
(44, 'SCS 3210 - Systems and Network Administration', NULL, 88),
(45, 'SCS 3211 - Compiler Theory ', NULL, 89),
(46, 'SCS 3212 - Mobile Application Development', NULL, 90),
(47, 'SCS 3213 - Game Development', NULL, 91),
(48, 'SCS 3214 - Group project II', NULL, 92),
(49, 'SCS 3215 - Professional Practice', NULL, 93),
(50, 'SCS 3216 - Research Methods ', NULL, 94),
(51, 'ENH 3201 - Industry Placement-Industry Project', NULL, 95),
(52, 'SCS 4201 - Ethical Issues and Legal Aspects in IT', NULL, 96),
(53, 'SCS 4202 - Cognitive Robotics T', NULL, 97),
(54, 'SCS 4203 - Database III ', NULL, 98),
(55, 'SCS 4204 - Data Analytics T', NULL, 99),
(56, 'SCS 4205 - Computer Networks II ', NULL, 100),
(57, 'SCS 4206 - Computer Graphics II', NULL, 101),
(58, 'SCS 4207 - Image Processing and Computer Vision', NULL, 102),
(59, 'SCS 4208 - Theory of Computation', NULL, 103),
(60, 'SCS 4209 - Natural Language Processing', NULL, 104),
(61, 'SCS 4210 - Parallel Computing', NULL, 105),
(62, 'SCS 4211 - Research Seminar', NULL, 106),
(63, 'SCS 4212 - Formal Methods Software Verification', NULL, 107),
(64, 'SCS 4213 - Digital Forensics', NULL, 108),
(65, 'SCS 4214 - Natural Algorithms', NULL, 109),
(66, 'SCS 4215 - Computational Biology', NULL, 110),
(67, 'SCS 4216 - Advanced Topics in Mathematics', NULL, 111),
(68, 'SCS 4217 - Embedded Systems', NULL, 112),
(69, 'SCS 4218 - Operating Systems II', NULL, 113),
(70, 'SCS 4219 - Distributed Systems', NULL, 114),
(71, 'SCS 4220 - Data Structures and Algorithms IV ', NULL, 115),
(72, 'SCS 4221 - Software Engineering IV', NULL, 116),
(73, 'SCS 4222 - Logic Programming', NULL, 117),
(74, 'SCS 4225 - Philosophy of Science', NULL, 118),
(75, 'SCS 4226 - Intelligent Systems', NULL, 119),
(76, 'SCS 4223 - Final Year Project in SE', NULL, 120),
(77, 'SCS 4224 - Final Year Project in Computer Science', NULL, 121);

-- --------------------------------------------------------

--
-- Table structure for table `forum_reply`
--

CREATE TABLE `forum_reply` (
  `topic_id` int(11) NOT NULL,
  `reply_id` int(11) NOT NULL,
  `reply` varchar(1200) NOT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `post_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `random_status` char(1) NOT NULL DEFAULT 'F' COMMENT '	T = Random name must not be displayed	'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum_reply`
--

INSERT INTO `forum_reply` (`topic_id`, `reply_id`, `reply`, `points`, `post_time`, `user_id`, `random_status`) VALUES
(60, 61, 'There is no maximal DFA for a regular language, since you can always take a DFA \r\nand add as many states as you want with transitions between them, but with \r\nno transitions between one of the original states and one of the new ones. \r\nThus, the new states will not be reachable from the initial state q0, \r\nso the language accepted by the automaton will not change (since ?^(q0,w) \r\nwill remain the same for all w???).', 0, '2022-03-24 00:30:18', 883, 'F'),
(60, 62, 'The worst-case of 2s comes from the number of subsets of states of the NFA. \r\nTo have the algorithm from Kleene\'s theorem give an equivalent DFA with the \r\nworst-case number of states, there must be a way to get to every possible \r\nsubset of states in the NFA. An example with two states over alphabet {a,b} \r\nhas a transition from the initial state to the sole accepting state on symbol a, \r\na transition from the accepting state back to the initial on b, and a transition \r\nfrom the accepting state back to itself on either an a or a b. The strings ?, a, b, \r\nand ab lead to subsets {q1}, {q2}, {}, and {q1,q2}, respectively, and these would \r\nneed separate states in the DFA Kleene gives.', 1, '2022-03-24 00:31:06', 1494, 'F'),
(61, 63, 'A DFA fundamentally has five components, and those components aren\'t interchangeable. \r\nYou can\'t freely swap the set of final states and the set of input symbols, \r\nfor example, without just making a mess of everything.\r\n\r\nThe standard representation just says \"those five things make a DFA\". In other words, \r\na DFA is just those five things in sequence, nothing more or less. The order matters, \r\nnot because the input symbols have to come before final states, but because you need \r\nto know which is which and not get that wrong. Without an order, you wouldn\'t know \r\nthat.', 0, '2022-03-24 00:32:39', 883, 'F'),
(62, 64, 'Use modulo counters in your states like this:\r\n\r\nstate q[k,l] stands for k is the number of 1s read mod 2, and l the number of 0s read mod 3.\r\n\r\nq[0,0] is the start state, q[1,2] is the unique accepting state. There are six states \r\noverall, the transitions should be obvious.', 0, '2022-03-24 00:33:56', 885, 'F');

-- --------------------------------------------------------

--
-- Table structure for table `forum_reply_points`
--

CREATE TABLE `forum_reply_points` (
  `lecturer_id` int(11) NOT NULL,
  `reply_id` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum_reply_points`
--

INSERT INTO `forum_reply_points` (`lecturer_id`, `reply_id`, `time`) VALUES
(883, 62, '2022-03-26 16:03:48');

--
-- Triggers `forum_reply_points`
--
DELIMITER $$
CREATE TRIGGER `decrement_points_reply` AFTER DELETE ON `forum_reply_points` FOR EACH ROW UPDATE forum_reply SET points=points-1 WHERE reply_id=OLD.reply_id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `increment_points_reply` AFTER INSERT ON `forum_reply_points` FOR EACH ROW UPDATE forum_reply SET points=points+1 WHERE reply_id=NEW.reply_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic`
--

CREATE TABLE `forum_topic` (
  `topic_id` int(11) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `question` varchar(1200) NOT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `post_time` datetime NOT NULL,
  `forum_Id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `random_status` char(1) NOT NULL DEFAULT 'F' COMMENT 'F = Random name must not be displayed',
  `last_reply_id` int(11) DEFAULT NULL COMMENT 'Store latest reply_i',
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum_topic`
--

INSERT INTO `forum_topic` (`topic_id`, `subject`, `question`, `points`, `post_time`, `forum_Id`, `user_id`, `random_status`, `last_reply_id`, `updated_time`) VALUES
(60, 'Topic: What are the conditions for a NFA for its equivalent DFA to be maximal in size?', 'According to Powerset Construction algorithm when converting NFAs to DFAs, \r\nworst case gives us 2^S states, if our NFA had S states.\r\nWhat is determining the worst case scenario?', 1, '2022-03-24 00:29:21', 28, 1497, 'T', 62, '2022-03-24 00:31:06'),
(61, 'Why are finite automata defined as ordered n?tuples and not as sets?', 'Would it be inaccurate to define M as the set {Q,?,?,q0,F} of five elements?\r\nThe tuple (Q,?,?,q0,F) is, by definition, different from (Q,?,?,F,q0). But what if \r\nwe define its elements the same way as given in the definition above? Will it be a \r\nDFA? If it will, then can a DFA be instead defined as a set?', 0, '2022-03-24 00:32:00', 28, 1494, 'T', 63, '2022-03-24 00:32:40'),
(62, 'Design a DFA', 'How to Design a DFA over the alphabet {0,1}: The set of all strings \r\nsuch that the number of 1\'s is even and the number of 0\'s is a multiple of 3.', 0, '2022-03-24 00:33:15', 28, 1494, 'T', 64, '2022-03-24 00:33:56');

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic_points`
--

CREATE TABLE `forum_topic_points` (
  `lecturer_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum_topic_points`
--

INSERT INTO `forum_topic_points` (`lecturer_id`, `topic_id`, `time`) VALUES
(883, 60, '2022-03-26 16:03:52');

--
-- Triggers `forum_topic_points`
--
DELIMITER $$
CREATE TRIGGER `decrement_points` AFTER DELETE ON `forum_topic_points` FOR EACH ROW UPDATE forum_topic SET points = points - 1 WHERE topic_id=OLD.topic_id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `increment_points` AFTER INSERT ON `forum_topic_points` FOR EACH ROW UPDATE forum_topic SET points = points + 1 WHERE topic_id=NEW.topic_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `user_id` int(11) NOT NULL,
  `lecturer_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`user_id`, `lecturer_no`) VALUES
(1495, 19001119),
(885, 19001422),
(883, 55501425);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `notification_type` varchar(20) NOT NULL COMMENT '[Used to display an image] 1 = forum, 2 = badge, 3 = session',
  `subject` varchar(300) NOT NULL,
  `description` varchar(50) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `notification_type`, `subject`, `description`, `url`, `date`) VALUES
(57, '1', 'Lec ALec started a new forum discussion', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/studentForumTopicDiscussion/index/56', '2021-12-16 16:08:28'),
(58, '1', 'Lec ALec started a new forum discussion', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/lecturerForumTopicDiscussion/index/56', '2021-12-16 16:08:28'),
(59, '1', 'Thor\r\n London\r\n started a new forum discussion', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/studentForumTopicDiscussion/index/57', '2021-12-16 16:08:47'),
(60, '1', 'Thor\r\n London\r\n started a new forum discussion', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/lecturerForumTopicDiscussion/index/57', '2021-12-16 16:08:47'),
(61, '1', 'Thor\r\n London\r\n started a new forum discussion', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/studentForumTopicDiscussion/index/58', '2021-12-17 16:20:58'),
(62, '1', 'Thor\r\n London\r\n started a new forum discussion', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/lecturerForumTopicDiscussion/index/58', '2021-12-17 16:20:58'),
(63, '1', 'Thor\r\n London\r\n started a new forum discussion', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/studentForumTopicDiscussion/index/59', '2021-12-26 19:37:13'),
(64, '1', 'Thor\r\n London\r\n started a new forum discussion', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/lecturerForumTopicDiscussion/index/59', '2021-12-26 19:37:13'),
(65, '1', 'You received points from Lec ALec', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/studentForumTopicDiscussion/index/59', '2022-01-04 10:48:56'),
(66, '1', 'You received points from Lec ALec', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/studentForumTopicDiscussion/index/59', '2022-01-04 10:49:11'),
(67, '1', 'Thor\r\n London\r\n started a new forum discussion', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/studentForumTopicDiscussion/index/60', '2022-03-24 00:29:21'),
(68, '1', 'Thor\r\n London\r\n started a new forum discussion', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/lecturerForumTopicDiscussion/index/60', '2022-03-24 00:29:21'),
(69, '1', 'Lec ALec replied to forum disscussion', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/studentForumTopicDiscussion/index/60', '2022-03-24 00:30:18'),
(70, '1', 'Lec ALec replied to forum disscussion', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/lecturerForumTopicDiscussion/index/60', '2022-03-24 00:30:18'),
(71, '1', 'Pansilu Gunaratne replied to forum disscussion', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/studentForumTopicDiscussion/index/60', '2022-03-24 00:31:06'),
(72, '1', 'Pansilu Gunaratne replied to forum disscussion', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/lecturerForumTopicDiscussion/index/60', '2022-03-24 00:31:06'),
(73, '1', 'Michelangelo\r\n Staples\r\n started a new forum discussion', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/studentForumTopicDiscussion/index/61', '2022-03-24 00:32:00'),
(74, '1', 'Michelangelo\r\n Staples\r\n started a new forum discussion', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/lecturerForumTopicDiscussion/index/61', '2022-03-24 00:32:00'),
(75, '1', 'Lec ALec replied to forum disscussion', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/studentForumTopicDiscussion/index/61', '2022-03-24 00:32:39'),
(76, '1', 'Lec ALec replied to forum disscussion', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/lecturerForumTopicDiscussion/index/61', '2022-03-24 00:32:39'),
(77, '1', 'Michelangelo\r\n Staples\r\n started a new forum discussion', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/studentForumTopicDiscussion/index/62', '2022-03-24 00:33:15'),
(78, '1', 'Michelangelo\r\n Staples\r\n started a new forum discussion', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/lecturerForumTopicDiscussion/index/62', '2022-03-24 00:33:15'),
(79, '1', 'Dulitha Ratnayake replied to forum disscussion', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/studentForumTopicDiscussion/index/62', '2022-03-24 00:33:56'),
(80, '1', 'Dulitha Ratnayake replied to forum disscussion', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/lecturerForumTopicDiscussion/index/62', '2022-03-24 00:33:56'),
(81, '1', 'You received points from Lec ALec', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/studentForumTopicDiscussion/index/60', '2022-03-24 21:58:44'),
(82, '1', 'You received points from Lec ALec', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/studentForumTopicDiscussion/index/60', '2022-03-24 22:20:23'),
(83, '1', 'You received points from Lec ALec', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/studentForumTopicDiscussion/index/60', '2022-03-26 16:02:32'),
(84, '1', 'You received points from Lec ALec', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/studentForumTopicDiscussion/index/60', '2022-03-26 16:03:07'),
(85, '1', 'You received points from Lec ALec', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/studentForumTopicDiscussion/index/60', '2022-03-26 16:03:48'),
(86, '1', 'You received points from Lec ALec', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/studentForumTopicDiscussion/index/60', '2022-03-26 16:03:52'),
(87, '1', 'Lec ALec started a new forum discussion', 'SCS 2214 - Information System Security', 'http://localhost/ALec/studentForumTopicDiscussion/index/63', '2022-03-27 20:34:45'),
(88, '1', 'Lec ALec started a new forum discussion', 'SCS 2214 - Information System Security', 'http://localhost/ALec/lecturerForumTopicDiscussion/index/63', '2022-03-27 20:34:45'),
(89, '1', 'Thor\r\n London\r\n started a new forum discussion', 'SCS 2214 - Information System Security', 'http://localhost/ALec/studentForumTopicDiscussion/index/64', '2022-03-27 20:35:22'),
(90, '1', 'Thor\r\n London\r\n started a new forum discussion', 'SCS 2214 - Information System Security', 'http://localhost/ALec/lecturerForumTopicDiscussion/index/64', '2022-03-27 20:35:22'),
(91, '1', 'Janitha Ratnayake replied to forum disscussion', 'SCS 2214 - Information System Security', 'http://localhost/ALec/studentForumTopicDiscussion/index/63', '2022-03-27 20:35:39'),
(92, '1', 'Janitha Ratnayake replied to forum disscussion', 'SCS 2214 - Information System Security', 'http://localhost/ALec/lecturerForumTopicDiscussion/index/63', '2022-03-27 20:35:39'),
(93, '1', 'Thor\r\n London\r\n replied to forum disscussion', 'SCS 2214 - Information System Security', 'http://localhost/ALec/studentForumTopicDiscussion/index/63', '2022-03-27 20:35:52'),
(94, '1', 'Thor\r\n London\r\n replied to forum disscussion', 'SCS 2214 - Information System Security', 'http://localhost/ALec/lecturerForumTopicDiscussion/index/63', '2022-03-27 20:35:52'),
(95, '1', 'You received points from Lec ALec', 'SCS 2214 - Information System Security', 'http://localhost/ALec/studentForumTopicDiscussion/index/64', '2022-03-27 20:40:35'),
(96, '1', 'You received points from Lec ALec', 'SCS 2214 - Information System Security', 'http://localhost/ALec/studentForumTopicDiscussion/index/63', '2022-03-27 20:40:40'),
(97, '1', 'You received points from Lec ALec', 'SCS 2214 - Information System Security', 'http://localhost/ALec/studentForumTopicDiscussion/index/63', '2022-03-27 20:40:46');

-- --------------------------------------------------------

--
-- Table structure for table `notification_user`
--

CREATE TABLE `notification_user` (
  `user_id` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `notification_status` char(1) NOT NULL DEFAULT 'F' COMMENT 'F = Not seen the notification',
  `notification_status_mobile` char(1) NOT NULL DEFAULT 'F' COMMENT 'F = Not read by mobile, T = read by mobile'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification_user`
--

INSERT INTO `notification_user` (`user_id`, `notification_id`, `notification_status`, `notification_status_mobile`) VALUES
(883, 58, 'T', 'F'),
(883, 60, 'T', 'F'),
(883, 62, 'T', 'F'),
(883, 64, 'T', 'F'),
(883, 68, 'T', 'F'),
(883, 70, 'T', 'F'),
(883, 72, 'T', 'F'),
(883, 74, 'T', 'F'),
(883, 76, 'T', 'F'),
(883, 78, 'T', 'F'),
(883, 80, 'T', 'F'),
(883, 88, 'F', 'F'),
(883, 90, 'F', 'F'),
(883, 92, 'F', 'F'),
(883, 94, 'F', 'F'),
(885, 58, 'F', 'F'),
(885, 60, 'F', 'F'),
(885, 62, 'F', 'F'),
(885, 64, 'F', 'F'),
(885, 68, 'F', 'F'),
(885, 70, 'F', 'F'),
(885, 72, 'F', 'F'),
(885, 74, 'F', 'F'),
(885, 76, 'F', 'F'),
(885, 78, 'F', 'F'),
(885, 80, 'F', 'F'),
(885, 88, 'F', 'F'),
(885, 90, 'F', 'F'),
(885, 92, 'F', 'F'),
(885, 94, 'F', 'F'),
(1494, 57, 'F', 'F'),
(1494, 59, 'F', 'F'),
(1494, 61, 'F', 'F'),
(1494, 63, 'F', 'F'),
(1494, 67, 'F', 'F'),
(1494, 69, 'F', 'F'),
(1494, 71, 'F', 'F'),
(1494, 73, 'F', 'F'),
(1494, 75, 'F', 'F'),
(1494, 77, 'F', 'F'),
(1494, 79, 'F', 'F'),
(1494, 82, 'F', 'F'),
(1494, 84, 'F', 'F'),
(1494, 85, 'F', 'F'),
(1494, 87, 'F', 'F'),
(1494, 89, 'F', 'F'),
(1494, 91, 'F', 'F'),
(1494, 93, 'F', 'F'),
(1496, 67, 'F', 'F'),
(1496, 69, 'F', 'F'),
(1496, 71, 'F', 'F'),
(1496, 73, 'F', 'F'),
(1496, 75, 'F', 'F'),
(1496, 77, 'F', 'F'),
(1496, 79, 'F', 'F'),
(1496, 87, 'F', 'F'),
(1496, 89, 'F', 'F'),
(1496, 91, 'F', 'F'),
(1496, 93, 'F', 'F'),
(1497, 57, 'F', 'F'),
(1497, 59, 'F', 'F'),
(1497, 61, 'F', 'F'),
(1497, 63, 'F', 'F'),
(1497, 65, 'F', 'F'),
(1497, 66, 'F', 'F'),
(1497, 67, 'F', 'F'),
(1497, 69, 'F', 'F'),
(1497, 71, 'F', 'F'),
(1497, 73, 'F', 'F'),
(1497, 75, 'F', 'F'),
(1497, 77, 'F', 'F'),
(1497, 79, 'F', 'F'),
(1497, 81, 'F', 'F'),
(1497, 83, 'F', 'F'),
(1497, 86, 'F', 'F'),
(1497, 87, 'F', 'F'),
(1497, 89, 'F', 'F'),
(1497, 91, 'F', 'F'),
(1497, 93, 'F', 'F'),
(1497, 95, 'F', 'F'),
(1497, 96, 'F', 'F'),
(1497, 97, 'F', 'F'),
(1498, 67, 'F', 'F'),
(1498, 69, 'F', 'F'),
(1498, 71, 'F', 'F'),
(1498, 73, 'F', 'F'),
(1498, 75, 'F', 'F'),
(1498, 77, 'F', 'F'),
(1498, 79, 'F', 'F'),
(1498, 87, 'F', 'F'),
(1498, 89, 'F', 'F'),
(1498, 91, 'F', 'F'),
(1498, 93, 'F', 'F'),
(1499, 67, 'F', 'F'),
(1499, 69, 'F', 'F'),
(1499, 71, 'F', 'F'),
(1499, 73, 'F', 'F'),
(1499, 75, 'F', 'F'),
(1499, 77, 'F', 'F'),
(1499, 79, 'F', 'F'),
(1499, 87, 'F', 'F'),
(1499, 89, 'F', 'F'),
(1499, 91, 'F', 'F'),
(1499, 93, 'F', 'F'),
(1500, 67, 'F', 'F'),
(1500, 69, 'F', 'F'),
(1500, 71, 'F', 'F'),
(1500, 73, 'F', 'F'),
(1500, 75, 'F', 'F'),
(1500, 77, 'F', 'F'),
(1500, 79, 'F', 'F'),
(1500, 87, 'F', 'F'),
(1500, 89, 'F', 'F'),
(1500, 91, 'F', 'F'),
(1500, 93, 'F', 'F'),
(1501, 67, 'F', 'F'),
(1501, 69, 'F', 'F'),
(1501, 71, 'F', 'F'),
(1501, 73, 'F', 'F'),
(1501, 75, 'F', 'F'),
(1501, 77, 'F', 'F'),
(1501, 79, 'F', 'F'),
(1501, 87, 'F', 'F'),
(1501, 89, 'F', 'F'),
(1501, 91, 'F', 'F'),
(1501, 93, 'F', 'F'),
(1502, 67, 'F', 'F'),
(1502, 69, 'F', 'F'),
(1502, 71, 'F', 'F'),
(1502, 73, 'F', 'F'),
(1502, 75, 'F', 'F'),
(1502, 77, 'F', 'F'),
(1502, 79, 'F', 'F'),
(1502, 87, 'F', 'F'),
(1502, 89, 'F', 'F'),
(1502, 91, 'F', 'F'),
(1502, 93, 'F', 'F'),
(1503, 67, 'F', 'F'),
(1503, 69, 'F', 'F'),
(1503, 71, 'F', 'F'),
(1503, 73, 'F', 'F'),
(1503, 75, 'F', 'F'),
(1503, 77, 'F', 'F'),
(1503, 79, 'F', 'F'),
(1503, 87, 'F', 'F'),
(1503, 89, 'F', 'F'),
(1503, 91, 'F', 'F'),
(1503, 93, 'F', 'F'),
(1504, 67, 'F', 'F'),
(1504, 69, 'F', 'F'),
(1504, 71, 'F', 'F'),
(1504, 73, 'F', 'F'),
(1504, 75, 'F', 'F'),
(1504, 77, 'F', 'F'),
(1504, 79, 'F', 'F'),
(1504, 87, 'F', 'F'),
(1504, 89, 'F', 'F'),
(1504, 91, 'F', 'F'),
(1504, 93, 'F', 'F'),
(1505, 67, 'F', 'F'),
(1505, 69, 'F', 'F'),
(1505, 71, 'F', 'F'),
(1505, 73, 'F', 'F'),
(1505, 75, 'F', 'F'),
(1505, 77, 'F', 'F'),
(1505, 79, 'F', 'F'),
(1505, 87, 'F', 'F'),
(1505, 89, 'F', 'F'),
(1505, 91, 'F', 'F'),
(1505, 93, 'F', 'F'),
(1506, 67, 'F', 'F'),
(1506, 69, 'F', 'F'),
(1506, 71, 'F', 'F'),
(1506, 73, 'F', 'F'),
(1506, 75, 'F', 'F'),
(1506, 77, 'F', 'F'),
(1506, 79, 'F', 'F'),
(1506, 87, 'F', 'F'),
(1506, 89, 'F', 'F'),
(1506, 91, 'F', 'F'),
(1506, 93, 'F', 'F'),
(1507, 67, 'F', 'F'),
(1507, 69, 'F', 'F'),
(1507, 71, 'F', 'F'),
(1507, 73, 'F', 'F'),
(1507, 75, 'F', 'F'),
(1507, 77, 'F', 'F'),
(1507, 79, 'F', 'F'),
(1507, 87, 'F', 'F'),
(1507, 89, 'F', 'F'),
(1507, 91, 'F', 'F'),
(1507, 93, 'F', 'F'),
(1508, 67, 'F', 'F'),
(1508, 69, 'F', 'F'),
(1508, 71, 'F', 'F'),
(1508, 73, 'F', 'F'),
(1508, 75, 'F', 'F'),
(1508, 77, 'F', 'F'),
(1508, 79, 'F', 'F'),
(1508, 87, 'F', 'F'),
(1508, 89, 'F', 'F'),
(1508, 91, 'F', 'F'),
(1508, 93, 'F', 'F'),
(1509, 67, 'F', 'F'),
(1509, 69, 'F', 'F'),
(1509, 71, 'F', 'F'),
(1509, 73, 'F', 'F'),
(1509, 75, 'F', 'F'),
(1509, 77, 'F', 'F'),
(1509, 79, 'F', 'F'),
(1509, 87, 'F', 'F'),
(1509, 89, 'F', 'F'),
(1509, 91, 'F', 'F'),
(1509, 93, 'F', 'F'),
(1510, 67, 'F', 'F'),
(1510, 69, 'F', 'F'),
(1510, 71, 'F', 'F'),
(1510, 73, 'F', 'F'),
(1510, 75, 'F', 'F'),
(1510, 77, 'F', 'F'),
(1510, 79, 'F', 'F'),
(1510, 87, 'F', 'F'),
(1510, 89, 'F', 'F'),
(1510, 91, 'F', 'F'),
(1510, 93, 'F', 'F'),
(1511, 67, 'F', 'F'),
(1511, 69, 'F', 'F'),
(1511, 71, 'F', 'F'),
(1511, 73, 'F', 'F'),
(1511, 75, 'F', 'F'),
(1511, 77, 'F', 'F'),
(1511, 79, 'F', 'F'),
(1511, 87, 'F', 'F'),
(1511, 89, 'F', 'F'),
(1511, 91, 'F', 'F'),
(1511, 93, 'F', 'F'),
(1512, 67, 'F', 'F'),
(1512, 69, 'F', 'F'),
(1512, 71, 'F', 'F'),
(1512, 73, 'F', 'F'),
(1512, 75, 'F', 'F'),
(1512, 77, 'F', 'F'),
(1512, 79, 'F', 'F'),
(1512, 87, 'F', 'F'),
(1512, 89, 'F', 'F'),
(1512, 91, 'F', 'F'),
(1512, 93, 'F', 'F'),
(1513, 67, 'F', 'F'),
(1513, 69, 'F', 'F'),
(1513, 71, 'F', 'F'),
(1513, 73, 'F', 'F'),
(1513, 75, 'F', 'F'),
(1513, 77, 'F', 'F'),
(1513, 79, 'F', 'F'),
(1513, 87, 'F', 'F'),
(1513, 89, 'F', 'F'),
(1513, 91, 'F', 'F'),
(1513, 93, 'F', 'F'),
(1514, 67, 'F', 'F'),
(1514, 69, 'F', 'F'),
(1514, 71, 'F', 'F'),
(1514, 73, 'F', 'F'),
(1514, 75, 'F', 'F'),
(1514, 77, 'F', 'F'),
(1514, 79, 'F', 'F'),
(1514, 87, 'F', 'F'),
(1514, 89, 'F', 'F'),
(1514, 91, 'F', 'F'),
(1514, 93, 'F', 'F'),
(1515, 67, 'F', 'F'),
(1515, 69, 'F', 'F'),
(1515, 71, 'F', 'F'),
(1515, 73, 'F', 'F'),
(1515, 75, 'F', 'F'),
(1515, 77, 'F', 'F'),
(1515, 79, 'F', 'F'),
(1515, 87, 'F', 'F'),
(1515, 89, 'F', 'F'),
(1515, 91, 'F', 'F'),
(1515, 93, 'F', 'F'),
(1516, 67, 'F', 'F'),
(1516, 69, 'F', 'F'),
(1516, 71, 'F', 'F'),
(1516, 73, 'F', 'F'),
(1516, 75, 'F', 'F'),
(1516, 77, 'F', 'F'),
(1516, 79, 'F', 'F'),
(1516, 87, 'F', 'F'),
(1516, 89, 'F', 'F'),
(1516, 91, 'F', 'F'),
(1516, 93, 'F', 'F'),
(1517, 67, 'F', 'F'),
(1517, 69, 'F', 'F'),
(1517, 71, 'F', 'F'),
(1517, 73, 'F', 'F'),
(1517, 75, 'F', 'F'),
(1517, 77, 'F', 'F'),
(1517, 79, 'F', 'F'),
(1517, 87, 'F', 'F'),
(1517, 89, 'F', 'F'),
(1517, 91, 'F', 'F'),
(1517, 93, 'F', 'F'),
(1518, 67, 'F', 'F'),
(1518, 69, 'F', 'F'),
(1518, 71, 'F', 'F'),
(1518, 73, 'F', 'F'),
(1518, 75, 'F', 'F'),
(1518, 77, 'F', 'F'),
(1518, 79, 'F', 'F'),
(1518, 87, 'F', 'F'),
(1518, 89, 'F', 'F'),
(1518, 91, 'F', 'F'),
(1518, 93, 'F', 'F'),
(1519, 67, 'F', 'F'),
(1519, 69, 'F', 'F'),
(1519, 71, 'F', 'F'),
(1519, 73, 'F', 'F'),
(1519, 75, 'F', 'F'),
(1519, 77, 'F', 'F'),
(1519, 79, 'F', 'F'),
(1519, 87, 'F', 'F'),
(1519, 89, 'F', 'F'),
(1519, 91, 'F', 'F'),
(1519, 93, 'F', 'F'),
(1520, 67, 'F', 'F'),
(1520, 69, 'F', 'F'),
(1520, 71, 'F', 'F'),
(1520, 73, 'F', 'F'),
(1520, 75, 'F', 'F'),
(1520, 77, 'F', 'F'),
(1520, 79, 'F', 'F'),
(1520, 87, 'F', 'F'),
(1520, 89, 'F', 'F'),
(1520, 91, 'F', 'F'),
(1520, 93, 'F', 'F'),
(1521, 67, 'F', 'F'),
(1521, 69, 'F', 'F'),
(1521, 71, 'F', 'F'),
(1521, 73, 'F', 'F'),
(1521, 75, 'F', 'F'),
(1521, 77, 'F', 'F'),
(1521, 79, 'F', 'F'),
(1521, 87, 'F', 'F'),
(1521, 89, 'F', 'F'),
(1521, 91, 'F', 'F'),
(1521, 93, 'F', 'F'),
(1522, 67, 'F', 'F'),
(1522, 69, 'F', 'F'),
(1522, 71, 'F', 'F'),
(1522, 73, 'F', 'F'),
(1522, 75, 'F', 'F'),
(1522, 77, 'F', 'F'),
(1522, 79, 'F', 'F'),
(1522, 87, 'F', 'F'),
(1522, 89, 'F', 'F'),
(1522, 91, 'F', 'F'),
(1522, 93, 'F', 'F'),
(1524, 67, 'F', 'F'),
(1524, 69, 'F', 'F'),
(1524, 71, 'F', 'F'),
(1524, 73, 'F', 'F'),
(1524, 75, 'F', 'F'),
(1524, 77, 'F', 'F'),
(1524, 79, 'F', 'F'),
(1524, 87, 'F', 'F'),
(1524, 89, 'F', 'F'),
(1524, 91, 'F', 'F'),
(1524, 93, 'F', 'F'),
(1525, 67, 'F', 'F'),
(1525, 69, 'F', 'F'),
(1525, 71, 'F', 'F'),
(1525, 73, 'F', 'F'),
(1525, 75, 'F', 'F'),
(1525, 77, 'F', 'F'),
(1525, 79, 'F', 'F'),
(1525, 87, 'F', 'F'),
(1525, 89, 'F', 'F'),
(1525, 91, 'F', 'F'),
(1525, 93, 'F', 'F'),
(1526, 67, 'F', 'F'),
(1526, 69, 'F', 'F'),
(1526, 71, 'F', 'F'),
(1526, 73, 'F', 'F'),
(1526, 75, 'F', 'F'),
(1526, 77, 'F', 'F'),
(1526, 79, 'F', 'F'),
(1526, 87, 'F', 'F'),
(1526, 89, 'F', 'F'),
(1526, 91, 'F', 'F'),
(1526, 93, 'F', 'F'),
(1527, 67, 'F', 'F'),
(1527, 69, 'F', 'F'),
(1527, 71, 'F', 'F'),
(1527, 73, 'F', 'F'),
(1527, 75, 'F', 'F'),
(1527, 77, 'F', 'F'),
(1527, 79, 'F', 'F'),
(1527, 87, 'F', 'F'),
(1527, 89, 'F', 'F'),
(1527, 91, 'F', 'F'),
(1527, 93, 'F', 'F'),
(1528, 67, 'F', 'F'),
(1528, 69, 'F', 'F'),
(1528, 71, 'F', 'F'),
(1528, 73, 'F', 'F'),
(1528, 75, 'F', 'F'),
(1528, 77, 'F', 'F'),
(1528, 79, 'F', 'F'),
(1528, 87, 'F', 'F'),
(1528, 89, 'F', 'F'),
(1528, 91, 'F', 'F'),
(1528, 93, 'F', 'F'),
(1529, 67, 'F', 'F'),
(1529, 69, 'F', 'F'),
(1529, 71, 'F', 'F'),
(1529, 73, 'F', 'F'),
(1529, 75, 'F', 'F'),
(1529, 77, 'F', 'F'),
(1529, 79, 'F', 'F'),
(1529, 87, 'F', 'F'),
(1529, 89, 'F', 'F'),
(1529, 91, 'F', 'F'),
(1529, 93, 'F', 'F'),
(1530, 67, 'F', 'F'),
(1530, 69, 'F', 'F'),
(1530, 71, 'F', 'F'),
(1530, 73, 'F', 'F'),
(1530, 75, 'F', 'F'),
(1530, 77, 'F', 'F'),
(1530, 79, 'F', 'F'),
(1530, 87, 'F', 'F'),
(1530, 89, 'F', 'F'),
(1530, 91, 'F', 'F'),
(1530, 93, 'F', 'F'),
(1531, 67, 'F', 'F'),
(1531, 69, 'F', 'F'),
(1531, 71, 'F', 'F'),
(1531, 73, 'F', 'F'),
(1531, 75, 'F', 'F'),
(1531, 77, 'F', 'F'),
(1531, 79, 'F', 'F'),
(1531, 87, 'F', 'F'),
(1531, 89, 'F', 'F'),
(1531, 91, 'F', 'F'),
(1531, 93, 'F', 'F'),
(1532, 67, 'F', 'F'),
(1532, 69, 'F', 'F'),
(1532, 71, 'F', 'F'),
(1532, 73, 'F', 'F'),
(1532, 75, 'F', 'F'),
(1532, 77, 'F', 'F'),
(1532, 79, 'F', 'F'),
(1532, 87, 'F', 'F'),
(1532, 89, 'F', 'F'),
(1532, 91, 'F', 'F'),
(1532, 93, 'F', 'F'),
(1533, 67, 'F', 'F'),
(1533, 69, 'F', 'F'),
(1533, 71, 'F', 'F'),
(1533, 73, 'F', 'F'),
(1533, 75, 'F', 'F'),
(1533, 77, 'F', 'F'),
(1533, 79, 'F', 'F'),
(1533, 87, 'F', 'F'),
(1533, 89, 'F', 'F'),
(1533, 91, 'F', 'F'),
(1533, 93, 'F', 'F'),
(1534, 67, 'F', 'F'),
(1534, 69, 'F', 'F'),
(1534, 71, 'F', 'F'),
(1534, 73, 'F', 'F'),
(1534, 75, 'F', 'F'),
(1534, 77, 'F', 'F'),
(1534, 79, 'F', 'F'),
(1534, 87, 'F', 'F'),
(1534, 89, 'F', 'F'),
(1534, 91, 'F', 'F'),
(1534, 93, 'F', 'F'),
(1536, 67, 'F', 'F'),
(1536, 69, 'F', 'F'),
(1536, 71, 'F', 'F'),
(1536, 73, 'F', 'F'),
(1536, 75, 'F', 'F'),
(1536, 77, 'F', 'F'),
(1536, 79, 'F', 'F'),
(1536, 87, 'F', 'F'),
(1536, 89, 'F', 'F'),
(1536, 91, 'F', 'F'),
(1536, 93, 'F', 'F'),
(1537, 67, 'F', 'F'),
(1537, 69, 'F', 'F'),
(1537, 71, 'F', 'F'),
(1537, 73, 'F', 'F'),
(1537, 75, 'F', 'F'),
(1537, 77, 'F', 'F'),
(1537, 79, 'F', 'F'),
(1537, 87, 'F', 'F'),
(1537, 89, 'F', 'F'),
(1537, 91, 'F', 'F'),
(1537, 93, 'F', 'F'),
(1538, 67, 'F', 'F'),
(1538, 69, 'F', 'F'),
(1538, 71, 'F', 'F'),
(1538, 73, 'F', 'F'),
(1538, 75, 'F', 'F'),
(1538, 77, 'F', 'F'),
(1538, 79, 'F', 'F'),
(1538, 87, 'F', 'F'),
(1538, 89, 'F', 'F'),
(1538, 91, 'F', 'F'),
(1538, 93, 'F', 'F'),
(1539, 67, 'F', 'F'),
(1539, 69, 'F', 'F'),
(1539, 71, 'F', 'F'),
(1539, 73, 'F', 'F'),
(1539, 75, 'F', 'F'),
(1539, 77, 'F', 'F'),
(1539, 79, 'F', 'F'),
(1539, 87, 'F', 'F'),
(1539, 89, 'F', 'F'),
(1539, 91, 'F', 'F'),
(1539, 93, 'F', 'F'),
(1540, 67, 'F', 'F'),
(1540, 69, 'F', 'F'),
(1540, 71, 'F', 'F'),
(1540, 73, 'F', 'F'),
(1540, 75, 'F', 'F'),
(1540, 77, 'F', 'F'),
(1540, 79, 'F', 'F'),
(1540, 87, 'F', 'F'),
(1540, 89, 'F', 'F'),
(1540, 91, 'F', 'F'),
(1540, 93, 'F', 'F'),
(1541, 67, 'F', 'F'),
(1541, 69, 'F', 'F'),
(1541, 71, 'F', 'F'),
(1541, 73, 'F', 'F'),
(1541, 75, 'F', 'F'),
(1541, 77, 'F', 'F'),
(1541, 79, 'F', 'F'),
(1541, 87, 'F', 'F'),
(1541, 89, 'F', 'F'),
(1541, 91, 'F', 'F'),
(1541, 93, 'F', 'F'),
(1542, 67, 'F', 'F'),
(1542, 69, 'F', 'F'),
(1542, 71, 'F', 'F'),
(1542, 73, 'F', 'F'),
(1542, 75, 'F', 'F'),
(1542, 77, 'F', 'F'),
(1542, 79, 'F', 'F'),
(1542, 87, 'F', 'F'),
(1542, 89, 'F', 'F'),
(1542, 91, 'F', 'F'),
(1542, 93, 'F', 'F'),
(1543, 67, 'F', 'F'),
(1543, 69, 'F', 'F'),
(1543, 71, 'F', 'F'),
(1543, 73, 'F', 'F'),
(1543, 75, 'F', 'F'),
(1543, 77, 'F', 'F'),
(1543, 79, 'F', 'F'),
(1543, 87, 'F', 'F'),
(1543, 89, 'F', 'F'),
(1543, 91, 'F', 'F'),
(1543, 93, 'F', 'F'),
(1544, 67, 'F', 'F'),
(1544, 69, 'F', 'F'),
(1544, 71, 'F', 'F'),
(1544, 73, 'F', 'F'),
(1544, 75, 'F', 'F'),
(1544, 77, 'F', 'F'),
(1544, 79, 'F', 'F'),
(1544, 87, 'F', 'F'),
(1544, 89, 'F', 'F'),
(1544, 91, 'F', 'F'),
(1544, 93, 'F', 'F'),
(1545, 67, 'F', 'F'),
(1545, 69, 'F', 'F'),
(1545, 71, 'F', 'F'),
(1545, 73, 'F', 'F'),
(1545, 75, 'F', 'F'),
(1545, 77, 'F', 'F'),
(1545, 79, 'F', 'F'),
(1545, 87, 'F', 'F'),
(1545, 89, 'F', 'F'),
(1545, 91, 'F', 'F'),
(1545, 93, 'F', 'F'),
(1546, 67, 'F', 'F'),
(1546, 69, 'F', 'F'),
(1546, 71, 'F', 'F'),
(1546, 73, 'F', 'F'),
(1546, 75, 'F', 'F'),
(1546, 77, 'F', 'F'),
(1546, 79, 'F', 'F'),
(1546, 87, 'F', 'F'),
(1546, 89, 'F', 'F'),
(1546, 91, 'F', 'F'),
(1546, 93, 'F', 'F'),
(1547, 67, 'F', 'F'),
(1547, 69, 'F', 'F'),
(1547, 71, 'F', 'F'),
(1547, 73, 'F', 'F'),
(1547, 75, 'F', 'F'),
(1547, 77, 'F', 'F'),
(1547, 79, 'F', 'F'),
(1547, 87, 'F', 'F'),
(1547, 89, 'F', 'F'),
(1547, 91, 'F', 'F'),
(1547, 93, 'F', 'F'),
(1548, 67, 'F', 'F'),
(1548, 69, 'F', 'F'),
(1548, 71, 'F', 'F'),
(1548, 73, 'F', 'F'),
(1548, 75, 'F', 'F'),
(1548, 77, 'F', 'F'),
(1548, 79, 'F', 'F'),
(1548, 87, 'F', 'F'),
(1548, 89, 'F', 'F'),
(1548, 91, 'F', 'F'),
(1548, 93, 'F', 'F'),
(1549, 67, 'F', 'F'),
(1549, 69, 'F', 'F'),
(1549, 71, 'F', 'F'),
(1549, 73, 'F', 'F'),
(1549, 75, 'F', 'F'),
(1549, 77, 'F', 'F'),
(1549, 79, 'F', 'F'),
(1549, 87, 'F', 'F'),
(1549, 89, 'F', 'F'),
(1549, 91, 'F', 'F'),
(1549, 93, 'F', 'F'),
(1550, 67, 'F', 'F'),
(1550, 69, 'F', 'F'),
(1550, 71, 'F', 'F'),
(1550, 73, 'F', 'F'),
(1550, 75, 'F', 'F'),
(1550, 77, 'F', 'F'),
(1550, 79, 'F', 'F'),
(1550, 87, 'F', 'F'),
(1550, 89, 'F', 'F'),
(1550, 91, 'F', 'F'),
(1550, 93, 'F', 'F'),
(1551, 67, 'F', 'F'),
(1551, 69, 'F', 'F'),
(1551, 71, 'F', 'F'),
(1551, 73, 'F', 'F'),
(1551, 75, 'F', 'F'),
(1551, 77, 'F', 'F'),
(1551, 79, 'F', 'F'),
(1551, 87, 'F', 'F'),
(1551, 89, 'F', 'F'),
(1551, 91, 'F', 'F'),
(1551, 93, 'F', 'F'),
(1552, 67, 'F', 'F'),
(1552, 69, 'F', 'F'),
(1552, 71, 'F', 'F'),
(1552, 73, 'F', 'F'),
(1552, 75, 'F', 'F'),
(1552, 77, 'F', 'F'),
(1552, 79, 'F', 'F'),
(1552, 87, 'F', 'F'),
(1552, 89, 'F', 'F'),
(1552, 91, 'F', 'F'),
(1552, 93, 'F', 'F'),
(1553, 67, 'F', 'F'),
(1553, 69, 'F', 'F'),
(1553, 71, 'F', 'F'),
(1553, 73, 'F', 'F'),
(1553, 75, 'F', 'F'),
(1553, 77, 'F', 'F'),
(1553, 79, 'F', 'F'),
(1553, 87, 'F', 'F'),
(1553, 89, 'F', 'F'),
(1553, 91, 'F', 'F'),
(1553, 93, 'F', 'F'),
(1554, 67, 'F', 'F'),
(1554, 69, 'F', 'F'),
(1554, 71, 'F', 'F'),
(1554, 73, 'F', 'F'),
(1554, 75, 'F', 'F'),
(1554, 77, 'F', 'F'),
(1554, 79, 'F', 'F'),
(1554, 87, 'F', 'F'),
(1554, 89, 'F', 'F'),
(1554, 91, 'F', 'F'),
(1554, 93, 'F', 'F'),
(1555, 67, 'F', 'F'),
(1555, 69, 'F', 'F'),
(1555, 71, 'F', 'F'),
(1555, 73, 'F', 'F'),
(1555, 75, 'F', 'F'),
(1555, 77, 'F', 'F'),
(1555, 79, 'F', 'F'),
(1555, 87, 'F', 'F'),
(1555, 89, 'F', 'F'),
(1555, 91, 'F', 'F'),
(1555, 93, 'F', 'F'),
(1556, 67, 'F', 'F'),
(1556, 69, 'F', 'F'),
(1556, 71, 'F', 'F'),
(1556, 73, 'F', 'F'),
(1556, 75, 'F', 'F'),
(1556, 77, 'F', 'F'),
(1556, 79, 'F', 'F'),
(1556, 87, 'F', 'F'),
(1556, 89, 'F', 'F'),
(1556, 91, 'F', 'F'),
(1556, 93, 'F', 'F'),
(1557, 67, 'F', 'F'),
(1557, 69, 'F', 'F'),
(1557, 71, 'F', 'F'),
(1557, 73, 'F', 'F'),
(1557, 75, 'F', 'F'),
(1557, 77, 'F', 'F'),
(1557, 79, 'F', 'F'),
(1557, 87, 'F', 'F'),
(1557, 89, 'F', 'F'),
(1557, 91, 'F', 'F'),
(1557, 93, 'F', 'F'),
(1558, 67, 'F', 'F'),
(1558, 69, 'F', 'F'),
(1558, 71, 'F', 'F'),
(1558, 73, 'F', 'F'),
(1558, 75, 'F', 'F'),
(1558, 77, 'F', 'F'),
(1558, 79, 'F', 'F'),
(1558, 87, 'F', 'F'),
(1558, 89, 'F', 'F'),
(1558, 91, 'F', 'F'),
(1558, 93, 'F', 'F'),
(1559, 67, 'F', 'F'),
(1559, 69, 'F', 'F'),
(1559, 71, 'F', 'F'),
(1559, 73, 'F', 'F'),
(1559, 75, 'F', 'F'),
(1559, 77, 'F', 'F'),
(1559, 79, 'F', 'F'),
(1559, 87, 'F', 'F'),
(1559, 89, 'F', 'F'),
(1559, 91, 'F', 'F'),
(1559, 93, 'F', 'F'),
(1560, 67, 'F', 'F'),
(1560, 69, 'F', 'F'),
(1560, 71, 'F', 'F'),
(1560, 73, 'F', 'F'),
(1560, 75, 'F', 'F'),
(1560, 77, 'F', 'F'),
(1560, 79, 'F', 'F'),
(1560, 87, 'F', 'F'),
(1560, 89, 'F', 'F'),
(1560, 91, 'F', 'F'),
(1560, 93, 'F', 'F'),
(1561, 67, 'F', 'F'),
(1561, 69, 'F', 'F'),
(1561, 71, 'F', 'F'),
(1561, 73, 'F', 'F'),
(1561, 75, 'F', 'F'),
(1561, 77, 'F', 'F'),
(1561, 79, 'F', 'F'),
(1561, 87, 'F', 'F'),
(1561, 89, 'F', 'F'),
(1561, 91, 'F', 'F'),
(1561, 93, 'F', 'F'),
(1562, 67, 'F', 'F'),
(1562, 69, 'F', 'F'),
(1562, 71, 'F', 'F'),
(1562, 73, 'F', 'F'),
(1562, 75, 'F', 'F'),
(1562, 77, 'F', 'F'),
(1562, 79, 'F', 'F'),
(1562, 87, 'F', 'F'),
(1562, 89, 'F', 'F'),
(1562, 91, 'F', 'F'),
(1562, 93, 'F', 'F'),
(1563, 67, 'F', 'F'),
(1563, 69, 'F', 'F'),
(1563, 71, 'F', 'F'),
(1563, 73, 'F', 'F'),
(1563, 75, 'F', 'F'),
(1563, 77, 'F', 'F'),
(1563, 79, 'F', 'F'),
(1563, 87, 'F', 'F'),
(1563, 89, 'F', 'F'),
(1563, 91, 'F', 'F'),
(1563, 93, 'F', 'F'),
(1564, 67, 'F', 'F'),
(1564, 69, 'F', 'F'),
(1564, 71, 'F', 'F'),
(1564, 73, 'F', 'F'),
(1564, 75, 'F', 'F'),
(1564, 77, 'F', 'F'),
(1564, 79, 'F', 'F'),
(1564, 87, 'F', 'F'),
(1564, 89, 'F', 'F'),
(1564, 91, 'F', 'F'),
(1564, 93, 'F', 'F'),
(1565, 67, 'F', 'F'),
(1565, 69, 'F', 'F'),
(1565, 71, 'F', 'F'),
(1565, 73, 'F', 'F'),
(1565, 75, 'F', 'F'),
(1565, 77, 'F', 'F'),
(1565, 79, 'F', 'F'),
(1565, 87, 'F', 'F'),
(1565, 89, 'F', 'F'),
(1565, 91, 'F', 'F'),
(1565, 93, 'F', 'F'),
(1566, 67, 'F', 'F'),
(1566, 69, 'F', 'F'),
(1566, 71, 'F', 'F'),
(1566, 73, 'F', 'F'),
(1566, 75, 'F', 'F'),
(1566, 77, 'F', 'F'),
(1566, 79, 'F', 'F'),
(1566, 87, 'F', 'F'),
(1566, 89, 'F', 'F'),
(1566, 91, 'F', 'F'),
(1566, 93, 'F', 'F'),
(1567, 67, 'F', 'F'),
(1567, 69, 'F', 'F'),
(1567, 71, 'F', 'F'),
(1567, 73, 'F', 'F'),
(1567, 75, 'F', 'F'),
(1567, 77, 'F', 'F'),
(1567, 79, 'F', 'F'),
(1567, 87, 'F', 'F'),
(1567, 89, 'F', 'F'),
(1567, 91, 'F', 'F'),
(1567, 93, 'F', 'F'),
(1568, 67, 'F', 'F'),
(1568, 69, 'F', 'F'),
(1568, 71, 'F', 'F'),
(1568, 73, 'F', 'F'),
(1568, 75, 'F', 'F'),
(1568, 77, 'F', 'F'),
(1568, 79, 'F', 'F'),
(1568, 87, 'F', 'F'),
(1568, 89, 'F', 'F'),
(1568, 91, 'F', 'F'),
(1568, 93, 'F', 'F'),
(1569, 67, 'F', 'F'),
(1569, 69, 'F', 'F'),
(1569, 71, 'F', 'F'),
(1569, 73, 'F', 'F'),
(1569, 75, 'F', 'F'),
(1569, 77, 'F', 'F'),
(1569, 79, 'F', 'F'),
(1569, 87, 'F', 'F'),
(1569, 89, 'F', 'F'),
(1569, 91, 'F', 'F'),
(1569, 93, 'F', 'F'),
(1570, 67, 'F', 'F'),
(1570, 69, 'F', 'F'),
(1570, 71, 'F', 'F'),
(1570, 73, 'F', 'F'),
(1570, 75, 'F', 'F'),
(1570, 77, 'F', 'F'),
(1570, 79, 'F', 'F'),
(1570, 87, 'F', 'F'),
(1570, 89, 'F', 'F'),
(1570, 91, 'F', 'F'),
(1570, 93, 'F', 'F'),
(1571, 67, 'F', 'F'),
(1571, 69, 'F', 'F'),
(1571, 71, 'F', 'F'),
(1571, 73, 'F', 'F'),
(1571, 75, 'F', 'F'),
(1571, 77, 'F', 'F'),
(1571, 79, 'F', 'F'),
(1571, 87, 'F', 'F'),
(1571, 89, 'F', 'F'),
(1571, 91, 'F', 'F'),
(1571, 93, 'F', 'F'),
(1572, 67, 'F', 'F'),
(1572, 69, 'F', 'F'),
(1572, 71, 'F', 'F'),
(1572, 73, 'F', 'F'),
(1572, 75, 'F', 'F'),
(1572, 77, 'F', 'F'),
(1572, 79, 'F', 'F'),
(1572, 87, 'F', 'F'),
(1572, 89, 'F', 'F'),
(1572, 91, 'F', 'F'),
(1572, 93, 'F', 'F'),
(1573, 67, 'F', 'F'),
(1573, 69, 'F', 'F'),
(1573, 71, 'F', 'F'),
(1573, 73, 'F', 'F'),
(1573, 75, 'F', 'F'),
(1573, 77, 'F', 'F'),
(1573, 79, 'F', 'F'),
(1573, 87, 'F', 'F'),
(1573, 89, 'F', 'F'),
(1573, 91, 'F', 'F'),
(1573, 93, 'F', 'F'),
(1574, 67, 'F', 'F'),
(1574, 69, 'F', 'F'),
(1574, 71, 'F', 'F'),
(1574, 73, 'F', 'F'),
(1574, 75, 'F', 'F'),
(1574, 77, 'F', 'F'),
(1574, 79, 'F', 'F'),
(1574, 87, 'F', 'F'),
(1574, 89, 'F', 'F'),
(1574, 91, 'F', 'F'),
(1574, 93, 'F', 'F'),
(1575, 67, 'F', 'F'),
(1575, 69, 'F', 'F'),
(1575, 71, 'F', 'F'),
(1575, 73, 'F', 'F'),
(1575, 75, 'F', 'F'),
(1575, 77, 'F', 'F'),
(1575, 79, 'F', 'F'),
(1575, 87, 'F', 'F'),
(1575, 89, 'F', 'F'),
(1575, 91, 'F', 'F'),
(1575, 93, 'F', 'F'),
(1576, 67, 'F', 'F'),
(1576, 69, 'F', 'F'),
(1576, 71, 'F', 'F'),
(1576, 73, 'F', 'F'),
(1576, 75, 'F', 'F'),
(1576, 77, 'F', 'F'),
(1576, 79, 'F', 'F'),
(1576, 87, 'F', 'F'),
(1576, 89, 'F', 'F'),
(1576, 91, 'F', 'F'),
(1576, 93, 'F', 'F'),
(1577, 67, 'F', 'F'),
(1577, 69, 'F', 'F'),
(1577, 71, 'F', 'F'),
(1577, 73, 'F', 'F'),
(1577, 75, 'F', 'F'),
(1577, 77, 'F', 'F'),
(1577, 79, 'F', 'F'),
(1577, 87, 'F', 'F'),
(1577, 89, 'F', 'F'),
(1577, 91, 'F', 'F'),
(1577, 93, 'F', 'F'),
(1578, 67, 'F', 'F'),
(1578, 69, 'F', 'F'),
(1578, 71, 'F', 'F'),
(1578, 73, 'F', 'F'),
(1578, 75, 'F', 'F'),
(1578, 77, 'F', 'F'),
(1578, 79, 'F', 'F'),
(1578, 87, 'F', 'F'),
(1578, 89, 'F', 'F'),
(1578, 91, 'F', 'F'),
(1578, 93, 'F', 'F'),
(1579, 67, 'F', 'F'),
(1579, 69, 'F', 'F'),
(1579, 71, 'F', 'F'),
(1579, 73, 'F', 'F'),
(1579, 75, 'F', 'F'),
(1579, 77, 'F', 'F'),
(1579, 79, 'F', 'F'),
(1579, 87, 'F', 'F'),
(1579, 89, 'F', 'F'),
(1579, 91, 'F', 'F'),
(1579, 93, 'F', 'F'),
(1580, 67, 'F', 'F'),
(1580, 69, 'F', 'F'),
(1580, 71, 'F', 'F'),
(1580, 73, 'F', 'F'),
(1580, 75, 'F', 'F'),
(1580, 77, 'F', 'F'),
(1580, 79, 'F', 'F'),
(1580, 87, 'F', 'F'),
(1580, 89, 'F', 'F'),
(1580, 91, 'F', 'F'),
(1580, 93, 'F', 'F'),
(1581, 67, 'F', 'F'),
(1581, 69, 'F', 'F'),
(1581, 71, 'F', 'F'),
(1581, 73, 'F', 'F'),
(1581, 75, 'F', 'F'),
(1581, 77, 'F', 'F'),
(1581, 79, 'F', 'F'),
(1581, 87, 'F', 'F'),
(1581, 89, 'F', 'F'),
(1581, 91, 'F', 'F'),
(1581, 93, 'F', 'F'),
(1582, 67, 'F', 'F'),
(1582, 69, 'F', 'F'),
(1582, 71, 'F', 'F'),
(1582, 73, 'F', 'F'),
(1582, 75, 'F', 'F'),
(1582, 77, 'F', 'F'),
(1582, 79, 'F', 'F'),
(1582, 87, 'F', 'F'),
(1582, 89, 'F', 'F'),
(1582, 91, 'F', 'F'),
(1582, 93, 'F', 'F'),
(1583, 67, 'F', 'F'),
(1583, 69, 'F', 'F'),
(1583, 71, 'F', 'F'),
(1583, 73, 'F', 'F'),
(1583, 75, 'F', 'F'),
(1583, 77, 'F', 'F'),
(1583, 79, 'F', 'F'),
(1583, 87, 'F', 'F'),
(1583, 89, 'F', 'F'),
(1583, 91, 'F', 'F'),
(1583, 93, 'F', 'F'),
(1584, 67, 'F', 'F'),
(1584, 69, 'F', 'F'),
(1584, 71, 'F', 'F'),
(1584, 73, 'F', 'F'),
(1584, 75, 'F', 'F'),
(1584, 77, 'F', 'F'),
(1584, 79, 'F', 'F'),
(1584, 87, 'F', 'F'),
(1584, 89, 'F', 'F'),
(1584, 91, 'F', 'F'),
(1584, 93, 'F', 'F'),
(1585, 67, 'F', 'F'),
(1585, 69, 'F', 'F'),
(1585, 71, 'F', 'F'),
(1585, 73, 'F', 'F'),
(1585, 75, 'F', 'F'),
(1585, 77, 'F', 'F'),
(1585, 79, 'F', 'F'),
(1585, 87, 'F', 'F'),
(1585, 89, 'F', 'F'),
(1585, 91, 'F', 'F'),
(1585, 93, 'F', 'F'),
(1586, 67, 'F', 'F'),
(1586, 69, 'F', 'F'),
(1586, 71, 'F', 'F'),
(1586, 73, 'F', 'F'),
(1586, 75, 'F', 'F'),
(1586, 77, 'F', 'F'),
(1586, 79, 'F', 'F'),
(1586, 87, 'F', 'F'),
(1586, 89, 'F', 'F'),
(1586, 91, 'F', 'F'),
(1586, 93, 'F', 'F'),
(1587, 67, 'F', 'F'),
(1587, 69, 'F', 'F'),
(1587, 71, 'F', 'F'),
(1587, 73, 'F', 'F'),
(1587, 75, 'F', 'F'),
(1587, 77, 'F', 'F'),
(1587, 79, 'F', 'F'),
(1587, 87, 'F', 'F'),
(1587, 89, 'F', 'F'),
(1587, 91, 'F', 'F'),
(1587, 93, 'F', 'F'),
(1588, 67, 'F', 'F'),
(1588, 69, 'F', 'F'),
(1588, 71, 'F', 'F'),
(1588, 73, 'F', 'F'),
(1588, 75, 'F', 'F'),
(1588, 77, 'F', 'F'),
(1588, 79, 'F', 'F'),
(1588, 87, 'F', 'F'),
(1588, 89, 'F', 'F'),
(1588, 91, 'F', 'F'),
(1588, 93, 'F', 'F'),
(1589, 67, 'F', 'F'),
(1589, 69, 'F', 'F'),
(1589, 71, 'F', 'F'),
(1589, 73, 'F', 'F'),
(1589, 75, 'F', 'F'),
(1589, 77, 'F', 'F'),
(1589, 79, 'F', 'F'),
(1589, 87, 'F', 'F'),
(1589, 89, 'F', 'F'),
(1589, 91, 'F', 'F'),
(1589, 93, 'F', 'F'),
(1590, 67, 'F', 'F'),
(1590, 69, 'F', 'F'),
(1590, 71, 'F', 'F'),
(1590, 73, 'F', 'F'),
(1590, 75, 'F', 'F'),
(1590, 77, 'F', 'F'),
(1590, 79, 'F', 'F'),
(1590, 87, 'F', 'F'),
(1590, 89, 'F', 'F'),
(1590, 91, 'F', 'F'),
(1590, 93, 'F', 'F'),
(1591, 67, 'F', 'F'),
(1591, 69, 'F', 'F'),
(1591, 71, 'F', 'F'),
(1591, 73, 'F', 'F'),
(1591, 75, 'F', 'F'),
(1591, 77, 'F', 'F'),
(1591, 79, 'F', 'F'),
(1591, 87, 'F', 'F'),
(1591, 89, 'F', 'F'),
(1591, 91, 'F', 'F'),
(1591, 93, 'F', 'F'),
(1592, 67, 'F', 'F'),
(1592, 69, 'F', 'F'),
(1592, 71, 'F', 'F'),
(1592, 73, 'F', 'F'),
(1592, 75, 'F', 'F'),
(1592, 77, 'F', 'F'),
(1592, 79, 'F', 'F'),
(1592, 87, 'F', 'F'),
(1592, 89, 'F', 'F'),
(1592, 91, 'F', 'F'),
(1592, 93, 'F', 'F'),
(1593, 67, 'F', 'F'),
(1593, 69, 'F', 'F'),
(1593, 71, 'F', 'F'),
(1593, 73, 'F', 'F'),
(1593, 75, 'F', 'F'),
(1593, 77, 'F', 'F'),
(1593, 79, 'F', 'F'),
(1593, 87, 'F', 'F'),
(1593, 89, 'F', 'F'),
(1593, 91, 'F', 'F'),
(1593, 93, 'F', 'F'),
(1594, 67, 'F', 'F'),
(1594, 69, 'F', 'F'),
(1594, 71, 'F', 'F'),
(1594, 73, 'F', 'F'),
(1594, 75, 'F', 'F'),
(1594, 77, 'F', 'F'),
(1594, 79, 'F', 'F'),
(1594, 87, 'F', 'F'),
(1594, 89, 'F', 'F'),
(1594, 91, 'F', 'F'),
(1594, 93, 'F', 'F'),
(1595, 67, 'F', 'F'),
(1595, 69, 'F', 'F'),
(1595, 71, 'F', 'F'),
(1595, 73, 'F', 'F'),
(1595, 75, 'F', 'F'),
(1595, 77, 'F', 'F'),
(1595, 79, 'F', 'F'),
(1595, 87, 'F', 'F'),
(1595, 89, 'F', 'F'),
(1595, 91, 'F', 'F'),
(1595, 93, 'F', 'F'),
(1596, 67, 'F', 'F'),
(1596, 69, 'F', 'F'),
(1596, 71, 'F', 'F'),
(1596, 73, 'F', 'F'),
(1596, 75, 'F', 'F'),
(1596, 77, 'F', 'F'),
(1596, 79, 'F', 'F'),
(1596, 87, 'F', 'F'),
(1596, 89, 'F', 'F'),
(1596, 91, 'F', 'F'),
(1596, 93, 'F', 'F'),
(1597, 67, 'F', 'F'),
(1597, 69, 'F', 'F'),
(1597, 71, 'F', 'F'),
(1597, 73, 'F', 'F'),
(1597, 75, 'F', 'F'),
(1597, 77, 'F', 'F'),
(1597, 79, 'F', 'F'),
(1597, 87, 'F', 'F'),
(1597, 89, 'F', 'F'),
(1597, 91, 'F', 'F'),
(1597, 93, 'F', 'F'),
(1598, 67, 'F', 'F'),
(1598, 69, 'F', 'F'),
(1598, 71, 'F', 'F'),
(1598, 73, 'F', 'F'),
(1598, 75, 'F', 'F'),
(1598, 77, 'F', 'F'),
(1598, 79, 'F', 'F'),
(1598, 87, 'F', 'F'),
(1598, 89, 'F', 'F'),
(1598, 91, 'F', 'F'),
(1598, 93, 'F', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `question_choice`
--

CREATE TABLE `question_choice` (
  `choice_id` int(11) NOT NULL,
  `question_no` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `choice_name` varchar(100) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_choice`
--

INSERT INTO `question_choice` (`choice_id`, `question_no`, `quiz_id`, `choice_name`, `points`) VALUES
(379, 210, 137, 'transitions', -20),
(380, 210, 137, 'states', 100),
(381, 210, 137, 'Both', -20),
(382, 210, 137, 'None of the mentioned', -20),
(388, 213, 138, 'A Boolean value', -25),
(389, 213, 138, 'A state', -25),
(390, 213, 138, 'A set of states', 100),
(391, 213, 138, 'An edge', -25),
(392, 214, 138, 'Is impossible', -25),
(393, 214, 138, 'Requires the subset construction', 100),
(394, 214, 138, 'Is Chancy', -25),
(395, 214, 138, 'Is nondeterministic', -25),
(396, 215, 138, 'String', -25),
(397, 215, 138, 'Function', -25),
(398, 215, 138, 'Regular language', 100),
(399, 215, 138, 'Context-free language', -25),
(400, 216, 138, 'A regular language is produced by union of two regular languages', -25),
(401, 216, 138, 'The concatenation of two regular languages is regular', -25),
(402, 216, 138, 'The Kleene closure of a regular language is regular', -25),
(403, 216, 138, 'All of the mentioned', 100),
(404, 217, 138, 'There exists a unique DFA for every regular language', -25),
(405, 217, 138, 'NFA can always are converted to a PDA', -25),
(406, 217, 138, 'Complement of CFL is always recursive', -25),
(407, 217, 138, 'Every NDFA can be converted to a DFA', 100),
(408, 218, 138, 'Every language that is defined by regular expression can also be defined by finite automata', -25),
(409, 218, 138, 'Every language defined by finite automata can also be defined by regular expression', -25),
(410, 218, 138, 'We can convert regular expressions into finite automata', -25),
(411, 218, 138, 'All of the mentioned', 100),
(412, 219, 138, 'Left linear grammar', -25),
(413, 219, 138, 'Right linear grammar', 100),
(414, 219, 138, 'Generic grammar', -25),
(415, 219, 138, 'All of the mentioned', -25),
(416, 220, 138, 'Deterministic', 100),
(417, 221, 138, 'Alphabet', 100),
(418, 222, 138, 'Yes', 100),
(419, 223, 139, '01,0011,010101', 0),
(420, 223, 139, '0011,11001100', 100),
(421, 223, 139, '?,0011,11001100', 0),
(422, 223, 139, '?,0011,11001100', 0),
(423, 224, 139, 'Union', 0),
(424, 224, 139, 'Concatenation', 0),
(425, 224, 139, 'Kleene*', 0),
(426, 224, 139, 'All of the mentioned', 100),
(427, 225, 139, 'Input alphabet', 0),
(428, 225, 139, 'Transition function', 0),
(429, 225, 139, 'Initial State', 0),
(430, 225, 139, 'Output Alphabet', 100),
(431, 226, 139, '7', 100),
(432, 226, 139, '6', 0),
(433, 226, 139, '8', 0),
(434, 226, 139, '5', 0),
(435, 227, 140, '{aa, ab, ba, bb}', 0),
(436, 227, 140, '{aaaa, abab, ?, abaa, aabb}', 100),
(437, 227, 140, '{aaa, aab, aba, bbb}', 0),
(438, 227, 140, 'All of the mentioned', 0),
(439, 228, 140, 'Finite automata without input', 0),
(440, 228, 140, 'Finite automata with output', 100),
(441, 228, 140, 'Non- Finite automata with output', 0),
(442, 228, 140, 'None of the mentioned', 0),
(443, 229, 141, 'Moore machine has 6-tuples', 0),
(444, 229, 141, 'Mealy machine has 6-tuples', 0),
(445, 229, 141, 'Both Mealy and Moore has 6-tuples', 100),
(446, 229, 141, 'None of the mentioned', 0),
(447, 230, 141, 'Inducers', 0),
(448, 230, 141, 'Transducers', 100),
(449, 230, 141, 'Turing Machines', 0),
(450, 230, 141, 'Linearly Bounder Automata', 0),
(452, 237, 148, 'interface between the hardware and application programs', 33),
(453, 237, 148, 'collection of programs that manages hardware resources', 33),
(454, 237, 148, 'system service provider to the application programs', 33),
(455, 237, 148, 'Nothing', 0),
(456, 238, 148, 'either low or high memory', 100),
(457, 239, 149, 'log file', 100),
(458, 240, 149, 'RTLinux', 0),
(459, 240, 149, 'Palm OS', 100),
(460, 240, 149, 'QNX', 0),
(461, 240, 149, 'VxWorks', 0),
(462, 241, 148, 'Normally or abnormally', 100),
(463, 242, 149, 'comes and goes as needed', 100),
(467, 246, 137, 'Stack', 100);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL COMMENT 'create, draft',
  `create_date` datetime NOT NULL,
  `published_date` datetime DEFAULT NULL,
  `close_date` datetime DEFAULT NULL,
  `duration` time NOT NULL,
  `lecturer_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_name`, `status`, `create_date`, `published_date`, `close_date`, `duration`, `lecturer_id`, `topic_id`) VALUES
(137, 'Quiz 1', 'publish', '2022-03-23 23:56:56', '2022-03-27 18:30:00', '2022-03-31 18:30:00', '00:10:00', 883, 34),
(138, 'Quiz 2', 'create', '2022-03-23 23:58:07', NULL, NULL, '00:10:00', 883, 34),
(139, 'Quiz 3', 'create', '2022-03-24 00:04:28', NULL, NULL, '00:05:00', 883, 35),
(140, 'Quiz 4', 'draft', '2022-03-24 00:07:04', NULL, NULL, '00:05:00', 883, 35),
(141, 'Quiz 5', 'draft', '2022-03-24 00:08:48', NULL, NULL, '00:05:00', 883, 35),
(148, 'Quiz 1', 'create', '2022-03-27 17:42:32', NULL, NULL, '00:10:00', 883, 42),
(149, 'Quiz 2', 'create', '2022-03-27 17:44:15', NULL, NULL, '00:10:00', 883, 42);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_attempt`
--

CREATE TABLE `quiz_attempt` (
  `student_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `attempt_time` datetime NOT NULL,
  `marks` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_attempt`
--

INSERT INTO `quiz_attempt` (`student_id`, `quiz_id`, `attempt_time`, `marks`) VALUES
(1494, 137, '2022-03-27 19:10:02', 25),
(1496, 137, '2022-03-27 19:14:44', 90),
(1497, 138, '2022-03-26 15:37:14', 20),
(1498, 137, '2022-03-27 19:15:50', 20),
(1503, 137, '2022-03-27 19:16:37', 40),
(1510, 137, '2022-03-27 19:17:09', 20),
(1511, 137, '2022-03-27 19:18:18', 90),
(1512, 137, '2022-03-27 19:19:03', 80),
(1513, 137, '2022-03-27 19:19:36', 80),
(1514, 137, '2022-03-27 19:20:02', 80),
(1515, 137, '2022-03-27 19:20:22', 80);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

CREATE TABLE `quiz_question` (
  `question_no` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question` varchar(200) NOT NULL,
  `question_type` varchar(10) NOT NULL,
  `success_rate` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`question_no`, `quiz_id`, `question`, `question_type`, `success_rate`) VALUES
(210, 137, 'In Moore machine, output is produced over the change of:', 'mcq-s', 640),
(213, 138, 'An NFA’s transition function returns', 'mcq-s', 0),
(214, 138, 'Conversion of a DFA to an NFA', 'mcq-s', 0),
(215, 138, 'The subset construction shows that every NFA accepts a', 'mcq-s', 100),
(216, 138, 'Which is the application of NFA', 'mcq-s', 0),
(217, 138, 'Which one is a FALSE statement?', 'mcq-s', 100),
(218, 138, 'Which of the following statement is true?', 'mcq-s', 0),
(219, 138, 'Grammars that can be translated to DFAs :', 'mcq-s', 100),
(220, 138, 'A Push Down Automata _______________ is if there is at most one transition applicable to each configuration?', 'short ans', 0),
(221, 138, 'The complement of a language will only be defined when and only when the __________ \r\nover the language is defined.', 'short ans', 0),
(222, 138, 'Is the language preserved in all the steps while eliminating epsilon transitions from a NFA?', 'short ans', 0),
(223, 139, 'The non- Kleene Star operation accepts the following string of finite length over set A = {0,1} | where string s contains even number of 0 and 1', 'mcq-s', 0),
(224, 139, 'A regular language over an alphabet ? is one that cannot be obtained from the basic languages using the operation', 'mcq-s', 0),
(225, 139, 'Which of the following is a not a part of 5-tuple finite automata?', 'mcq-s', 0),
(226, 139, 'The number of elements in the set for the Language L={x?(?r) *|length if x is at most 2} and ?={0,1} is_________', 'mcq-s', 0),
(227, 140, 'Given: ?= {a, b}\r\nL= {x??*|x is a string combination}\r\n\r\n?4 represents which among the following?', 'mcq-s', 0),
(228, 140, 'Moore Machine is an application of:', 'mcq-s', 0),
(229, 141, 'Which of the given are correct?', 'mcq-s', 0),
(230, 141, 'Mealy and Moore machine can be categorized as:', 'mcq-s', 0),
(237, 148, 'What is an operating system?', 'mcq-m', 0),
(238, 148, 'Where is the operating system placed in the memory?', 'mcq-s', 0),
(239, 149, 'If a process fails, most operating system write the error information to a ______', 'mcq-s', 0),
(240, 149, 'Which one of the following is not a real time operating system?', 'mcq-s', 0),
(241, 148, 'Cascading termination refers to the termination of all child processes if the parent process terminates ______', 'short ans', 0),
(242, 149, 'Transient operating system code is a code that ____________', 'short ans', 0),
(246, 137, 'A push down automaton employs ________ data structure.', 'short ans', 900);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `session_id` int(11) NOT NULL,
  `session_name` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'F' COMMENT 'T = active, F = inactive',
  `question_status` varchar(1) NOT NULL DEFAULT 'F' COMMENT 'T = Post under course page, F = Do not post under course page',
  `active_question_id` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `lecturer_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`session_id`, `session_name`, `status`, `question_status`, `active_question_id`, `create_date`, `lecturer_id`, `course_id`) VALUES
(15, 'Page Replacement Algorithms', 'F', 'F', NULL, '2022-03-09 00:11:55', 883, 60),
(16, 'File Systems', 'F', 'F', NULL, '2022-03-10 00:12:33', 883, 60),
(17, 'Hash Functions and Message', 'F', 'F', NULL, '2022-03-11 00:13:22', 883, 73),
(18, 'Symmetric Key Encryption', 'F', 'F', NULL, '2022-03-12 00:13:44', 883, 73),
(19, 'Finite automation', 'F', 'F', NULL, '2022-03-17 00:14:01', 883, 73),
(20, 'Transducers', 'T', 'F', NULL, '2022-03-27 00:14:14', 883, 72);

--
-- Triggers `session`
--
DELIMITER $$
CREATE TRIGGER `DeleteSession` AFTER DELETE ON `session` FOR EACH ROW UPDATE course SET active_session_id=NULL WHERE active_session_id=OLD.session_id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `UpdateSessionStatusFalseCourse` AFTER UPDATE ON `session` FOR EACH ROW IF NEW.status="F" THEN
UPDATE course SET active_session_id=NULL WHERE active_session_id=OLD.session_id;
END IF
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `UpdateSessionStatusTrueCourse` AFTER UPDATE ON `session` FOR EACH ROW IF NEW.status="T" THEN
UPDATE course SET active_session_id=NEW.session_id WHERE course_id=OLD.course_id;
END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `session_answer`
--

CREATE TABLE `session_answer` (
  `choice_id` int(11) NOT NULL,
  `question_no` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `choice_name` varchar(100) NOT NULL,
  `answer_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session_answer`
--

INSERT INTO `session_answer` (`choice_id`, `question_no`, `session_id`, `choice_name`, `answer_count`) VALUES
(31, 20, 20, 'Output Variations', 0),
(32, 20, 20, 'Input Variations', 7),
(33, 20, 20, 'Both', 2),
(34, 20, 20, 'None of the mentioned', 1),
(35, 21, 20, 'produces a language', 0),
(36, 21, 20, 'produces a grammar', 0),
(37, 21, 20, 'can be converted to NFA', 0),
(38, 21, 20, 'has less circuit delays', 0),
(39, 22, 20, 'a', 0),
(40, 22, 20, 'b', 0),
(41, 22, 20, 'e', 0),
(42, 22, 20, 'none of the mentioned', 0);

-- --------------------------------------------------------

--
-- Table structure for table `session_forum_question`
--

CREATE TABLE `session_forum_question` (
  `question_id` int(11) NOT NULL,
  `question` varchar(1200) NOT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `post_time` datetime NOT NULL DEFAULT current_timestamp(),
  `session_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `random_status` char(1) NOT NULL DEFAULT 'F',
  `resolved_status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = Not resolved, 1 = Resolved'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session_forum_question`
--

INSERT INTO `session_forum_question` (`question_id`, `question`, `points`, `post_time`, `session_id`, `student_id`, `random_status`, `resolved_status`) VALUES
(21, 'How Moore and Mealy machine works in Computer Memory ?', 6, '2022-03-24 00:19:26', 20, 1494, 'T', 0),
(22, 'What is the difference between an Alphabet and an element of a set?', 6, '2022-03-24 00:19:48', 20, 1494, 'T', 0),
(23, 'What is the difference between the strings and the words of a language?', 3, '2022-03-24 00:20:13', 20, 1497, 'F', 0),
(24, 'What is PALINDROME, madam?', 1, '2022-03-24 00:20:24', 20, 1497, 'F', 0),
(25, 'What is Null String (Λ) ?', 3, '2022-03-24 00:21:10', 20, 1498, 'F', 0),
(26, 'What is Reverse of a string?', 1, '2022-03-24 00:21:44', 20, 1515, 'F', 0);

-- --------------------------------------------------------

--
-- Table structure for table `session_forum_question_points`
--

CREATE TABLE `session_forum_question_points` (
  `student_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session_forum_question_points`
--

INSERT INTO `session_forum_question_points` (`student_id`, `question_id`, `time`) VALUES
(1494, 21, '2022-03-24 00:22:47'),
(1494, 23, '2022-03-24 00:22:53'),
(1494, 26, '2022-03-24 00:22:57'),
(1496, 21, '2022-03-24 00:23:17'),
(1496, 22, '2022-03-27 21:09:53'),
(1496, 23, '2022-03-24 00:23:19'),
(1496, 25, '2022-03-24 00:23:22'),
(1497, 21, '2022-03-24 00:22:19'),
(1497, 23, '2022-03-24 00:22:20'),
(1497, 24, '2022-03-24 00:22:21'),
(1498, 22, '2022-03-27 21:10:21'),
(1498, 25, '2022-03-24 00:23:46'),
(1503, 21, '2022-03-24 00:24:18'),
(1510, 21, '2022-03-24 00:24:41'),
(1512, 22, '2022-03-24 00:25:13'),
(1513, 22, '2022-03-24 00:25:30'),
(1514, 22, '2022-03-24 00:25:44'),
(1515, 21, '2022-03-24 00:26:02'),
(1515, 22, '2022-03-24 00:26:01'),
(1515, 25, '2022-03-24 00:26:09');

--
-- Triggers `session_forum_question_points`
--
DELIMITER $$
CREATE TRIGGER `session_question_decrement_points` AFTER DELETE ON `session_forum_question_points` FOR EACH ROW UPDATE session_forum_question SET points = points - 1 WHERE question_id=OLD.question_id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `session_question_increment_points` AFTER INSERT ON `session_forum_question_points` FOR EACH ROW UPDATE session_forum_question SET points = points + 1 WHERE question_id=NEW.question_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `session_mcq_attempt`
--

CREATE TABLE `session_mcq_attempt` (
  `student_id` int(11) NOT NULL,
  `question_no` int(11) NOT NULL,
  `choice_id` int(11) NOT NULL,
  `attempt_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session_mcq_attempt`
--

INSERT INTO `session_mcq_attempt` (`student_id`, `question_no`, `choice_id`, `attempt_time`) VALUES
(1494, 20, 32, '2022-03-27 21:39:27'),
(1496, 20, 32, '2022-03-27 21:39:49'),
(1498, 20, 32, '2022-03-27 21:40:07'),
(1503, 20, 33, '2022-03-27 21:40:24'),
(1510, 20, 33, '2022-03-27 21:40:42'),
(1511, 20, 34, '2022-03-27 21:41:06'),
(1512, 20, 32, '2022-03-27 21:41:30'),
(1513, 20, 32, '2022-03-27 21:42:00'),
(1514, 20, 32, '2022-03-27 21:42:19'),
(1515, 20, 32, '2022-03-27 21:42:41');

--
-- Triggers `session_mcq_attempt`
--
DELIMITER $$
CREATE TRIGGER `DecrementAnswerCount` AFTER DELETE ON `session_mcq_attempt` FOR EACH ROW UPDATE session_answer SET answer_count=answer_count-1 WHERE choice_id=OLD.choice_id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `DecrementQuestionCount` AFTER DELETE ON `session_mcq_attempt` FOR EACH ROW UPDATE session_question SET question_count=question_count-1 WHERE question_no=OLD.question_no
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `IncrementAnswerCount` AFTER INSERT ON `session_mcq_attempt` FOR EACH ROW UPDATE session_answer SET answer_count=answer_count+1 WHERE choice_id=NEW.choice_id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `IncrementQuestionCount` AFTER INSERT ON `session_mcq_attempt` FOR EACH ROW UPDATE session_question SET question_count=question_count+1 WHERE question_no=NEW.question_no
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `session_open_attempt`
--

CREATE TABLE `session_open_attempt` (
  `attempt_no` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `question_no` int(11) NOT NULL,
  `answer` varchar(60) NOT NULL,
  `attempt_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session_open_attempt`
--

INSERT INTO `session_open_attempt` (`attempt_no`, `student_id`, `question_no`, `answer`, `attempt_time`) VALUES
(18, 1497, 23, 'GGG', '2022-03-26 09:34:38'),
(19, 1497, 24, 'MOORE MACHINE', '2022-03-26 22:47:52');

--
-- Triggers `session_open_attempt`
--
DELIMITER $$
CREATE TRIGGER `DecrementQuestionCountOpen` AFTER DELETE ON `session_open_attempt` FOR EACH ROW UPDATE session_question SET question_count=question_count-1 WHERE question_no=OLD.question_no
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `IncrementQuestionCountOpen` AFTER INSERT ON `session_open_attempt` FOR EACH ROW UPDATE session_question SET question_count=question_count+1 WHERE question_no=NEW.question_no
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `session_question`
--

CREATE TABLE `session_question` (
  `question_no` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `question_type` varchar(10) NOT NULL COMMENT 'mcq, mcq-tf = mc true false, open=open ended questions',
  `question` varchar(200) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'F',
  `published_time` datetime DEFAULT NULL,
  `duration` time NOT NULL,
  `question_count` int(11) NOT NULL DEFAULT 0,
  `mcq_answer_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session_question`
--

INSERT INTO `session_question` (`question_no`, `session_id`, `question_type`, `question`, `answer`, `status`, `published_time`, `duration`, `question_count`, `mcq_answer_count`) VALUES
(20, 20, 'mcq', 'The major difference between Mealy and Moore machine is about:', 'Output Variations', 'F', NULL, '00:10:00', 10, 0),
(21, 20, 'mcq', 'Which one among the following is true?\r\nA mealy machine', 'has less circuit delays', 'F', '2022-03-26 22:46:43', '00:01:00', 0, 0),
(22, 20, 'mcq', 'Which of the following does not belong to input alphabet if S={a, b}* for any language?', 'e', 'F', NULL, '00:01:00', 0, 0),
(23, 20, 'open', 'The password to the admins account=”administrator”. The total number of states required  to make a password-pass system using DFA would be __________', '14', 'F', '2022-03-26 09:34:23', '00:02:00', 1, 0),
(24, 20, 'open', 'An automaton that presents output based on previous state or current input:', 'Transducer', 'F', '2022-03-26 22:47:33', '00:02:00', 1, 0);

--
-- Triggers `session_question`
--
DELIMITER $$
CREATE TRIGGER `UpdateSessionQuestionId` AFTER DELETE ON `session_question` FOR EACH ROW UPDATE session SET active_question_id=NULL WHERE active_question_id=OLD.question_no
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `UpdateSessionQuestionStatusFALSE` AFTER UPDATE ON `session_question` FOR EACH ROW IF NEW.status="F" THEN
UPDATE session SET active_question_id=NULL WHERE active_question_id=OLD.question_no;
END IF
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `UpdateSessionQuestionStatusTrue` AFTER UPDATE ON `session_question` FOR EACH ROW IF NEW.status="T" THEN
UPDATE session SET active_question_id=OLD.question_no WHERE session_id=OLD.session_id;
END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `user_id` int(11) NOT NULL,
  `index_no` int(11) NOT NULL,
  `random_first_name` varchar(50) NOT NULL,
  `random_last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`user_id`, `index_no`, `random_first_name`, `random_last_name`) VALUES
(1494, 19000472, 'Michelangelo\r\n', 'Staples\r\n'),
(1496, 19001468, 'Khloe\r\n', 'Clayton\r\n'),
(1497, 19001428, 'Thor\r\n', 'London\r\n'),
(1498, 19001429, 'Elspeth\r\n', 'Middleton\r\n'),
(1499, 19000201, 'Claude\r\n', 'Platt\r\n'),
(1500, 19000202, 'Khloe\r\n', 'Nicholson\r\n'),
(1501, 19000203, 'Eden\r\n', 'Cody\r\n'),
(1502, 19000204, 'Abel\r\n', 'Huynh\r\n'),
(1503, 19000205, 'Chloe\r\n', 'Goode\r\n'),
(1504, 19000206, 'Brielle\r\n', 'Ledbetter\r\n'),
(1505, 19000207, 'Meghan\r\n', 'Bravo\r\n'),
(1506, 19000208, 'Jesenia\r\n', 'Harrell\r\n'),
(1507, 19000209, 'Blossom\r\n', 'Flanagan\r\n'),
(1508, 19000210, 'Ezio\r\n', 'Platt\r\n'),
(1509, 19000211, 'Mordecai\r\n', 'Ulrich\r\n'),
(1510, 19000212, 'Deniece\r\n', 'Harper\r\n'),
(1511, 19000213, 'Natalie\r\n', 'Middleton\r\n'),
(1512, 19000214, 'Garth\r\n', 'Means\r\n'),
(1513, 19000215, 'Aurore\r\n', 'Richey\r\n'),
(1514, 19000216, 'Chloe\r\n', 'Flynn\r\n'),
(1515, 19000217, 'Lacie\r\n', 'Arellano\r\n'),
(1516, 19000218, 'Leigh\r\n', 'Urban\r\n'),
(1517, 19000219, 'Demetrius\r\n', 'Harper\r\n'),
(1518, 19000220, 'Waverley\r\n', 'Rhodes\r\n'),
(1519, 19000221, 'Leigh\r\n', 'Askew\r\n'),
(1520, 19000222, 'Aprilynne\r\n', 'Connelly\r\n'),
(1521, 19000223, 'Maverick\r\n', 'Harper\r\n'),
(1522, 19000224, 'Indigo\r\n', 'Horn\r\n'),
(1524, 19000226, 'Lin\r\n', 'Staples\r\n'),
(1525, 19000227, 'Montana\r\n', 'Rosario\r\n'),
(1526, 19000228, 'Kiera\r\n', 'Staples\r\n'),
(1527, 19000229, 'Nell\r\n', 'Hull\r\n'),
(1528, 19000230, 'Agrafina\r\n', 'Foster\r\n'),
(1529, 19000231, 'Ramus\r\n', 'Gillis\r\n'),
(1530, 19000232, 'Kendrew\r\n', 'Sprague\r\n'),
(1531, 19000233, 'Nell\r\n', 'Arellano\r\n'),
(1532, 19000234, 'Ramus\r\n', 'May\r\n'),
(1533, 19000235, 'Gracie\r\n', 'Porter\r\n'),
(1534, 19000236, 'Kingston\r\n', 'Velez\r\n'),
(1536, 19000238, 'Lennon\r\n', 'Means\r\n'),
(1537, 19000239, 'Corey\r\n', 'Deleon\r\n'),
(1538, 19000240, 'Blossom\r\n', 'Slater\r\n'),
(1539, 19000241, 'James\r\n', 'Knox\r\n'),
(1540, 19000242, 'Rory\r\n', 'Britt\r\n'),
(1541, 19000243, 'Garth\r\n', 'Hannah\r\n'),
(1542, 19000244, 'Aprilynne\r\n', 'Clayton\r\n'),
(1543, 19000245, 'Carter\r\n', 'Pickett\r\n'),
(1544, 19000246, 'Meghan\r\n', 'Knox\r\n'),
(1545, 19000247, 'Henri\r\n', 'Clayton\r\n'),
(1546, 19000248, 'Herman\r\n', 'Deleon\r\n'),
(1547, 19000249, 'Carlos\r\n', 'Rosario\r\n'),
(1548, 19000250, 'Raven\r\n', 'Lane\r\n'),
(1549, 19000251, 'Elspeth\r\n', 'Pugh\r\n'),
(1550, 19000252, 'Corey\r\n', 'Means\r\n'),
(1551, 19000253, 'James\r\n', 'Britt\r\n'),
(1552, 19000254, 'Kaleigh\r\n', 'Wallace'),
(1553, 19000255, 'Raven\r\n', 'Velez\r\n'),
(1554, 19000256, 'Kingston\r\n', 'Foster\r\n'),
(1555, 19000257, 'Darren\r\n', 'Herron\r\n'),
(1556, 19000258, 'Lin\r\n', 'Bravo\r\n'),
(1557, 19000259, 'Sonya\r\n', 'Bravo\r\n'),
(1558, 19000260, 'Garth\r\n', 'Harrell\r\n'),
(1559, 19000261, 'Deon\r\n', 'Connelly\r\n'),
(1560, 19000262, 'Nora\r\n', 'Blair\r\n'),
(1561, 19000263, 'Kenna\r\n', 'Bunch\r\n'),
(1562, 19000264, 'Montana\r\n', 'Bunch\r\n'),
(1563, 19000265, 'Chloe\r\n', 'Ulrich\r\n'),
(1564, 19000266, 'Herman\r\n', 'Ulrich\r\n'),
(1565, 19000267, 'Felicia\r\n', 'McNally\r\n'),
(1566, 19000268, 'Sinclair\r\n', 'Bernard\r\n'),
(1567, 19000269, 'Kiera\r\n', 'Hancock\r\n'),
(1568, 19000270, 'Kendrew\r\n', 'Herron\r\n'),
(1569, 19000271, 'Titania\r\n', 'Huynh\r\n'),
(1570, 19000272, 'Deniece\r\n', 'Bland\r\n'),
(1571, 19000273, 'Gracie\r\n', 'Hendrickson\r\n'),
(1572, 19000274, 'Indigo\r\n', 'Owen\r\n'),
(1573, 19000275, 'Wilhelmina', 'Cartwright\r\n'),
(1574, 19000276, 'Deon\r\n', 'Hilliard\r\n'),
(1575, 19000277, 'Feliks\r\n', 'Dejesus\r\n'),
(1576, 19000278, 'Vinn\r\n', 'Sosa\r\n'),
(1577, 19000279, 'Tanya\r\n', 'Tapia\r\n'),
(1578, 19000280, 'Nell\r\n', 'Porter\r\n'),
(1579, 19000281, 'Natalie\r\n', 'Upchurch\r\n'),
(1580, 19000282, 'Delilah\r\n', 'Wallace'),
(1581, 19000283, 'Keira\r\n', 'Hurd\r\n'),
(1582, 19000284, 'Delilah\r\n', 'McCord\r\n'),
(1583, 19000285, 'Gracie\r\n', 'McKenzie\r\n'),
(1584, 19000286, 'Sorcha\r\n', 'Goode\r\n'),
(1585, 19000287, 'Ramus\r\n', 'Sosa\r\n'),
(1586, 19000288, 'Lin\r\n', 'Herron\r\n'),
(1587, 19000289, 'Chloe\r\n', 'London\r\n'),
(1588, 19000290, 'Agrafina\r\n', 'Moser\r\n'),
(1589, 19000291, 'Ezio\r\n', 'Hancock\r\n'),
(1590, 19000292, 'Eden\r\n', 'Harrell\r\n'),
(1591, 19000293, 'Kieran\r\n', 'Moser\r\n'),
(1592, 19000294, 'Kingston\r\n', 'Bland\r\n'),
(1593, 19000295, 'Elspeth\r\n', 'Clayton\r\n'),
(1594, 19000296, 'Gretta\r\n', 'Arellano\r\n'),
(1595, 19000297, 'Claude\r\n', 'McCullough\r\n'),
(1596, 19000298, 'Rodney\r\n', 'McCord\r\n'),
(1597, 19000299, 'Thor\r\n', 'Connelly\r\n'),
(1598, 19000300, 'Meranda\r\n', 'Staples\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `student_marks_log`
--

CREATE TABLE `student_marks_log` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL COMMENT 'quiz = quiz attempt, badge = badge award, forumTopic = forum topic, forumReply = forum reply',
  `marks` decimal(10,2) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_marks_log`
--

INSERT INTO `student_marks_log` (`id`, `student_id`, `type`, `marks`, `time`) VALUES
(9, 1497, 'quiz', '20.00', '2022-03-26 15:37:25'),
(10, 1497, 'badge', '100.00', '2022-03-26 15:45:49'),
(11, 1497, 'badge', '-100.00', '2022-03-26 15:46:10'),
(12, 1497, 'badge', '100.00', '2022-03-26 15:46:30'),
(13, 1497, 'forumTopic', '20.00', '2022-03-26 16:02:32'),
(14, 1497, 'forumTopic', '-20.00', '2022-03-26 16:02:49'),
(15, 1494, 'forumTopic', '20.00', '2022-03-26 16:03:07'),
(16, 1494, 'forumTopic', '-20.00', '2022-03-26 16:03:36'),
(17, 1494, 'forumTopic', '20.00', '2022-03-26 16:03:48'),
(18, 1497, 'forumTopic', '20.00', '2022-03-26 16:03:52'),
(19, 1497, 'badge', '100.00', '2022-03-27 11:31:34'),
(20, 1497, 'badge', '-50.00', '2022-03-27 11:31:44'),
(21, 1497, 'badge', '100.00', '2022-03-27 11:33:11'),
(22, 1497, 'badge', '50.00', '2022-03-27 11:38:19'),
(23, 1497, 'badge', '-50.00', '2022-03-27 11:38:23'),
(24, 1497, 'badge', '50.00', '2022-03-27 11:39:52'),
(25, 1494, 'quiz', '25.00', '2022-03-27 19:10:21'),
(26, 1496, 'quiz', '90.00', '2022-03-27 19:15:14'),
(27, 1498, 'quiz', '20.00', '2022-03-27 19:16:08'),
(28, 1503, 'quiz', '40.00', '2022-03-27 19:16:51'),
(29, 1510, 'quiz', '20.00', '2022-03-27 19:17:49'),
(30, 1511, 'quiz', '90.00', '2022-03-27 19:18:35'),
(31, 1512, 'quiz', '80.00', '2022-03-27 19:19:15'),
(32, 1513, 'quiz', '80.00', '2022-03-27 19:19:42'),
(33, 1514, 'quiz', '80.00', '2022-03-27 19:20:09'),
(34, 1515, 'quiz', '80.00', '2022-03-27 19:20:32'),
(35, 1511, 'badge', '100.00', '2022-03-27 20:33:48'),
(36, 1511, 'badge', '100.00', '2022-03-27 20:33:58'),
(37, 1511, 'badge', '-100.00', '2022-03-27 20:34:03'),
(38, 1497, 'forumTopic', '20.00', '2022-03-27 20:40:35'),
(39, 1497, 'forumReply', '20.00', '2022-03-27 20:40:39'),
(40, 1497, 'forumReply', '20.00', '2022-03-27 20:40:45'),
(41, 1497, 'forumReply', '-20.00', '2022-03-27 20:41:06'),
(42, 1497, 'forumReply', '-20.00', '2022-03-27 20:41:07');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tag_id`, `tag_name`, `student_id`) VALUES
(81, 'nfa', 1497),
(83, 'design', 1497);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(75) NOT NULL,
  `tele` varchar(10) DEFAULT NULL,
  `pass` varchar(255) NOT NULL,
  `user_type` varchar(5) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '0',
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `tele`, `pass`, `user_type`, `status`, `img`) VALUES
(125, 'Admin', 'ALec', 'admin@gmail.com', '', '$2y$10$2fesqGM.4S/tdKmFW8McTeFqoZkrCCgo3zWlof14u2YWQ0JQmvv/i', 'admin', '1', NULL),
(883, 'Lec', 'ALec', 'lec@gmail.com', '', '$2y$10$Z7vr34tDRAF7dSx2BdwqQeECPxQULDgrqcgV.Fu1DGat6d24ICiv2', 'lec', '1', '883.jpeg'),
(885, 'Dulitha', 'Ratnayake', 'dulitharatnayake@gmail.com', NULL, '$2y$10$e48D8MvUZWtMTzo6r0bONem2jkj.763msstAdrlhPyihAORqQ/uCq', 'lec', '1', NULL),
(1494, 'Pansilu', 'Gunaratne', 'pansilugunaratne8@gmail.com', NULL, '$2y$10$N/c7gMdr/zEMJgGgAAqN9.54dn9TbVjBXTrm9m/.fsXHnpz6vI3mO', 'stu', '1', NULL),
(1495, 'Anuruddha', 'Ratnayake', 'anuruddharatnayakek@gmail.com', NULL, '$2y$10$Af2oXZENPfOhxDrIQfr.YONF0TgkGu.bS8yUNaCkFgaq7PTlbKWne', 'lec', '1', NULL),
(1496, 'Madhubahashini', 'Ratnayake', 'jdevinratnayakecse@gmail.com', NULL, '$2y$10$MbpfLQ8GxT1GPGmijhZY5.l.CsB0cVpmQNyjn6R2fXNhZqY5eu5S6', 'stu', '1', NULL),
(1497, 'Janitha', 'Ratnayake', 'janithadevin@gmail.com', '', '$2y$10$IU8zM/9pbM16Tl8dauKl9.iOVi5F4jOD3t6Byr5ujl5CgG9dsyrky', 'stu', '1', NULL),
(1498, 'Rukmal', 'Ratnayake', 'pradeepratnayake58@gmail.com', NULL, '$2y$10$OmguLRLtGr75Boa1GADIM.hfd8Z4tyY48vDSNCMlZLYX2gvZApBjm', 'stu', '1', NULL),
(1499, 'Madampe', 'Gunasekera', 'madampegunasekera@gmail.com', NULL, '$2y$10$uXDqU3y/zk.LmokKoOM95eSnCG1jdggF8x8aWGLCQ7SG65T5qOfzm', 'stu', '1', NULL),
(1500, 'Madampe', 'Lilavati', 'madampelilavati@gmail.com', NULL, '$2y$10$o2yoXtNhwM0M01CAKO/OKOw1qc8Z2Awx6uPMm4SaR.Wab3W.o.B2W', 'stu', '1', NULL),
(1501, 'Madampe', 'Wimaladharma', 'madampewimaladharma@gmail.com', NULL, '$2y$10$MQ1dG3pyEYOd9OS4Y.rCr..La17tfDRsuVjTpypuKcz4BGbOL8BFa', 'stu', '1', NULL),
(1502, 'Madeera', 'Addararachchi', 'madeeraaddararachchi@gmail.com', NULL, '$2y$10$RgUjzGo.C5HDZzsiGJsJBOlaSFkOCtthvb.GcXduyoEg7ADuVFLzm', 'stu', '1', NULL),
(1503, 'Madhavi', 'Gunewardena', 'madhavigunewardena@gmail.com', NULL, '$2y$10$i5ZOwHo7IRl/AQEcKMkfVeWMjhkziJbTcSDU9hP/E8eTLGyBVPc/G', 'stu', '1', NULL),
(1504, 'Madhavi', 'Jayamaha', 'madhavijayamaha@gmail.com', NULL, '$2y$10$.odRbj930TubWrsQas2KJ.OOecNW8RAHuPVk1JGnC7nFFw2qhGXYq', 'stu', '0', NULL),
(1505, 'Madhubhashini', 'Chandrasiri', 'madhubhashinichandrasiri@gmail.com', NULL, '$2y$10$o.Xnfo49r8nLsbffFP0FDuN9.Cfd3ohtlMn50nn1SyfcD/dvE94LO', 'stu', '0', NULL),
(1506, 'Madhupani', 'Edirisinghe', 'madhupaniedirisinghe@gmail.com', NULL, '$2y$10$I5SZ03g5SHvvr8wK5UXe1eIWvzfI79OzwEpiQ7p/RG27ZMWuCqFQC', 'stu', '0', NULL),
(1507, 'Madhupani', 'Thotawatte', 'madhupanithotawatte@gmail.com', NULL, '$2y$10$zY3FNYEKiNWFKauRW0aHeOSnqXnZmtA4g27P6Kky0z8Bk8Djnh5QS', 'stu', '0', NULL),
(1508, 'Madubashine', 'Jayasuriya', 'madubashinejayasuriya@gmail.com', NULL, '$2y$10$WJYPSRgHVSpxRPKIG7uK1uZ0l7V/.fQekAEF1MlwSDjb2o/PPgpCu', 'stu', '0', NULL),
(1509, 'Madubashine', 'Jayawickrama', 'madubashinejayawickrama@gmail.com', NULL, '$2y$10$kJbahX0bOD.kiVcRFnEXp.VSRZ2DiKgA0NMGSgLFaAhiokzEKeNYa', 'stu', '0', NULL),
(1510, 'Maduka', 'Ekanayake', 'madukaekanayake@gmail.com', NULL, '$2y$10$xA91im5aMzT79gSilC8KSuJy8w9.HPmwDCgptWHMFVKfkYb986idu', 'stu', '1', NULL),
(1511, 'Madurawala', 'Gunewardena', 'madurawalagunewardena@gmail.com', NULL, '$2y$10$RxSpOgOnACUzoP84d1VoSuQJR7G5ZoQNKgsPbNqi./ASX4oxBmd3.', 'stu', '1', NULL),
(1512, 'Madurawala', 'Illangasinghe', 'madurawalaillangasinghe@gmail.com', NULL, '$2y$10$RMWWaAgcRcVZYYEFvACcl.jMhhUZwfeLNDTbIJU0Ul7YTSMGtXpUy', 'stu', '1', NULL),
(1513, 'Madurika', 'Malewana', 'madurikamalewana@gmail.com', NULL, '$2y$10$ZPAN03qW1HMS7WmD205gRultPQtw9wBBsrjVKtxOx23Nh/8VjoJkm', 'stu', '1', NULL),
(1514, 'Madusanka', 'Nanarama', 'madusankananarama@gmail.com', NULL, '$2y$10$uaB3n379Kt1PkaE2hzWQpOT9Yb2xhL7WIlNx2JEYUxgEOPjPgTUEK', 'stu', '1', NULL),
(1515, 'Madushani', 'Jayasena', 'madushanijayasena@gmail.com', NULL, '$2y$10$ziVARTdZdkiHCoxVzqOOVecxGbvK7/J6qdC51nNN5UGh9jbsAQtVW', 'stu', '1', NULL),
(1516, 'Maduwanthi', 'Dhanapala', 'maduwanthidhanapala@gmail.com', NULL, '$2y$10$4yzkPX/F1idGX8dfCsFgk.pS3pmniJL6RTGA2.dxBZqy728q6u5xe', 'stu', '0', NULL),
(1517, 'Maduwanthi', 'Dharsha', 'maduwanthidharsha@gmail.com', NULL, '$2y$10$Z/JPWMjPMfvc06vO4QhUNuCQjJrLwvQsLa6N5P76uNIhjvu1L47lO', 'stu', '0', NULL),
(1518, 'Maheshika', 'Gnanananda', 'maheshikagnanananda@gmail.com', NULL, '$2y$10$1wB6ZCYRfiUyHNyDJ5pciuba8qyhzwCFdTorREtdTU3D1GS43vmCK', 'stu', '0', NULL),
(1519, 'Maheshika', 'Shantha', 'maheshikashantha@gmail.com', NULL, '$2y$10$JuH6wQ.VsK6jkqx6BBvTs.H9ADNZREP/fuXlazuqzgylUpsE.NBsG', 'stu', '0', NULL),
(1520, 'Mahinda', 'Kumaranatunga', 'mahindakumaranatunga@gmail.com', NULL, '$2y$10$bs0MN.FV/KHHriIq56lRFux.RiaM7aliAow/fM./BhxTR5R0gAZHm', 'stu', '0', NULL),
(1521, 'Malinda', 'Gajabahu', 'malindagajabahu@gmail.com', NULL, '$2y$10$j2xxOqA5z/Gu01zW3cIqTeC.48FFagTRJ9A7yifI0cTgkGloZAVyi', 'stu', '0', NULL),
(1522, 'Malintha', 'Jayatilleka', 'malinthajayatilleka@gmail.com', NULL, '$2y$10$VsXkmsATGlayIrBpAtcuMukZNYT/8zphqN013/A.b.T7.A8lMwS66', 'stu', '0', NULL),
(1524, 'Malithi', 'Jayatilleke', 'malithijayatilleke@gmail.com', NULL, '$2y$10$w3RLqlpNu2w7JEAolFW1keBMAidn3uGkRC23wY8FPpWArYhmMxFWu', 'stu', '0', NULL),
(1525, 'Maneesha', 'Amarasekara', 'maneeshaamarasekara@gmail.com', NULL, '$2y$10$0Wp5aitIk/FesLapnpto6uqeq/ipDNr4dzPQIn6CSFf3Kw1ksSqU.', 'stu', '0', NULL),
(1526, 'Maneesha', 'Iriyagolla', 'maneeshairiyagolla@gmail.com', NULL, '$2y$10$KDm9IpyiuA0UU3Qt514zTuOdZg4Qf8ipqnkT1o2UL48n6c/LZyZ2q', 'stu', '0', NULL),
(1527, 'Mangala', 'Ponnamperuma', 'mangalaponnamperuma@gmail.com', NULL, '$2y$10$C70oxWJCUcBUSrn3WmqvN.qmgwBeIVuuDEJGgEVxgms0PoBBgZHLu', 'stu', '0', NULL),
(1528, 'Manisha', 'Bandaranaike', 'manishabandaranaike@gmail.com', NULL, '$2y$10$cEvVk0CyLnyISa13Lpt3q.jX3LRqUyFZX5zvTly16TgxfiPrZEdPq', 'stu', '0', NULL),
(1529, 'Manoj', 'Jayatissa', 'manojjayatissa@gmail.com', NULL, '$2y$10$GjSiuriMk7x8LMRLFj0vNeSI64j0IBey.GFPP3JkBJkS6FqFOfBZa', 'stu', '0', NULL),
(1530, 'Manori', 'Gnanananda', 'manorignanananda@gmail.com', NULL, '$2y$10$BLiSZeLQxisuPG268VGfp.L7kJmMl4woRCY4TlqOgBzzVN5VnAkmG', 'stu', '0', NULL),
(1531, 'Manuja', 'Lilavati', 'manujalilavati@gmail.com', NULL, '$2y$10$H29KE29LHkfVoXLut.wmbu256yUPUtGYgDNya4oLkEokKJpwUHYwe', 'stu', '0', NULL),
(1532, 'Marlon', 'Dissanayake', 'marlondissanayake@gmail.com', NULL, '$2y$10$TbNPF0HQv793oLuFmD910ewQn4oUZa0UySZ4Tjskk7j4bKwwtl0QC', 'stu', '0', NULL),
(1533, 'Marlon', 'Dodangoda', 'marlondodangoda@gmail.com', NULL, '$2y$10$MjJgy8vglHDoIbLhMrVwG.qdl5PuSbQteWEgQdBHIsRUKlOsan8kq', 'stu', '0', NULL),
(1534, 'Marlon', 'Ponnamperuma', 'marlonponnamperuma@gmail.com', NULL, '$2y$10$I90t6T7WQyCk5UKYn8OCI.pNvmd2RK4jgGAs7eVOrJh5.X9MA99XW', 'stu', '0', NULL),
(1536, 'Melani', 'Dissanayake', 'melanidissanayake@gmail.com', NULL, '$2y$10$J4Vo0lDwOc3EV/HapyfkPeUP1SyxmUqu96VrAXHUxQ6J2CPpQY9wO', 'stu', '0', NULL),
(1537, 'Melani', 'Herath', 'melaniherath@gmail.com', NULL, '$2y$10$95fVskPVBIUy/7A00xMv.OW9mO6/IwAoEEUC2fNZtGM9C68Ensdii', 'stu', '0', NULL),
(1538, 'Menuka', 'Jayawardena', 'menukajayawardena@gmail.com', NULL, '$2y$10$Qvh//ROZJc7ITlc//AxAg.m2hlSGwwATpi.YiwNTusbKILXBjDKnG', 'stu', '0', NULL),
(1539, 'Mihirani', 'Kumaratunga', 'mihiranikumaratunga@gmail.com', NULL, '$2y$10$NF.JvygUkopoFSz6dUsdHuQ6kas0J2Y/vNwVvnJYUKoLw.syyyf5W', 'stu', '0', NULL),
(1540, 'Miyushan', 'Goonesekara', 'miyushangoonesekara@gmail.com', NULL, '$2y$10$RCP0fXOdW9y6LCwbRChkxOVylP4KuQznCB0.oaP6oWWfcsJ8nCWVq', 'stu', '0', NULL),
(1541, 'Monika', 'Chandawimala', 'monikachandawimala@gmail.com', NULL, '$2y$10$CFBz3yenHfrbiyrrsbS2FO8DNhuyGXxHnF9FVKCXF82WDCzwq4fNi', 'stu', '0', NULL),
(1542, 'Mudannayake', 'Gajabahu', 'mudannayakegajabahu@gmail.com', NULL, '$2y$10$vGO1Rg4mPgC5YLlJpVBPeeuu/.1oeBZPoWLdEVuww8AxStwnLuw86', 'stu', '0', NULL),
(1543, 'Mudannayake', 'Kumaranatunga', 'mudannayakekumaranatunga@gmail.com', NULL, '$2y$10$75AGH1Z3tIfm2oTOFe/Xs.TtGzaMt4B6Z.3h5VOKUiV5IVuCb09VO', 'stu', '0', NULL),
(1544, 'Nadeeja', 'Goonesena', 'nadeejagoonesena@gmail.com', NULL, '$2y$10$UgzDQdK58tFO4dKtxo9hkutUIlIKdPF.DDgTCnJ1CRhtF3IJ5A5Oe', 'stu', '0', NULL),
(1545, 'Nadeeja', 'Weerasinghe', 'nadeejaweerasinghe@gmail.com', NULL, '$2y$10$oyyOHYcvpJn05kFhQzSPTeog60Iw5oD7v1q7e/tAxoAhPY.zW2rxe', 'stu', '0', NULL),
(1546, 'Nanayakkara', 'Athulathmudali', 'nanayakkaraathulathmudali@gmail.com', NULL, '$2y$10$Z0rZqR3WPAJ0EBud/G7Bnui6ydqv9PlMwtW2Ru5/k9DhVBkZGTV1.', 'stu', '0', NULL),
(1547, 'Navarathna', 'Kanakeratne', 'navarathnakanakeratne@gmail.com', NULL, '$2y$10$H/cSRodZ/AcYF6AvOYXUPeIYvhAbBC.Mc.MpaH.bsIdRArTjqdEaG', 'stu', '0', NULL),
(1548, 'Navarathna', 'Weerakoon', 'navarathnaweerakoon@gmail.com', NULL, '$2y$10$w/Z/ivsbIKc.tG8qHrQJCOYZKMvwVSvIdYnM3XsGGGFsA0e2rQMmq', 'stu', '0', NULL),
(1549, 'Nayana', 'Tilakaratna', 'nayanatilakaratna@gmail.com', NULL, '$2y$10$d50OoyhgVI.ki6XUHgPW5OF.bjay/4hlrMciDHUrG5xpW5EfOJ66e', 'stu', '0', NULL),
(1550, 'Nayanadini', 'Nandasiri', 'nayanadininandasiri@gmail.com', NULL, '$2y$10$zfjvmxWYc/FXzMBWubBXVeuFJKYyUMBHS4kOy0BlJFyTO6Z0l39ma', 'stu', '0', NULL),
(1551, 'Nayananda', 'Wijewardene', 'nayanandawijewardene@gmail.com', NULL, '$2y$10$IwhXHsJTpBa0AoRK0vTbUud9Rt0F5EhH5KoLIWXJ8.VcsMEpAFDFO', 'stu', '0', NULL),
(1552, 'Neja', 'Amarasekara', 'nejaamarasekara@gmail.com', NULL, '$2y$10$vQ2HL/tIZZG2trHJxSBGseI.FmKL6v7KrRau3l3i7YpjIgeTiDtwy', 'stu', '0', NULL),
(1553, 'Neja', 'Ekanayake', 'nejaekanayake@gmail.com', NULL, '$2y$10$njM3VPtR1jgIbiDMhlH7IO91a0LOqpvJrlo49GpOI33jwkmZsI/pO', 'stu', '0', NULL),
(1554, 'Neja', 'Jayatilleka', 'nejajayatilleka@gmail.com', NULL, '$2y$10$efS4C2nCoiUJsiGXdTNV0O3uWCCMmR6D4wdD7GLdt/livdV3EHGqq', 'stu', '0', NULL),
(1555, 'Nelaka', 'Senanayake', 'nelakasenanayake@gmail.com', NULL, '$2y$10$uQCj1bb98Teu/YWIxx6A0.uvn3sCfNXbrHUdKrbvq6yTbnAzw2ywO', 'stu', '0', NULL),
(1556, 'Nelith', 'Senarath', 'nelithsenarath@gmail.com', NULL, '$2y$10$0sIPqXBGsNJR/Hitg5Yh6uQ4taJJOzfSepNwsa5kXXP.vAWmKgNmW', 'stu', '0', NULL),
(1557, 'Nelum', 'Gamage', 'nelumgamage@gmail.com', NULL, '$2y$10$.IzsroX3YO1V/4Hd.cpPfudEfkohCJki2OJUZ/a7mi8iqJFjLdxTS', 'stu', '0', NULL),
(1558, 'Neranjan', 'Jagath', 'neranjanjagath@gmail.com', NULL, '$2y$10$dzQiTG.fRqWqf5j/bYVTZuXVdSLGhKVI2hVvPH2XHagFhqhCZXpZ6', 'stu', '0', NULL),
(1559, 'Nethaka', 'Medhananda', 'nethakamedhananda@gmail.com', NULL, '$2y$10$6iBQ21jzD9.wZyOD8.LrBu1K2DFbWP2hsjnkm79H2qTOv7P6J0Rqm', 'stu', '0', NULL),
(1560, 'Nethranjali', 'Kularatne', 'nethranjalikularatne@gmail.com', NULL, '$2y$10$bpf3pXVk0yIJHiPT7OXmeu1.NdnGhioayzSBtq1vLBxM7qPj4dpoi', 'stu', '0', NULL),
(1561, 'Nilaksha', 'Ekanayake', 'nilakshaekanayake@gmail.com', NULL, '$2y$10$2WQO03YjVdjbWzRXWgJsH.DIYDsPA34KwH2hjOKANELR0xAg2lsfW', 'stu', '0', NULL),
(1562, 'Nilantha', 'Chandrasiri', 'nilanthachandrasiri@gmail.com', NULL, '$2y$10$DO.WXvpjk00Bb6aUiY6Lue8lsiBUqpzBFwoyQkousVBeS0TnD6HUO', 'stu', '0', NULL),
(1563, 'Nilmini', 'Dewasiri', 'nilminidewasiri@gmail.com', NULL, '$2y$10$uk9l..S.9ihz2YTjChGfh.NjPkUgzxvJiWlMzhM6nShG9/NuHI5cS', 'stu', '0', NULL),
(1564, 'Niluka', 'Kulatunga', 'nilukakulatunga@gmail.com', NULL, '$2y$10$XGUbUT08B.guEe4oza4LSOdv9MGwMjRTYVxStuW8dx.Cha6uGqYs2', 'stu', '0', NULL),
(1565, 'Nilusha', 'Wimalasuriya', 'nilushawimalasuriya@gmail.com', NULL, '$2y$10$xRplP0jIBkxp7jZ11Fenceo8UdWVthBTEyTuxvmsj2UqqXIqIrUfe', 'stu', '0', NULL),
(1566, 'Nilushana', 'Jayamaha', 'nilushanajayamaha@gmail.com', NULL, '$2y$10$nosMTaaE6trq.y4d1q/U/ONwlPBD1ZDVmeHXji3ET3qd.Gzd9XNKi', 'stu', '0', NULL),
(1567, 'Nimna', 'Amaradeva', 'nimnaamaradeva@gmail.com', NULL, '$2y$10$Wsqg2ejXx.yyb5UnbGDEZOCPOVQkv/2K3VtKLyWUXmjoj0gcqTatO', 'stu', '0', NULL),
(1568, 'Nimthaki', 'Sumangala', 'nimthakisumangala@gmail.com', NULL, '$2y$10$KRLqRRq530K5DxUAR/pAou9Ifxwa5jJMxAye.Kau89Evct9tkoPH6', 'stu', '0', NULL),
(1569, 'Niranga', 'Lankage', 'nirangalankage@gmail.com', NULL, '$2y$10$S0KRBQiqKhEkhof/2Rpj2ujyR.usaehjzfnGkWqDR9/Ilv0EM/EcW', 'stu', '0', NULL),
(1570, 'Niranji', 'Nissanka', 'niranjinissanka@gmail.com', NULL, '$2y$10$9WoXL6juu6R8Pq5vkSyWPOEb..GmEwLmkMGTB92Cn75dkXaIGHLzi', 'stu', '0', NULL),
(1571, 'Nirasha', 'Gamage', 'nirashagamage@gmail.com', NULL, '$2y$10$JsKwT3RRyAGywPDpykFdAODi02JrnsO0QD5RGkMPHb5bJQTOIGNxC', 'stu', '0', NULL),
(1572, 'Nirmal', 'Senanayake', 'nirmalsenanayake@gmail.com', NULL, '$2y$10$i8vK33PZsepcyIwOTguAle87/j/qrTJVhjvz8E341Qczd6mlc6Vb6', 'stu', '0', NULL),
(1573, 'Nisal', 'Nandasiri', 'nisalnandasiri@gmail.com', NULL, '$2y$10$xy0HKJrZL9HJLgojs14VuuEsYJ9OduLD0xdz3RkbTPs2dVXYFGc3q', 'stu', '0', NULL),
(1574, 'Nisanka', 'Vithanage', 'nisankavithanage@gmail.com', NULL, '$2y$10$yMngKnDthgBW.NX5dht9i.WpczfMOquSoXHRyrhh/o7S17dXVfUhO', 'stu', '0', NULL),
(1575, 'Nisansala', 'Chandawimala', 'nisansalachandawimala@gmail.com', NULL, '$2y$10$H4l/tHEaDlsWzsdq8INLJeIDcOlWgzlegjSvEoSpN/C7f4MSo6TKO', 'stu', '0', NULL),
(1576, 'Nishadi', 'Ranaweera', 'nishadiranaweera@gmail.com', NULL, '$2y$10$LCxLBE/.8Ge74Jt9wR1i2unnA/A5VHUEnV3OqC7IzZjjz/RFmT.Ge', 'stu', '0', NULL),
(1577, 'Nishal', 'Samaraweera', 'nishalsamaraweera@gmail.com', NULL, '$2y$10$hhuPrqi9Sdm.GqOKDtYfE.RjzC5ZrtDdo5udaoI.XZfryJ4eTIAf2', 'stu', '0', NULL),
(1578, 'Nishan', 'Illangasinghe', 'nishanillangasinghe@gmail.com', NULL, '$2y$10$094/jgJvkEuWx1wXaeqsDOvStk3tYRCwdP20E7cGRis6sggvuqLci', 'stu', '0', NULL),
(1579, 'Nishshanka', 'Dharsha', 'nishshankadharsha@gmail.com', NULL, '$2y$10$aRmOql1jcAxtwT8gUObNye.Lff6Xs6rlNAXGzO7l4nF9ZZ3NU3fXK', 'stu', '0', NULL),
(1580, 'Nissan', 'Gooneratne', 'nissangooneratne@gmail.com', NULL, '$2y$10$ZU6BUJqY/Sdjvhap.pYzd.kxEsmSqB54SpsoG3TOg91HP.TyknJW6', 'stu', '0', NULL),
(1581, 'Niwanthi', 'Jayasuriya', 'niwanthijayasuriya@gmail.com', NULL, '$2y$10$Goh0VxpIFvQcAXlohV6kTeZBs4mW.LXH2R95fWOR3Pf6DCaPivBB2', 'stu', '0', NULL),
(1582, 'Nushan', 'Addararachchi', 'nushanaddararachchi@gmail.com', NULL, '$2y$10$OeYUUIM3SrKAyANuLtPXueQ7TU676m0wSaoIuTMXk5HRWgGTaVg1G', 'stu', '0', NULL),
(1583, 'Nuveena', 'Kumaranatunga', 'nuveenakumaranatunga@gmail.com', NULL, '$2y$10$C0cZiHMWgWJ6ROYRgMxG4u2ADzxD3vGpqoDD2cepMG89reoKAbKee', 'stu', '0', NULL),
(1584, 'Omeshi', 'Dharmagunawardhana', 'omeshidharmagunawardhana@gmail.com', NULL, '$2y$10$Yb0iWDPfKLY3e9thQaiu3eEKIRNBj4qs6bBrOO9VsEYXppcLXDI72', 'stu', '0', NULL),
(1585, 'Omeshi', 'Lankage', 'omeshilankage@gmail.com', NULL, '$2y$10$eC.0Wh7brozOzBg.mqSeHutCUEwM3vkqrRMOxpuZN3zJvUbe1RqSG', 'stu', '0', NULL),
(1586, 'Oshadhi', 'Madugalle', 'oshadhimadugalle@gmail.com', NULL, '$2y$10$Lwf2q6qX9zYKaJRQWnSmwOisdF4.T39ZC64R2jq75fl/j4JoyD1VK', 'stu', '0', NULL),
(1587, 'Oshadhi', 'Walpola', 'oshadhiwalpola@gmail.com', NULL, '$2y$10$f.azHiRnPpnTtQaktmUPke2.X8PZgyr2mMpzaReAa4cds7PLgQp2e', 'stu', '0', NULL),
(1588, 'Padmakumara', 'Gooneratne', 'padmakumaragooneratne@gmail.com', NULL, '$2y$10$3ieAIX64wl7jGuckHitzAeEQ1vCi.zpV9yKGFZiLSuR4bL2WWmBdi', 'stu', '0', NULL),
(1589, 'Palitha', 'Illangasinghe', 'palithaillangasinghe@gmail.com', NULL, '$2y$10$GE3hetVSmzXDraXXMr8RF.F9i2hthtYjUvoUIga1hW6LX9RU9aiqG', 'stu', '0', NULL),
(1590, 'Pannala', 'Dharsha', 'pannaladharsha@gmail.com', NULL, '$2y$10$oILyMyzBR9EMW0Xzw2TtV.JCydDPO1VH1OhnU0nQjp.9Y3eGQP5lC', 'stu', '0', NULL),
(1591, 'Parami', 'Lankage', 'paramilankage@gmail.com', NULL, '$2y$10$BFFXhTNmkv3tRnxeKGuTzuq5K74pFy18.5E4nMvmjMxOFYXN1jJJy', 'stu', '0', NULL),
(1592, 'Pasan', 'Gunasekera', 'pasangunasekera@gmail.com', NULL, '$2y$10$vr1ECLJ1eDdkr1yevVfh.e6isjiMSy2tY/YKCkoa5u5.74NDhRirC', 'stu', '0', NULL),
(1593, 'Pasan', 'Hettige', 'pasanhettige@gmail.com', NULL, '$2y$10$5ZdXf7nVEso3kdkJfQccieeyDFzjz7yPDWT0I//.tB/t1XF1Kaysq', 'stu', '0', NULL),
(1594, 'Pavithra', 'Kannangara', 'pavithrakannangara@gmail.com', NULL, '$2y$10$1ZgFaItBG08PRn0ZLlQjp.1S5qnx2ZEawhaVwP3UtDIzFdeUDM4Ru', 'stu', '0', NULL),
(1595, 'Pavithra', 'Saranankara', 'pavithrasaranankara@gmail.com', NULL, '$2y$10$SQWVCd1.FSmIUJPSBEkp5ONDrNwlmeC9Se488E0xRMPZzF38qTPpq', 'stu', '0', NULL),
(1596, 'Perera', 'Sangakkara', 'pererasangakkara@gmail.com', NULL, '$2y$10$XBQvdQIMYqLAjCysJBdp2ujrXsMtfqBcTQwZZcQPk3M5QWpXeyjwC', 'stu', '0', NULL),
(1597, 'Peshila', 'Bandara', 'peshilabandara@gmail.com', NULL, '$2y$10$sKiXA4A/CZBOsqDrw1ir.eMJnp6JW1p980zbCbYjHp8X7JOsIitsi', 'stu', '0', NULL),
(1598, 'Piumi', 'Devenampiyatissa', 'piumidevenampiyatissa@gmail.com', NULL, '$2y$10$r.7csKER9c00hjYME0IhKOS9lkl0M8UNEC9jR986vulBbhNykSn8i', 'stu', '0', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `badge`
--
ALTER TABLE `badge`
  ADD PRIMARY KEY (`badge_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `badge_assign`
--
ALTER TABLE `badge_assign`
  ADD PRIMARY KEY (`student_id`,`badge_id`),
  ADD KEY `badge_id` (`badge_id`),
  ADD KEY `lecturer_id` (`lecturer_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `course_registration_lec`
--
ALTER TABLE `course_registration_lec`
  ADD PRIMARY KEY (`course_id`,`lecturer_id`),
  ADD KEY `course_registration_lec_ibfk_1` (`lecturer_id`);

--
-- Indexes for table `course_registration_stu`
--
ALTER TABLE `course_registration_stu`
  ADD PRIMARY KEY (`course_id`,`student_id`),
  ADD KEY `course_registration_stu_ibfk_2` (`student_id`);

--
-- Indexes for table `course_topic`
--
ALTER TABLE `course_topic`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `course_topic_ibfk_1` (`course_id`),
  ADD KEY `course_topic_ibfk_2` (`lecturer_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `feedback_lecture`
--
ALTER TABLE `feedback_lecture`
  ADD PRIMARY KEY (`student_id`,`topic_id`,`feedback_id`),
  ADD KEY `feedback_id` (`feedback_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `feedback_quiz`
--
ALTER TABLE `feedback_quiz`
  ADD PRIMARY KEY (`student_id`,`quiz_id`),
  ADD KEY `feedback_id` (`feedback_id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`forum_id`),
  ADD KEY `forum_ibfk_1` (`course_Id`);

--
-- Indexes for table `forum_reply`
--
ALTER TABLE `forum_reply`
  ADD PRIMARY KEY (`reply_id`),
  ADD KEY `forum_reply_ibfk_1` (`topic_id`),
  ADD KEY `forum_reply_ibfk_2` (`user_id`);

--
-- Indexes for table `forum_reply_points`
--
ALTER TABLE `forum_reply_points`
  ADD PRIMARY KEY (`lecturer_id`,`reply_id`),
  ADD KEY `reply_id` (`reply_id`);

--
-- Indexes for table `forum_topic`
--
ALTER TABLE `forum_topic`
  ADD PRIMARY KEY (`topic_id`),
  ADD UNIQUE KEY `last_reply_id` (`last_reply_id`),
  ADD KEY `forum_topic_ibfk_1` (`user_id`),
  ADD KEY `forum_topic_ibfk_2` (`forum_Id`);

--
-- Indexes for table `forum_topic_points`
--
ALTER TABLE `forum_topic_points`
  ADD PRIMARY KEY (`lecturer_id`,`topic_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `lecturer_no` (`lecturer_no`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notification_user`
--
ALTER TABLE `notification_user`
  ADD PRIMARY KEY (`user_id`,`notification_id`),
  ADD KEY `notification_user_ibfk_1` (`notification_id`);

--
-- Indexes for table `question_choice`
--
ALTER TABLE `question_choice`
  ADD PRIMARY KEY (`choice_id`) USING BTREE,
  ADD KEY `question_no` (`question_no`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`),
  ADD KEY `quiz_ibfk_1` (`topic_id`),
  ADD KEY `quiz_ibfk_2` (`lecturer_id`);

--
-- Indexes for table `quiz_attempt`
--
ALTER TABLE `quiz_attempt`
  ADD PRIMARY KEY (`student_id`,`quiz_id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD PRIMARY KEY (`question_no`) USING BTREE,
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `session_ibfk_1` (`lecturer_id`),
  ADD KEY `session_ibfk_2` (`course_id`);

--
-- Indexes for table `session_answer`
--
ALTER TABLE `session_answer`
  ADD PRIMARY KEY (`choice_id`),
  ADD KEY `session_answer_ibfk_1` (`question_no`),
  ADD KEY `session_answer_ibfk_2` (`session_id`);

--
-- Indexes for table `session_forum_question`
--
ALTER TABLE `session_forum_question`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `session_forum_question_ibfk_1` (`session_id`),
  ADD KEY `session_forum_question_ibfk_2` (`student_id`);

--
-- Indexes for table `session_forum_question_points`
--
ALTER TABLE `session_forum_question_points`
  ADD PRIMARY KEY (`student_id`,`question_id`),
  ADD KEY `session_forum_points_ibfk_2` (`question_id`);

--
-- Indexes for table `session_mcq_attempt`
--
ALTER TABLE `session_mcq_attempt`
  ADD PRIMARY KEY (`student_id`,`question_no`),
  ADD KEY `session_mcq_attempt_ibfk_2` (`question_no`),
  ADD KEY `session_mcq_attempt_ibfk_3` (`choice_id`);

--
-- Indexes for table `session_open_attempt`
--
ALTER TABLE `session_open_attempt`
  ADD PRIMARY KEY (`attempt_no`),
  ADD KEY `session_open_attempt_ibfk_2` (`question_no`),
  ADD KEY `session_open_attempt_ibfk_1` (`student_id`);

--
-- Indexes for table `session_question`
--
ALTER TABLE `session_question`
  ADD PRIMARY KEY (`question_no`),
  ADD KEY `session_question_ibfk_1` (`session_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `index_no` (`index_no`);

--
-- Indexes for table `student_marks_log`
--
ALTER TABLE `student_marks_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`),
  ADD KEY `tag_ibfk_1` (`student_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `badge`
--
ALTER TABLE `badge`
  MODIFY `badge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `course_topic`
--
ALTER TABLE `course_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `forum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `forum_reply`
--
ALTER TABLE `forum_reply`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `forum_topic`
--
ALTER TABLE `forum_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `question_choice`
--
ALTER TABLE `question_choice`
  MODIFY `choice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `question_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `session_answer`
--
ALTER TABLE `session_answer`
  MODIFY `choice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `session_forum_question`
--
ALTER TABLE `session_forum_question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `session_open_attempt`
--
ALTER TABLE `session_open_attempt`
  MODIFY `attempt_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `session_question`
--
ALTER TABLE `session_question`
  MODIFY `question_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `student_marks_log`
--
ALTER TABLE `student_marks_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1714;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `badge`
--
ALTER TABLE `badge`
  ADD CONSTRAINT `badge_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `badge_assign`
--
ALTER TABLE `badge_assign`
  ADD CONSTRAINT `badge_assign_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `badge_assign_ibfk_2` FOREIGN KEY (`badge_id`) REFERENCES `badge` (`badge_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `badge_assign_ibfk_3` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturer` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_registration_lec`
--
ALTER TABLE `course_registration_lec`
  ADD CONSTRAINT `course_registration_lec_ibfk_1` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturer` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_registration_lec_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_registration_stu`
--
ALTER TABLE `course_registration_stu`
  ADD CONSTRAINT `course_registration_stu_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_registration_stu_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_topic`
--
ALTER TABLE `course_topic`
  ADD CONSTRAINT `course_topic_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_topic_ibfk_2` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturer` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback_lecture`
--
ALTER TABLE `feedback_lecture`
  ADD CONSTRAINT `feedback_lecture_ibfk_1` FOREIGN KEY (`feedback_id`) REFERENCES `feedback` (`feedback_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feedback_lecture_ibfk_2` FOREIGN KEY (`topic_id`) REFERENCES `course_topic` (`topic_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feedback_lecture_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `student` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback_quiz`
--
ALTER TABLE `feedback_quiz`
  ADD CONSTRAINT `feedback_quiz_ibfk_1` FOREIGN KEY (`feedback_id`) REFERENCES `feedback` (`feedback_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feedback_quiz_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`quiz_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feedback_quiz_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `student` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `forum`
--
ALTER TABLE `forum`
  ADD CONSTRAINT `forum_ibfk_1` FOREIGN KEY (`course_Id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `forum_reply`
--
ALTER TABLE `forum_reply`
  ADD CONSTRAINT `forum_reply_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `forum_topic` (`topic_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `forum_reply_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `forum_reply_points`
--
ALTER TABLE `forum_reply_points`
  ADD CONSTRAINT `forum_reply_points_ibfk_1` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturer` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `forum_reply_points_ibfk_2` FOREIGN KEY (`reply_id`) REFERENCES `forum_reply` (`reply_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `forum_topic`
--
ALTER TABLE `forum_topic`
  ADD CONSTRAINT `forum_topic_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `forum_topic_ibfk_2` FOREIGN KEY (`forum_Id`) REFERENCES `forum` (`forum_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `forum_topic_points`
--
ALTER TABLE `forum_topic_points`
  ADD CONSTRAINT `forum_topic_points_ibfk_1` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturer` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `forum_topic_points_ibfk_2` FOREIGN KEY (`topic_id`) REFERENCES `forum_topic` (`topic_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD CONSTRAINT `lecturer_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notification_user`
--
ALTER TABLE `notification_user`
  ADD CONSTRAINT `notification_user_ibfk_1` FOREIGN KEY (`notification_id`) REFERENCES `notification` (`notification_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notification_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question_choice`
--
ALTER TABLE `question_choice`
  ADD CONSTRAINT `question_choice_ibfk_1` FOREIGN KEY (`question_no`) REFERENCES `quiz_question` (`question_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `question_choice_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`quiz_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `course_topic` (`topic_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_ibfk_2` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturer` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quiz_attempt`
--
ALTER TABLE `quiz_attempt`
  ADD CONSTRAINT `quiz_attempt_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`quiz_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_attempt_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD CONSTRAINT `quiz_question_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`quiz_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `session_ibfk_1` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturer` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `session_answer`
--
ALTER TABLE `session_answer`
  ADD CONSTRAINT `session_answer_ibfk_1` FOREIGN KEY (`question_no`) REFERENCES `session_question` (`question_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_answer_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `session` (`session_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `session_forum_question`
--
ALTER TABLE `session_forum_question`
  ADD CONSTRAINT `session_forum_question_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `session` (`session_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_forum_question_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `session_forum_question_points`
--
ALTER TABLE `session_forum_question_points`
  ADD CONSTRAINT `session_forum_question_points_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_forum_question_points_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `session_forum_question` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `session_mcq_attempt`
--
ALTER TABLE `session_mcq_attempt`
  ADD CONSTRAINT `session_mcq_attempt_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_mcq_attempt_ibfk_2` FOREIGN KEY (`question_no`) REFERENCES `session_question` (`question_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_mcq_attempt_ibfk_3` FOREIGN KEY (`choice_id`) REFERENCES `session_answer` (`choice_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `session_open_attempt`
--
ALTER TABLE `session_open_attempt`
  ADD CONSTRAINT `session_open_attempt_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_open_attempt_ibfk_2` FOREIGN KEY (`question_no`) REFERENCES `session_question` (`question_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `session_question`
--
ALTER TABLE `session_question`
  ADD CONSTRAINT `session_question_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `session` (`session_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tag`
--
ALTER TABLE `tag`
  ADD CONSTRAINT `tag_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
