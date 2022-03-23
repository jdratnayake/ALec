-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2022 at 07:27 AM
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
(92, 'Wise Student', 'This badge is awarded to the best of best students', 100, 72, '2022_01_04_07_09_04pm.png'),
(93, 'Talkative', '', 20, 53, '2022_01_04_07_56_23pm.png');

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
  `year` int(1) NOT NULL,
  `active_session_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_description`, `year`, `active_session_id`) VALUES
(47, 'SCS 1202 - Programming Using C', 'The following objectives are covered in this course. Analyze and explain \r\nthe behavior of simple programs involving the fundamental programming \r\nconstructs using a functional paradigm such as Scheme', 1, NULL),
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
(60, 'SCS 1214 - Operating Systems I', 'This course provides an understanding of entire process within Operating Systems. It covers overview of\r\nOperating Systems, Operating System principles, concurrency, scheduling and dispatch, memory management,\r\nsecurity and protection, virtual machines, device management and file systems.', 1, 7),
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
(72, 'SCS 2212 - Automata Theory', 'This course mainly focus on determining a language’s place in the Chomsky hierarchy and to convert among\r\nequivalently powerful notations for a language. The areas covered are Chomsky hierarchy, sets and languages,\r\ncontext-free languages and the halting problem.', 2, NULL),
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
(51, 883),
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
(50, 1497),
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
(72, 1497);

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
  `points` int(11) NOT NULL DEFAULT 0,
  `post_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `random_status` char(1) NOT NULL DEFAULT 'F' COMMENT '	T = Random name must not be displayed	'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(56, 'adad', 'asdasdasdasd', 0, '2021-12-16 16:08:28', 28, 883, 'F', NULL, '2021-12-16 16:08:28'),
(57, 'asdasdasdasdasdas', 'asdasda', 0, '2021-12-16 16:08:47', 28, 1497, 'T', NULL, '2021-12-16 16:08:47'),
(58, 'asdasdas', '123456', 0, '2021-12-17 16:20:58', 28, 1497, 'T', NULL, '2021-12-17 16:20:58'),
(59, 'Hish gfdgdf', 'gggg', 1, '2021-12-26 19:37:13', 28, 1497, 'T', NULL, '2021-12-26 19:37:13');

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
(883, 59, '2022-01-04 10:49:11');

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
(883, 55501428);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `notification_type` varchar(20) NOT NULL COMMENT '1 = forum topic,\r\n2 = forum reply,\r\n3 = forum points',
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
(66, '1', 'You received points from Lec ALec', 'SCS 2212 - Automata Theory', 'http://localhost/ALec/studentForumTopicDiscussion/index/59', '2022-01-04 10:49:11');

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
(885, 58, 'F', 'F'),
(885, 60, 'F', 'F'),
(885, 62, 'F', 'F'),
(885, 64, 'F', 'F'),
(1494, 57, 'F', 'F'),
(1494, 59, 'F', 'F'),
(1494, 61, 'F', 'F'),
(1494, 63, 'F', 'F'),
(1497, 57, 'T', 'F'),
(1497, 59, 'T', 'F'),
(1497, 61, 'T', 'F'),
(1497, 63, 'T', 'F'),
(1497, 65, 'F', 'F'),
(1497, 66, 'F', 'F');

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
(348, 188, 121, 'int', 25),
(349, 188, 121, 'char', 25),
(350, 188, 121, 'list', 25),
(351, 188, 121, 'tuple', 25),
(352, 188, 121, 'array', -25),
(353, 189, 121, '8', 100),
(354, 190, 122, 'prompt', 0),
(355, 190, 122, 'kernel', 0),
(356, 190, 122, 'shell', 100),
(357, 190, 122, 'command', 0);

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
(121, 'Quiz 1', 'publish', '2021-11-11 18:21:25', '2021-12-22 20:00:00', '2021-12-22 20:30:00', '00:10:00', 883, 31),
(122, 'Operating System MCQ', 'create', '2021-12-23 07:34:14', NULL, NULL, '00:02:00', 883, 31);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_attempt`
--

