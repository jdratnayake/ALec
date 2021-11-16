-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2021 at 01:14 PM
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
  `course_description` varchar(2000) DEFAULT NULL,
  `year` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_description`, `year`) VALUES
(47, 'SCS 1202 - Programming Using C', 'The following objectives are covered in this course. Analyze and explain \r\nthe behavior of simple programs involving the fundamental programming \r\nconstructs using a functional paradigm such as Scheme', 1),
(48, 'SCS 1203 - Database I', 'Database I, introduces the components of a database system and major \r\nDBMS functions. Data modelling, Relational database design, Structured \r\nQuery Languages (SQL) are covered in the course module.\'', 1),
(49, 'SCS 1204 - Discrete Mathematics I', 'This course module includes sets, relations and functions such as Union and \r\nIntersection. Also basic logic is introduced here with truth tables, predicate logic \r\nand propositional logic. It also di', 1),
(50, 'SCS 1205 - Computer Systems', 'Computer Systems introduces the history of the computer systems, along with the knowledge of how the computer works\r\nstarting from the data representation, basic logic circuit design to the CPU cycles and memory', 1),
(51, 'SCS 1206 - Laboratory I', 'Laboratory I gives the laboratory exposure to use an operating system (Ubuntu \r\nLinux). The student will gain practical experience in handling the operating \r\nsystem through the graphical user interfa', 1),
(52, 'SCS 1207 - Software Engineering I', 'Software Engineering I is the introductory course of Software Engineering. \r\nAlong with the definitions and the need for Software engineering, the \r\nprocess will be explained in stages: Requirements e', 1),
(53, 'ENH 1201 - Enhancement I', 'The aim of this course module is to enhance the student’s communication \r\nskills in general. An attention will be given to accurate the pronunciation, \r\nactive listening and responding. The correct us', 1),
(54, 'SCS 1208 - Data Structures And Algorithms II', 'Data Structures and Algorithms II will be built upon the first part of the \r\nmodule, discussing variants of the Tree data structure such as General Trees, \r\nBinary Trees, Binary search trees, AVL tree', 1),
(55, 'SCS 1209 - Object Oriented Programming', 'This course introduces the concepts of programming, coding algorithms \r\nin C language and the use of data structures in a C program. In addition \r\nwe will look at some other concepts which were not in', 1),
(56, 'SCS 1210 - Software Engineering II', 'This is an advanced course in Software Engineering which is based on Software \r\nEngineering I module and provides an understanding of Object Oriented \r\nAnalysis and Design (OOAD) concepts. After compl', 1),
(57, 'SCS 1211 - Mathematical Methods I', 'Mathematical Methods I is the introduction to the concepts of calculus including \r\ndifferential equations. Real numbers, real functions, algebra of limits and \r\nalgebra of derivatives, Mean value theo', 1),
(58, 'SCS 1212 - Foundation of Computer Science', 'This course module introduces the historic origins of computational models, \r\nmathematical theory that has led the establishment of computer science. It will \r\ndiscuss the theory on algorithmic proble', 1),
(59, 'SCS 1213 - Probability and Statistics', 'This course offers the theory and background on random variables, probability, \r\nseveral discrete and continuous distributions and to apply the knowledge of \r\nthe distributions and the tools of probab', 1),
(60, 'SCS 1214 - Operating Systems I', 'This course provides an understanding of entire process within Operating Systems. It covers overview of\r\nOperating Systems, Operating System principles, concurrency, scheduling and dispatch, memory management,\r\nsecurity and protection, virtual machines, device management and file systems.', 1),
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
(72, 'SCS 2212 - Automata Theory', 'This course mainly focus on determining a language’s place in the Chomsky hierarchy and to convert among\r\nequivalently powerful notations for a language. The areas covered are Chomsky hierarchy, sets and languages,\r\ncontext-free languages and the halting problem.', 2),
(73, 'SCS 2214 - Information System Security', 'This course provides students an understanding of the fundamentals of \r\ninformation security in both information storage and information traveling \r\nin computer networks. This course also focuses on m', 2),
(74, 'ENH 2201 - Enhancement III ', 'The course is taught through a real-life customer development context where \r\nstudents acquire the skills and know-how to develop their business idea all the \r\nway from the conceptual stage to the mar', 2),
(75, 'SCS 2213 - Electronics and Physical Computing', 'This course is organized around a series of practical hands-on exercises \r\nwhich introduce the fundamentals of circuits, embedded programming, signal \r\nprocessing, simple mechanisms, actuation, and ti', 2),
(76, 'SCS 2210 - Discrete Mathematics II', 'This course is to acquaint students with basic number theory and basic \r\ncombinatorial methods that provide a foundation for further studies in the field \r\nas well as for applications in related areas', 2),
(80, 'SCS 3201 - Machine Learning and Neural Computing', 'This course unit consists of the following: Introduction to Machine Learning and Pattern Recognition,  and adaptive control. ', 3),
(81, 'SCS 3202 - Advanced Computer Architecture', 'This course provides students a fundamental concepts behind middleware and the role played by middleware in distributed systems. ', 3),
(82, 'SCS 3204 - Management', 'After successful completion of this course students will be able to describe fundamental concepts and principles \r\nof management, including the basic roles, skills, and functions of management; ', 3),
(83, 'SCS 3205 - Computer Graphics I', 'This course provides an introduction to Image Processing and Computer Graphics programming.', 3),
(84, 'SCS 3206 - Graph Theory ', 'Under this course the following topics will be discussed. Introduction to graphs, Multigraphs, Directed graphs \r\nand Weighted graphs,Trees...', 3),
(85, 'SCS 3207 - Software Quality Assurance', 'The course delivery is a two-hour lecture session done by course coordinators and industry experts. ', 3),
(86, 'SCS 3208 - Software Project Management', 'This course unit covers the following topics: Introduction to project management, Project selection, Approach \r\nselection, Project planning, Risk management, etc.', 3),
(87, 'SCS 3209 - Human-Computer Interaction', 'This course will discuss the humans, machines and how do the humans interact with machines in their day-to-day lives.', 3),
(88, 'SCS 3210 - Systems and Network Administration', 'This course introduces the technical operational tasks of a system and network administrator through both lectures and practical sessions. ', 3),
(89, 'SCS 3211 - Compiler Theory ', 'This course discusses contemporary techniques in implementation of programming language translators. ', 3),
(90, 'SCS 3212 - Mobile Application Development', 'This course covers topics such as introduction, operating systems for wireless mobile devices, android overview \r\nand android development environment, etc.', 3),
(91, 'SCS 3213 - Game Development', 'This course introduces fundamental concepts of game development industry and its development process. ', 3),
(92, 'SCS 3214 - Group project II', 'Third year group project is a mandatory course for those who follow 3 year degree programme in both CS and IS streams. ', 3),
(93, 'SCS 3215 - Professional Practice', 'After completion of the course, students will be able to identify the ethical issues in the development and \r\napplication of computing technology.', 3),
(94, 'SCS 3216 - Research Methods ', 'This course discusses different approaches, methods and techniques used in scientific research in general and \r\nprovides an introduction to research in computer science and information systems. T', 3),
(95, 'ENH 3201 - Industry Placement-Industry Project', 'The Industry Placement provides the much needed industrial exposure for the students, which is an essential part \r\nof education in order to meet Industrial standards.', 3),
(96, 'SCS 4201 - Ethical Issues and Legal Aspects in IT', 'During this course students will gain an ability to describe what the term information technology ethics means, \r\nidentify various advantages and disadvantages related to the code of ethics in IT.', 4),
(97, 'SCS 4202 - Cognitive Robotics T', 'This course discusses two different approaches for developing robots: conventional artificial intelligence (AI) \r\nbased approaches and new AI based approaches. ', 4),
(98, 'SCS 4203 - Database III ', 'This is an advanced course in databases to provide in-depth knowledge on Data Storage and Querying, Query \r\nProcessing and Optimization, Transaction Management, etc.', 4),
(99, 'SCS 4204 - Data Analytics T', 'This course constitutes two parts. Part I covers an introduction to Data Mining. Part II consists of pattern recognition.', 4),
(100, 'SCS 4205 - Computer Networks II ', 'This course covers topics such as vector spaces, linear codes; unicast routing, multicast routing, key based routing, mobile routing; multi-access protocols - csma and variants; virtualization. ', 4),
(101, 'SCS 4206 - Computer Graphics II', 'The following content is covered in this course. Introduction to Virtual/Augmented Reality Environment Technology \r\nand Applications, Game Design, Game Programming, Game AI, etc.', 4),
(102, 'SCS 4207 - Image Processing and Computer Vision', 'This course covers topics such as Image Characterization: Introduction to Image Processing and Computer \r\nVision, Digital Image Representation, Color Theory; Spatial Domain Image Processing: ', 4),
(103, 'SCS 4208 - Theory of Computation', 'This course covers topics such as DFA, NDFA; regular languages, context free grammars, pumping lemma, pushdown automata; Lambda and Pi calculi.', 4),
(104, 'SCS 4209 - Natural Language Processing', 'Natural Language Processing, also referred to as Computational Linguistics is the fascinating field of building \r\ncomputational models of Human Language. ', 4),
(105, 'SCS 4210 - Parallel Computing', 'This course is designed to introduce students to parallel computing. As Pre-requisites to the course knowledge of C is desired although not essential. ', 4),
(106, 'SCS 4211 - Research Seminar', 'The research seminar course introduces students to research communication, evaluation and presentation \r\nculture.', 4),
(107, 'SCS 4212 - Formal Methods Software Verification', 'This course provides a hands-on introduction to formal methods and software verification. ', 4),
(108, 'SCS 4213 - Digital Forensics', 'With the profound usage of digital media and its connectivity to cyber space, cyber crime incidents are enormously increasing in numbers.', 4),
(109, 'SCS 4214 - Natural Algorithms', 'This course covers topics such as Introduction; Sorting, Shortest Path, Travelling Salesman Problem; Evolutionary \r\nComputing: Genetic Algorithms (GA), etc.', 4),
(110, 'SCS 4215 - Computational Biology', 'After successful completion of the course students should be able to: Explain the necessary principles and methods of genomics, gene expression and proteomics.', 4),
(111, 'SCS 4216 - Advanced Topics in Mathematics', 'This course covers the most elementary techniques in combinatorics such as pigeonhole principle, inclusion-exclusion principle, recurrence relations and generating functions.', 4),
(112, 'SCS 4217 - Embedded Systems', 'This course gives a technological and scientific perspective of embedded systems.', 4),
(113, 'SCS 4218 - Operating Systems II', 'After completing this course the student will be able to use well established advanced concepts as well as recent advancements in operating systems to solve problems related to computer systems.', 4),
(114, 'SCS 4219 - Distributed Systems', 'This course covers Leader election, consensus, byzantine agreement, atomic commit, logical clocks, snapshots, \r\nbroadcast variants, memory consistency models, Lamport registers, ..', 4),
(115, 'SCS 4220 - Data Structures and Algorithms IV ', 'This course module provides an understanding of specialized areas in the study of algorithms and gives the ability to analyze amortized cost and randomized running time complexities. ', 4),
(116, 'SCS 4221 - Software Engineering IV', 'Software Engineering IV is intended for advanced learners who wish to specialize in software engineering \r\nsub-discipline of Computing. ', 4),
(117, 'SCS 4222 - Logic Programming', 'This course discusses the logic programing paradigm through PROLOG. ', 4),
(118, 'SCS 4225 - Philosophy of Science', 'This course is designed to provide a basic introduction to the main philosophical questions concerning scientific knowledge. ', 4),
(119, 'SCS 4226 - Intelligent Systems', 'Philosophy of AI, Search (Heuristic/Adversarial/Informed/Uninformed), Knowledge Representation and Reasoning, Introduction to NLP and Linguistics, Intelligent Agents, Semantic Web, Emerging Trends.', 4),
(120, 'SCS 4223 - Final Year Project in SE', 'This final year project course is designed to support the students following the honours degree programme in SE to focus on the development of software products and their entire life cycle.', 4),
(121, 'SCS 4224 - Final Year Project in Computer Science', 'Final Year Project in Computer Science (SCS 4224) is a part requirement for the award of BSc (Hons) in Computer Science degree at the University of Colombo School of Computing (UCSC). ', 4);

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
(50, 883),
(60, 883),
(72, 883),
(72, 885);

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
(50, 886),
(60, 886),
(72, 886);

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
(31, 72, 883, 'Temp', '');

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
  `post_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(885, 19001422),
