-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 17, 2021 at 03:23 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

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

DROP TABLE IF EXISTS `badge`;
CREATE TABLE IF NOT EXISTS `badge` (
  `badge_id` int NOT NULL AUTO_INCREMENT,
  `badge_name` varchar(30) NOT NULL,
  `badge_description` varchar(100) DEFAULT NULL,
  `points` int DEFAULT NULL,
  `course_id` int NOT NULL,
  `badge_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`badge_id`),
  KEY `course_id` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `badge`
--

INSERT INTO `badge` (`badge_id`, `badge_name`, `badge_description`, `points`, `course_id`, `badge_image`) VALUES
(1, 'Best performer', 'This badge should be given only if the students performs well in the class as well as in the forum', 10, 1, NULL),
(4, 'Best questionner', 'This badge should be given only if the student asks good questions in the forum frequently', 10, 1, NULL),
(5, 'Best replier', 'This badge should be given only if the student replies well in the forum', 10, 1, NULL),
(6, 'Best performer', 'This badge should be given only if the students performs well in the class as well as in the forum', 10, 2, NULL),
(7, 'Best questioner', 'This badge should be given only if the student asks good questions in the forum frequently', 10, 2, NULL),
(8, 'Best repier', 'This badge should be given only if the student replies well in the forum', 10, 2, NULL),
(9, 'Best performer', 'This badge should be given only if the students performs well in the class as well as in the forum', 10, 3, NULL),
(10, 'Best questioner', 'This badge should be given only if the student asks good questions in the forum frequently', 10, 3, NULL),
(11, 'Best repier', 'This badge should be given only if the student replies well in the forum', 10, 3, NULL),
(12, 'Best performer', 'This badge should be given only if the students performs well in the class as well as in the forum', 10, 4, NULL),
(13, 'Best questioner', 'This badge should be given only if the student asks good questions in the forum frequently', 10, 4, NULL),
(14, 'Best repier', 'This badge should be given only if the student replies well in the forum', 10, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `badge_assign`
--

DROP TABLE IF EXISTS `badge_assign`;
CREATE TABLE IF NOT EXISTS `badge_assign` (
  `student_id` int NOT NULL,
  `badge_id` int NOT NULL,
  `lecturer_id` int NOT NULL,
  PRIMARY KEY (`student_id`,`badge_id`),
  KEY `badge_id` (`badge_id`),
  KEY `lecturer_id` (`lecturer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `badge_assign`
--

INSERT INTO `badge_assign` (`student_id`, `badge_id`, `lecturer_id`) VALUES
(11, 8, 9),
(16, 1, 13),
(16, 4, 13),
(11, 4, 15);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(50) NOT NULL,
  `course_description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_description`) VALUES