CREATE TABLE `quiz_attempt` (
  `student_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `attempt_time` datetime NOT NULL,
  `marks` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_attempt`
--

INSERT INTO `quiz_attempt` (`student_id`, `quiz_id`, `attempt_time`, `marks`) VALUES
(1497, 121, '2021-12-01 20:44:11', 0);

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
(186, 121, 'Which of the following is not an operating system?', 'mcq-s', 300),
(188, 121, 'Data types of the python?', 'mcq-m', 250),
(189, 121, 'What is the maximum length of the filename in DOS?', 'short ans', 100),
(190, 122, 'What else is a command interpreter called?', 'mcq-s', 0);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `session_id` int(11) NOT NULL,
  `session_name` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'F' COMMENT 'T = active, F = inactive',
  `active_question_id` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `lecturer_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`session_id`, `session_name`, `status`, `active_question_id`, `create_date`, `lecturer_id`, `course_id`) VALUES
(7, 'Temp OS', 'T', 14, '2022-01-01 16:39:35', 883, 60);

--
-- Triggers `session`
--
DELIMITER $$
CREATE TRIGGER `DeleteSession` AFTER DELETE ON `session` FOR EACH ROW UPDATE course SET active_session_id=NULL WHERE active_session_id=OLD.session_id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `UpdateSessionStatusFALSE` AFTER UPDATE ON `session` FOR EACH ROW IF NEW.status="F" THEN
UPDATE course SET active_session_id=NULL WHERE active_session_id=OLD.session_id;
END IF
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `UpdateSessionStatusTrue` AFTER UPDATE ON `session` FOR EACH ROW IF NEW.status="T" THEN
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
(21, 13, 7, 'Finite automata without input', 4),
(22, 13, 7, 'Finite automata with output', 1),
(23, 13, 7, 'Non Finite automata with output', 0),
(24, 13, 7, 'None of the mentioned', 2);

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
  `random_status` char(1) NOT NULL DEFAULT 'F'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session_forum_question`
--

INSERT INTO `session_forum_question` (`question_id`, `question`, `points`, `post_time`, `session_id`, `student_id`, `random_status`) VALUES
(1, 'My Name is Janitha Devin Ratnayake', 0, '2022-01-04 07:55:21', 7, 1497, 'F'),
(3, 'I\'m Janitha Random', 0, '2022-01-04 07:59:37', 7, 1497, 'T'),
(4, 'I\'m Pansilu', 0, '2022-01-04 08:00:46', 7, 1494, 'F'),
(5, 'I\'m Pansilu Random', 1, '2022-01-04 08:00:57', 7, 1494, 'T'),
(6, 'Validation Test 123', 2, '2022-01-04 08:08:25', 7, 1497, 'F');

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
(1494, 5, '2022-01-04 13:08:51'),
(1494, 6, '2022-01-04 13:08:13'),
(1497, 6, '2022-01-04 13:05:36');

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
(1494, 13, 21, '2022-01-05 11:54:21'),
(1496, 13, 22, '2022-01-05 11:54:39'),
(1497, 13, 21, '2022-01-05 11:53:14'),
(1498, 13, 21, '2022-01-05 11:55:30'),
(1499, 13, 24, '2022-01-05 11:55:50'),
(1500, 13, 24, '2022-01-05 11:56:32'),
(1501, 13, 21, '2022-01-05 11:56:51');

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
(4, 1497, 14, 'JANITHA', '2022-01-05 11:53:49'),
(5, 1494, 14, 'PANSILU', '2022-01-05 11:54:11'),
(6, 1496, 14, 'JANITHA', '2022-01-05 11:54:55'),
(7, 1498, 14, 'JANITHA', '2022-01-05 11:55:18'),
(8, 1499, 14, 'PRADEEP', '2022-01-05 11:56:01'),
(9, 1500, 14, 'JANITHA', '2022-01-05 11:56:23'),
(10, 1501, 14, 'PANSILU', '2022-01-05 11:57:07');

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
  `status` char(1) NOT NULL DEFAULT 'F',
  `published_time` datetime DEFAULT NULL,
  `duration` time NOT NULL,
  `question_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session_question`
--

INSERT INTO `session_question` (`question_no`, `session_id`, `question_type`, `question`, `status`, `published_time`, `duration`, `question_count`) VALUES
(13, 7, 'mcq', 'Moore Machine is an application of:', 'F', '2022-01-05 11:56:29', '00:03:00', 7),
(14, 7, 'open', 'What is your name?', 'T', '2022-01-05 11:56:56', '00:03:00', 7);

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
(76, 'dulitha ratnayake', 1494),
(79, '123', 1497);

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
(885, 'Dulitha', 'Ratnayake', 'janithadevinratnayake@gmail.com', NULL, '$2y$10$e48D8MvUZWtMTzo6r0bONem2jkj.763msstAdrlhPyihAORqQ/uCq', 'lec', '1', NULL),
(1494, 'Pansilu', 'Gunaratne', 'pansilugunaratne8@gmail.com', NULL, '$2y$10$ogqdBAZzuKtXY.HoEImM/.JHU6vsD3BMzZTcqsmYiGPtFVqPZhsZS', 'stu', '1', NULL),
(1495, 'Anuruddha', 'Ratnayake', 'dulitharatnayakestock@gmail.com', NULL, '$2y$10$Af2oXZENPfOhxDrIQfr.YONF0TgkGu.bS8yUNaCkFgaq7PTlbKWne', 'lec', '1', NULL),
(1496, 'Madhubahashini', 'Ratnayake', 'jdevinratnayakecse@gmail.com', NULL, '$2y$10$4hGSbyyJlBckSMXllx0k9u51zPx2XRojzjj3HSMsX72T1eePvs622', 'stu', '1', NULL),
(1497, 'Janitha', 'Ratnayake', 'janithadevin@gmail.com', NULL, '$2y$10$IU8zM/9pbM16Tl8dauKl9.iOVi5F4jOD3t6Byr5ujl5CgG9dsyrky', 'stu', '1', NULL),
(1498, 'Rukmal', 'Ratnayake', 'pradeepratnayake58@gmail.com', NULL, '$2y$10$kISDuKKvXOVgmpGXJR2YS.7jnbcGlhFlMzPn3bHXIopxj3T8yucSK', 'stu', '1', NULL),
(1499, 'Madampe', 'Gunasekera', 'madampegunasekera@gmail.com', NULL, '$2y$10$uXDqU3y/zk.LmokKoOM95eSnCG1jdggF8x8aWGLCQ7SG65T5qOfzm', 'stu', '1', NULL),
(1500, 'Madampe', 'Lilavati', 'madampelilavati@gmail.com', NULL, '$2y$10$o2yoXtNhwM0M01CAKO/OKOw1qc8Z2Awx6uPMm4SaR.Wab3W.o.B2W', 'stu', '1', NULL),
(1501, 'Madampe', 'Wimaladharma', 'madampewimaladharma@gmail.com', NULL, '$2y$10$MQ1dG3pyEYOd9OS4Y.rCr..La17tfDRsuVjTpypuKcz4BGbOL8BFa', 'stu', '1', NULL),
(1502, 'Madeera', 'Addararachchi', 'madeeraaddararachchi@gmail.com', NULL, '$2y$10$ZmoykTvtSJcFRp2PcxJ8huuGJLeeCceR0GcMLac3G9WO378PIDlui', 'stu', '0', NULL),
(1503, 'Madhavi', 'Gunewardena', 'madhavigunewardena@gmail.com', NULL, '$2y$10$ydnBTnvaVa5zRZUAwMclL.PB81XLgddrwUfqj2owcnARxYiGskeMe', 'stu', '0', NULL),
(1504, 'Madhavi', 'Jayamaha', 'madhavijayamaha@gmail.com', NULL, '$2y$10$.odRbj930TubWrsQas2KJ.OOecNW8RAHuPVk1JGnC7nFFw2qhGXYq', 'stu', '0', NULL),
(1505, 'Madhubhashini', 'Chandrasiri', 'madhubhashinichandrasiri@gmail.com', NULL, '$2y$10$o.Xnfo49r8nLsbffFP0FDuN9.Cfd3ohtlMn50nn1SyfcD/dvE94LO', 'stu', '0', NULL),
(1506, 'Madhupani', 'Edirisinghe', 'madhupaniedirisinghe@gmail.com', NULL, '$2y$10$I5SZ03g5SHvvr8wK5UXe1eIWvzfI79OzwEpiQ7p/RG27ZMWuCqFQC', 'stu', '0', NULL),
(1507, 'Madhupani', 'Thotawatte', 'madhupanithotawatte@gmail.com', NULL, '$2y$10$zY3FNYEKiNWFKauRW0aHeOSnqXnZmtA4g27P6Kky0z8Bk8Djnh5QS', 'stu', '0', NULL),
(1508, 'Madubashine', 'Jayasuriya', 'madubashinejayasuriya@gmail.com', NULL, '$2y$10$WJYPSRgHVSpxRPKIG7uK1uZ0l7V/.fQekAEF1MlwSDjb2o/PPgpCu', 'stu', '0', NULL),
(1509, 'Madubashine', 'Jayawickrama', 'madubashinejayawickrama@gmail.com', NULL, '$2y$10$kJbahX0bOD.kiVcRFnEXp.VSRZ2DiKgA0NMGSgLFaAhiokzEKeNYa', 'stu', '0', NULL),
(1510, 'Maduka', 'Ekanayake', 'madukaekanayake@gmail.com', NULL, '$2y$10$/O3Xq5MznXUC.3loSVstduDRVRtdGiMoaACvTSDourm/v/VuWBoZm', 'stu', '0', NULL),
(1511, 'Madurawala', 'Gunewardena', 'madurawalagunewardena@gmail.com', NULL, '$2y$10$EnNwBY4BQazJMeKc/yknvOj/qtWR0vy8RdfNt/hPQcjY43UI58ySq', 'stu', '0', NULL),
(1512, 'Madurawala', 'Illangasinghe', 'madurawalaillangasinghe@gmail.com', NULL, '$2y$10$6.YoVb1jC2ZlaGBIScskHOe7Ma1YkjqyxSdhffZokMdKnATjE6T2a', 'stu', '0', NULL),
(1513, 'Madurika', 'Malewana', 'madurikamalewana@gmail.com', NULL, '$2y$10$CcZp1/3trYyVobUo4zecR.s.ZHFlSGd4vRYdA8G97yB/XtveEk20S', 'stu', '0', NULL),
(1514, 'Madusanka', 'Nanarama', 'madusankananarama@gmail.com', NULL, '$2y$10$QrmQXudnJc.D5O9WQ0.x8uzdJrx86SA3VKySSz7NAYueaNRkk/4L6', 'stu', '0', NULL),
(1515, 'Madushani', 'Jayasena', 'madushanijayasena@gmail.com', NULL, '$2y$10$fs3Rco5vWVo8F1Ldmaf5derL.oHMK5Yvt227lRN8KJxjIZG5eVOPq', 'stu', '0', NULL),
(1516, 'Maduwanthi', 'Dhanapala', 'maduwanthidhanapala@gmail.com', NULL, '$2y$10$4yzkPX/F1idGX8dfCsFgk.pS3pmniJL6RTGA2.dxBZqy728q6u5xe', 'stu', '0', NULL),
(1517, 'Maduwanthi', 'Dharsha', 'maduwanthidharsha@gmail.com', NULL, '$2y$10$Z/JPWMjPMfvc06vO4QhUNuCQjJrLwvQsLa6N5P76uNIhjvu1L47lO', 'stu', '0', NULL),
(1518, 'Maheshika', 'Gnanananda', 'maheshikagnanananda@gmail.com', NULL, '$2y$10$1wB6ZCYRfiUyHNyDJ5pciuba8qyhzwCFdTorREtdTU3D1GS43vmCK', 'stu', '0', NULL),
(1519, 'Maheshika', 'Shantha', 'maheshikashantha@gmail.com', NULL, '$2y$10$JuH6wQ.VsK6jkqx6BBvTs.H9ADNZREP/fuXlazuqzgylUpsE.NBsG', 'stu', '0', NULL),
(1520, 'Mahinda', 'Kumaranatunga', 'mahindakumaranatunga@gmail.com', NULL, '$2y$10$bs0MN.FV/KHHriIq56lRFux.RiaM7aliAow/fM./BhxTR5R0gAZHm', 'stu', '0', NULL),
(1521, 'Malinda', 'Gajabahu', 'malindagajabahu@gmail.com', NULL, '$2y$10$j2xxOqA5z/Gu01zW3cIqTeC.48FFagTRJ9A7yifI0cTgkGloZAVyi', 'stu', '0', NULL),
(1522, 'Malintha', 'Jayatilleka', 'malinthajayatilleka@gmail.com', NULL, '$2y$10$VsXkmsATGlayIrBpAtcuMukZNYT/8zphqN013/A.b.T7.A8lMwS66', 'stu', '0', NULL),
(1523, 'Malintha', 'Suriyasena', 'malinthasuriyasena@gmail.com', NULL, '$2y$10$xrAXo0.NRk2jrRM9gl/84OW3Fr/HMAcAMlxYyBK0bAgxPxF8ZUI6e', 'stu', '0', NULL),
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
(1535, 'Mayomi', 'Rahula', 'mayomirahula@gmail.com', NULL, '$2y$10$9oe8KLMW.x9j5RMRVdp5hOsZtRrADkNwAWQsaM0RLnO8SrToi5dSS', 'stu', '0', NULL),
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
  MODIFY `badge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

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
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `forum_topic`
--
ALTER TABLE `forum_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `question_choice`
--
ALTER TABLE `question_choice`
  MODIFY `choice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `question_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `session_answer`
--
ALTER TABLE `session_answer`
  MODIFY `choice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `session_forum_question`
--
ALTER TABLE `session_forum_question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `session_open_attempt`
--
ALTER TABLE `session_open_attempt`
  MODIFY `attempt_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `session_question`
--
ALTER TABLE `session_question`
  MODIFY `question_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1699;

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

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `session_question_event_7_13` ON SCHEDULE AT '2022-01-05 11:59:29' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE session_question SET status='F' WHERE question_no='13'$$

CREATE DEFINER=`root`@`localhost` EVENT `session_question_event_7_14` ON SCHEDULE AT '2022-01-05 11:59:56' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE session_question SET status='F' WHERE question_no='14'$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