(883, 55501428);

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
(343, 186, 121, 'Windows', 0),
(344, 186, 121, 'Linux', 0),
(345, 186, 121, 'Oracle', 100),
(346, 186, 121, 'DOS', 0),
(347, 187, 121, '8', 100);

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
(121, 'Quiz 1', 'publish', '2021-11-11 18:21:25', '2021-11-11 20:00:00', '2021-11-11 20:30:00', '00:10:00', 883, 31);

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
(186, 121, 'Which of the following is not an operating system?', 'mcq-s', 0),
(187, 121, 'What is the maximum length of the filename in DOS?', 'short ans', 0);

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
(886, 19001428, 'Ben', 'Affleck');

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
  `status` char(1) NOT NULL DEFAULT '0',
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `tele`, `pass`, `user_type`, `status`, `img`) VALUES
(125, 'Admin', 'ALec', 'admin@gmail.com', NULL, '$2y$10$2fesqGM.4S/tdKmFW8McTeFqoZkrCCgo3zWlof14u2YWQ0JQmvv/i', 'admin', '1', NULL),
(883, 'Lec', 'ALec', 'lec@gmail.com', NULL, '$2y$10$Z7vr34tDRAF7dSx2BdwqQeECPxQULDgrqcgV.Fu1DGat6d24ICiv2', 'lec', '1', NULL),
(885, 'Dulitha', 'Ratnayake', 'janithadevinratnayake@gmail.com', NULL, '$2y$10$6kCmvxWI0TDIbjtoNf9BsuPyDC9h8vyKoi/ftPYdhbNz4DHyJGLge', 'lec', '1', NULL),
(886, 'Janitha', 'Ratnayake', 'janithadevin@gmail.com', NULL, '$2y$10$a3GvYjOezrM3bcrJwwX.pOuKQaL89KrDK6NC6G42OwRzje9eLD78S', 'stu', '1', NULL);

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
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `course_topic`
--
ALTER TABLE `course_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `forum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `forum_reply`
--
ALTER TABLE `forum_reply`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `forum_topic`
--
ALTER TABLE `forum_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `question_choice`
--
ALTER TABLE `question_choice`
  MODIFY `choice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `question_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1492;

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