(1, 'SCS 1201 - Data Structures and Algorithms - I', 'Introduces different data structures used in programming such as lists, stacks, \r\nand queues, trees, several types of linked lists and their applications and \r\nimplementation. (Identify important prop'),
(2, 'SCS 1202 - Programming Using C', 'The following objectives are covered in this course. Analyze and explain \r\nthe behavior of simple programs involving the fundamental programming \r\nconstructs using a functional paradigm such as Scheme'),
(3, 'SCS 1203 - Database I', 'Database I, introduces the components of a database system and major \r\nDBMS functions. Data modelling, Relational database design, Structured \r\nQuery Languages (SQL) are covered in the course module.'),
(4, 'SCS 1204 - Discrete Mathematics I', 'This course module includes sets, relations and functions such as Union and \r\nIntersection. Also basic logic is introduced here with truth tables, predicate logic \r\nand propositional logic. It also di'),
(5, 'SCS 1205 - Computer Systems', 'Computer Systems introduces the history of the computer systems, along \r\nwith the knowledge of how the computer works starting from the data \r\nrepresentation, basic logic circuit design to the CPU cyc'),
(6, 'SCS 1206 - Laboratory I', 'Laboratory I gives the laboratory exposure to use an operating system (Ubuntu \r\nLinux). The student will gain practical experience in handling the operating \r\nsystem through the graphical user interfa'),
(7, 'SCS 1207 - Software Engineering I', 'Software Engineering I is the introductory course of Software Engineering. \r\nAlong with the definitions and the need for Software engineering, the \r\nprocess will be explained in stages: Requirements e'),
(8, 'ENH 1201 - Enhancement I', 'The aim of this course module is to enhance the student’s communication \r\nskills in general. An attention will be given to accurate the pronunciation, \r\nactive listening and responding. The correct us'),
(9, 'SCS 1208 - Data Structures & Algorithms II', 'Data Structures and Algorithms II will be built upon the first part of the \r\nmodule, discussing variants of the Tree data structure such as General Trees, \r\nBinary Trees, Binary search trees, AVL tree'),
(10, 'SCS 1209 - Object Oriented Programming', 'This course introduces the concepts of programming, coding algorithms \r\nin C language and the use of data structures in a C program. In addition \r\nwe will look at some other concepts which were not in'),
(11, 'SCS 1210 - Software Engineering II', 'This is an advanced course in Software Engineering which is based on Software \r\nEngineering I module and provides an understanding of Object Oriented \r\nAnalysis and Design (OOAD) concepts. After compl'),
(12, 'SCS 1211 - Mathematical Methods I', 'Mathematical Methods I is the introduction to the concepts of calculus including \r\ndifferential equations. Real numbers, real functions, algebra of limits and \r\nalgebra of derivatives, Mean value theo'),
(13, 'SCS 1212 - Foundation of Computer Science', 'This course module introduces the historic origins of computational models, \r\nmathematical theory that has led the establishment of computer science. It will \r\ndiscuss the theory on algorithmic proble'),
(14, 'SCS 1213 - Probability and Statistics', 'This course offers the theory and background on random variables, probability, \r\nseveral discrete and continuous distributions and to apply the knowledge of \r\nthe distributions and the tools of probab'),
(15, 'SCS 1214 - Operating Systems I', 'This course provides an understanding of entire process within Operating \r\nSystems. It covers overview of Operating Systems, Operating System principles, \r\nconcurrency, scheduling and dispatch, memory'),
(16, 'ENH 1202 - Enhancement II', 'Humanities is offered as a student enhancement course module, focusing \r\non the non-technical and aesthetic subjects such as performing arts, Music, \r\nPainting, Philosophy, Literature, History etc. It'),
(17, 'SCS 2201 - Data Structures and Algorithms III ', 'This is an advanced course in data structures and algorithms which is built on \r\nthe fundamentals introduced in SCS 1201 and SCS 1208 to provide profound \r\nknowledge to design, use, analyze and to pro'),
(18, 'SCS 2202 - Group Project I', 'This course is designed to enable students to apply the knowledge acquired \r\nthrough system analysis, design, development, verification and validation, \r\nmaintenance and project management while worki'),
(19, 'SCS 2203 - Software Engineering III', 'This course complements the material already covered in Software Engineering \r\nI and II courses and discusses Object-Oriented Modelling and Unified Process \r\nModels in more detail. The course also int'),
(20, 'SCS 2204 - Functional Programming', 'Functional programming is becoming increasingly widespread in industry. This \r\ntrend is driven by the adoption of Scala as the main programming language \r\nfor many applications. In this course student'),
(21, 'SCS 2205 - Computer Networks I', 'This course is designed to provide knowledge in conceptual and technological \r\naspects behind computer networking. The major areas include data \r\ncommunication, computer networks, LAN architectures, s'),
(22, 'SCS 2206 - Mathematical Methods II', 'Mathematical Methods II introduces topics such as vectors, matrices, matrix \r\nalgebra, determinants, Eigenvalues and Eigenvectors and Euclidean spaces \r\netc.'),
(23, 'SCS 2207 - Programming Language Concepts', 'This course provides the key features of a programming languages. It \r\ncovers the areas such as programming domains, language evaluation \r\ncriteria, influences on language design, implementation metho'),
(24, 'SCS 2208 - Rapid Application Development', 'This course is designed to ensure the fact that the students have been provided \r\na suitable knowledge of the core concepts of Agile practices, the Agile values \r\nand the principles, across a breadth '),
(25, 'SCS 2209 - Database II', 'This course aims to provide introductory knowledge in advanced database \r\nconcepts such as access control for secure databases, transaction management \r\nand serializability, indexing methods, writing '),
(26, 'SCS 2210 - Discrete Mathematics II', 'This course is to acquaint students with basic number theory and basic \r\ncombinatorial methods that provide a foundation for further studies in the field \r\nas well as for applications in related areas'),
(27, 'SCS 2211 - Laboratory II', 'This course is designed to provide an understanding of how to explore and \r\ndescribe various real-life data sets, using R. After the completion of this course \r\nthe student will be able to understand '),
(28, 'SCS 2212 - Automata Theory', 'This course mainly focus on determining a language’s place in the Chomsky \r\nhierarchy and to convert among equivalently powerful notations for a \r\nlanguage. The areas covered are Chomsky hierarchy, se'),
(29, 'SCS 2213 - Electronics and Physical Computing', 'This course is organized around a series of practical hands-on exercises \r\nwhich introduce the fundamentals of circuits, embedded programming, signal \r\nprocessing, simple mechanisms, actuation, and ti'),
(30, 'SCS 2214 - Information System Security', 'This course provides students an understanding of the fundamentals of \r\ninformation security in both information storage and information traveling \r\nin computer networks. This course also focuses on m'),
(31, 'ENH 2201 - Enhancement III ', 'The course is taught through a real-life customer development context where \r\nstudents acquire the skills and know-how to develop their business idea all the \r\nway from the conceptual stage to the mar'),
(32, 'SCS 2210 - Discrete Mathematics II', 'This course is to acquaint students with basic number theory and basic \r\ncombinatorial methods that provide a foundation for further studies in the field \r\nas well as for applications in related areas'),
(33, 'SCS 2211 - Laboratory II', 'This course is designed to provide an understanding of how to explore and \r\ndescribe various real-life data sets, using R. After the completion of this course \r\nthe student will be able to understand '),
(34, 'SCS 2212 - Automata Theory ', 'This course mainly focus on determining a language’s place in the Chomsky \r\nhierarchy and to convert among equivalently powerful notations for a \r\nlanguage. The areas covered are Chomsky hierarchy, se'),
(35, 'SCS 2213 - Electronics and Physical Computing', 'This course is organized around a series of practical hands-on exercises \r\nwhich introduce the fundamentals of circuits, embedded programming, signal \r\nprocessing, simple mechanisms, actuation, and ti'),
(36, 'SCS 2214 - Information System Security', 'This course provides students an understanding of the fundamentals of \r\ninformation security in both information storage and information traveling \r\nin computer networks. This course also focuses on m'),
(37, 'ENH 2201 - Enhancement III ', 'The course is taught through a real-life customer development context where \r\nstudents acquire the skills and know-how to develop their business idea all the \r\nway from the conceptual stage to the mar');

