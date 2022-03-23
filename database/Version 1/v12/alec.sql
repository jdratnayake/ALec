-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2021 at 09:52 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `badge_assign`
--

CREATE TABLE `badge_assign` (
  `student_id` int(11) NOT NULL,
  `badge_id` int(11) NOT NULL,
  `lecturer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `course_description` varchar(200) DEFAULT NULL,
  `year` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_description`, `year`) VALUES
(47, 'SCS 1202 - Programming Using C', 'The following objectives are covered in this course. Analyze and explain \r\nthe behavior of simple programs involving the fundamental programming \r\nconstructs using a functional paradigm such as Scheme', 1),
(48, 'SCS 1203 - Database I', 'Database I, introduces the components of a database system and major \r\nDBMS functions. Data modelling, Relational database design, Structured \r\nQuery Languages (SQL) are covered in the course module.\'', 1),
(49, 'SCS 1204 - Discrete Mathematics I', 'This course module includes sets, relations and functions such as Union and \r\nIntersection. Also basic logic is introduced here with truth tables, predicate logic \r\nand propositional logic. It also di', 1),
(50, 'SCS 1205 - Computer Systems', 'Computer Systems introduces the history of the computer systems, along \r\nwith the knowledge of how the computer works starting from the data \r\nrepresentation, basic logic circuit design to the CPU cyc', 1),
(51, 'SCS 1206 - Laboratory I', 'Laboratory I gives the laboratory exposure to use an operating system (Ubuntu \r\nLinux). The student will gain practical experience in handling the operating \r\nsystem through the graphical user interfa', 1),
(52, 'SCS 1207 - Software Engineering I', 'Software Engineering I is the introductory course of Software Engineering. \r\nAlong with the definitions and the need for Software engineering, the \r\nprocess will be explained in stages: Requirements e', 1),
(53, 'ENH 1201 - Enhancement I', 'The aim of this course module is to enhance the student’s communication \r\nskills in general. An attention will be given to accurate the pronunciation, \r\nactive listening and responding. The correct us', 1),
(54, 'SCS 1208 - Data Structures And Algorithms II', 'Data Structures and Algorithms II will be built upon the first part of the \r\nmodule, discussing variants of the Tree data structure such as General Trees, \r\nBinary Trees, Binary search trees, AVL tree', 1),
(55, 'SCS 1209 - Object Oriented Programming', 'This course introduces the concepts of programming, coding algorithms \r\nin C language and the use of data structures in a C program. In addition \r\nwe will look at some other concepts which were not in', 1),
(56, 'SCS 1210 - Software Engineering II', 'This is an advanced course in Software Engineering which is based on Software \r\nEngineering I module and provides an understanding of Object Oriented \r\nAnalysis and Design (OOAD) concepts. After compl', 1),
(57, 'SCS 1211 - Mathematical Methods I', 'Mathematical Methods I is the introduction to the concepts of calculus including \r\ndifferential equations. Real numbers, real functions, algebra of limits and \r\nalgebra of derivatives, Mean value theo', 1),
(58, 'SCS 1212 - Foundation of Computer Science', 'This course module introduces the historic origins of computational models, \r\nmathematical theory that has led the establishment of computer science. It will \r\ndiscuss the theory on algorithmic proble', 1),
(59, 'SCS 1213 - Probability and Statistics', 'This course offers the theory and background on random variables, probability, \r\nseveral discrete and continuous distributions and to apply the knowledge of \r\nthe distributions and the tools of probab', 1),
(60, 'SCS 1214 - Operating Systems I', 'This course provides an understanding of entire process within Operating \r\nSystems. It covers overview of Operating Systems, Operating System principles, \r\nconcurrency, scheduling and dispatch, memory', 1),
(61, 'ENH 1202 - Enhancement II', 'Humanities is offered as a student enhancement course module, focusing \r\non the non-technical and aesthetic subjects such as performing arts, Music, \r\nPainting, Philosophy, Literature, History etc. It', 1),
(62, 'SCS 2201 - Data Structures and Algorithms III ', 'This is an advanced course in data structures and algorithms which is built on \r\nthe fundamentals introduced in SCS 1201 and SCS 1208 to provide profound \r\nknowledge to design, use, analyze and to pro', 2),
(63, 'SCS 2202 - Group Project I', 'This course is designed to enable students to apply the knowledge acquired \r\nthrough system analysis, design, development, verification and validation, \r\nmaintenance and project management while worki', 2),
(64, 'SCS 2203 - Software Engineering III', 'This course complements the material already covered in Software Engineering \r\nI and II courses and discusses Object-Oriented Modelling and Unified Process \r\nModels in more detail. The course also int', 2),
(65, 'SCS 2204 - Functional Programming', 'Functional programming is becoming increasingly widespread in industry. This \r\ntrend is driven by the adoption of Scala as the main programming language \r\nfor many applications. In this course student', 2),
(66, 'SCS 2205 - Computer Networks I', 'This course is designed to provide knowledge in conceptual and technological \r\naspects behind computer networking. The major areas include data \r\ncommunication, computer networks, LAN architectures, s', 2),
(67, 'SCS 2206 - Mathematical Methods II', 'Mathematical Methods II introduces topics such as vectors, matrices, matrix \r\nalgebra, determinants, Eigenvalues and Eigenvectors and Euclidean spaces \r\netc.', 2),
(68, 'SCS 2207 - Programming Language Concepts', 'This course provides the key features of a programming languages. It \r\ncovers the areas such as programming domains, language evaluation \r\ncriteria, influences on language design, implementation metho', 2),
(69, 'SCS 2208 - Rapid Application Development', 'This course is designed to ensure the fact that the students have been provided \r\na suitable knowledge of the core concepts of Agile practices, the Agile values \r\nand the principles, across a breadth ', 2),
(70, 'SCS 2209 - Database II', 'This course aims to provide introductory knowledge in advanced database \r\nconcepts such as access control for secure databases, transaction management \r\nand serializability, indexing methods, writing ', 2),
(71, 'SCS 2211 - Laboratory II', 'This course is designed to provide an understanding of how to explore and \r\ndescribe various real-life data sets, using R. After the completion of this course \r\nthe student will be able to understand ', 2),
(72, 'SCS 2212 - Automata Theory', 'This course mainly focus on determining a language’s place in the Chomsky \r\nhierarchy and to convert among equivalently powerful notations for a \r\nlanguage. The areas covered are Chomsky hierarchy, se', 2),
(73, 'SCS 2214 - Information System Security', 'This course provides students an understanding of the fundamentals of \r\ninformation security in both information storage and information traveling \r\nin computer networks. This course also focuses on m', 2),
(74, 'ENH 2201 - Enhancement III ', 'The course is taught through a real-life customer development context where \r\nstudents acquire the skills and know-how to develop their business idea all the \r\nway from the conceptual stage to the mar', 2),
(75, 'SCS 2213 - Electronics and Physical Computing', 'This course is organized around a series of practical hands-on exercises \r\nwhich introduce the fundamentals of circuits, embedded programming, signal \r\nprocessing, simple mechanisms, actuation, and ti', 2),
(76, 'SCS 2210 - Discrete Mathematics II', 'This course is to acquaint students with basic number theory and basic \r\ncombinatorial methods that provide a foundation for further studies in the field \r\nas well as for applications in related areas', 2);

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
(47, 101),
(47, 102),
(47, 103),
(47, 105),
(47, 107),
(48, 101),
(48, 103),
(49, 101),
(49, 104),
(49, 106),
(50, 101),
(50, 106),
(50, 108),
(59, 101),
(59, 105),
(63, 101),
(63, 102),
(63, 104),
(63, 113),
(64, 26),
(74, 101),
(74, 103),
(76, 101),
(76, 107),
(76, 110),
(76, 111);

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
(47, 12),
(47, 78),
(47, 92),
(48, 14),
(48, 21),
(48, 78),
(48, 93),
(49, 12),
(49, 14),
(49, 16),
(50, 92),
(50, 93),
(50, 94),
(56, 12),
(56, 14),
(56, 16),
(63, 12),
(63, 14),
(63, 16),
(63, 21),
(63, 78),
(64, 12),
(64, 16),
(76, 93),
(76, 94),
(76, 123);