-- --------------------------------------------------------

--
-- Table structure for table `course_registration_lec`
--

DROP TABLE IF EXISTS `course_registration_lec`;
CREATE TABLE IF NOT EXISTS `course_registration_lec` (
  `course_id` int NOT NULL,
  `lecturer_id` int NOT NULL,
  PRIMARY KEY (`course_id`,`lecturer_id`),
  KEY `course_registration_lec_ibfk_1` (`lecturer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_registration_lec`
--

INSERT INTO `course_registration_lec` (`course_id`, `lecturer_id`) VALUES
(5, 9),
(15, 9),
(7, 10),
(7, 13),
(11, 13),
(18, 13),
(19, 13);

-- --------------------------------------------------------

--
-- Table structure for table `course_registration_stu`
--

DROP TABLE IF EXISTS `course_registration_stu`;
CREATE TABLE IF NOT EXISTS `course_registration_stu` (
  `course_id` int NOT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`course_id`,`student_id`),
  KEY `course_registration_stu_ibfk_2` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_registration_stu`
--

INSERT INTO `course_registration_stu` (`course_id`, `student_id`) VALUES
(3, 11),
(8, 11),
(14, 11),
(15, 11),
(17, 11),
(18, 11),
(19, 11),
(20, 11),
(22, 11),
(23, 11),
(24, 11),
(17, 12),
(18, 12),
(19, 12),
(20, 12),
(22, 12),
(23, 12),
(24, 12),
(1, 14),
(2, 14),
(8, 14),
(10, 14),
(17, 14),
(18, 14),
(19, 14),
(20, 14),
(22, 14),
(23, 14),
(24, 14),
(17, 16),
(18, 16),
(19, 16),
(20, 16),
(22, 16),
(23, 16),
(24, 16);

-- --------------------------------------------------------

--
-- Table structure for table `course_topic`
--

DROP TABLE IF EXISTS `course_topic`;
CREATE TABLE IF NOT EXISTS `course_topic` (
  `topic_id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `lecturer_id` int NOT NULL,
  `topic_name` varchar(30) NOT NULL,
  `topic_description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`topic_id`),
  KEY `course_topic_ibfk_1` (`course_id`),
  KEY `course_topic_ibfk_2` (`lecturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_topic`
--

INSERT INTO `course_topic` (`topic_id`, `course_id`, `lecturer_id`, `topic_name`, `topic_description`) VALUES
(1, 7, 13, 'Introduction', ''),
(2, 7, 13, 'Software Processes', ''),
(3, 7, 13, 'Requirements Engineering', ''),
(4, 7, 13, 'Introduction-2', ''),
(5, 22, 15, 'Assignment', NULL),
(6, 17, 18, 'String Matching', NULL),
(7, 17, 18, 'Solving Recurrences', NULL),
(8, 24, 10, 'Design Patterns', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(150) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_lecture`
--

DROP TABLE IF EXISTS `feedback_lecture`;
CREATE TABLE IF NOT EXISTS `feedback_lecture` (
  `student_id` int NOT NULL,
  `topic_id` int NOT NULL,
  `feedback_id` int NOT NULL,
  `points` int NOT NULL,
  PRIMARY KEY (`student_id`,`topic_id`,`feedback_id`),
  KEY `feedback_id` (`feedback_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_quiz`
--

DROP TABLE IF EXISTS `feedback_quiz`;
CREATE TABLE IF NOT EXISTS `feedback_quiz` (
  `student_id` int NOT NULL,
  `quiz_id` int NOT NULL,
  `feedback_id` int NOT NULL,
  `points` int NOT NULL,
  PRIMARY KEY (`student_id`,`quiz_id`),
  KEY `feedback_id` (`feedback_id`),
  KEY `quiz_id` (`quiz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `forum_id` int NOT NULL AUTO_INCREMENT,
  `forum_name` varchar(50) NOT NULL,
  `forum_description` varchar(200) DEFAULT NULL,
  `course_Id` int NOT NULL,
  PRIMARY KEY (`forum_id`),
  KEY `forum_ibfk_1` (`course_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum_reply`
--

DROP TABLE IF EXISTS `forum_reply`;
CREATE TABLE IF NOT EXISTS `forum_reply` (
  `reply_id` int NOT NULL AUTO_INCREMENT,
  `reply` varchar(500) NOT NULL,
  `post_time` datetime NOT NULL,
  PRIMARY KEY (`reply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum_reply_lec`
--

DROP TABLE IF EXISTS `forum_reply_lec`;
CREATE TABLE IF NOT EXISTS `forum_reply_lec` (
  `reply_id` int NOT NULL,
  `topic_id` int NOT NULL,
  `lecturer_id` int NOT NULL,
  PRIMARY KEY (`reply_id`),
  KEY `topic_id` (`topic_id`),
  KEY `lecturer_id` (`lecturer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum_reply_points`
--

DROP TABLE IF EXISTS `forum_reply_points`;
CREATE TABLE IF NOT EXISTS `forum_reply_points` (
  `lecturer_id` int NOT NULL,
  `reply_id` int NOT NULL,
  `points` int NOT NULL,
  PRIMARY KEY (`lecturer_id`,`reply_id`),
  KEY `reply_id` (`reply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum_reply_stu`
--

DROP TABLE IF EXISTS `forum_reply_stu`;
CREATE TABLE IF NOT EXISTS `forum_reply_stu` (
  `reply_id` int NOT NULL,
  `topic_id` int NOT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`reply_id`),
  KEY `student_id` (`student_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic`
--

DROP TABLE IF EXISTS `forum_topic`;
CREATE TABLE IF NOT EXISTS `forum_topic` (
  `topic_id` int NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(200) NOT NULL,
  `post_time` datetime NOT NULL,
  `forum_Id` int NOT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`topic_id`),
  KEY `forum_topic_ibfk_1` (`student_id`),
  KEY `forum_topic_ibfk_2` (`forum_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic_points`
--

DROP TABLE IF EXISTS `forum_topic_points`;
CREATE TABLE IF NOT EXISTS `forum_topic_points` (
  `lecturer_id` int NOT NULL,
  `topic_id` int NOT NULL,
  `points` int NOT NULL,
  PRIMARY KEY (`lecturer_id`,`topic_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

DROP TABLE IF EXISTS `lecturer`;
CREATE TABLE IF NOT EXISTS `lecturer` (
  `user_id` int NOT NULL,
  `lecturer_no` int NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `lecturer_no` (`lecturer_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`user_id`, `lecturer_no`) VALUES
(13, 11000112),
(9, 11000472),
(18, 11000474),
(15, 11001425),
(10, 11001843);

-- --------------------------------------------------------

--
-- Table structure for table `question_choice`
--

DROP TABLE IF EXISTS `question_choice`;
CREATE TABLE IF NOT EXISTS `question_choice` (
  `choice_id` int NOT NULL,
  `question_no` int NOT NULL,
  `quiz_id` int NOT NULL,
  `choice_name` varchar(100) NOT NULL,
  `points` int NOT NULL,
  PRIMARY KEY (`choice_id`,`question_no`,`quiz_id`),
  KEY `question_no` (`question_no`),
  KEY `quiz_id` (`quiz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_choice`
--

INSERT INTO `question_choice` (`choice_id`, `question_no`, `quiz_id`, `choice_name`, `points`) VALUES
(1, 1, 1, 'TRAN', 0),
(1, 1, 2, '2', 100),
(1, 1, 3, 'Openness', 25),
(1, 1, 4, 'Solving recurrences', 25),
(1, 2, 3, '31', 25),
(1, 2, 4, 'O(n2logn)', 25),
(1, 3, 3, 'Team Capabilities', 0),
(1, 3, 4, '0/1 knapsack problem', 0),
(1, 4, 4, 'greedy', 25),
(1, 5, 4, 'N-queen problem', 0),
(2, 1, 1, 'EXTRAD', 0),
(2, 1, 3, 'Consistency', 0),
(2, 1, 4, 'Solving iterative relations', 0),
(2, 3, 3, 'Product Backlog', 0),
(2, 3, 4, 'Continuous knapsack problem', 25),
(2, 5, 4, 'Subset sum problem', 0),
(3, 1, 1, 'RIDICULOUS', 100),
(3, 1, 3, 'Dedication', 0),
(3, 1, 4, 'Analysing loops', 0),
(3, 3, 3, 'Sprint Backlog', 25),
(3, 3, 4, 'Divisible knapsack problem', 0),
(3, 5, 4, 'Hamiltonian circuit problem', 0),
(4, 1, 1, 'EXD', 0),
(4, 1, 3, 'Loyalty', 0),
(4, 1, 4, 'Calculating the time complexity of any code ', 0),
(4, 3, 3, 'Initial Sprint Goal', 0),
(4, 3, 4, 'Non continuous knapsack problem\r\n', 0),
(4, 5, 4, 'Travelling salesman problem', 25),
(5, 1, 1, 'RADE', 0);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `quiz_id` int NOT NULL AUTO_INCREMENT,
  `quiz_name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL COMMENT 'true if published',
  `create_date` datetime NOT NULL,
  `published_date` datetime DEFAULT NULL,
  `close_date` datetime NOT NULL,
  `duration` time NOT NULL,
  PRIMARY KEY (`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_name`, `status`, `create_date`, `published_date`, `close_date`, `duration`) VALUES
(1, 'String Matching', 'true', '2021-09-01 15:45:48', '2021-09-04 15:45:48', '2021-09-04 15:45:48', '00:05:00'),
(2, 'Assignment 02', 'true', '2021-09-08 15:48:10', '2021-09-10 15:48:10', '2021-09-10 15:48:10', '00:05:00'),
(3, 'Design Patterns', 'false', '2021-09-18 15:48:10', NULL, '2021-09-30 15:48:10', '00:30:00'),
(4, 'Solving Recurrences', 'false', '2021-09-14 15:48:10', NULL, '2021-09-14 15:48:10', '00:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_attempt`
--

DROP TABLE IF EXISTS `quiz_attempt`;
CREATE TABLE IF NOT EXISTS `quiz_attempt` (
  `student_id` int NOT NULL,
  `quiz_id` int NOT NULL,
  `marks` int NOT NULL,
  PRIMARY KEY (`student_id`,`quiz_id`),
  KEY `quiz_id` (`quiz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_creation`
--

DROP TABLE IF EXISTS `quiz_creation`;
CREATE TABLE IF NOT EXISTS `quiz_creation` (
  `quiz_id` int NOT NULL,
  `lecturer_id` int NOT NULL,
  `topic_id` int NOT NULL,
  PRIMARY KEY (`quiz_id`),
  KEY `topic_id` (`topic_id`),
  KEY `quiz_creation_ibfk_3` (`lecturer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_creation`
--

INSERT INTO `quiz_creation` (`quiz_id`, `lecturer_id`, `topic_id`) VALUES
(1, 18, 1),
(2, 15, 5),
(3, 10, 8),
(4, 18, 7);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

DROP TABLE IF EXISTS `quiz_question`;
CREATE TABLE IF NOT EXISTS `quiz_question` (
  `question_no` int NOT NULL,
  `quiz_id` int NOT NULL,
  `question` varchar(200) NOT NULL,
  `question_type` varchar(10) NOT NULL,
  `success_rate` int NOT NULL,
  PRIMARY KEY (`question_no`,`quiz_id`),
  KEY `quiz_id` (`quiz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`question_no`, `quiz_id`, `question`, `question_type`, `success_rate`) VALUES
(1, 1, 'Which of the following is a substring of \"EXTRARIDICULOUSLY\"?', 'mcq', 0),
(1, 2, 'Euler\'s modified method is a Runge-Kutta method of order', 'short ans', 0),
(1, 3, 'Which of the following is a value SCRUM framework based on', 'mcq', 0),
(1, 4, 'Master Theorem is used for,', 'mcq', 0),
(2, 3, 'Maximum duration of a SCRUM sprint is ____ days.', 'short ans', 0),
(2, 4, 'Solution for the following recurrence using Master’s theorem is ______.\r\nT(n) = 4T (n/2) + n2', 'short ans', 0),
(3, 3, 'Which of the following is/are not an input for the sprint planning?', 'mcq', 0),
(3, 4, 'Fractional knapsack problem is also known as __________', 'mcq', 0),
(4, 4, '____________ algorithms is the best approach for solving Huffman codes.', 'short ans', 0),
(5, 4, 'Which of the problems cannot be solved by backtracking method?', 'mcq', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `user_id` int NOT NULL,
  `index_no` int NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `index_no` (`index_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`user_id`, `index_no`) VALUES
(12, 19000111),
(17, 19000472),
(11, 19001428),
(14, 19001843),
(16, 19001847);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `tag_id` int NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(50) NOT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`tag_id`),
  KEY `tag_ibfk_1` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(75) NOT NULL,
  `tele` int DEFAULT NULL,
  `pass` varchar(255) NOT NULL,
  `user_type` varchar(5) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `tele`, `pass`, `user_type`) VALUES
(8, 'admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$rEc8oEWtCCp0xTq8J7A/Au8v3RgvubuZHrTGBw2/1VgDxFoX01pEu', 'admin'),
(9, 'Dinuni', 'Fernando', 'dkf@ucsc.cmb.ac.lk', NULL, '$2y$10$kqcUj5djbW1xrsstKvHP/e18lq.Jbfj1I/GHWlRz7v0UdGBbcS1Ga', 'lec'),
(10, 'Hirasha', 'Pooliyadda', 'hsp@ucsc.cmb.ac.lk', NULL, '$2y$10$zZQ/bgFrgUk8NHAOlhYbxe/0NfMvPjypHl/C48FItuYF3tMtkH/0q', 'lec'),
(11, 'Janitha', 'Ratnayake', 'janithadevin@gmail.com', NULL, '$2y$10$avgaeOJL3Mwu6UxxVoALuOA12t4GqA5CVK1DEGyOjfkjAN/ugzLEe', 'stu'),
(12, 'Charith', 'Anjana', 'ch@gmail.com', NULL, '$2y$10$w6UXM9qmb6WHOh9MpSxLGOSn6NOzDCf5/6Ruy8RKcFI7s/knXk.rW', 'stu'),
(13, 'Thilina', 'Halloluwa', 'tch@ucsc.cmb.ac.lk', NULL, '$2y$10$HpueGS4UPwZ/i8taKMvEsewWU1LOUiG5rSnHfxwAzsmJkYftz89e6', 'lec'),
(14, 'Sumudu', 'Wathsala', 'wathsala@gmail.com', NULL, '$2y$10$d68tx8w87Zcw8dgmbh.KLO1gF/glbrvCU998O3XsgCyfPizTm4aza', 'stu'),
(15, 'Thusara', 'Ekanayake', 'tre@ucsc.cmb.ac.lk', NULL, '$2y$10$FtWANS85.DCwlT8y1PqiFOsStcDPWdgfQ.mlgRtUWJcVRZCv.r9qG', 'lec'),
(16, 'Maneth', 'Wijetunga', 'maneth@gmail.com', NULL, '$2y$10$nbOjSMAWBwXsfgT/KnV4z.xA3jriygc3faw0QbQLAdPX7NWFqhB7C', 'stu'),
(17, 'Pansilu', 'Gunaratna', 'ppg@ucsc.cmb.ac.lk', NULL, '$2y$10$RliI.Bixq7BtNCa4Wx9yyuE4LHGOrvlF8QyPLFifRaXeR24QBAD6.', 'stu'),
(18, 'HND', 'Thilini', 'hnd@ucsc.cam.ac.lk', NULL, '$2y$10$3sgfUOf6NeoVFVj7S8FlWO6EoebDgOJzrsonbBqY1C2TOWTJkVKRm', 'lec');

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
-- Constraints for table `forum_reply_lec`
--
ALTER TABLE `forum_reply_lec`
  ADD CONSTRAINT `forum_reply_lec_ibfk_1` FOREIGN KEY (`reply_id`) REFERENCES `forum_reply` (`reply_id`),
  ADD CONSTRAINT `forum_reply_lec_ibfk_2` FOREIGN KEY (`topic_id`) REFERENCES `forum_topic` (`topic_id`),
  ADD CONSTRAINT `forum_reply_lec_ibfk_3` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturer` (`user_id`);

--
-- Constraints for table `forum_reply_points`
--
ALTER TABLE `forum_reply_points`
  ADD CONSTRAINT `forum_reply_points_ibfk_1` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturer` (`user_id`),
  ADD CONSTRAINT `forum_reply_points_ibfk_2` FOREIGN KEY (`reply_id`) REFERENCES `forum_reply` (`reply_id`);

--
-- Constraints for table `forum_reply_stu`
--
ALTER TABLE `forum_reply_stu`
  ADD CONSTRAINT `forum_reply_stu_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `forum_reply_stu_ibfk_2` FOREIGN KEY (`reply_id`) REFERENCES `forum_reply` (`reply_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `forum_reply_stu_ibfk_3` FOREIGN KEY (`topic_id`) REFERENCES `forum_topic` (`topic_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `forum_topic`
--
ALTER TABLE `forum_topic`
  ADD CONSTRAINT `forum_topic_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
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
-- Constraints for table `quiz_attempt`
--
ALTER TABLE `quiz_attempt`
  ADD CONSTRAINT `quiz_attempt_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`quiz_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_attempt_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quiz_creation`
--
ALTER TABLE `quiz_creation`
  ADD CONSTRAINT `quiz_creation_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`quiz_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_creation_ibfk_2` FOREIGN KEY (`topic_id`) REFERENCES `course_topic` (`topic_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_creation_ibfk_3` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturer` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