-- --------------------------------------------------------

--
-- Table structure for table `course_topic`
--

CREATE TABLE `course_topic` (
  `topic_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `lecturer_id` int(11) NOT NULL,
  `topic_name` varchar(30) NOT NULL,
  `topic_description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_topic`
--

INSERT INTO `course_topic` (`topic_id`, `course_id`, `lecturer_id`, `topic_name`, `topic_description`) VALUES
(14, 47, 101, 'Fundementals of C', 'The basic concepts of C are taught here. Students need to learn and practice the concepts which are not covered here.'),
(15, 47, 101, 'Data types', 'Data types constitute the semantics and characteristics of storage of data elements.'),
(16, 47, 101, 'Arrays', 'A data structure consisting of a collection of elements (values or variables), each identified by at least one array index or key.'),
(17, 47, 101, 'Declarations', 'A C language construct that introduces one or more identifiers into the program and specifies their meaning and properties.'),
(18, 47, 101, 'Expressions and statements.', ''),
(19, 63, 101, 'Project Proposal', ''),
(20, 63, 101, 'Proposal Presentations', 'There are no specific guidelines for the structure of the presentation. The requirement is that you have to justify your project in different aspects such as feasibility, workload distribution and fun'),
(21, 63, 101, 'SRS Submission', 'Students are required to submit a report that describes their system\'s overview, requirements and design in a standard manner.');

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
(32, 'SCS 2210 - Discrete Mathematics II', NULL, 76);

-- --------------------------------------------------------

--
-- Table structure for table `forum_reply`
--

CREATE TABLE `forum_reply` (
  `topic_id` int(11) NOT NULL,
  `reply_id` int(11) NOT NULL,
  `reply` varchar(1200) NOT NULL,
  `post_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum_reply`
--

INSERT INTO `forum_reply` (`topic_id`, `reply_id`, `reply`, `post_time`, `user_id`) VALUES
(19, 18, 'Well as I know FDM and TDM are two different techniques. FDM deals with modularizing the analogue signals and TDM deals with digital signals. Each has different bandwidth allocations techniques. FDM I\'m not quite familiar but somehow it allocate the bandwidth for each channel using a constant frequency and TDM its bit length. As I know packets comes under digital signal since because of we quantizing the analog to digital. (I think FDM doesn\'t have such packets but I\'m not quite sure).\r\n\r\nSo again if we consider the traffic of the channels then we introduce STDM for store-and-forward instead of TDM since in such case channels are not produce data to transfer in continuous manner. So we follow some statistical method. That is the place where we have packet switching. In TDM packets are gurranted hence its not necessary to do packet switching I guess. (All we have to do follow some round robin pattern).\r\n\r\nAnd when it comes to efficiencies it depends on the strength of the traffic. We have Aloha, and CSMA variations under STDM. (both deals with store-and-forward traffic). We have equation given that so the efficiency depends on the # of attempts(k) and # of channels(G) for store-and-', '2021-10-20 13:21:32', 113);

-- --------------------------------------------------------

--
-- Table structure for table `forum_reply_points`
--

CREATE TABLE `forum_reply_points` (
  `lecturer_id` int(11) NOT NULL,
  `reply_id` int(11) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic`
--

CREATE TABLE `forum_topic` (
  `topic_id` int(11) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `question` varchar(1200) NOT NULL,
  `post_time` datetime NOT NULL,
  `forum_Id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_reply_id` int(11) DEFAULT NULL COMMENT 'Store latest reply_i',
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum_topic`
--

INSERT INTO `forum_topic` (`topic_id`, `subject`, `question`, `post_time`, `forum_Id`, `user_id`, `last_reply_id`, `updated_time`) VALUES
(19, 'If we use TDM for store-and-forward traffic, would the overall trunk utilization efficiency fall?', 'This is regarding the question in the exercises given in Dr.Nalin Ranasinghe\'s slides.\r\n\r\nTo my understanding, in TDM we use packet switching. Hence this reduces the delay between the sender and the receiver since the first packet from a long message can be forwarded before the second one has fully arrived. \r\n\r\nIf we use FDM, then according to store-and-forward transmission, the long message should arrive fully before sending it to the receiver\'s end. Forwarding a packet such as in the first case is not possible here. \r\n\r\nThe reference material (Computer Networks by Andrew S. Tanenbaum and David J. Wetherall - Page 161-164) compares circuit switching and packet switching. As I have understood, packet switching uses TDM and circuit switching which divides the whole bandwidth into trunks, uses FDM. It describes what happens in the event that both switching methods uses store-and-forward transmission. \r\n\r\nHence I thought that comparison would be applicable here.\r\n\r\nSo, overall, using TDM is more efficient for store-and-forward traffic. \r\n\r\nAnyone has any different ideas?', '2021-10-20 13:21:03', 19, 101, 18, '2021-10-20 13:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic_points`
--

CREATE TABLE `forum_topic_points` (
  `lecturer_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(103, 17973216),
(101, 19000000),
(26, 19001411),
(110, 19285773),
(108, 19471706),
(106, 23332676),
(111, 24814272),
(114, 29163395),
(120, 31514749),
(115, 35278689),
(122, 43543232),
(109, 43592383),
(119, 49926730),
(117, 53368214),
(118, 60162983),
(105, 64057903),
(112, 72338445),
(113, 76908826),
(116, 76986004),
(104, 82154888),
(107, 85463448),
(102, 94310576),
(121, 97927658);

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
(124, 77, 80, 'Windows', 0),
(125, 77, 80, 'Linux', 0),
(126, 77, 80, 'Oracle', 100),
(127, 77, 80, 'DOS', 0),
(128, 77, 80, 'MAC', 0),
(129, 78, 81, 'File allocation table.', 100),
(130, 79, 81, 'File attribute table', 0),
(131, 79, 81, 'File allocation table', 100),
(132, 79, 81, 'Font attribute table', 0),
(133, 79, 81, 'Format allocation table', 0),
(134, 80, 82, '8', 100),
(135, 81, 82, 'To prevent deadlock', 0),
(136, 81, 82, 'To deadlock recovery', 100),
(137, 81, 82, 'To solve the deadlock', 0),
(138, 81, 82, 'None of these', 0);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL COMMENT 'true if published',
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
(80, 'Operating System MCQ', 'false', '2021-10-19 16:32:43', NULL, NULL, '00:10:00', 101, 19),
(81, 'Operating System MCQ Part 2', 'publish', '2021-10-19 23:07:31', '2021-10-19 14:21:00', '2021-10-19 15:21:00', '00:10:00', 101, 19),
(82, 'OS Quiz 4', 'false', '2021-10-20 01:14:26', NULL, NULL, '00:09:00', 101, 19);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_attempt`
--

CREATE TABLE `quiz_attempt` (
  `student_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(77, 80, 'Which of the following is not an operating system?', 'mcq-s', 0),
(78, 81, 'What is the full name of FAT?', 'mcq-s', 0),
(79, 81, 'What is the full name of FAT?', 'mcq-s', 0),
(80, 82, 'What is the maximum length of the filename in DOS?', 'short ans', 0),
(81, 82, 'Banker\'s algorithm is used?', 'mcq-s', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `user_id` int(11) NOT NULL,
  `index_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`user_id`, `index_no`) VALUES
(123, 19000000),
(12, 19000111),
(92, 19000251),
(21, 19000472),
(78, 19001428),
(94, 19001614),
(14, 19001843),
(16, 19001847),
(93, 19001894);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `tele`, `pass`, `user_type`, `img`) VALUES
(8, 'admin', 'alec', 'admin@gmail.com', '0112691411', '$2y$10$rEc8oEWtCCp0xTq8J7A/Au8v3RgvubuZHrTGBw2/1VgDxFoX01pEu', 'admin', NULL),
(12, 'Charith', 'Anjana', 'ch@gmail.com', '0766455833', '$2y$10$w6UXM9qmb6WHOh9MpSxLGOSn6NOzDCf5/6Ruy8RKcFI7s/knXk.rW', 'stu', NULL),
(14, 'Sumudu', 'Wathsala', 'wathsala@gmail.com', '0703357144', '$2y$10$d68tx8w87Zcw8dgmbh.KLO1gF/glbrvCU998O3XsgCyfPizTm4aza', 'stu', NULL),
(16, 'Maneth', 'Wijetunga', 'maneth@gmail.com', '0765282976', '$2y$10$nbOjSMAWBwXsfgT/KnV4z.xA3jriygc3faw0QbQLAdPX7NWFqhB7C', 'stu', NULL),
(21, 'Pansilu', 'Gunaratna', 'pansilugunaratne8@gmail.com', NULL, '$2y$10$xIOh6tYWhAL1fhWrKSKs8u.lG82Ujy1buIG0OKYW4PZDEoUf1SFAS', 'stu', NULL),
(26, 'Dulitha', 'Ratnayake', 'janithadevinratnayake@gmail.com', NULL, '$2y$10$/hnHE3xlCZlB47khsAArpe2dvvPKya9TpZ80WJPIkqQnArw1w56BC', 'stu', NULL),
(78, 'Janitha', 'Ratnayake', 'janithadevin@gmail.com', NULL, '$2y$10$YUF0B0cNf21gXpZOJklyS.riZylLhDh2MxqPOh2L.R6x6xDsELbke', 'stu', NULL),
(92, 'Suwasana', 'Dammithu', 'suwasana@gmail.com', NULL, '$2y$10$w1cLuJqpe572kNf7ug.b1.NfOi/WiVeYZzp/uOCb3w6Tf49suZXEK', 'stu', NULL),
(93, 'Kasunika', 'Wickreamarachchi', 'kasunika@gmail.com', NULL, '$2y$10$3RD57d1oG6REbch4kUT4WOoB/ffuASBytzYIXoxJeO..46.vHJSmq', 'stu', NULL),
(94, 'Roshan', 'Senavirathne', 'roshan@gmail.com', NULL, '$2y$10$TfWHGrNoRdHnnVgRM4XC8O6yCdMYSuTeK1wJISQrIc4nOsMCVzLn6', 'stu', NULL),
(101, 'Lec', 'Alec', 'lec@gmail.com', '', '$2y$10$2mnLM.QR1rrfxvV6AVcVvup6n9baTHEDWWbPwsp/Ft7WM1Rc2qDm2', 'lec', '101.jpeg'),
(102, 'Jean', 'Edgil', 'atomichamsterscalliopes@cantaloupefledglings.edu', NULL, '$2y$10$entSG6KeXBSbfuYYcKoat.hO7dIRDSYbuNOiEVwjhxZhbLeqzgj1i', 'lec', NULL),
(103, 'Cristobal', 'Ferrante', 'loxnightienumerically@backslashtheftslawless.org', NULL, '$2y$10$cYoMxy0q5ek6JSUV/RTT/.lik/p87XdH3mTD2BIY73yL8mcGcI3le', 'lec', NULL),
(104, 'Val', 'Urling', 'navalstakeValentins@canteensexperiences.org', NULL, '$2y$10$JTlbhmnEemItG33jz4JbTOQAjnSRTjiEJHEF7Y.dwtQ/7yx9.80Pu', 'lec', NULL),
(105, 'Darryl', 'Kreski', 'fiendsBramptondisarmaments@iconoclastsshabbinesss.me', NULL, '$2y$10$gWyEbEb3gKuxTsKGy.eX8.kIficT/Fm6crG7rEFV0aWEFz.gDHel6', 'lec', NULL),
(106, 'Robin', 'Mccammant', 'Baptistsderived@poshAtheniansembryologist.edu', NULL, '$2y$10$wRA6qBUtOyQnyM04UeFhdeOh5NY/E9e1bpaEJVHrMYZhVvKlkDJZG', 'lec', NULL),
(107, 'Walter', 'Tavelli', 'Chancellorsvilles@earthwormassembler.edu', NULL, '$2y$10$mO/E1F/L4byV7Szwq0bN1uAZKJ7xOaVQ0S4dPT.1jdXjYGGQoK2ii', 'lec', NULL),
(108, 'Coleman', 'Allison', 'Kennysmoodsbud@HuertaFrybronchial.me', NULL, '$2y$10$3JOhdE5wrzeUBIoLL43C8OCiLP7g2TRLo5fCmShZpQ0pf2bZm8Oqa', 'lec', NULL),
(109, 'Leonard', 'Casavan', 'lassoingaquaequintuplets@Wyothoughts.org', NULL, '$2y$10$nxwAHHqwxZHHz9sMNBlJ.uOLijrWKFVJqDB1VqALcmCyXEQRi0Gam', 'lec', NULL),
(110, 'Milford', 'Jukich', 'Ugandarestorations@Anchorageanonymously.gov', NULL, '$2y$10$3kWYZyqhmPgDu7yMrL2EneP7zUVLYYxOOt.eC1EBVDys3VWkO5xbi', 'lec', NULL),
(111, 'Buster', 'Gallus', 'fearfullestinfected@greetingsbrowbeaten.org', NULL, '$2y$10$TE/yS4yB5PTggTfGj5dspeECU3nTcOoSbJofSHJVOfgREET7d8XJ2', 'lec', NULL),
(112, 'Vernon', 'Mccole', 'disclaiming@Shaulashowersswaggerer.com', NULL, '$2y$10$TT.z4ifuYZA99IXlRDswmucDlc3HV5gpBKQwuMCdN/D2rxxp4VT86', 'lec', NULL),
(113, 'Denver', 'Lantier', 'landwardpumicesobtain@hartsvictims.gov', NULL, '$2y$10$3OZvwPFQSH2Cied4HgZRVur1oXVZnfmFcMd.utlbXrvsZznO3TvQi', 'lec', NULL),
(114, 'Stanton', 'Zaloom', 'defectorsKazanshandfuls@canopysinitiators.gov', NULL, '$2y$10$Dj3O0ZatsoHqWqPvGJV5zeWPPF2pm6CGnTRikYdoNvIEjWFzLckiu', 'lec', NULL),
(115, 'Edwin', 'Parikh', 'Sabrinasludgedhopscotched@noelaniondisuniting.gov', NULL, '$2y$10$C7qWCSarpW8jD441wy6o1.9GKam2TsLL5EodXHNNcwQKZ3GesHMWu', 'lec', NULL),
(116, 'Santiago', 'Baggio', 'squadronhennasGeorges@Hatterascrotches.edu', NULL, '$2y$10$JjNi8J2RR4crv.6IXpKMfOFrNpwWyFHcUR7Iv84iEMp2kdRU7XPju', 'lec', NULL),
(117, 'Hans', 'Byndom', 'insolventKhwarizmiproducer@cooliescircumcision.info', NULL, '$2y$10$Pa7EcqbxdFs1MICm8RVbU.//mHctAHDU70wfLgY8Mn5gbLCdJmb4O', 'lec', NULL),
(118, 'Emery', 'Litecky', 'AdanaidealizeAlhambras@oneselfslavedpikeShea.com', NULL, '$2y$10$X7xqoAnpf2eTZXoFDJqk..Y7caVH0DUu1du.tGs4WARvknvixh4.K', 'lec', NULL),
(119, 'Reginald', 'Bleam', 'confusionsstaving@protgs.gov', NULL, '$2y$10$BoxC4OEVam3AAvQaLAGht.KxaLER3WVaQRTxwNFwSV34uR69OHvvi', 'lec', NULL),
(120, 'Lavern', 'Cripe', 'convulsions@degeneratealtruistically.org', NULL, '$2y$10$xPZJGhO5xz/.qbLYJ.SqPeNSlXAICE/9ab5ZF42oLVnMp2VplhWyK', 'lec', NULL),
(121, 'Reuben', 'Shalla', 'trustfuletas@malingers.gov', NULL, '$2y$10$lwiz9s.pktFs2z3Xbppqc..sEPbcyvl5kWB5nVay3Nj/kEk1oYBqi', 'lec', NULL),
(122, 'Jerold', 'Cravalho', 'greeteddiabetic@insulin.edu', NULL, '$2y$10$GHZHkS87dAHg0UF5q1zFMuO9MFM0t1XjuXi8Qj.ayVisscyyaZM5O', 'lec', NULL),
(123, 'stu', 'alec', 'stu@gmail.com', NULL, '$2y$10$UER4ZyhG0GUsMmicAkjIKeS4iQom3OR50Z.ttH3VQJ.wHsZCLH8nm', 'stu', NULL);

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
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `index_no` (`index_no`);

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
  MODIFY `badge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `course_topic`
--
ALTER TABLE `course_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `forum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `forum_reply`
--
ALTER TABLE `forum_reply`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `forum_topic`
--
ALTER TABLE `forum_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `question_choice`
--
ALTER TABLE `question_choice`
  MODIFY `choice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `question_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

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
  ADD CONSTRAINT `forum_reply_points_ibfk_1` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturer` (`user_id`),
  ADD CONSTRAINT `forum_reply_points_ibfk_2` FOREIGN KEY (`reply_id`) REFERENCES `forum_reply` (`reply_id`);

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
  ADD CONSTRAINT `forum_topic_points_ibfk_1` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturer` (`user_id`),
  ADD CONSTRAINT `forum_topic_points_ibfk_2` FOREIGN KEY (`topic_id`) REFERENCES `forum_topic` (`topic_id`);

--
-- Constraints for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD CONSTRAINT `lecturer_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
