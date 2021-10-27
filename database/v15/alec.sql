-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2021 at 03:05 AM
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
(72, 886),
(72, 1102);

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
(23, 72, 883, 'Week 1', 'SCS2212 - Lecture 1\r\n\r\nJoin Zoom Meeting https://learn.zoom.us/j/63080105329?pwd=TU9DTEN3dm5ZT0ZkSlRwR290amhWQT09\r\n\r\nMeeting ID: 630 8010 5329\r\n\r\nPasscode: YV&LSb0*'),
(27, 72, 883, 'Week 2', ''),
(28, 72, 883, 'Week 3', ''),
(29, 50, 883, 'Digital Circuits', ''),
(30, 50, 883, 'Computer Architecture', '');

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

--
-- Dumping data for table `forum_reply`
--

INSERT INTO `forum_reply` (`topic_id`, `reply_id`, `reply`, `post_time`, `user_id`) VALUES
(22, 30, 'Well as I know FDM and TDM are two different techniques. FDM deals with modularizing the analogue signals and TDM deals with digital signals. Each has different bandwidth allocations techniques. FDM I\'m not quite familiar but somehow it allocate the bandwidth for each channel using a constant frequency and TDM its bit length. As I know packets comes under digital signal since because of we quantizing the analog to digital. (I think FDM doesn\'t have such packets but I\'m not quite sure).  So again if we consider the traffic of the channels then we introduce STDM for store-and-forward instead of TDM since in such case channels are not produce data to transfer in continuous manner. So we follow some statistical method. That is the place where we have packet switching. In TDM packets are gurranted hence its not necessary to do packet switching I guess. (All we have to do follow some round robin pattern).  And when it comes to efficiencies it depends on the strength of the traffic. We have Aloha, and CSMA variations under STDM. (both deals with store-and-forward traffic). We have equation given that so the efficiency depends on the # of attempts(k) and # of channels(G) for store-and-frow', '2021-10-27 05:20:57', 886),
(22, 31, 'I think I was confusing the trunk utilization efficiency with the overall efficiency.\r\n\r\nMy point was, using Packet switching is much more efficient than Circuit switching as I only compared those two. And, as I understood, packet switching uses TDM (or STDM as you have pointed out) and circuit switching uses FDM (it has no packets). The reference book makes a clear comparison between the two ways of transmitting data.\r\n\r\nHence I was comparing STDM with FDM.\r\n\r\nAnd yes, using STDM is more efficient than TDM for the points you mentioned. And in that case, using TDM instead of STDM would make the trunk utilization efficiency less. Therefore , Efficiency STDM > Efficiency TDM .\r\n\r\nBut what about STDM(or TDM) vs FDM? Is the circuit switching vs packet switching scenario applicable for this case? (That is, when we compare overall efficiency and not just trunk utilization)\r\n\r\nIn FDM too, resources or the allocated bandwidth cannot be used by any other channel even if there are no data being transmitted. \r\n\r\nSo considering the trunk utilization, my conclusion is as below. What do you think?\r\n\r\nEfficiency STDM > Efficiency TDM > Efficiency FDM    \r\n\r\nP.S. Thank you for participating in thi', '2021-10-27 05:26:08', 1102),
(22, 32, 'Thanks for starting a discussion on this. I think there is some confusion here.\r\n\r\nThere are many multiplexing (combining basic channels) techniques. FDM is a classical technique used in the analog era. OFDM is a modern variation of it. Wrt digital info, the typical approaches are TDM and StatTDM. In TDM, the time slots are permanently assigned to sources (channels): both the sender and receiver know the channels assigned to the time slot and they are synced. TDM has high utilisation when there is continuous activity on all channels, for eg for streaming data like digitised voice/video. If the source data is intermittent (as in browsing, db queries etc) then it is more efficient to assign channels on the multiplexed time axis, on demand to the sources. This is statTDM. When it is StatTDM, each data block must have a source/dest identifiers to uniquely identify a \'packet\' so that it will be picked up by the proper destination. For Poisson like data traffic STDM is more efficient (consider my example of waiting at a sequencing traffic light at mid night with no road traffic). Finally, you cannot compare FDM with TDM or STDM.', '2021-10-27 05:26:52', 883),
(22, 33, 'Thank you for clearing the confusion sir. It was very helpful and I got a clear idea on this now.', '2021-10-27 05:29:03', 1102);

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
(22, 'If we use TDM for store-and-forward traffic, would the overall trunk utilization efficiency fall?', 'This is regarding the question in the exercises given in Dr.Nalin Ranasinghe\'s slides.\r\n\r\nTo my understanding, in TDM we use packet switching. Hence this reduces the delay between the sender and the receiver since the first packet from a long message can be forwarded before the second one has fully arrived. \r\n\r\nIf we use FDM, then according to store-and-forward transmission, the long message should arrive fully before sending it to the receiver\'s end. Forwarding a packet such as in the first case is not possible here. \r\n\r\nThe reference material (Computer Networks by Andrew S. Tanenbaum and David J. Wetherall - Page 161-164) compares circuit switching and packet switching. As I have understood, packet switching uses TDM and circuit switching which divides the whole bandwidth into trunks, uses FDM. It describes what happens in the event that both switching methods uses store-and-forward transmission. \r\n\r\nHence I thought that comparison would be applicable here.\r\n\r\nSo, overall, using TDM is more efficient for store-and-forward traffic. \r\n\r\nAnyone has any different ideas?', '2021-10-27 05:19:23', 28, 1102, 33, '2021-10-27 05:29:04');

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
(883, 55501428),
(1087, 59001428),
(1088, 59001499),
(1089, 59008499),
(1090, 69008499),
(1091, 69078499);

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
(227, 136, 100, 'abcba', 100),
(228, 137, 100, 'TRUE', 100),
(229, 137, 100, 'FALSE', 0),
(230, 138, 100, 'TRUE', -100),
(231, 138, 100, 'FALSE', 100),
(232, 139, 100, 'TRUE', 100),
(233, 139, 100, 'FALSE', -100),
(234, 140, 100, 'w^R = edcba', 100),
(284, 163, 112, 'TRUE', 0),
(285, 163, 112, 'FALSE', 100),
(286, 164, 112, 'TRUE', 0),
(287, 164, 112, 'FALSE', 100),
(288, 165, 112, 'TRUE', 100),
(289, 165, 112, 'FALSE', 0),
(290, 166, 112, 'TRUE', 100),
(291, 166, 112, 'FALSE', 0),
(292, 167, 112, 'a and b are initial states while c is a final state.', 0),
(293, 167, 112, 'This FA is not a DFA.', 50),
(294, 167, 112, 'This FA accepts 01,101 and 001 strings.', 50),
(295, 167, 112, 'This FA cannot accept 1001 string.', 0),
(296, 167, 112, 'b is a trap state.', 0),
(297, 168, 112, '(01)*', 0),
(298, 168, 112, '01', 0),
(299, 168, 112, '1*01', 0),
(300, 168, 112, '1*0*1', 0),
(301, 168, 112, '1*0+1', 100),
(302, 169, 113, 'A NAND or an EX-OR', 0),
(303, 169, 113, 'An OR or an EX-NOR', 0),
(304, 169, 113, 'An AND or an EX-OR', 0),
(305, 169, 113, 'A NOR or an EX-NOR', 100),
(306, 170, 113, 'Alphanumeric Code', 0),
(307, 170, 113, 'BCD', 0),
(308, 170, 113, 'Excess 3', 0),
(309, 170, 113, 'Gray', 100),
(310, 171, 113, '2', 100),
(311, 172, 113, '00', 100),
(312, 173, 114, 'NAND', 100),
(313, 174, 114, '3, 2', 100),
(314, 175, 115, 'Blaise Pascal', 0),
(315, 175, 115, 'Charles Babbage', 0),
(316, 175, 115, 'John Von Neumann', 100),
(317, 175, 115, 'None of the above', 0),
(318, 176, 115, 'ROM', 0),
(319, 176, 115, 'EROM', 0),
(320, 176, 115, 'RAM', 100),
(321, 176, 115, 'None of the above', 0);

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
(100, 'Quiz 1', 'publish', '2021-10-23 22:17:53', '2021-10-24 18:09:00', '2021-10-24 20:09:00', '00:10:00', 883, 23),
(112, 'Quiz 2', 'create', '2021-10-27 04:18:25', NULL, NULL, '00:10:00', 883, 27),
(113, 'Logic Gates and Networks - 1', 'create', '2021-10-27 04:26:56', NULL, NULL, '00:10:00', 883, 29),
(114, 'Logic Gates and Networks - 2', 'create', '2021-10-27 04:29:13', NULL, NULL, '00:10:00', 883, 29),
(115, 'Quiz 1', 'create', '2021-10-27 04:32:09', NULL, NULL, '00:10:00', 883, 30);

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
(136, 100, 'Suppose w1 = ‘abc’ and w2 = ‘ba’.What is w1w2 ?', 'mcq-s', 0),
(137, 100, 'Suppose w1 = ‘abc’ and w2 = ‘ba’.|w1w2| = |w1| + |w2| ', 'mcq-s', 0),
(138, 100, 'Suppose w1 = ‘abc’ and w2 = ‘ba’.w1w2 = w2w1', 'mcq-s', 0),
(139, 100, 'Suppose w1 = ‘abc’ and w2 = ‘ba’.w1? = ?w1', 'mcq-s', 0),
(140, 100, 'Suppose w = ‘abcde’. Provide the reverse string operation (w^R).', 'mcq-s', 0),
(163, 112, 'After consuming characters from a particular string\r\n(elements from alphabet), DFA may reach to one or\r\nmore states as defined according to production rules.', 'mcq-s', 0),
(164, 112, 'DFA can reach to one or more initial states at the\r\nsame time as longs are states are valid and they\r\nbelong to Q (that is finite states set). ', 'mcq-s', 0),
(165, 112, 'DFA can have more than one final state as states are\r\nbelonged to finite set of states Q.', 'mcq-s', 0),
(166, 112, 'Each state of a FA should have |?| outgoing edges to\r\nbe called as a DFA.', 'mcq-s', 0),
(167, 112, 'What statements(s) is/are correct with regarding to\r\nthe diagram below.', 'mcq-s', 0),
(168, 112, 'What is the language accepted by the following automata\r\n?', 'mcq-s', 0),
(169, 113, 'The gate is either _________', 'mcq-s', 0),
(170, 113, 'The code where all successive numbers differ from their preceding number by single bit is __________', 'mcq-s', 0),
(171, 113, 'How many AND gates are required to realize Y = CD + EF + G?', 'short ans', 0),
(172, 113, 'The NOR gate output will be high if the two inputs are __________', 'short ans', 0),
(173, 114, 'A universal logic gate is one which can be used to generate any logic function. Which of the following is a universal logic gate?', 'short ans', 0),
(174, 114, 'How many two input AND gates and two input OR gates are required to realize Y = BD + CE + AB?', 'short ans', 0),
(175, 115, 'Who developed the basic architecture of computer?', 'mcq-s', 0),
(176, 115, 'Which of the following allows simultaneous write and read operations?', 'mcq-s', 0);

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
(1292, 17000001),
(1293, 17000002),
(1294, 17000003),
(1295, 17000004),
(1296, 17000005),
(1297, 17000006),
(1298, 17000007),
(1299, 17000008),
(1300, 17000009),
(1301, 17000010),
(1302, 17000011),
(1303, 17000012),
(1304, 17000013),
(1305, 17000014),
(1306, 17000015),
(1307, 17000016),
(1308, 17000017),
(1309, 17000018),
(1310, 17000019),
(1311, 17000020),
(1312, 17000021),
(1313, 17000022),
(1314, 17000023),
(1315, 17000024),
(1316, 17000025),
(1317, 17000026),
(1318, 17000027),
(1319, 17000028),
(1320, 17000029),
(1321, 17000030),
(1322, 17000031),
(1323, 17000032),
(1324, 17000033),
(1325, 17000034),
(1326, 17000035),
(1327, 17000036),
(1328, 17000037),
(1329, 17000038),
(1330, 17000039),
(1331, 17000040),
(1332, 17000041),
(1333, 17000042),
(1334, 17000043),
(1335, 17000044),
(1336, 17000045),
(1337, 17000046),
(1338, 17000047),
(1339, 17000048),
(1340, 17000049),
(1341, 17000050),
(1342, 17000051),
(1343, 17000052),
(1344, 17000053),
(1345, 17000054),
(1346, 17000055),
(1347, 17000056),
(1348, 17000057),
(1349, 17000058),
(1350, 17000059),
(1351, 17000060),
(1352, 17000061),
(1353, 17000062),
(1354, 17000063),
(1355, 17000064),
(1356, 17000065),
(1357, 17000066),
(1358, 17000067),
(1359, 17000068),
(1360, 17000069),
(1361, 17000070),
(1362, 17000071),
(1363, 17000072),
(1364, 17000073),
(1365, 17000074),
(1366, 17000075),
(1367, 17000076),
(1368, 17000077),
(1369, 17000078),
(1370, 17000079),
(1371, 17000080),
(1372, 17000081),
(1373, 17000082),
(1374, 17000083),
(1375, 17000084),
(1376, 17000085),
(1377, 17000086),
(1378, 17000087),
(1379, 17000088),
(1380, 17000089),
(1381, 17000090),
(1382, 17000091),
(1383, 17000092),
(1384, 17000093),
(1385, 17000094),
(1386, 17000095),
(1387, 17000096),
(1388, 17000097),
(1389, 17000098),
(1390, 17000099),
(1391, 17000100),
(1392, 18000101),
(1393, 18000102),
(1394, 18000103),
(1395, 18000104),
(1396, 18000105),
(1397, 18000106),
(1398, 18000107),
(1399, 18000108),
(1400, 18000109),
(1401, 18000110),
(1402, 18000111),
(1403, 18000112),
(1404, 18000113),
(1405, 18000114),
(1406, 18000115),
(1407, 18000116),
(1408, 18000117),
(1409, 18000118),
(1410, 18000119),
(1411, 18000120),
(1412, 18000121),
(1413, 18000122),
(1414, 18000123),
(1415, 18000124),
(1416, 18000125),
(1417, 18000126),
(1418, 18000127),
(1419, 18000128),
(1420, 18000129),
(1421, 18000130),
(1422, 18000131),
(1423, 18000132),
(1424, 18000133),
(1425, 18000134),
(1426, 18000135),
(1427, 18000136),
(1428, 18000137),
(1429, 18000138),
(1430, 18000139),
(1431, 18000140),
(1432, 18000141),
(1433, 18000142),
(1434, 18000143),
(1435, 18000144),
(1436, 18000145),
(1437, 18000146),
(1438, 18000147),
(1439, 18000148),
(1440, 18000149),
(1441, 18000150),
(1442, 18000151),
(1443, 18000152),
(1444, 18000153),
(1445, 18000154),
(1446, 18000155),
(1447, 18000156),
(1448, 18000157),
(1449, 18000158),
(1450, 18000159),
(1451, 18000160),
(1452, 18000161),
(1453, 18000162),
(1454, 18000163),
(1455, 18000164),
(1456, 18000165),
(1457, 18000166),
(1458, 18000167),
(1459, 18000168),
(1460, 18000169),
(1461, 18000170),
(1462, 18000171),
(1463, 18000172),
(1464, 18000173),
(1465, 18000174),
(1466, 18000175),
(1467, 18000176),
(1468, 18000177),
(1469, 18000178),
(1470, 18000179),
(1471, 18000180),
(1472, 18000181),
(1473, 18000182),
(1474, 18000183),
(1475, 18000184),
(1476, 18000185),
(1477, 18000186),
(1478, 18000187),
(1479, 18000188),
(1480, 18000189),
(1481, 18000190),
(1482, 18000191),
(1483, 18000192),
(1484, 18000193),
(1485, 18000194),
(1486, 18000195),
(1487, 18000196),
(1488, 18000197),
(1489, 18000198),
(1490, 18000199),
(1491, 18000200),
(1092, 19000201),
(1093, 19000202),
(1094, 19000203),
(1095, 19000204),
(1096, 19000205),
(1097, 19000206),
(1098, 19000207),
(1099, 19000208),
(1100, 19000209),
(1101, 19000210),
(1102, 19000211),
(1103, 19000212),
(1104, 19000213),
(1105, 19000214),
(1106, 19000215),
(1107, 19000216),
(1108, 19000217),
(1109, 19000218),
(1110, 19000219),
(1111, 19000220),
(1112, 19000221),
(1113, 19000222),
(1114, 19000223),
(1115, 19000224),
(1116, 19000225),
(1117, 19000226),
(1118, 19000227),
(1119, 19000228),
(1120, 19000229),
(1121, 19000230),
(1122, 19000231),
(1123, 19000232),
(1124, 19000233),
(1125, 19000234),
(1126, 19000235),
(1127, 19000236),
(1128, 19000237),
(1129, 19000238),
(1130, 19000239),
(1131, 19000240),
(1132, 19000241),
(1133, 19000242),
(1134, 19000243),
(1135, 19000244),
(1136, 19000245),
(1137, 19000246),
(1138, 19000247),
(1139, 19000248),
(1140, 19000249),
(1141, 19000250),
(1142, 19000251),
(1143, 19000252),
(1144, 19000253),
(1145, 19000254),
(1146, 19000255),
(1147, 19000256),
(1148, 19000257),
(1149, 19000258),
(1150, 19000259),
(1151, 19000260),
(1152, 19000261),
(1153, 19000262),
(1154, 19000263),
(1155, 19000264),
(1156, 19000265),
(1157, 19000266),
(1158, 19000267),
(1159, 19000268),
(1160, 19000269),
(1161, 19000270),
(1162, 19000271),
(1163, 19000272),
(1164, 19000273),
(1165, 19000274),
(1166, 19000275),
(1167, 19000276),
(1168, 19000277),
(1169, 19000278),
(1170, 19000279),
(1171, 19000280),
(1172, 19000281),
(1173, 19000282),
(1174, 19000283),
(1175, 19000284),
(1176, 19000285),
(1177, 19000286),
(1178, 19000287),
(1179, 19000288),
(1180, 19000289),
(1181, 19000290),
(1182, 19000291),
(1183, 19000292),
(1184, 19000293),
(1185, 19000294),
(1186, 19000295),
(1187, 19000296),
(1188, 19000297),
(1189, 19000298),
(1190, 19000299),
(1191, 19000300),
(886, 19001428),
(1192, 20000301),
(1193, 20000302),
(1194, 20000303),
(1195, 20000304),
(1196, 20000305),
(1197, 20000306),
(1198, 20000307),
(1199, 20000308),
(1200, 20000309),
(1201, 20000310),
(1202, 20000311),
(1203, 20000312),
(1204, 20000313),
(1205, 20000314),
(1206, 20000315),
(1207, 20000316),
(1208, 20000317),
(1209, 20000318),
(1210, 20000319),
(1211, 20000320),
(1212, 20000321),
(1213, 20000322),
(1214, 20000323),
(1215, 20000324),
(1216, 20000325),
(1217, 20000326),
(1218, 20000327),
(1219, 20000328),
(1220, 20000329),
(1221, 20000330),
(1222, 20000331),
(1223, 20000332),
(1224, 20000333),
(1225, 20000334),
(1226, 20000335),
(1227, 20000336),
(1228, 20000337),
(1229, 20000338),
(1230, 20000339),
(1231, 20000340),
(1232, 20000341),
(1233, 20000342),
(1234, 20000343),
(1235, 20000344),
(1236, 20000345),
(1237, 20000346),
(1238, 20000347),
(1239, 20000348),
(1240, 20000349),
(1241, 20000350),
(1242, 20000351),
(1243, 20000352),
(1244, 20000353),
(1245, 20000354),
(1246, 20000355),
(1247, 20000356),
(1248, 20000357),
(1249, 20000358),
(1250, 20000359),
(1251, 20000360),
(1252, 20000361),
(1253, 20000362),
(1254, 20000363),
(1255, 20000364),
(1256, 20000365),
(1257, 20000366),
(1258, 20000367),
(1259, 20000368),
(1260, 20000369),
(1261, 20000370),
(1262, 20000371),
(1263, 20000372),
(1264, 20000373),
(1265, 20000374),
(1266, 20000375),
(1267, 20000376),
(1268, 20000377),
(1269, 20000378),
(1270, 20000379),
(1271, 20000380),
(1272, 20000381),
(1273, 20000382),
(1274, 20000383),
(1275, 20000384),
(1276, 20000385),
(1277, 20000386),
(1278, 20000387),
(1279, 20000388),
(1280, 20000389),
(1281, 20000390),
(1282, 20000391),
(1283, 20000392),
(1284, 20000393),
(1285, 20000394),
(1286, 20000395),
(1287, 20000396),
(1288, 20000397),
(1289, 20000398),
(1290, 20000399),
(1291, 20000400);

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
(125, 'Admin', 'ALec', 'admin@gmail.com', NULL, '$2y$10$qmb.gOivxM6hB1Yoe/UFF.ufcV2V6t3/p9flSmWqDAbEBE6GzgkE6', 'admin', '1', NULL),
(883, 'Lec', 'ALec', 'lec@gmail.com', NULL, '$2y$10$ldJI8L4gdOtMhldBQNs1U.Xp8w77PnpIVy/jmziO7Bh/1X/7dvetC', 'lec', '1', NULL),
(885, 'Dulitha', 'Ratnayake', 'janithadevinratnayake@gmail.com', NULL, '$2y$10$6kCmvxWI0TDIbjtoNf9BsuPyDC9h8vyKoi/ftPYdhbNz4DHyJGLge', 'lec', '1', NULL),
(886, 'Janitha', 'Ratnayake', 'janithadevin@gmail.com', NULL, '$2y$10$6NGgeXLJVAMdk7216XrKd.sbEyOC.43r/ab/qh4aAMW4TTWCjUaH.', 'stu', '1', NULL),
(1087, 'Pradeep', 'Ratnayake', 'pradeepratnayake@gmail.com', NULL, '$2y$10$qxGOpcPsudVD3s8GVZs8eOm9nNDyTXMxe/xxlOmn90CjxwRpwg2wm', 'lec', '1', NULL),
(1088, 'Naveen', 'Senanayaka', 'naveensenanayaka@gmail.com', NULL, '$2y$10$OyRHI0TWu8E2ek4QhHOn8OLXQEVpkHpNww0K1SqGpbbCmcTuTMjYe', 'lec', '0', NULL),
(1089, 'Vidura', 'Abhayawickrama', 'viduraabhayawickrama@gmail.com', NULL, '$2y$10$bpSc/l2/Fho7uznQCQzskOrTVKxZNcWNV1v9KYhLpbgKRcTVG15jW', 'lec', '0', NULL),
(1090, 'Praveen', 'Bhawantha', 'praveenbhawantha@gmail.com', NULL, '$2y$10$z3.oOKNs7tUTHa.AMZsAc.9foczJCAKzXgIHoN8N7ytW/.xGe5sPy', 'lec', '0', NULL),
(1091, 'Hemal', 'Githmin', 'hemalgithmin@gmail.com', NULL, '$2y$10$SyDmfS7NTguniFsVofX5xu.v95Tbk0AujF0Mz7qKbpCaNTy0r6iaG', 'lec', '0', NULL),
(1092, 'Madampe', 'Gunasekera', 'madampegunasekera@gmail.com', NULL, '$2y$10$pZIWCuIcdqLMTzFepgOSFubZy69g4t0mUdsncupR0KfSENaG4ckfa', 'stu', '0', NULL),
(1093, 'Madampe', 'Lilavati', 'madampelilavati@gmail.com', NULL, '$2y$10$Bvf86dcddOAGIGRV9dWiHehPj/H2zOSbCxwcv7ZYP0zNFr.ZuL1Py', 'stu', '0', NULL),
(1094, 'Madampe', 'Wimaladharma', 'madampewimaladharma@gmail.com', NULL, '$2y$10$/n7YD5GydlLdy.DD6/ewR.yfmJQvX/u.IjyuCmfM7p28sACbpOxdW', 'stu', '0', NULL),
(1095, 'Madeera', 'Addararachchi', 'madeeraaddararachchi@gmail.com', NULL, '$2y$10$8nvaWuKP2JPiAfiBmny/w.OBnNFpjmSRIBi155reyQG832tGyKpuC', 'stu', '0', NULL),
(1096, 'Madhavi', 'Gunewardena', 'madhavigunewardena@gmail.com', NULL, '$2y$10$xjUFa85oNpyEM.hOjEESWu3NcyKPAAM/WHloOGQgKeReiixPsFfnO', 'stu', '0', NULL),
(1097, 'Madhavi', 'Jayamaha', 'madhavijayamaha@gmail.com', NULL, '$2y$10$AAMEVMu4E1ULetiaJlo7xO.8r4BLrGsvC.huworxSI81aElu1SDMC', 'stu', '1', NULL),
(1098, 'Madhubhashini', 'Chandrasiri', 'madhubhashinichandrasiri@gmail.com', NULL, '$2y$10$CPqWCSHLMHrfEs9.lnB/muVU/T6GbFuCQSQDqtVUu/0MIeir.1EzG', 'stu', '0', NULL),
(1099, 'Madhupani', 'Edirisinghe', 'madhupaniedirisinghe@gmail.com', NULL, '$2y$10$UReGdPFDV8aINZ/GlOiHAOZHbxyzq.glx3LR2Xm2MfvMeTj9MUd3K', 'stu', '0', NULL),
(1100, 'Madhupani', 'Thotawatte', 'madhupanithotawatte@gmail.com', NULL, '$2y$10$XRPqKE5BqI/9IMzl47QVEemNM8H6v8HbAxrIvpPdUP9Q.iPuSubRW', 'stu', '0', NULL),
(1101, 'Madubashine', 'Jayasuriya', 'madubashinejayasuriya@gmail.com', NULL, '$2y$10$MzsFJobe/4NLXPywQliRGOcW6AB5Z/sLxShI02BLBGrZ4ytIxM9cO', 'stu', '0', NULL),
(1102, 'Madubashine', 'Jayawickrama', 'madubashinejayawickrama@gmail.com', NULL, '$2y$10$zldLEwqI7ZAFjANkxUegWu8ms0KEXTykZgnJBSPE.ICkWhZclOHUW', 'stu', '0', NULL),
(1103, 'Maduka', 'Ekanayake', 'madukaekanayake@gmail.com', NULL, '$2y$10$368HEf9Om/Sk8Og29niJ4Oc79xHCbuZir6fji/1/LSB/iu9qlMiJq', 'stu', '0', NULL),
(1104, 'Madurawala', 'Gunewardena', 'madurawalagunewardena@gmail.com', NULL, '$2y$10$aQlK.IQfb4vEeui6ue2NXOquQ3z1ZX8Z9qhZmii5taawiKJ8NysLW', 'stu', '0', NULL),
(1105, 'Madurawala', 'Illangasinghe', 'madurawalaillangasinghe@gmail.com', NULL, '$2y$10$cbs8ZBEx6lnYj.w4OWjX6OD1XCk4wqVaOm1dtNrtF84qZyz8OYCWe', 'stu', '0', NULL),
(1106, 'Madurika', 'Malewana', 'madurikamalewana@gmail.com', NULL, '$2y$10$BQyN3EGh6fqHwRPdaNApU.ZApJbW3oa9SGeTpva068b.okZS/rsMG', 'stu', '0', NULL),
(1107, 'Madusanka', 'Nanarama', 'madusankananarama@gmail.com', NULL, '$2y$10$4T1295R9gDByzsjODj.Qa.4OnjVsijMs4MZ8Fxk/6HgjHdV3zrJCW', 'stu', '0', NULL),
(1108, 'Madushani', 'Jayasena', 'madushanijayasena@gmail.com', NULL, '$2y$10$H6pH8TK2.ROXQRIYtl9qxecBVi.YPxEwmOj6MWSQBHUuyos2JA2jm', 'stu', '0', NULL),
(1109, 'Maduwanthi', 'Dhanapala', 'maduwanthidhanapala@gmail.com', NULL, '$2y$10$r3LjDqVV6D6gUWK9GSNuAeKtgP5pdqLYAO478wE9eayYDYT191j9q', 'stu', '0', NULL),
(1110, 'Maduwanthi', 'Dharsha', 'maduwanthidharsha@gmail.com', NULL, '$2y$10$DdKSxQLcHfqJA.u5lMbC1OvC7oyng2UGQ.y/hpKeUMs2O1Wmdf6Fe', 'stu', '0', NULL),
(1111, 'Maheshika', 'Gnanananda', 'maheshikagnanananda@gmail.com', NULL, '$2y$10$JGwHQYPAJGbfKhc3gJBKIOw7Kt3UFKDOTgoZuSp8mehLYTRs8KfHy', 'stu', '0', NULL),
(1112, 'Maheshika', 'Shantha', 'maheshikashantha@gmail.com', NULL, '$2y$10$1XymqIMnJoZo938LKBDhwOvvfAC.vMzT55Fq13j.A1Xjdpx07nF0S', 'stu', '0', NULL),
(1113, 'Mahinda', 'Kumaranatunga', 'mahindakumaranatunga@gmail.com', NULL, '$2y$10$ZX6RMIrVuwJl/BZyiVxONeG4Lt6CFV5P58uGRRhXxTcCmn7Mu9XoK', 'stu', '0', NULL),
(1114, 'Malinda', 'Gajabahu', 'malindagajabahu@gmail.com', NULL, '$2y$10$UPqarqL5qXbFtXwtV.hCaOvsdwnLaKmM0yhFnQBO/mz2mNMDLT.0y', 'stu', '0', NULL),
(1115, 'Malintha', 'Jayatilleka', 'malinthajayatilleka@gmail.com', NULL, '$2y$10$8q9VS0UyGx.uFt1f1blcXedXDcl7tT.ezpD4WxJtUtofIDLkJFwni', 'stu', '0', NULL),
(1116, 'Malintha', 'Suriyasena', 'malinthasuriyasena@gmail.com', NULL, '$2y$10$LjLldeyW5x9/XcW8TlMaGuKvN0PMnek5XO2CHHEddyTrKBxwd3ELq', 'stu', '0', NULL),
(1117, 'Malithi', 'Jayatilleke', 'malithijayatilleke@gmail.com', NULL, '$2y$10$iUsv8jfxKSiaZt8M2CSDfeIae4JjgMUA/VNS3U/aOwUsYG/7yM0gm', 'stu', '0', NULL),
(1118, 'Maneesha', 'Amarasekara', 'maneeshaamarasekara@gmail.com', NULL, '$2y$10$RaF8YAy.n3KJ5cN/zE1daOw8eI2zyFdCjIgm/TjDwbhlpZVQwCFYi', 'stu', '0', NULL),
(1119, 'Maneesha', 'Iriyagolla', 'maneeshairiyagolla@gmail.com', NULL, '$2y$10$LPBj7oJQZakLFIhxayLy8Ouns9wvMcxxd1fgZOT54I2FSbhMDiP6.', 'stu', '0', NULL),
(1120, 'Mangala', 'Ponnamperuma', 'mangalaponnamperuma@gmail.com', NULL, '$2y$10$EGanoPsmxFcqWW16S.Xt6egGjsPogKI5eqlfUp5OCAKPrXEkYI.1u', 'stu', '0', NULL),
(1121, 'Manisha', 'Bandaranaike', 'manishabandaranaike@gmail.com', NULL, '$2y$10$3ZH6tJ8KcwS1vOsCmhKuCuuC1db9s.8Zbjb.CggoCtrCTpdlE7D0e', 'stu', '0', NULL),
(1122, 'Manoj', 'Jayatissa', 'manojjayatissa@gmail.com', NULL, '$2y$10$YQNgOmY4BCpQAE1qDKy9bOp4KCuCfKE4dPQzpAr7SyZvTA3YPJnzO', 'stu', '0', NULL),
(1123, 'Manori', 'Gnanananda', 'manorignanananda@gmail.com', NULL, '$2y$10$Uzj1SkX8fcdJBdPiubjf.eQ0YMd7SIvT9uYh3CIF4HQ2eg3Tw0zKS', 'stu', '0', NULL),
(1124, 'Manuja', 'Lilavati', 'manujalilavati@gmail.com', NULL, '$2y$10$s0CVrnCu47XaybNRoGY./OzgZ0Tnul.8j7GB9dzOeT/Y1Cn3A7QU.', 'stu', '0', NULL),
(1125, 'Marlon', 'Dissanayake', 'marlondissanayake@gmail.com', NULL, '$2y$10$a45yvCwBHYHWBeFo9q84BO02vwNrmtoeNxOJLNbRXs8rMMn2bs0uS', 'stu', '0', NULL),
(1126, 'Marlon', 'Dodangoda', 'marlondodangoda@gmail.com', NULL, '$2y$10$sX5h6N7RXPaEGg/D1dn6ZOWX0Sj2lASEQWOVmoBGUz3JjswPGttP6', 'stu', '0', NULL),
(1127, 'Marlon', 'Ponnamperuma', 'marlonponnamperuma@gmail.com', NULL, '$2y$10$ugQUDHnbrJy6A1nLeTu83.BZxOa6L/jD3RoYsnNW1cpch.EQof4xG', 'stu', '0', NULL),
(1128, 'Mayomi', 'Rahula', 'mayomirahula@gmail.com', NULL, '$2y$10$xpbU3O1HduHLVIVS9JVg7Ocij2j5az3mG5cv5.iQxsfxElfj5gL2m', 'stu', '0', NULL),
(1129, 'Melani', 'Dissanayake', 'melanidissanayake@gmail.com', NULL, '$2y$10$K9oUJZu6puTTHseGreb2cO1Vm01Eg0EX66eImX7aQSO6/nsnufCo.', 'stu', '0', NULL),
(1130, 'Melani', 'Herath', 'melaniherath@gmail.com', NULL, '$2y$10$xrfEa1VpdvA6m2P0G4HGm.5MVLGG6.jB04yvn4aKIo/chC5Fk60Hy', 'stu', '0', NULL),
(1131, 'Menuka', 'Jayawardena', 'menukajayawardena@gmail.com', NULL, '$2y$10$jocTvnAQqO3VDLYX17x4FOARVFQjSaz1KEpCxARXqkEpjhCRwXBo2', 'stu', '0', NULL),
(1132, 'Mihirani', 'Kumaratunga', 'mihiranikumaratunga@gmail.com', NULL, '$2y$10$4lLqdCRZw5YXxv8SqtYd0eNJh8iQaTl6WVTKDnIJ3mPCwvDQ/vatW', 'stu', '0', NULL),
(1133, 'Miyushan', 'Goonesekara', 'miyushangoonesekara@gmail.com', NULL, '$2y$10$AgznCP3DtuuOVWuMx9k0J.qdH3IN4agVFWaOYmZoMPPyaDvQljiYG', 'stu', '0', NULL),
(1134, 'Monika', 'Chandawimala', 'monikachandawimala@gmail.com', NULL, '$2y$10$Hd0pZO5tW2RAkdrHJ90H1O.81fYrsa4l4Ms1ApJ1dyfHuk8ig2eDK', 'stu', '0', NULL),
(1135, 'Mudannayake', 'Gajabahu', 'mudannayakegajabahu@gmail.com', NULL, '$2y$10$ROPmbvXwznLZCQyYg5yCL.7B8UFQCLfK4V06AprY9OQ6H6K.yJkhW', 'stu', '0', NULL),
(1136, 'Mudannayake', 'Kumaranatunga', 'mudannayakekumaranatunga@gmail.com', NULL, '$2y$10$uQpuDmFT69JwOzDazsDRZOJPeANSflnZSZNWKbJBGaW/1CehUHK5S', 'stu', '0', NULL),
(1137, 'Nadeeja', 'Goonesena', 'nadeejagoonesena@gmail.com', NULL, '$2y$10$6o2NiZiLRUR7EdZwjvktMu2Xqx8EO/duvbPQmsJtqTpmA3p9l1s5C', 'stu', '0', NULL),
(1138, 'Nadeeja', 'Weerasinghe', 'nadeejaweerasinghe@gmail.com', NULL, '$2y$10$ERDeJidyy8g03hvt.AVk4upjwIUba3lMhSte9YDpjK8PIIznlEJiK', 'stu', '0', NULL),
(1139, 'Nanayakkara', 'Athulathmudali', 'nanayakkaraathulathmudali@gmail.com', NULL, '$2y$10$wjIoj0gE1PQNXsbU7svtfekbZnfLax0ilTD36/1DYUxbMxmpfEcBu', 'stu', '0', NULL),
(1140, 'Navarathna', 'Kanakeratne', 'navarathnakanakeratne@gmail.com', NULL, '$2y$10$QS2NzDXr9o3PGULX3ZA59O/vYPzjd9nefSW/imtTWUjzbB7UyDK.S', 'stu', '0', NULL),
(1141, 'Navarathna', 'Weerakoon', 'navarathnaweerakoon@gmail.com', NULL, '$2y$10$2f/5X7vtSlpvXBcsFAl.PevDjNg3fmTBfIZuDBHASijn2huqSaaOW', 'stu', '0', NULL),
(1142, 'Nayana', 'Tilakaratna', 'nayanatilakaratna@gmail.com', NULL, '$2y$10$W6HW7ooP/gOVuEyMxG9IyeAb7GViglbit/K9FUXmuD4ZbHSPyUf1a', 'stu', '0', NULL),
(1143, 'Nayanadini', 'Nandasiri', 'nayanadininandasiri@gmail.com', NULL, '$2y$10$YYfJzKYjEfDdPglZjVhncOpAejt8VN70wiLUQ7qtfsI7uT2wHBMh.', 'stu', '0', NULL),
(1144, 'Nayananda', 'Wijewardene', 'nayanandawijewardene@gmail.com', NULL, '$2y$10$K.BphBr7VwhEUbAuHbAGv.C9sgShQexYCAlQ7LsRHymktVeQW0gjC', 'stu', '0', NULL),
(1145, 'Neja', 'Amarasekara', 'nejaamarasekara@gmail.com', NULL, '$2y$10$3ZVjfgidT.rhLQ.VVb8xjewNbz4.LOcURrRwe0rJ8Rv4xxi6JrK3a', 'stu', '0', NULL),
(1146, 'Neja', 'Ekanayake', 'nejaekanayake@gmail.com', NULL, '$2y$10$DFWwdRm/ixePl13o9fMlC.cEiKXbXKCJJdKfW7RAHmFkx7f1FI.E6', 'stu', '0', NULL),
(1147, 'Neja', 'Jayatilleka', 'nejajayatilleka@gmail.com', NULL, '$2y$10$GPk4dwSlaqijj40169LiQugrhx0XJd3L/hGxk3z.rQRfIm/AKf2G2', 'stu', '0', NULL),
(1148, 'Nelaka', 'Senanayake', 'nelakasenanayake@gmail.com', NULL, '$2y$10$WQZGVRWSq4M5aofe6Yy2B.jULNwfx8k6D8G/Ioq.qMOE/GIZjV9Si', 'stu', '0', NULL),
(1149, 'Nelith', 'Senarath', 'nelithsenarath@gmail.com', NULL, '$2y$10$9QuwOfJPa7Ke2JlWl/F5ie7YYLNnWeuHCd5IHLxldh/ewUow5qB2a', 'stu', '0', NULL),
(1150, 'Nelum', 'Gamage', 'nelumgamage@gmail.com', NULL, '$2y$10$IUXQrSbCspRsZmeS7FSaleSFa3dNPrU7c4El/oKjXyUaLlUEMEdcu', 'stu', '0', NULL),
(1151, 'Neranjan', 'Jagath', 'neranjanjagath@gmail.com', NULL, '$2y$10$T15Vl9m.sjlPPTJd2g/Tp.tH9EostnoaO36755lSejflQOmUplkou', 'stu', '0', NULL),
(1152, 'Nethaka', 'Medhananda', 'nethakamedhananda@gmail.com', NULL, '$2y$10$inWmqxBlMmOmEny/Aksa4ORZ/MZuBHLOXKsqNFtycA3NwHdzM9tIC', 'stu', '0', NULL),
(1153, 'Nethranjali', 'Kularatne', 'nethranjalikularatne@gmail.com', NULL, '$2y$10$8cFzk2AW2JD5iU8A0.jmQevnPuPAUJX9rfNp3uS55Xb3w54Xqexda', 'stu', '0', NULL),
(1154, 'Nilaksha', 'Ekanayake', 'nilakshaekanayake@gmail.com', NULL, '$2y$10$aJI43dNIsSHd9w52.Gm44eTDK.K17r4su2veahbHzQkFRS4txfb1G', 'stu', '0', NULL),
(1155, 'Nilantha', 'Chandrasiri', 'nilanthachandrasiri@gmail.com', NULL, '$2y$10$J4nGaXVlvtJAhZMu4IsbYuG6BQzjMXSTmuol/a5B8VGr6oK7lZ9re', 'stu', '0', NULL),
(1156, 'Nilmini', 'Dewasiri', 'nilminidewasiri@gmail.com', NULL, '$2y$10$p7uBocTIOWX2jvR9ZRVjJuCkpWOBTx7Ri0Xv926Ci1DIxtRj8L5nu', 'stu', '0', NULL),
(1157, 'Niluka', 'Kulatunga', 'nilukakulatunga@gmail.com', NULL, '$2y$10$Ci0vHG8mJHtIWxDp8pXlTe..8m4mxGcO5QUt/Oiu8x62OIc1NJRXy', 'stu', '0', NULL),
(1158, 'Nilusha', 'Wimalasuriya', 'nilushawimalasuriya@gmail.com', NULL, '$2y$10$Ij4oM6VWWA.NJ2g2aj22jOrXmOwYp0f8rcKxMGLpYjgGtw1uqBY0m', 'stu', '0', NULL),
(1159, 'Nilushana', 'Jayamaha', 'nilushanajayamaha@gmail.com', NULL, '$2y$10$QFJjnT0bJmccPJq.PKmGfejj7tMgE614HC/t4ICqOUIyWOsSwnQFm', 'stu', '0', NULL),
(1160, 'Nimna', 'Amaradeva', 'nimnaamaradeva@gmail.com', NULL, '$2y$10$751nQhgQXQQy5z4XtoSEh.ZCJWOmsAKgXvJ1Y7kLc6cw6WfKeZkp2', 'stu', '0', NULL),
(1161, 'Nimthaki', 'Sumangala', 'nimthakisumangala@gmail.com', NULL, '$2y$10$COTznolIpOnqNWCkRMiGcunHtesh3d86GtkhzHWwRQk.aEE0I7amO', 'stu', '0', NULL),
(1162, 'Niranga', 'Lankage', 'nirangalankage@gmail.com', NULL, '$2y$10$x4Ugar4.bcaElNzUiMdi8.k9cw0YHz3Br6dfQF81voccrOgEPLPKW', 'stu', '0', NULL),
(1163, 'Niranji', 'Nissanka', 'niranjinissanka@gmail.com', NULL, '$2y$10$kOuxD/TaU/KBPFrRwNCt8.CbGMEmf3Ai20bYD7Qc6EJ5TKZIx58ne', 'stu', '0', NULL),
(1164, 'Nirasha', 'Gamage', 'nirashagamage@gmail.com', NULL, '$2y$10$.ZntaYfVZYSf4TF/5pe7l.aIPnS.B5c7oOUei5a77jUUMqdQR5YEW', 'stu', '0', NULL),
(1165, 'Nirmal', 'Senanayake', 'nirmalsenanayake@gmail.com', NULL, '$2y$10$0hPjqVqjSwQHhgTX9hKVv.kKorVqAGvHLkQpqVfro9133L.kxphqy', 'stu', '0', NULL),
(1166, 'Nisal', 'Nandasiri', 'nisalnandasiri@gmail.com', NULL, '$2y$10$MagQfXXbvdJP.VZWLE16uOzKCeSJd.oNpL11KS92UvJV0eZCCYkh2', 'stu', '0', NULL),
(1167, 'Nisanka', 'Vithanage', 'nisankavithanage@gmail.com', NULL, '$2y$10$cx1fScdlimabE8F/pEQg8O9M9OV399i8nffCBmP6j.3vzNgaf9VlK', 'stu', '0', NULL),
(1168, 'Nisansala', 'Chandawimala', 'nisansalachandawimala@gmail.com', NULL, '$2y$10$9cIY8dVmD/i1DxlFBzWBBOhC5bt/k8nRgVKpZwJKgZ38u0PgROMVy', 'stu', '0', NULL),
(1169, 'Nishadi', 'Ranaweera', 'nishadiranaweera@gmail.com', NULL, '$2y$10$f8T5LQ/HZdYC3wMp0DYEguFf0rR65URfDjGoN4dlTRufpRvmbcLsq', 'stu', '0', NULL),
(1170, 'Nishal', 'Samaraweera', 'nishalsamaraweera@gmail.com', NULL, '$2y$10$O7L04yQYr3Z4BdbvXK318OfFQU7ioQJr3HhniFeR528LqYxOBOC8i', 'stu', '0', NULL),
(1171, 'Nishan', 'Illangasinghe', 'nishanillangasinghe@gmail.com', NULL, '$2y$10$kin7lPYIobIa0QnQFy2NeeYw9KDjPvawbDb7fKjF8cMMS8R6Kktta', 'stu', '0', NULL),
(1172, 'Nishshanka', 'Dharsha', 'nishshankadharsha@gmail.com', NULL, '$2y$10$WhMlSTInTF3qi4LhO42.4OyGnv//DZ4QZt7xdh6nZ0kKis1uSnWpq', 'stu', '0', NULL),
(1173, 'Nissan', 'Gooneratne', 'nissangooneratne@gmail.com', NULL, '$2y$10$486jAnYCO3oBOzR.1.yJ5ukUmSonZycE/fqQbUD8B0Zzb/k4ZCVWu', 'stu', '0', NULL),
(1174, 'Niwanthi', 'Jayasuriya', 'niwanthijayasuriya@gmail.com', NULL, '$2y$10$NxNvInV4pbbrj1OLiUVUi.TsngXUUJabcljN8ENsgTF52WCLpODj2', 'stu', '0', NULL),
(1175, 'Nushan', 'Addararachchi', 'nushanaddararachchi@gmail.com', NULL, '$2y$10$wEsawK9bGpVjb2XnxxOGS.KIcY3.Pn8xhY6eqLOpi8ZnLfafTzYcm', 'stu', '0', NULL),
(1176, 'Nuveena', 'Kumaranatunga', 'nuveenakumaranatunga@gmail.com', NULL, '$2y$10$BTTQR94qHxrYx4mp0p014O/EM39NBzvlPFeSlw/Cl51XBDlqOcYjK', 'stu', '0', NULL),
(1177, 'Omeshi', 'Dharmagunawardhana', 'omeshidharmagunawardhana@gmail.com', NULL, '$2y$10$mOjQG.n1suhdUbHv1.Y.ceXXGyFtxr6e0lelUt/sfTJBRtwLies3i', 'stu', '0', NULL),
(1178, 'Omeshi', 'Lankage', 'omeshilankage@gmail.com', NULL, '$2y$10$/FY2CtuNjEPRVQnr5k4V1u9XonNGDjN/jLc1n22nTA0Q6e0dswI1y', 'stu', '0', NULL),
(1179, 'Oshadhi', 'Madugalle', 'oshadhimadugalle@gmail.com', NULL, '$2y$10$4BkernZiU4XOMfjSSY42bukgwR8vNGw27U3gMyR//j6D5681rB1kq', 'stu', '0', NULL),
(1180, 'Oshadhi', 'Walpola', 'oshadhiwalpola@gmail.com', NULL, '$2y$10$lKa6z8.qZYcgfsE6OG8h4OtlOe1hRlK73LAr9yXnAxL3U3J45CQ/y', 'stu', '0', NULL),
(1181, 'Padmakumara', 'Gooneratne', 'padmakumaragooneratne@gmail.com', NULL, '$2y$10$bnGXOCHxU6uDIk54LjKTBeohI/ebArygHDbIJU/6dh/kJ2zgc0Rli', 'stu', '0', NULL),
(1182, 'Palitha', 'Illangasinghe', 'palithaillangasinghe@gmail.com', NULL, '$2y$10$BVTbkkOJfhkMu40Yt38zjudz4QItgWPFvfFjwPx2eCS5zHCXecGlK', 'stu', '0', NULL),
(1183, 'Pannala', 'Dharsha', 'pannaladharsha@gmail.com', NULL, '$2y$10$/AJq5p6wcEpqcUJXm9lf1eJcCjgYhHRaC9uLhqt2azphp6HJ7s9vG', 'stu', '0', NULL),
(1184, 'Parami', 'Lankage', 'paramilankage@gmail.com', NULL, '$2y$10$e5Phj9GQZiMh9Lp9eLz3GOJOHH4h7t4bP3SDHgwicTEbp2vu76Cwm', 'stu', '0', NULL),
(1185, 'Pasan', 'Gunasekera', 'pasangunasekera@gmail.com', NULL, '$2y$10$OETwCge/n.K7X1i8w8RuO.YF3qVsicfXes.KqSO3xiN3N2AhYcZoq', 'stu', '0', NULL),
(1186, 'Pasan', 'Hettige', 'pasanhettige@gmail.com', NULL, '$2y$10$aFwwkP4J2x6sef12iy08nuX3Uk4zlnfTqVk1zSsFlcRC5UyliAK/q', 'stu', '0', NULL),
(1187, 'Pavithra', 'Kannangara', 'pavithrakannangara@gmail.com', NULL, '$2y$10$yjNmYtXblx7zu6VlRwG7feuJqsEQI62atGlouDU7JJWBP/RPYLvu2', 'stu', '0', NULL),
(1188, 'Pavithra', 'Saranankara', 'pavithrasaranankara@gmail.com', NULL, '$2y$10$umxoyIrn9eXZf3NWz0zSx.gUGMDQUP5egcLqURWBOR6IxLw8FIKL2', 'stu', '0', NULL),
(1189, 'Perera', 'Sangakkara', 'pererasangakkara@gmail.com', NULL, '$2y$10$sYp/xNnnq0cR2vnS3foRXOjqiwV29qyPYQeOqJsQiwJGWCwMGtZmS', 'stu', '0', NULL),
(1190, 'Peshila', 'Bandara', 'peshilabandara@gmail.com', NULL, '$2y$10$aXVx1srV1jtNuYfVp4r1tOn7Rd0EejYLe4DFG6Qkj6GAtpDDIjNDS', 'stu', '0', NULL),
(1191, 'Piumi', 'Devenampiyatissa', 'piumidevenampiyatissa@gmail.com', NULL, '$2y$10$qzB2GU2g1pFsaAlwhQ8wDO25WYMe.vAziScijZKF7xvWBwalPdRTO', 'stu', '0', NULL),
(1192, 'Poornima', 'Gunasekera', 'poornimagunasekera@gmail.com', NULL, '$2y$10$eXMJNeyHcHgcbCbreKNXOOJfhLkyhKgYrC02piy.fBD3SjX3./CcK', 'stu', '0', NULL),
(1193, 'Prabath', 'Suriyasena', 'prabathsuriyasena@gmail.com', NULL, '$2y$10$hYyX.Ai5EoYnzGJWnFl1uu14L2RVc73kEKzzQjBUTG7wFFKbS4TGW', 'stu', '0', NULL),
(1194, 'Prabha', 'Kumaratunga', 'prabhakumaratunga@gmail.com', NULL, '$2y$10$7eoXXhFF6pupYOKebbexGOJvSUZ54w21AlLv.twvHytGaUpxnK64W', 'stu', '0', NULL),
(1195, 'Prabha', 'Wickremasinghe', 'prabhawickremasinghe@gmail.com', NULL, '$2y$10$50L8/CXq0bmqPLsUMbviiOn1BCYS5fSSbpC0XMnmetYzRxkm98The', 'stu', '0', NULL),
(1196, 'Prabhalini', 'Dodangoda', 'prabhalinidodangoda@gmail.com', NULL, '$2y$10$ZzS2vKoxNUWvy.c/20tUTeuQOQn25yTHZ62ZobmE4Pj6DrI5mt022', 'stu', '0', NULL),
(1197, 'Prabhalini', 'Vithanage', 'prabhalinivithanage@gmail.com', NULL, '$2y$10$f4ATrf7IL5VD5405peNT1u638USQG4LNRQPenYIGNGta8hJAWLZCC', 'stu', '0', NULL),
(1198, 'Prageeth', 'Goonesena', 'prageethgoonesena@gmail.com', NULL, '$2y$10$t/PT/rd6LmGdHPkiYim0nOF2ebKG4HCy9eVCPdoBFw1a4Tn7yVHU2', 'stu', '0', NULL),
(1199, 'Prageeth', 'Jayaweera', 'prageethjayaweera@gmail.com', NULL, '$2y$10$SPLPsDVKPS0bQL0Q96ZBdOXWkSEyhniYRfsjzpbVgZVePo4mOfjfS', 'stu', '0', NULL),
(1200, 'Prageeth', 'Silu', 'prageethsilu@gmail.com', NULL, '$2y$10$eYaQOPvlL8lShxu2.bYbnOnHAj16eDDbsRbhHdkb9UuHvRUJ7kFTm', 'stu', '0', NULL),
(1201, 'Pramila', 'Prasanna', 'pramilaprasanna@gmail.com', NULL, '$2y$10$j7epv924ZkhUavdW/IQ65OlAcEGCJWyuZ1dWVnGtV5q035fZk.wwu', 'stu', '0', NULL),
(1202, 'Pramila', 'Wickremasinghe', 'pramilawickremasinghe@gmail.com', NULL, '$2y$10$UieD8quZmIWkWKfH8mn5suGl.l3HA2QxQivVxRj1PKR3bbxL6qWlq', 'stu', '0', NULL),
(1203, 'Pranama', 'Serasinghe', 'pranamaserasinghe@gmail.com', NULL, '$2y$10$X5Soz60EUTmU/e84SKQHour9RRDkisuciS2JmrECW8z7KSykUXL/q', 'stu', '0', NULL),
(1204, 'Prasad', 'Serasinghe', 'prasadserasinghe@gmail.com', NULL, '$2y$10$4QTie6o6xuhbD3vjBatJ3eVdMw9HqkS3VQumdof4n61qzoaftkAvq', 'stu', '0', NULL),
(1205, 'Prasadi', 'Lilavati', 'prasadililavati@gmail.com', NULL, '$2y$10$QNAHXP4s86QU6tEsdszTYuOuZUAzDGVWkzt.II0RaPzEuh9dHwO0u', 'stu', '0', NULL),
(1206, 'Prasadika', 'Samarakoon', 'prasadikasamarakoon@gmail.com', NULL, '$2y$10$x8MvHsBHsXOPZPtmLlEiUuPMfRR14YcBjpRgTFFwBzWhJHBDxBrqC', 'stu', '0', NULL),
(1207, 'Prasangi', 'Jayewardene', 'prasangijayewardene@gmail.com', NULL, '$2y$10$8g3Yb1F9zC/mfuBymOpOK.1f4RlG/rMLNLuQV5LiIKXRDdNE5UUZy', 'stu', '0', NULL),
(1208, 'Priya', 'Gunawardena', 'priyagunawardena@gmail.com', NULL, '$2y$10$LQMYBIn70p9SCzIC9PE6buV/QCp5ZrepNXjo4ngyKQrKtdA3.ZlHS', 'stu', '0', NULL),
(1209, 'Priyana', 'Gunewardene', 'priyanagunewardene@gmail.com', NULL, '$2y$10$L1IVaPK1i6ELGXc4O7aUJujJQt8HXAk8pbC.91yvVrX0mNZHIbwYO', 'stu', '0', NULL),
(1210, 'Priyana', 'Iriyagolla', 'priyanairiyagolla@gmail.com', NULL, '$2y$10$B3cSeAQISb4OeM95mps6/OF5gp.vIZUEzG80h/7Lhomu0HwucTO9e', 'stu', '0', NULL),
(1211, 'Priyana', 'Jayawardene', 'priyanajayawardene@gmail.com', NULL, '$2y$10$sZNHcL8K3uX76ZZSjZJxP.ihSbvyOyqvjiZHg0lj0I7V/sp9EVvgW', 'stu', '0', NULL),
(1212, 'Priyanka', 'Dissanayake', 'priyankadissanayake@gmail.com', NULL, '$2y$10$cOk4XB2CyBHcgDeOelq5..oZcGxqErsiRXfGYkyxJybKG6visNy0e', 'stu', '0', NULL),
(1213, 'Priyanka', 'Pannaseeha', 'priyankapannaseeha@gmail.com', NULL, '$2y$10$gxZj.kNrrTGlEPDJ.zfnMueVgjOvCVrCqNrn6Vxu0Ybc4r/9c64aW', 'stu', '0', NULL),
(1214, 'Purnima', 'Fernando', 'purnimafernando@gmail.com', NULL, '$2y$10$t5Vwf3gZwBEA6XwBEMn4zeLqrySf353qb3KpoVaFqVxPv2nsyKZ2i', 'stu', '0', NULL),
(1215, 'Purnima', 'Vithanage', 'purnimavithanage@gmail.com', NULL, '$2y$10$AnKkR4WS6ihV9MONqpNDAu.RQkn83vBsvDtptnWsVjw9RNXi1cHcK', 'stu', '0', NULL),
(1216, 'Pushpakumara', 'Palihapitiya', 'pushpakumarapalihapitiya@gmail.com', NULL, '$2y$10$nVJSLq4gmNLdoHzBFrK5d.Fz6fpzQjOZ.I7Y7ABWGW2cBsim4vP6a', 'stu', '0', NULL),
(1217, 'Ranasingha', 'Kotelawala', 'ranasinghakotelawala@gmail.com', NULL, '$2y$10$5EGOmT/JV4FAudkFNhw9/O7ZuJhM2ZLV15b9uoXaUN6KVzVKGupUe', 'stu', '0', NULL),
(1218, 'Ranawakkage', 'Kulasinghe', 'ranawakkagekulasinghe@gmail.com', NULL, '$2y$10$9luMa6/Ntsz5OYQS0R5zk.aGf/ITaI/w.vHlV.C/IcSHA/E2nFcve', 'stu', '0', NULL),
(1219, 'Ranawakkage', 'Vithanage', 'ranawakkagevithanage@gmail.com', NULL, '$2y$10$AzAZSHh8Dko92IFDs1LWDemKd1SQsVZN8FwMNwu9EN85osKaEUi8W', 'stu', '0', NULL),
(1220, 'Ranaweera', 'Fernando', 'ranaweerafernando@gmail.com', NULL, '$2y$10$vQGgZOEcTiRX5B2zBM1dR.71uSZT.8iSt4dPd.SlLwqT8Ke2Co11e', 'stu', '0', NULL),
(1221, 'Ranaweera', 'Nissanka', 'ranaweeranissanka@gmail.com', NULL, '$2y$10$Sct9HuabdQJGUvH2L2Cj1u.8NyaN4aq5IA3i3aVsGG3UhMjHTGjL.', 'stu', '0', NULL),
(1222, 'Randika', 'Kumaranatunga', 'randikakumaranatunga@gmail.com', NULL, '$2y$10$ey5EylaqX1Y.akJ0ZbVCku3G7.Ij7JveUyMbLDxjDOgRFtAJ0xuzC', 'stu', '0', NULL),
(1223, 'Rangi', 'Bandaranaike', 'rangibandaranaike@gmail.com', NULL, '$2y$10$JBQuQxxmAbIXzZ0jy5Q8/uKLtQZTttvqGTpSOlh4olMZuQ/G5Edq.', 'stu', '0', NULL),
(1224, 'Ransara', 'Karannagoda', 'ransarakarannagoda@gmail.com', NULL, '$2y$10$ECnfi7xLXVFh9TGVi6nhxerGA4YAxmDqoOHLY42lhZetreyLVbE4m', 'stu', '0', NULL),
(1225, 'Ranuga', 'Dahanayake', 'ranugadahanayake@gmail.com', NULL, '$2y$10$CfwnnAXJzDX1miDvnJW5yuMIvpNruPCrqqlHaSSFbj5v41fhZ01.2', 'stu', '0', NULL),
(1226, 'Ranuga', 'Jararatne', 'ranugajararatne@gmail.com', NULL, '$2y$10$Wd4xnDTzmq0PRgdpM73Ew.VDjSKINtRY25m4dwNxER8uzDnFTV9BO', 'stu', '0', NULL),
(1227, 'Rathunga', 'Bandaranayake', 'rathungabandaranayake@gmail.com', NULL, '$2y$10$3OW1g4hHHL60pRfwa4wV..Js7Q8OKob3HsLF7eaJYgjkuvTBQxTry', 'stu', '0', NULL),
(1228, 'Raveena', 'Paranavithana', 'raveenaparanavithana@gmail.com', NULL, '$2y$10$wCPM0mhpNSYh3LNSLHOYpudgnMuhfS3FcGsrC8m1iHbbtb2rgum8y', 'stu', '0', NULL),
(1229, 'Ravindu', 'Pathirana', 'ravindupathirana@gmail.com', NULL, '$2y$10$cfkBYjg0wYgvzbmpfeJgaOnc4hZEjaLLO/MIqR1E1mHhP7BKr0F22', 'stu', '0', NULL),
(1230, 'Rodrigo', 'Pathiraja', 'rodrigopathiraja@gmail.com', NULL, '$2y$10$nUoSdun/2mNGMftHMccF3ePzR4crFWdtP1YnmciCoIPbm.mM4GBcS', 'stu', '0', NULL),
(1231, 'Rohan', 'Jagath', 'rohanjagath@gmail.com', NULL, '$2y$10$7.jh59VedFLIv3dN5SJRAexKGOIsadBlOZE9vYYhUcsubN0dMIxyW', 'stu', '0', NULL),
(1232, 'Rohana', 'Siriwardena', 'rohanasiriwardena@gmail.com', NULL, '$2y$10$cXRXGmCMjs3DFuhOb8hj1.nyLVFUN28CRCB0K1Iza4wZuv8qbO74u', 'stu', '0', NULL),
(1233, 'Roshen', 'Balasuriya', 'roshenbalasuriya@gmail.com', NULL, '$2y$10$iHbPNhGOBiJmiM0tcqBFnOr/DphPjJfiGa8ixWHVo0xw/9TWuu74e', 'stu', '0', NULL),
(1234, 'Rubathas', 'Jayawardena', 'rubathasjayawardena@gmail.com', NULL, '$2y$10$CqZTg/HMTLV5amyfuiOya.d680q5S1dPoHfWtPcH0kSPWiDwF6Z0e', 'stu', '0', NULL),
(1235, 'Ruklanthi', 'Amarashinghe', 'ruklanthiamarashinghe@gmail.com', NULL, '$2y$10$pztmRV71T6VpsHoHG6fcWuo0XxBLHQcXhZFhL...dreAFX5SvWfiq', 'stu', '0', NULL),
(1236, 'Rukman', 'Premaratne', 'rukmanpremaratne@gmail.com', NULL, '$2y$10$Hb5rVoPY7x6H2bF8mVKWPeF2yvVJfk3.ZxL7cC0nadhH2e1j5T0F6', 'stu', '0', NULL),
(1237, 'Ruparathna', 'Gajabahu', 'ruparathnagajabahu@gmail.com', NULL, '$2y$10$8JHUujZJniVF7yMzmmQn0em7v22kiH8vFqNNU7i4lY4pg1DSu88iq', 'stu', '0', NULL),
(1238, 'Rupasinghe', 'Silu', 'rupasinghesilu@gmail.com', NULL, '$2y$10$YKNU0EiKUzDGkrDmR72EOOxrxOclk7mXUioz6sZGYdjw6vir7g3H2', 'stu', '0', NULL),
(1239, 'Ruvini', 'Pathirana', 'ruvinipathirana@gmail.com', NULL, '$2y$10$GOR69wN.YwtnJLBm31bFxey56KMJjMkLcTKnLzCRFP/6p3K2g1clC', 'stu', '0', NULL),
(1240, 'Ruwani', 'Walpola', 'ruwaniwalpola@gmail.com', NULL, '$2y$10$vpQ7/550nVX2CRkQNGGO8.kcQ.gs.RoIVkwND90LcshztKkUZkB5i', 'stu', '0', NULL),
(1241, 'Sachini', 'Kehelgamuwa', 'sachinikehelgamuwa@gmail.com', NULL, '$2y$10$sZUhWA8b7HFRGMnEzPW71.CPmv78xrFmdcSixrtrNZNp06UtIvcn2', 'stu', '0', NULL),
(1242, 'Samali', 'Anula', 'samalianula@gmail.com', NULL, '$2y$10$kT/PeKdLjL.TOOlnj3HG7u03JjPVMIevT7FiRYJRZYAp6HRFbV5je', 'stu', '0', NULL),
(1243, 'Saman', 'Serasinghe', 'samanserasinghe@gmail.com', NULL, '$2y$10$oFlugBPiWstjXdJ4ZXT0BuWsn5RLVlg3fROrubojilTbLKFvOwbXO', 'stu', '0', NULL),
(1244, 'Samanthi', 'Goonewardena', 'samanthigoonewardena@gmail.com', NULL, '$2y$10$um5vdk1FJyD5byF28y7v5eXNyVIw9HuUamR9.jnarbCwrzNyvOwou', 'stu', '0', NULL),
(1245, 'Samanthi', 'Jayasinghe', 'samanthijayasinghe@gmail.com', NULL, '$2y$10$HHfzugHgOO2dELhnFfxnAe1C5IEIW00G5Fl5ooQ4JFPf5rr1kpM7W', 'stu', '0', NULL),
(1246, 'Samanthi', 'Obeysekera', 'samanthiobeysekera@gmail.com', NULL, '$2y$10$CAMVbovznIcvbdL7FcWKSuWdgLCf0lAQhyFIESTenCMeP9YtSf3Sm', 'stu', '0', NULL),
(1247, 'Samanthika', 'Karunaratne', 'samanthikakarunaratne@gmail.com', NULL, '$2y$10$5a/DR5StNZbNGxHqEFes0e4cqIV93rJ.US80BRR327L/nqh/gdCEi', 'stu', '0', NULL),
(1248, 'Samarakoon', 'Kularatne', 'samarakoonkularatne@gmail.com', NULL, '$2y$10$XUmZ78z1TuwqshPc1/iOu.KAZVAkT8siQbW6ZZRBW3ML6CpTwz0O2', 'stu', '0', NULL),
(1249, 'Sameera', 'Abayaratne', 'sameeraabayaratne@gmail.com', NULL, '$2y$10$7WT4Ya9FpMgnnliBlOASAuBZNaiXcwC/640bTLBTkzgx24fCBXCYq', 'stu', '0', NULL),
(1250, 'Samindi', 'Addararachchi', 'samindiaddararachchi@gmail.com', NULL, '$2y$10$BDFuahEYmDgS5DYDTrK/oOTaQHKrcCbODAI8OCeLCUT7OYI2TaFuK', 'stu', '0', NULL),
(1251, 'Samindi', 'Rahula', 'samindirahula@gmail.com', NULL, '$2y$10$FaaVubGC6suEeqXhZKGbdu3zeDzNWQSlG7UJJVtStk91N95bEFI6O', 'stu', '0', NULL),
(1252, 'Samodha', 'Bandaranayake', 'samodhabandaranayake@gmail.com', NULL, '$2y$10$Wv.OOdj3DvcM0aUjBsgZIesAje7EwKawlikYq4AcxOh23baDUdbdu', 'stu', '0', NULL),
(1253, 'Sampath', 'Weerasekara', 'sampathweerasekara@gmail.com', NULL, '$2y$10$eSIp53MdroYeUegfLKXTGO1ZEVOkb/dLj8izGoe6Ti.YRdYrg49J.', 'stu', '0', NULL),
(1254, 'Sandaruwan', 'Madugalle', 'sandaruwanmadugalle@gmail.com', NULL, '$2y$10$XPRdigLyfgjL995N7ayyje2V3disbK7D0gBa/K9qWCaMf1iMgEP2S', 'stu', '0', NULL),
(1255, 'Sandika', 'Khemadasa', 'sandikakhemadasa@gmail.com', NULL, '$2y$10$77nJlFKQq.gugbh4.OYXoeHSPe9nQAcjHqh/iUN15z6gEYjHSUuFu', 'stu', '0', NULL),
(1256, 'Sandika', 'Silva', 'sandikasilva@gmail.com', NULL, '$2y$10$0Ko6dpyqimg2NA7XG.WdIuoC8V.0mtrPziODOlWV.cPaHzKEcn/Hy', 'stu', '0', NULL),
(1257, 'Sandunmali', 'Seneviratne', 'sandunmaliseneviratne@gmail.com', NULL, '$2y$10$enuOVrFRcoKMlkv3zdDl8.HPxfW3bBrk3Dn9eMoO6DyaU.pprne/G', 'stu', '0', NULL),
(1258, 'Sanjeewa', 'Obeyesekere', 'sanjeewaobeyesekere@gmail.com', NULL, '$2y$10$80d54XJjmwxdNxYvpdiO0.TNG3s0LGY/M1HsH7AvLgAxFuYccOP.u', 'stu', '0', NULL),
(1259, 'Sanka', 'Bandaranaike', 'sankabandaranaike@gmail.com', NULL, '$2y$10$Av19KKrUgqifGCGkxk7egu8PUN6fxRThOJ7ZdeDhx4A67udsIXNKO', 'stu', '0', NULL),
(1260, 'Sanuja', 'Wimalasuriya', 'sanujawimalasuriya@gmail.com', NULL, '$2y$10$I87Zt3ljFWApy05OdJbcSeZg.Od6WYFg7uVFC/b05p63c8t65a3ra', 'stu', '0', NULL),
(1261, 'Sanuthi', 'Hewavitharana', 'sanuthihewavitharana@gmail.com', NULL, '$2y$10$wesfkByez/ZI.7YmnKCEiOBQKeuJn59W9q.BU6B2LFTTHLIwkcGBS', 'stu', '0', NULL),
(1262, 'Saritha', 'Wipulasara', 'sarithawipulasara@gmail.com', NULL, '$2y$10$axFl1Xcz53kMbShUFEOnZexQNZWpi5Za/6oJjF9VY7NLorDKGJgdC', 'stu', '0', NULL),
(1263, 'Sarojani', 'Kulatunga', 'sarojanikulatunga@gmail.com', NULL, '$2y$10$cRywD1MKmSvt3Lj1nxZFW.9tLm6Focp5nWvGGkYyRocxL4h/p8vf6', 'stu', '0', NULL),
(1264, 'Sashika', 'Fernando', 'sashikafernando@gmail.com', NULL, '$2y$10$v/o6r1jJFiePUsdBvZKrQOhK5FmhqvcQ727zcqgVPqqbxskvCPnoq', 'stu', '0', NULL),
(1265, 'Sashika', 'Jayasinha', 'sashikajayasinha@gmail.com', NULL, '$2y$10$bVkplcGfkvYa38AdTnDZK.Exo3CG5CwbfVoCNKPS2UJubQIP/xo6S', 'stu', '0', NULL),
(1266, 'Sasiri', 'Bandaranaike', 'sasiribandaranaike@gmail.com', NULL, '$2y$10$v5mIoJne4Xr138Al9MuMGuwp0is3BkNNy6cioD546H0gObBKPIGS.', 'stu', '0', NULL),
(1267, 'Sasrutha', 'Jayatilleka', 'sasruthajayatilleka@gmail.com', NULL, '$2y$10$sBq1C48gb6Vd4JymbwZxZO.XAthWXyWHdxuPMJY7XXHNOwPRLKLES', 'stu', '0', NULL),
(1268, 'Sasrutha', 'Weerasinghe', 'sasruthaweerasinghe@gmail.com', NULL, '$2y$10$7KDDUY0S8FdWIN7VC75QnOaRe8iJVmbkThzi4lds22Dq1ikbqKmBG', 'stu', '0', NULL),
(1269, 'Saummika', 'Abeysekera', 'saummikaabeysekera@gmail.com', NULL, '$2y$10$EbxBhfWW66d4Mgt.Ug58Quh1.6HwURCEQv86IrivbJZxkOHXqLh3G', 'stu', '0', NULL),
(1270, 'Saumya', 'Vikkamabahu', 'saumyavikkamabahu@gmail.com', NULL, '$2y$10$4rYcsq7fDp1hMg/kPnTX8Og9IbqBgosUxLI/OJ5TTm1KO8dfhQcBm', 'stu', '0', NULL),
(1271, 'Saveen', 'Wickremanayake', 'saveenwickremanayake@gmail.com', NULL, '$2y$10$4lXxHvwF2xgpb7681mxGy.UFSwTzmNtoOoH5AdYDVd26qEcTMLqsS', 'stu', '0', NULL),
(1272, 'Savin', 'Jayasuriya', 'savinjayasuriya@gmail.com', NULL, '$2y$10$SbZI.G.bHA0wJ0cgGw/HKO7rupMEYcP147MkJBxk4LrQAJo5AKJhe', 'stu', '0', NULL),
(1273, 'Senanayake', 'Maitreya', 'senanayakemaitreya@gmail.com', NULL, '$2y$10$z5qmD3vECP/fra/4qiUy4uIpDbm95YEQNa3GJyafde6K4Qwm1l0q.', 'stu', '0', NULL),
(1274, 'Serasinghe', 'Vikkamabahu', 'serasinghevikkamabahu@gmail.com', NULL, '$2y$10$Cmb2d6gcaXS1/FWLDKQr3eQCjSNuswofhfhcucR6J65V6peR5/KGG', 'stu', '0', NULL),
(1275, 'Sewwandi', 'Deraniyagala', 'sewwandideraniyagala@gmail.com', NULL, '$2y$10$O3.TwoQbY/0NTdGb0rVkwunz0NL2TWq0Ayug7Hhsm0WprVVsZhqMW', 'stu', '0', NULL),
(1276, 'Sewwandi', 'Dewasiri', 'sewwandidewasiri@gmail.com', NULL, '$2y$10$3Ri81IHy1WHC1n.nqNWPhOivEbqsESn//q3FLURRdzdNJJ2zgnqdu', 'stu', '0', NULL),
(1277, 'Shaami', 'Jayatilleka', 'shaamijayatilleka@gmail.com', NULL, '$2y$10$oXlA06dbQjBMn.zdUEWl7O3HC8PoMc55bmgT3eK6k9wv3cFN.fvr6', 'stu', '0', NULL),
(1278, 'Shakila', 'Gunewardene', 'shakilagunewardene@gmail.com', NULL, '$2y$10$7TE8P8.V3de9V5a2zk3pKuhOk05guq4ABet3umklOXrSoH5xkPLyG', 'stu', '0', NULL),
(1279, 'Shakila', 'Peiris', 'shakilapeiris@gmail.com', NULL, '$2y$10$SOATSlNxCxX/1vii12SwSe.1NVHmNEOpLufh74A/nBS657BYQyou6', 'stu', '0', NULL),
(1280, 'Shalika', 'Ranaweera', 'shalikaranaweera@gmail.com', NULL, '$2y$10$RuobUasS0Mcz5aF1vxV8PuoHCZox0Bn6J6Mrjn.rK1c4yj4q9W//y', 'stu', '0', NULL),
(1281, 'Shanika', 'Dahanayake', 'shanikadahanayake@gmail.com', NULL, '$2y$10$TQQ2i2/oL.buSaK35WZ05uNlDHNxBLGoUpX9RA.wq.FsvpkidgcRy', 'stu', '0', NULL),
(1282, 'Shashi', 'Perera', 'shashiperera@gmail.com', NULL, '$2y$10$Hzs5oWb4/s8U6/TXT4DATOvN75gvWIXqC9WRiTP.8gC4Gjpfvy15i', 'stu', '0', NULL),
(1283, 'Shashi', 'Weerathunga', 'shashiweerathunga@gmail.com', NULL, '$2y$10$mxNzcWNsKmV57CTzAB4UrOXbd8zlBAsCZHO55d6Mt4EWHhXJP9rWe', 'stu', '0', NULL),
(1284, 'Shasipraba', 'Anula', 'shasiprabaanula@gmail.com', NULL, '$2y$10$oF/7mOyki2n1a404lVvzLu/bnRcE6LPgXNIOYba3XGevZl/fvY7k6', 'stu', '0', NULL),
(1285, 'Shehani', 'Attygalle', 'shehaniattygalle@gmail.com', NULL, '$2y$10$BCtvWll8l1GDX68Ta9dyKOxMlgElJcEYmJkvxlYbvKBgBjmF42.KC', 'stu', '0', NULL),
(1286, 'Sithara', 'Weerasinghe', 'sitharaweerasinghe@gmail.com', NULL, '$2y$10$Dj4HS0BeeoP8sMDCOdp.G.VlE4OEoL74.M48Emd6Fcm0nieysikDm', 'stu', '0', NULL),
(1287, 'Solanga', 'Kobbekaduwa', 'solangakobbekaduwa@gmail.com', NULL, '$2y$10$Vf3Qb5AjP9/J4pNDzw49Auxb9owsbJGt/LTb1s16YPYA2wuTNRpXa', 'stu', '0', NULL),
(1288, 'Srinika', 'Jayaratne', 'srinikajayaratne@gmail.com', NULL, '$2y$10$HHgWkQ8Si3kEqhqgK5Y0qenifGaG752rxBLFejY1Ha0TNHRSuEFkC', 'stu', '0', NULL),
(1289, 'Srinika', 'Premadasa', 'srinikapremadasa@gmail.com', NULL, '$2y$10$l/2q1OqTPPjHr/X43P7HB.AK6oi2liEVm6KPkMkajKSAqBoyrg0Oa', 'stu', '0', NULL),
(1290, 'Srinika', 'Premaratne', 'srinikapremaratne@gmail.com', NULL, '$2y$10$oegrTgVGLQgFnF6ZUjeq..qkN5yRUxle3d4Y5.juLraPWdkHZeiZG', 'stu', '0', NULL),
(1291, 'Srinika', 'Wijeratne', 'srinikawijeratne@gmail.com', NULL, '$2y$10$rann4l2ARU3dHX1t8yf6KuuLfgD5GhnHQW34FMlxOL0CZDnMfvmHS', 'stu', '0', NULL),
(1292, 'Abeykoon', 'Dissanayake', 'abeykoondissanayake@gmail.com', NULL, '$2y$10$ryzce0T0A0h6tBW6UDgLHOdBAd9yDmpoW0p6yOu1MbQz2sKwH0HZi', 'stu', '0', NULL),
(1293, 'Abeykoon', 'Rahula', 'abeykoonrahula@gmail.com', NULL, '$2y$10$C7jmfa2eI2K14lMC69HqaelXS/jqrB.VjYBW2i/v8nhLErPFD3k62', 'stu', '0', NULL),
(1294, 'Adikari', 'Sumangala', 'adikarisumangala@gmail.com', NULL, '$2y$10$jsVN/xaCyz2tqB65fIiEuOTsgFdp6VRPfyJnv9yaHjf/vHfJMPpma', 'stu', '0', NULL),
(1295, 'Ajitha', 'Saranankara', 'ajithasaranankara@gmail.com', NULL, '$2y$10$srxmtvNg6vSwIdygUmRZ5O1gGLGsazMewYsysmbT2m9WkVD7ilVTK', 'stu', '0', NULL),
(1296, 'Akila', 'Abeysekera', 'akilaabeysekera@gmail.com', NULL, '$2y$10$z.Z25SFVwthfYFeaXOkceu6tPgzOc5fMmK4dxlGyCipoxAX7lQSK.', 'stu', '0', NULL),
(1297, 'Amaali', 'Attygalle', 'amaaliattygalle@gmail.com', NULL, '$2y$10$8PSHZJJIqwV1l0qLTRRrie53CU9rJHwSjjdmSp3TP9tIktQXJDrte', 'stu', '0', NULL),
(1298, 'Amaali', 'Chandawimala', 'amaalichandawimala@gmail.com', NULL, '$2y$10$fL.CuS.9UFsNrETUgNgRY.JiY.VwNJ4ki1lPPm98BBhzRecHDIqeK', 'stu', '0', NULL),
(1299, 'Amaali', 'Priyantha', 'amaalipriyantha@gmail.com', NULL, '$2y$10$bt3CDYgXuTIWDQ9F0WuATu/kt.Cx8tg2G0Pwex1cxvl7O0BlwW.Iq', 'stu', '0', NULL),
(1300, 'Amalie', 'Khemadasa', 'amaliekhemadasa@gmail.com', NULL, '$2y$10$6VDVuwz58WW43zHcXPiUnepEZBJ5Z1wQ9PwVfxst7MpmAigw7Zo2i', 'stu', '0', NULL),
(1301, 'Amalie', 'Paranavithana', 'amalieparanavithana@gmail.com', NULL, '$2y$10$SaHAse2kzjQnQ6PCO9967O8b1Xsgwq96uxjYrJDsqIdmcxCiD8qQ6', 'stu', '0', NULL),
(1302, 'Amanda', 'Gunapala', 'amandagunapala@gmail.com', NULL, '$2y$10$5cJgMrxrO9VvFIIVe9Et2.RfjozSJp7LhJ8xZw1u1OR8nVQTxrHsS', 'stu', '0', NULL),
(1303, 'Amanda', 'Premadasa', 'amandapremadasa@gmail.com', NULL, '$2y$10$UxKIqhD.2iSlvRpLVcO7levVmD1KyW5fFMGIrvQoVy5p1kmFBdcdC', 'stu', '0', NULL),
(1304, 'Amani', 'Addararachchi', 'amaniaddararachchi@gmail.com', NULL, '$2y$10$EcXIrE8uy9R7m4JIAIvmpux5jSZQSlJYczCJons33cazOmXrmq2U2', 'stu', '0', NULL),
(1305, 'Amani', 'Jayasuriya', 'amanijayasuriya@gmail.com', NULL, '$2y$10$POG7.uHFYg/OUaZsqGlwje8GeOAgxIJvlbLeE4JafuR2h/LpzjaPK', 'stu', '0', NULL),
(1306, 'Amarakoon', 'Seneviratne', 'amarakoonseneviratne@gmail.com', NULL, '$2y$10$LUKlK34vMtaj4zzn9h6iEen03zDHjX.jnRLpTY/prfL.HXd5Fc73O', 'stu', '0', NULL),
(1307, 'Ambegoda', 'Senanayake', 'ambegodasenanayake@gmail.com', NULL, '$2y$10$1PkoUcr5wxJmgkJ0tG3PWO4M4u5yRvxKmr2/W1JUWZPD4FQaF8wnu', 'stu', '0', NULL),
(1308, 'Amilajith', 'Devapriya', 'amilajithdevapriya@gmail.com', NULL, '$2y$10$dwpGUExrbg1KY8bjWcddMuU56Mfa6Votmqs2L3Jcri.zV51QXF4Ra', 'stu', '0', NULL),
(1309, 'Amilajith', 'Jayewardene', 'amilajithjayewardene@gmail.com', NULL, '$2y$10$ukLfPgsEpXqqe.Ou0lQbv.YpvhfSEfEhF6sx9hHHjh3CzjYhBrgzi', 'stu', '0', NULL),
(1310, 'Anuhas', 'Goonesena', 'anuhasgoonesena@gmail.com', NULL, '$2y$10$5yGdCVdRPRyUh/nJYYE2XO4tBX79GJICbHkl6/l3821OGhhMrl0Bq', 'stu', '0', NULL),
(1311, 'Anupama', 'Jayamanne', 'anupamajayamanne@gmail.com', NULL, '$2y$10$n0P0y3.3CVT.xPmeJ./41.3QUJ2id3PBntdsFHAW4yyHk.xXrKTzi', 'stu', '0', NULL),
(1312, 'Anuradha', 'Devapriya', 'anuradhadevapriya@gmail.com', NULL, '$2y$10$QP8VcMoaJLVNFhdZRbN.YeCzFdZu8DvwQmiA7xU/GBTuvgJvu0hnK', 'stu', '0', NULL),
(1313, 'Anuradha', 'Nandasiri', 'anuradhanandasiri@gmail.com', NULL, '$2y$10$c631JK6cHNC9S0G7BTcsX.N4SHQRJsgkoEumSFvCNCFbFW35ugAsK', 'stu', '0', NULL),
(1314, 'Aravinda', 'Dewasiri', 'aravindadewasiri@gmail.com', NULL, '$2y$10$qzmGXdrAl848SULnEEDjuOy3yODInXi3CIkM5dZVdctUKhGl5K/Qe', 'stu', '0', NULL),
(1315, 'Ariyarathna', 'Wijetunge', 'ariyarathnawijetunge@gmail.com', NULL, '$2y$10$FLz2qa82tGA4WN38NNvk7OiQRw1GO37iVGV5SiJqaCJ0B89mLnPm.', 'stu', '0', NULL),
(1316, 'Arwinda', 'Premadasa', 'arwindapremadasa@gmail.com', NULL, '$2y$10$7EKi23QuJX0B7QzKEPHk5eayFm32ldUh34RsBdLQZmhvnFJ8RVnTC', 'stu', '0', NULL),
(1317, 'Attanayake', 'Saranankara', 'attanayakesaranankara@gmail.com', NULL, '$2y$10$3CkYBsWO651.RxWNzQ3acupTvCzgpu/P9kNSZL8Bnn7i9noKM37yq', 'stu', '0', NULL),
(1318, 'Bandara', 'Anula', 'bandaraanula@gmail.com', NULL, '$2y$10$ZtV3Tjg.8CL70FejxQOAs.EzLRqEz1EeIwdm.ROoQ7UxUagH092hS', 'stu', '0', NULL),
(1319, 'Bandara', 'Kotelawala', 'bandarakotelawala@gmail.com', NULL, '$2y$10$phBcFfj4KgJx11q5VQ73G.MKT2OTqYrXDrehRUPAFVDb4XJh1VGa2', 'stu', '0', NULL),
(1320, 'Bimali', 'Dharmapala', 'bimalidharmapala@gmail.com', NULL, '$2y$10$ukoItwxhC4zdazSACweSo.TvOKMBrJPUHItfbGVUw.uR5XCBTdHCG', 'stu', '0', NULL),
(1321, 'Bimali', 'Samaraweera', 'bimalisamaraweera@gmail.com', NULL, '$2y$10$dI000/W5K3GQi13iYJm4UuS8JNtKdom3Re9RDHnWrgq1KmWpmVCvq', 'stu', '0', NULL),
(1322, 'Biyanka', 'Prasanna', 'biyankaprasanna@gmail.com', NULL, '$2y$10$z0KF2UeAyHoQtuu2FCmbQuKV/p6NDH3i5PFFN.Sz0Lprk00Hsg07q', 'stu', '0', NULL),
(1323, 'Chamari', 'Silu', 'chamarisilu@gmail.com', NULL, '$2y$10$YNXXIchOSbixDOvC8UFF0OAPj3tlJQaEOe7vj5HLgxmM1U5k27ZuS', 'stu', '0', NULL),
(1324, 'Chameera', 'Senanayake', 'chameerasenanayake@gmail.com', NULL, '$2y$10$CoJk2sEan0B4/xrc2jOhs.Z6OnHhARrYjVk4u/ekbOmHJyCf.bIzq', 'stu', '0', NULL),
(1325, 'Chamila', 'Dharsha', 'chamiladharsha@gmail.com', NULL, '$2y$10$1mBOAFmxaEURP/5v/225GuzKnMzSzwGIuvE68nP7SGJhOusYRc9/G', 'stu', '0', NULL),
(1326, 'Chaminda', 'Jothipala', 'chamindajothipala@gmail.com', NULL, '$2y$10$DR0QYKGJEld14rzYzjd45u01BC3jDeVaGQDoME0EpxiBj/PBGM0ym', 'stu', '0', NULL),
(1327, 'Chamindi', 'Prasanna', 'chamindiprasanna@gmail.com', NULL, '$2y$10$saw34jzeeWyWX5IJJeNHJ.4zWoqA.7q40QoOD7XLqyIKmOQDcgU4S', 'stu', '0', NULL),
(1328, 'Chammi', 'Vijaya', 'chammivijaya@gmail.com', NULL, '$2y$10$/JlAclI85FIGbH25kED2.ule7DEmxIbgVQhCkFS4yKhZ6iunzty8q', 'stu', '0', NULL),
(1329, 'Chandrika', 'Anula', 'chandrikaanula@gmail.com', NULL, '$2y$10$sercHEJzpLgjQSG.dg4woOM1nk3sM5A8YCf3V3DLVbacdBXeP.hFW', 'stu', '0', NULL),
(1330, 'Chandrika', 'Deraniyagala', 'chandrikaderaniyagala@gmail.com', NULL, '$2y$10$QuG0ujfK/S2IOZIzc736iuZPO6Gq4F0dyHVfgdyGhqUzeyR9oCmC2', 'stu', '0', NULL),
(1331, 'Chandrika', 'Kulasinghe', 'chandrikakulasinghe@gmail.com', NULL, '$2y$10$Qyer80avhR4g7jvDJvlbxeGFCPpLyfOsnBiBUb50lUxuedVPA.x8C', 'stu', '0', NULL),
(1332, 'Cherith', 'Corea', 'cherithcorea@gmail.com', NULL, '$2y$10$Pxu94SfAjvjqSiV09U8ESeX.4fhxhVY0mmnJUbJ/uruSebWjIgmI2', 'stu', '0', NULL),
(1333, 'Chinthaka', 'Bandaranayake', 'chinthakabandaranayake@gmail.com', NULL, '$2y$10$iIoYX3wKXJe/um3eqaO5le5kWfELc2GZCOed9xlPP5td6pc6CrWXi', 'stu', '0', NULL),
(1334, 'Chiranjaya', 'Premadasa', 'chiranjayapremadasa@gmail.com', NULL, '$2y$10$0vhYyc/KJw7GxRjPDANyaO8CLJRchN1EP7qPQSLl2WByvVjD1..i6', 'stu', '0', NULL),
(1335, 'Danasooriya', 'Kumarage', 'danasooriyakumarage@gmail.com', NULL, '$2y$10$5BkECM9nnNxs.iVE94mRU.UvCMfB1pOrviQACTIznzfimNEvOlYEG', 'stu', '0', NULL),
(1336, 'Danasooriya', 'Madugalle', 'danasooriyamadugalle@gmail.com', NULL, '$2y$10$lzSYz5xUp6jRV6LFnY3kuOUfY8O1ALv6PslyOK4Cu4pGQZ8DWnw/G', 'stu', '0', NULL),
(1337, 'Darshana', 'Medhananda', 'darshanamedhananda@gmail.com', NULL, '$2y$10$jjic.HYVY/VNR0pw75SusueREstyjjdvq0ly0k35RuAcCTpqi.ONO', 'stu', '0', NULL),
(1338, 'Dasuni', 'Ponnamperuma', 'dasuniponnamperuma@gmail.com', NULL, '$2y$10$RlwxC5KQEP7kCyrrCf7oae0kXoWGTwwRlCT6IcJC1xTVcveyKzCRu', 'stu', '0', NULL),
(1339, 'Dayarathne', 'Samaranayake', 'dayarathnesamaranayake@gmail.com', NULL, '$2y$10$ouoXpuN3mfj5gYJfYka4BuUPP/dFyTrYvYJXmcIES0TcvhTSjDSti', 'stu', '0', NULL),
(1340, 'Deshadhi', 'Jagath', 'deshadhijagath@gmail.com', NULL, '$2y$10$gNbnUgIpOEamwxdOzmHD7er2I67wlZ0wkqapuhMI3W46p.akCxDcW', 'stu', '0', NULL),
(1341, 'Deshan', 'Attygale', 'deshanattygale@gmail.com', NULL, '$2y$10$kx5705huaJpxlD0w2BVaJOcseSlP6ZcQf/Px2soC3Uc2E9HcrHk/G', 'stu', '0', NULL),
(1342, 'Deshan', 'Dissanayake', 'deshandissanayake@gmail.com', NULL, '$2y$10$F1binItk3d0Ra3H99DjZLue4CwkJeN5xdFNfa86d3O3D7e9S.zUgO', 'stu', '0', NULL),
(1343, 'Deshappriya', 'Fonseca', 'deshappriyafonseca@gmail.com', NULL, '$2y$10$JR4ZLbYHF/U0Yi.H2oHnK.OSR7UX20MSym8/enUPWrWNHwKN2QfHW', 'stu', '0', NULL),
(1344, 'Devika', 'Weeraratne', 'devikaweeraratne@gmail.com', NULL, '$2y$10$U72Cf/g.tMjrNl7qV9bPNe6D6z.edNCp735.Wj7428/jlvwaXyrvC', 'stu', '0', NULL),
(1345, 'Dewmal', 'Weerakoon', 'dewmalweerakoon@gmail.com', NULL, '$2y$10$P50a42YdouRs9XNSguO5u.G7BAL9Te72LQxLVDKPKNGezHWnIOebS', 'stu', '0', NULL),
(1346, 'Dhananjaya', 'Wickremanayake', 'dhananjayawickremanayake@gmail.com', NULL, '$2y$10$hV1NDInzgVlStuToGN0TReqAeKuCy3uiqDiS7FPT9ScbUOdQUIvri', 'stu', '0', NULL),
(1347, 'Dhanasoorya', 'Samaraweera', 'dhanasooryasamaraweera@gmail.com', NULL, '$2y$10$MNnhKCSJ4acg1LVS41u1IeF7WKPjH6VhVd8mYkgmMgRHJK9v7YUra', 'stu', '0', NULL),
(1348, 'Dhanuka', 'Wickrema', 'dhanukawickrema@gmail.com', NULL, '$2y$10$9Yre1WCnT.PctLcNiKQK8.EodJllw1Tc8RIvhw7xqK5LrOW1F8eca', 'stu', '0', NULL),
(1349, 'Dhanushka', 'Rathnayake', 'dhanushkarathnayake@gmail.com', NULL, '$2y$10$W2/PazTBnjTWet2XqVoniuLiGMxNn5yPQz7nJPWoZ396htPoY1qNW', 'stu', '0', NULL),
(1350, 'Dharani', 'Kulasinghe', 'dharanikulasinghe@gmail.com', NULL, '$2y$10$NRAu.HvINkJZJQLsB28s3OyJOxDWPsIoEP9A/SfE7Bs3fDqv4CVW2', 'stu', '0', NULL),
(1351, 'Dheeravi', 'Gamage', 'dheeravigamage@gmail.com', NULL, '$2y$10$5lSer49fqlnFAwaUlvYsjOxHJ8MptGRrWpJraE3RPyFmX1AOXsmn2', 'stu', '0', NULL),
(1352, 'Dilanka', 'Siriwardena', 'dilankasiriwardena@gmail.com', NULL, '$2y$10$Qqvpkdz1mBlWHE172IUz4..oARCTjFt1Z0gPrj1LVpiLN.LNSO28m', 'stu', '0', NULL),
(1353, 'Dilshana', 'Siriwardena', 'dilshanasiriwardena@gmail.com', NULL, '$2y$10$SoGlQ6dRNIt7SzVp3ySieeewFs5tpdlV8.W98e.ypwxx1OW5/nqle', 'stu', '0', NULL),
(1354, 'Dilshani', 'Bandaranayake', 'dilshanibandaranayake@gmail.com', NULL, '$2y$10$r.PTQ1DtQ1GW2S40PMu/9OwE3CCn2XgWz2zD8anTnGpL9dvNRWbpi', 'stu', '0', NULL),
(1355, 'Dilshani', 'Gooneratne', 'dilshanigooneratne@gmail.com', NULL, '$2y$10$81wbT/FvG.kqnuXtgLLrcerTaxRRgbKKr1RiftaF0KEUjddii9q7q', 'stu', '0', NULL),
(1356, 'Dilshani', 'Nanarama', 'dilshaninanarama@gmail.com', NULL, '$2y$10$X5QbXgw5SRc/o8WkdqCIb.GIXirLjLGUSpp.qiTO2g2zKRDGA1T6W', 'stu', '0', NULL),
(1357, 'Dimeshi', 'Banda', 'dimeshibanda@gmail.com', NULL, '$2y$10$to78Vh7IP8Qf.IFqzlrMe.Mo3g9fSSayhCbe69/Nj9Qq0RcgGKxRK', 'stu', '0', NULL),
(1358, 'Dimeshi', 'Devenampiyatissa', 'dimeshidevenampiyatissa@gmail.com', NULL, '$2y$10$77n/w4vZQebhksZJZP3.3.HsqJ31Php3IBE/VvSiz0yYRgJ1m8ys2', 'stu', '0', NULL),
(1359, 'Dimuthu', 'Hegoda', 'dimuthuhegoda@gmail.com', NULL, '$2y$10$AipBVQbovpEYyCZogVvrs.LSk8UeseMIs4v/qG72YKG3PV1Wg/5HC', 'stu', '0', NULL),
(1360, 'Dimuthu', 'Wimalaratne', 'dimuthuwimalaratne@gmail.com', NULL, '$2y$10$XEiejdEb01tzIqhHK5OkvOYBPoTZw.jn20a3iPyBArH0Du1yfFXNK', 'stu', '0', NULL),
(1361, 'Dines', 'Dissanayake', 'dinesdissanayake@gmail.com', NULL, '$2y$10$ABauvYr0n1o2Utqr3DERZuOmIntK2zvIEAh7UQ4MfglTWXXwj3Pf6', 'stu', '0', NULL),
(1362, 'Dinesha', 'Goonewardena', 'dineshagoonewardena@gmail.com', NULL, '$2y$10$ZeBpH1PembK1id392BbtTe0PU7WlD024Qho2Lu5xskIeXewcpWZBe', 'stu', '0', NULL),
(1363, 'Dineshika', 'Gunasekara', 'dineshikagunasekara@gmail.com', NULL, '$2y$10$IUGXXijImUi464jj..kaR.IlDJBeYpSiM5raHJyTawD3nzSdmq8vW', 'stu', '0', NULL),
(1364, 'Dineshika', 'Kotiduwakku', 'dineshikakotiduwakku@gmail.com', NULL, '$2y$10$iyJt3wUiiSDb31VWYwTFi.mr2UKBvecy4vUFuhIjfGkXlvwT3glmi', 'stu', '0', NULL),
(1365, 'Dineshika', 'Kumaratunga', 'dineshikakumaratunga@gmail.com', NULL, '$2y$10$ZGEPIHAo50PpjtoZhW78oO4rFdQVwMHFmaCQy.xOshVDlr84FbEpq', 'stu', '0', NULL),
(1366, 'Dinini', 'Deraniyagala', 'dininideraniyagala@gmail.com', NULL, '$2y$10$6bJBLyXBY3Qrks5deweEFuYmhAseDem2xhUszdxKWBY4Flmgi9nuG', 'stu', '0', NULL),
(1367, 'Dinuli', 'Fonseka', 'dinulifonseka@gmail.com', NULL, '$2y$10$Mq2DBYOD1N.sdBNLEewXE.ICLdn6OZ9OgsgIqPLsuInewTz0o4y1q', 'stu', '0', NULL),
(1368, 'Dinuli', 'Samarakoon', 'dinulisamarakoon@gmail.com', NULL, '$2y$10$WIHMlRC3gFsNmfz5YNjSkuFC4B9FxrnHocRbywIgNtDD/SQBZXFtS', 'stu', '0', NULL),
(1369, 'Dinuli', 'Senanayake', 'dinulisenanayake@gmail.com', NULL, '$2y$10$BZV5pEIJ6ThdJEuhXiCiaOiNDnC3djBQlj36aNbfU0O41RI5tr9V.', 'stu', '0', NULL),
(1370, 'Dinuli', 'Vijaya', 'dinulivijaya@gmail.com', NULL, '$2y$10$W85i3VEt0fszyt8dXSaM5OTB7XtC7qDP69iBPM2Xz8oXBNYSgj4TK', 'stu', '0', NULL),
(1371, 'Dinusha', 'Samaraweera', 'dinushasamaraweera@gmail.com', NULL, '$2y$10$hOmasOsfqmF8gW503GBo1OHdbiqrncpbUSYINUw8XP43BMCrX27/y', 'stu', '0', NULL),
(1372, 'Dinushika', 'Gnanananda', 'dinushikagnanananda@gmail.com', NULL, '$2y$10$rZ8HJc8MXGouwDG/y5whK.bGB1EkjHVut2DqXfSExj36Erf/NLfAu', 'stu', '0', NULL),
(1373, 'Dinushka', 'Walpola', 'dinushkawalpola@gmail.com', NULL, '$2y$10$GvD1zjcU9YguUDBXUQlIYueRAhyNfIphS9JREF.G5GMMgdncWfXHG', 'stu', '0', NULL),
(1374, 'Dulangi', 'Bandaranaike', 'dulangibandaranaike@gmail.com', NULL, '$2y$10$24BeDbUHBWQvVLqF0c8lE.RpN1q2832G5QJxFF7aQ5zrhkpiOdwwu', 'stu', '0', NULL),
(1375, 'Dulangi', 'Nanarama', 'dulanginanarama@gmail.com', NULL, '$2y$10$PGs0elebJ.yV49lmj/h9pe8o0Jl4NRY42IJd7OuFGenI1Ye7uMldG', 'stu', '0', NULL),
(1376, 'Dulani', 'Jayewardene', 'dulanijayewardene@gmail.com', NULL, '$2y$10$HXWwwPSPeggyOj5ydCZmd.E8IEBKsuAPnYePEe5VO69UI2lju0wti', 'stu', '0', NULL),
(1377, 'Dulanki', 'Cooray', 'dulankicooray@gmail.com', NULL, '$2y$10$7ovsUHtaHgWM8fVI.xokf.2QzbsI./wa8p81GHyk.0tsLUsAdVb2S', 'stu', '0', NULL),
(1378, 'Dulanki', 'Wimalaratne', 'dulankiwimalaratne@gmail.com', NULL, '$2y$10$n9DDVunOEPJTAudYJCDSLOP2IFkimUfjWNOv72z6jaQs2F7bnTP0y', 'stu', '0', NULL),
(1379, 'Duleeshika', 'Jayawickrama', 'duleeshikajayawickrama@gmail.com', NULL, '$2y$10$RkHCTIRisSBkaTB2H4XyJOkDh.SRmNlLoXhwIBnzP/XKrexHwtt6e', 'stu', '0', NULL),
(1380, 'Dulmini', 'Amarashinghe', 'dulminiamarashinghe@gmail.com', NULL, '$2y$10$BOlPMPEeKUYs8mcVrSYmju/kq8lAtMdjWIPkP2wkfJhMxt4GrReC.', 'stu', '0', NULL),
(1381, 'Dulmini', 'Khemadasa', 'dulminikhemadasa@gmail.com', NULL, '$2y$10$aMwvgwUU7b9xkIg2BCx3U.RKqT1nEu2IcWvfEjBdsnNw4A5kOuLQ6', 'stu', '0', NULL),
(1382, 'Duminda', 'Wickremanayake', 'dumindawickremanayake@gmail.com', NULL, '$2y$10$0oSfdmSG8GN3U64qloXNNeuozPJuuiGenxatZ9rD8LTojjs2WPD/e', 'stu', '0', NULL),
(1383, 'Ekanayake', 'Jayamanne', 'ekanayakejayamanne@gmail.com', NULL, '$2y$10$AaRYe/DdVGwFxPmJBDj58OS.T5tr8YSUURfdBfQIOMt/ZFjLcqGde', 'stu', '0', NULL),
(1384, 'Fernando', 'Gunasekera', 'fernandogunasekera@gmail.com', NULL, '$2y$10$3kftJPBRdeOcKrT2BVsZxOuqjCqf2gTQIOz2oqCoEQ59j7I8clbiq', 'stu', '0', NULL),
(1385, 'Gayani', 'Obeysekera', 'gayaniobeysekera@gmail.com', NULL, '$2y$10$gE6pnYZa9BgefSx2QDr1Lu70VDTk0O4BDzYGBJYue61FAJlaiyWDS', 'stu', '0', NULL),
(1386, 'Gayashan', 'Fernando', 'gayashanfernando@gmail.com', NULL, '$2y$10$C/6SaBR2ip3DUh1ypVus9enju/udNQp/ZnGbkm46/sD36vxA3BKqS', 'stu', '0', NULL),
(1387, 'Gayathiri', 'Rahula', 'gayathirirahula@gmail.com', NULL, '$2y$10$Ntg77K2r/BKXf1PdPU.2mu0KimItz2YY1tfPfiBh34nfuUw3c1wQq', 'stu', '0', NULL),
(1388, 'Gayesha', 'Addararachchi', 'gayeshaaddararachchi@gmail.com', NULL, '$2y$10$xJvb1AGIFCm0RDlONt4EuuCpxZb9Mm5yaESyBcTjoYm3IvdKL6jqG', 'stu', '0', NULL),
(1389, 'Geeshani', 'Mendis', 'geeshanimendis@gmail.com', NULL, '$2y$10$Hn8b4CnlzfJyhMiWIO.h9uE8XqkwSZ0gYQ9UZKtegz9PQ6wwGwLcG', 'stu', '0', NULL),
(1390, 'Geeshani', 'Weerathunga', 'geeshaniweerathunga@gmail.com', NULL, '$2y$10$seQsNZT.lKrrnqtR1JqoIO99GB8EL4WXHdeODZGoyxazN4dFi0AWW', 'stu', '0', NULL),
(1391, 'Geeth', 'Anula', 'geethanula@gmail.com', NULL, '$2y$10$g6hlG4HlD7H/XuHw1TnXC.UxL2Hke/.K2o7Hhr7bvDnfRnmEFN9H6', 'stu', '0', NULL),
(1392, 'Geeth', 'Goonewardena', 'geethgoonewardena@gmail.com', NULL, '$2y$10$xebDQe6/F9hpfzQIYT4BRuwDent0h.5lBEehj9NlC7CNrki3u.seS', 'stu', '0', NULL),
(1393, 'Geeth', 'Vikkamabahu', 'geethvikkamabahu@gmail.com', NULL, '$2y$10$1qzjqW0ZcmXhOQDSB28RkORm2cVKtg7.OTTuSn4wwo2i2mo2JdyZu', 'stu', '0', NULL),
(1394, 'Gihan', 'Gajabahu', 'gihangajabahu@gmail.com', NULL, '$2y$10$wNYPTFYP6cHDq6rj1XHtdOuFNQsSDvqmUJUrrCL.XuRz7quUbuZYe', 'stu', '0', NULL),
(1395, 'Gunarathna', 'Dharmagunawardhana', 'gunarathnadharmagunawardhana@gmail.com', NULL, '$2y$10$bcRGNiimGLF7AgKbtdEdOOjxc.9ONMRFONGAESm0j.sfpsJT9howy', 'stu', '0', NULL),
(1396, 'Gunatilleka', 'Malewana', 'gunatillekamalewana@gmail.com', NULL, '$2y$10$o.fVcVv/wCJg4QTNhIafyOLYUFAWGEN3CWeQJAhUfO3N5BBg9wR0u', 'stu', '0', NULL),
(1397, 'Hamkana', 'Priyantha', 'hamkanapriyantha@gmail.com', NULL, '$2y$10$KcJwDMTUf0Ag5ipKmZpcreSBX5xIZR3cfGVe5ieaDNRm1H7zARsDy', 'stu', '0', NULL),
(1398, 'Hansamal', 'Jayamaha', 'hansamaljayamaha@gmail.com', NULL, '$2y$10$VBRoC0/Z6b2kCMIrtIY9B.dXVCp4Aq33oyQDnsIRkYTGgBBRoC6Se', 'stu', '0', NULL),
(1399, 'Hansika', 'Sangakkara', 'hansikasangakkara@gmail.com', NULL, '$2y$10$wJJiZEpsfeTjIcT1D6uxo.BRPev3Hf2TW8IOEBrcPkVPCpANj6/JC', 'stu', '0', NULL),
(1400, 'Harsha', 'Attygalle', 'harshaattygalle@gmail.com', NULL, '$2y$10$qRB5IbM9tBl2ZTexZz/2he5R6Nv6VwqiFqxORNZxvY7Pr6kHjtsAy', 'stu', '0', NULL),
(1401, 'Harshani', 'Gabadamudalige', 'harshanigabadamudalige@gmail.com', NULL, '$2y$10$UhEEotu43Ax4tbNmGlnLM.KLy9FhjMU4sg6/XPbtEn7d9jTtw7TpO', 'stu', '0', NULL),
(1402, 'Hasani', 'Kannangara', 'hasanikannangara@gmail.com', NULL, '$2y$10$CHLKWUDCGiylef2QeIrLROOpc5J7t8qjIFfuf28MpQqBdVu1wc1y2', 'stu', '0', NULL),
(1403, 'Hasara', 'Ponnamperuma', 'hasaraponnamperuma@gmail.com', NULL, '$2y$10$lqm8s0oLdD/TZH7Twb8Z8uVN4YAsvknbKNWlw/.iTMw4qdo3epvom', 'stu', '0', NULL),
(1404, 'Hashni', 'Rajapaksa', 'hashnirajapaksa@gmail.com', NULL, '$2y$10$hShEn5oLeJ.7eKx7y04pouMRRXm4jYCwla6C3weceCGmQGVitA4zG', 'stu', '0', NULL),
(1405, 'Hasinth', 'Addararachchi', 'hasinthaddararachchi@gmail.com', NULL, '$2y$10$FM.tvx1520tLaX0y7IFHAe0YU/cEV65yryr317ePdKLAtfUgHdbq2', 'stu', '0', NULL),
(1406, 'Hasinth', 'Medhalankara', 'hasinthmedhalankara@gmail.com', NULL, '$2y$10$LBv/w.Pt9fovYWivORSkrutF6eC45044Qz99n3jHSHWMQkki1yG16', 'stu', '0', NULL),
(1407, 'Hasintha', 'Bandaranaike', 'hasinthabandaranaike@gmail.com', NULL, '$2y$10$Z5NN9JgFf.b4awKybaE49ev.l/XwjQJwn9Nn1lrvQqpUUesDKBsdK', 'stu', '0', NULL),
(1408, 'Hasintha', 'Kulasinghe', 'hasinthakulasinghe@gmail.com', NULL, '$2y$10$rGJELjcnVn6Pz0wzUujIweTTeGP6iUmjKGZTdda5XcevA5ai7.JCG', 'stu', '0', NULL),
(1409, 'Hewawasam', 'Goonewardena', 'hewawasamgoonewardena@gmail.com', NULL, '$2y$10$dAsN4SCqHfYVo5rllfknseXhcYgqHYZe9j2zdWrllkq14l4ZGPM.K', 'stu', '0', NULL),
(1410, 'Himali', 'Jothipala', 'himalijothipala@gmail.com', NULL, '$2y$10$nKryb6Or1v4yACT7fthLjus8gQ6lRST879FZiI9XpcWIMC1RQxbNO', 'stu', '0', NULL),
(1411, 'Himashi', 'Jayasena', 'himashijayasena@gmail.com', NULL, '$2y$10$Uw7IVOWJXuZ4R9BwDYByY.4E5ETOLMGOBiZLjCdSFGTDY3ZdLUB6O', 'stu', '0', NULL),
(1412, 'Himashi', 'Wimalaratne', 'himashiwimalaratne@gmail.com', NULL, '$2y$10$7Ldfpw848y3Ngdo8LmesM.P9wWSVOArjm5jGxhB1KMvxuYOwKNrMe', 'stu', '0', NULL),
(1413, 'Hiranyamali', 'Jayatilleke', 'hiranyamalijayatilleke@gmail.com', NULL, '$2y$10$FbHhT8p0FiqaSo5Zj3UNpu5z4xpBAvOxDzFLFZBebUTLbuTYxqa.6', 'stu', '0', NULL);
INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `tele`, `pass`, `user_type`, `status`, `img`) VALUES
(1414, 'Hiranyamali', 'Kobbekaduwa', 'hiranyamalikobbekaduwa@gmail.com', NULL, '$2y$10$YlHVX8hcwIR4JGkX92jbU.1s9ad6V.uOUncdIjPZtkX34MDa4mQIi', 'stu', '0', NULL),
(1415, 'Hiruni', 'Jothipala', 'hirunijothipala@gmail.com', NULL, '$2y$10$fFwkJ9Fv6pjhngItGs2Zbu6shgpmKHmKASr1zyWPYz.l3fREuBgHK', 'stu', '0', NULL),
(1416, 'Hiruni', 'Wickrema', 'hiruniwickrema@gmail.com', NULL, '$2y$10$6EYw48TUN2kNoIQ.bB3rCerhJGG119W0hw4TfVp6rgX3aA9R/3Vp6', 'stu', '0', NULL),
(1417, 'Hirunika', 'Ponnamperuma', 'hirunikaponnamperuma@gmail.com', NULL, '$2y$10$44/y6gALAEWXsCJN7lRc6O91LpkoZYlY2GiCKKpx9SPzstkC2BV/6', 'stu', '0', NULL),
(1418, 'Igalavithana', 'Amarasinghe', 'igalavithanaamarasinghe@gmail.com', NULL, '$2y$10$OlR5pWJXK2PTxU8Dq8x./OFPIyVX8lO38RZ72CjJvhlB/qH6OestS', 'stu', '0', NULL),
(1419, 'Imali', 'Amarashinghe', 'imaliamarashinghe@gmail.com', NULL, '$2y$10$MV/8GyVCK1ZUbkAUpMX12uUh6q2QVOekkst6k.g6el8jZ5G8yzqUW', 'stu', '0', NULL),
(1420, 'Imeshi', 'Wickremasinghe', 'imeshiwickremasinghe@gmail.com', NULL, '$2y$10$GJlyG6AdfQahw9p4CfijhOx2hMaRQjfYuLA54rzV6Z83rV6O24jGq', 'stu', '0', NULL),
(1421, 'Indeewari', 'Jayawickrama', 'indeewarijayawickrama@gmail.com', NULL, '$2y$10$z3jmxO8DpQSQDEiN0VZSkOPmwqhqdwlkifpQz6jrkHgUUqtF0XXJ2', 'stu', '0', NULL),
(1422, 'Indu', 'Dhanapala', 'indudhanapala@gmail.com', NULL, '$2y$10$FDBGFNiKShyfB2UbfoZCsOdehGgu3PIuVE/pnvOMgqd07226JLXEK', 'stu', '0', NULL),
(1423, 'Indumini', 'Ranwala', 'induminiranwala@gmail.com', NULL, '$2y$10$Pre3EEgQWkRSXUxXPRFX4eDiokQ3F8J3C4.G6y/QEjhvW3UUqKBJe', 'stu', '0', NULL),
(1424, 'Iranthi', 'Nandasiri', 'iranthinandasiri@gmail.com', NULL, '$2y$10$6kod4l0aw5rk5a/yiEEefupEwn.Yt97Qsq1J3ZurCC6XHBd2Ep3Ku', 'stu', '0', NULL),
(1425, 'Iroshika', 'Jayewardene', 'iroshikajayewardene@gmail.com', NULL, '$2y$10$Hl4ACtlUll7/VXf0XCzgmu6Wf9tDSucmVV7zyd2qAYfVioroHUFKe', 'stu', '0', NULL),
(1426, 'Iroshika', 'Wimaladharma', 'iroshikawimaladharma@gmail.com', NULL, '$2y$10$hhc6lw835jE8xbtVpdu2tO4r0blW3YQ8jTMN1fiYOr5ggSQUoxcD6', 'stu', '0', NULL),
(1427, 'Irroshan', 'Gunasekera', 'irroshangunasekera@gmail.com', NULL, '$2y$10$6uHNkOrc6IkjNxsq2A.Wsu2EFH4LGOtzBrt1zgSr96GYXJBdm/tAC', 'stu', '0', NULL),
(1428, 'Irugalbandara', 'Pannaseeha', 'irugalbandarapannaseeha@gmail.com', NULL, '$2y$10$cFILfoX0LYS9lG1C43xBRO6Bp69DszjDLVphTAJCJa4RL17PYarNO', 'stu', '0', NULL),
(1429, 'Ishari', 'Abeysekera', 'ishariabeysekera@gmail.com', NULL, '$2y$10$l5Lr9WAlToAJPXgnQkg1DOTQk70.IF8ZAsrzW.YMzhQg4gr0Nn2gq', 'stu', '0', NULL),
(1430, 'Ishmi', 'Kulasinghe', 'ishmikulasinghe@gmail.com', NULL, '$2y$10$50ASH9RPf7VqyOjYBhixouLbxUtdGOT.4dEB/s3GHEJx2Nr8uCgci', 'stu', '0', NULL),
(1431, 'Isura', 'Obeyesekere', 'isuraobeyesekere@gmail.com', NULL, '$2y$10$Zr2EyfuEHmnUz70Xwq1o0egEE1SGJ5tjm6YP6OH2MJ/zPcXdfVyWO', 'stu', '0', NULL),
(1432, 'Isuru', 'Mendis', 'isurumendis@gmail.com', NULL, '$2y$10$7IlJRt//tcVTQkEsD7zTYufDpwng7/R18GA5pEFGpNRK2Tv7plDQ2', 'stu', '0', NULL),
(1433, 'Janaka', 'Cooray', 'janakacooray@gmail.com', NULL, '$2y$10$BGXZc4s2ok1EG8lYtYUh9uJP/O6Xrn1SwpW0wJQtvN1MW79ZpVOBO', 'stu', '0', NULL),
(1434, 'Janashantha', 'Jayakody', 'janashanthajayakody@gmail.com', NULL, '$2y$10$nljWkszJaiVIQBl1I/rSL.2oVxYOd/dQuSjsI9pmQIMDfH8h2PrIy', 'stu', '0', NULL),
(1435, 'Januka', 'Jagath', 'janukajagath@gmail.com', NULL, '$2y$10$0Pa9Xy9rfO4S0s4GJcK2/.8N0wH7c4uHbIMqpo/GsrEer5VPaLrO2', 'stu', '0', NULL),
(1436, 'Januka', 'Samarasinghe', 'janukasamarasinghe@gmail.com', NULL, '$2y$10$9f.y93hUT7eJJbi4r4I4e.WLzef7vQ2epnUQSh3Ih2fptbT0Wq1Uu', 'stu', '0', NULL),
(1437, 'Januka', 'Senarath', 'janukasenarath@gmail.com', NULL, '$2y$10$P9fAW0.9pExVxQ8UF4zt1OVf3M0UXsVfHhrAZBKU8zB2Fs4aPDzMu', 'stu', '0', NULL),
(1438, 'Jayakody', 'Gunewardene', 'jayakodygunewardene@gmail.com', NULL, '$2y$10$unEsWIWubHgsyvGNkScLXeEkQ8nFn6UOfsqAwzA9TI9ja.KY9qUc6', 'stu', '0', NULL),
(1439, 'Jayami', 'Abeywickrama', 'jayamiabeywickrama@gmail.com', NULL, '$2y$10$5EuKE548yi9OF95pCGevl.GRSW/cifeLGqmoOvrZY3MZ4wxUMyaR.', 'stu', '0', NULL),
(1440, 'Jayamini', 'Kobbekaduwa', 'jayaminikobbekaduwa@gmail.com', NULL, '$2y$10$LZIf7Ab1HOsb0cJyzyLtRODzFi.zfUNvDAdHm7.SKrUNGAUHh/2V6', 'stu', '0', NULL),
(1441, 'Jayamini', 'Rahula', 'jayaminirahula@gmail.com', NULL, '$2y$10$nkLJhCzq94ndYdmE/yZV3./YgluxUczfuDTJZLZYvRpMHHF2WxJmC', 'stu', '0', NULL),
(1442, 'Jayanath', 'Illangasinghe', 'jayanathillangasinghe@gmail.com', NULL, '$2y$10$PbWyN6cwV9fg7yFojTLgUOieWbqZBCpEk9WvAYBJoKcXuNFznJ.ZK', 'stu', '0', NULL),
(1443, 'Jayanath', 'Mendis', 'jayanathmendis@gmail.com', NULL, '$2y$10$QoHZ6QcY0hUio8yWIRe9QOjr.PTNbq.6Pvag.6ORq3ePnYmfDVZZ6', 'stu', '0', NULL),
(1444, 'Jayaneth', 'Wichramasinghe', 'jayanethwichramasinghe@gmail.com', NULL, '$2y$10$aS2bPFZVV8ilFAUJxYthDeD0rhntJnzLzSazg9rtJlSKu1zcp7u8.', 'stu', '0', NULL),
(1445, 'Jayaranga', 'Kehelgamuwa', 'jayarangakehelgamuwa@gmail.com', NULL, '$2y$10$D1Ib7mwuYUvcZe7IOj1aA.U2YTdUjhdaOBVsOmbzN46ArWkFQdEZu', 'stu', '0', NULL),
(1446, 'Jayaranga', 'Malinga', 'jayarangamalinga@gmail.com', NULL, '$2y$10$i/7J8XGWDDjJJSFLa9K.Suun9iIC0avM.3zohWJ.uMGayFNgLduTq', 'stu', '0', NULL),
(1447, 'Jayasekara', 'Obeyesekere', 'jayasekaraobeyesekere@gmail.com', NULL, '$2y$10$2e8qWhWPKQYpyjc6CvuCbuw3qMtiFK7IQerYIgm9OXuvM7e92D5u6', 'stu', '0', NULL),
(1448, 'Jayasekara', 'Tilakaratna', 'jayasekaratilakaratna@gmail.com', NULL, '$2y$10$kBfuOjQCL4a4ZfkXOQdI/eaqrse66zIR5yYW0VBAv/VBVkEWxJd66', 'stu', '0', NULL),
(1449, 'Jayasinghe', 'Attygalle', 'jayasingheattygalle@gmail.com', NULL, '$2y$10$3IKcjOw.zsI47MhWGtbR2.ymETflwgxgnTvd1AxRbVDHvVEQIsuja', 'stu', '0', NULL),
(1450, 'Jayasinghe', 'Samarasinghe', 'jayasinghesamarasinghe@gmail.com', NULL, '$2y$10$6sjXj1MeNqHb3vcWaX/twuZKhAU1IlIgWQSb1QrtwcJcj6nNX7cq6', 'stu', '0', NULL),
(1451, 'Jayasoorya', 'Nandasiri', 'jayasooryanandasiri@gmail.com', NULL, '$2y$10$ouuvkYBRZqq/bMA2dXt05OpGMuStDvFXYgXq6HHCp5sPu.7/OdH5K', 'stu', '0', NULL),
(1452, 'Jayasundara', 'Sangakkara', 'jayasundarasangakkara@gmail.com', NULL, '$2y$10$gp86hs03LMi9OpYrSV0gBuKfwWE2OeOWyt.qPqC5fsVylFn6wSi5m', 'stu', '0', NULL),
(1453, 'Jeewani', 'Shantha', 'jeewanishantha@gmail.com', NULL, '$2y$10$Dc5Np4/Jag2sVTmRjA/kXesw6w0GbJjdJAz/DNxH2t9FQ.mHObt/O', 'stu', '0', NULL),
(1454, 'Jeewanthra', 'Dharmapala', 'jeewanthradharmapala@gmail.com', NULL, '$2y$10$mFLoZg.0UFMS7Nvx1bGmM.yOXReQhbxoGpWf3tlAz34W6kl6RjTvC', 'stu', '0', NULL),
(1455, 'Jeewanthra', 'Ranwala', 'jeewanthraranwala@gmail.com', NULL, '$2y$10$bF.d3e6HYRRC1fuoqwBEduDHkbO82kGm2UWOFEAWv3D6QmHVVS.G.', 'stu', '0', NULL),
(1456, 'Kalani', 'Shantha', 'kalanishantha@gmail.com', NULL, '$2y$10$A.uFLnmf3LiCbRHx0GTSx.TVMcYymgRgQgdg.FRfgMaFzfJRI0.ru', 'stu', '0', NULL),
(1457, 'Kapil', 'Sirisena', 'kapilsirisena@gmail.com', NULL, '$2y$10$6B1moOj1eN1eKF9.JU/Oj.UIo2wawMlFeMJQT.lLWQA.p9R17kGvW', 'stu', '0', NULL),
(1458, 'Kapila', 'Pathiraja', 'kapilapathiraja@gmail.com', NULL, '$2y$10$vPv7gmDmkS.LM3Q719DVpOfh9/pkguOwGuMSrVHiS.G12wx9KqXuq', 'stu', '0', NULL),
(1459, 'Karalliyadda', 'Fonseka', 'karalliyaddafonseka@gmail.com', NULL, '$2y$10$F6k14snIUKFwF6siLoAyC.iCjvvKvOhb1sexcF63rhScbMUOkuEN2', 'stu', '0', NULL),
(1460, 'Karalliyadda', 'Gunewardena', 'karalliyaddagunewardena@gmail.com', NULL, '$2y$10$84k00NWCkYZUok0kegyKU.oWHJUguAo6.QV7dNW5XIlitC9Pqll3C', 'stu', '0', NULL),
(1461, 'Kariyawasam', 'Hemantha', 'kariyawasamhemantha@gmail.com', NULL, '$2y$10$vcmWp5jciFzSAAWYh1Ea2.qJnqNucgHAFGAtovNquKNO77oJgEDMi', 'stu', '0', NULL),
(1462, 'Karunarathna', 'Gabadamudalige', 'karunarathnagabadamudalige@gmail.com', NULL, '$2y$10$EM2OByBAeCq0jJM4DhpMMOphtZCJBogTM48mGqzNiKPQWP0XcDBLe', 'stu', '0', NULL),
(1463, 'Karunarathna', 'Nanananda', 'karunarathnananananda@gmail.com', NULL, '$2y$10$dca8Ivs4goRntR9kH7iJXOsXZePzkNzjTFPvNaprU5dDfkLlD4B0C', 'stu', '0', NULL),
(1464, 'Kasumi', 'Paranavithana', 'kasumiparanavithana@gmail.com', NULL, '$2y$10$y1tNSnO1XNHvJ9P67R1TQOh4taywIW5wklWGjTt3Tm4uivYK3UA1q', 'stu', '0', NULL),
(1465, 'Kaushi', 'Wipulasara', 'kaushiwipulasara@gmail.com', NULL, '$2y$10$iRorOPHRNC6gGNN1V2yB4.ylGbOdNCuo9.5QxFlEz8AMWhCXJIbSW', 'stu', '0', NULL),
(1466, 'Khushi', 'Thotawatte', 'khushithotawatte@gmail.com', NULL, '$2y$10$3MaVvC/gw9v8WWh/SX9ameFPgTOJ7REX.FdtwOKHuTwfF9Umn1Dje', 'stu', '0', NULL),
(1467, 'Khushi', 'Wipulasara', 'khushiwipulasara@gmail.com', NULL, '$2y$10$bD3Sm0iXP5NdTueSip5LgONBTehByQ8R.3difZSFLasSWuXka6M6G', 'stu', '0', NULL),
(1468, 'Kodikara', 'Kalupahana', 'kodikarakalupahana@gmail.com', NULL, '$2y$10$zolq/9zJdUy.Tp5vmDWjwOF64/USZk8X/yljBUXx5ekLb1vhjdNqm', 'stu', '0', NULL),
(1469, 'Krishani', 'Kotiduwakku', 'krishanikotiduwakku@gmail.com', NULL, '$2y$10$ZVEq1f1GbSRVPn2dFKw/s.ezBykQrz/LQ9ysM9ZgiTtEzKpDB5cya', 'stu', '0', NULL),
(1470, 'Kularathna', 'Gunawardena', 'kularathnagunawardena@gmail.com', NULL, '$2y$10$U1A0aRh9rThIaIhHu.bS8e4LhUUTEe2n3./n2CQtF1Jr2r0fkIDne', 'stu', '0', NULL),
(1471, 'Kulna', 'Lilavati', 'kulnalilavati@gmail.com', NULL, '$2y$10$XXQuzd2HTZCxL5yxuNjV3uZrY8sfiSeAUK.P5loo5L.ZraaKgQ9pe', 'stu', '0', NULL),
(1472, 'Kumara', 'Cooray', 'kumaracooray@gmail.com', NULL, '$2y$10$doPdK3Z/hc0mG6mxldwrZuwv85mxGRQqzOWJEWtgHTrtE0Mj1bR9.', 'stu', '0', NULL),
(1473, 'Kumarasri', 'Ranaweera', 'kumarasriranaweera@gmail.com', NULL, '$2y$10$oJ4HtXhEG0IF4bOKyatpluHTXpaQqkDZNKGkT35fjinH2BhEVI36u', 'stu', '0', NULL),
(1474, 'Kumburuthenne', 'Weerasekara', 'kumburuthenneweerasekara@gmail.com', NULL, '$2y$10$g8fuTuun0h7mhij1/HHAo.MygLZcWGTf2KyTXzBc.sSyh2dmTJPTW', 'stu', '0', NULL),
(1475, 'Kumudusena', 'Gunewardena', 'kumudusenagunewardena@gmail.com', NULL, '$2y$10$xv5GmZSlntKAyi6dUkYlFuuQvNk2CeC7vhJvncCLfqGSrViVbqeiG', 'stu', '0', NULL),
(1476, 'Lakmal', 'Gamage', 'lakmalgamage@gmail.com', NULL, '$2y$10$aMJhSIP0lxugGz43WD9bVed/5oIJDixulNb8LYWENu9jxP2o9wPL.', 'stu', '0', NULL),
(1477, 'Lakmali', 'Gunasekera', 'lakmaligunasekera@gmail.com', NULL, '$2y$10$RPKFMdAp5C9Zjn.Y2wbw2e8KSHdTe8AeQJG6GOhw2Gvt0/758b/Ie', 'stu', '0', NULL),
(1478, 'Lakmini', 'Hettige', 'lakminihettige@gmail.com', NULL, '$2y$10$rKzSC3PQ7VhL1lG47EuokO2VDSKRHZBI/IcRimUXwR.8QDfWUP.d2', 'stu', '0', NULL),
(1479, 'Lakshitha', 'Wijeratne', 'lakshithawijeratne@gmail.com', NULL, '$2y$10$isw4jSmfRn1LEWJiComWouEdJlS7ArCUGRwqDsI7B16UjVrhNX9i2', 'stu', '0', NULL),
(1480, 'Lalitha', 'Dodangoda', 'lalithadodangoda@gmail.com', NULL, '$2y$10$vE1/Okh6ZJIEAW6xI.Kw1.MvmO9jSFmrVtBHh.ZbNFrVRF0OVNqG6', 'stu', '0', NULL),
(1481, 'Lankani', 'Kalupahana', 'lankanikalupahana@gmail.com', NULL, '$2y$10$MIVWiUlMQiuJ70xsTi38wO6Am38e2sYRh44TMC8SKXssN1JeIDVcK', 'stu', '0', NULL),
(1482, 'Lansakara', 'Gamage', 'lansakaragamage@gmail.com', NULL, '$2y$10$/QguiqBcdxZPIR00mcl.DOP8Y0Z4KDwGuze7HOkDal2Vrxm5mZlNa', 'stu', '0', NULL),
(1483, 'Lasantha', 'Wijemanne', 'lasanthawijemanne@gmail.com', NULL, '$2y$10$oJ7wU3tUo7BKFaVoR4ABoeB9KUREAaPkiNvtXuEWaw9jZYAeAtmJ.', 'stu', '0', NULL),
(1484, 'Lasika', 'Anula', 'lasikaanula@gmail.com', NULL, '$2y$10$LHbeGqbg6VbF9puwpiJpqOWXvwM1yvPIb7FQYNbR0enw0.vtoMvyS', 'stu', '0', NULL),
(1485, 'Lasika', 'Priyantha', 'lasikapriyantha@gmail.com', NULL, '$2y$10$SrR7f..F5j9ApEpBxedQ6.RWgZ7F1T/Sd3ct9k4Ww/lQRxvCrTH1S', 'stu', '0', NULL),
(1486, 'Leelanka', 'Rajapaksa', 'leelankarajapaksa@gmail.com', NULL, '$2y$10$Ke64uA8wxwMDTWyElfXpAegE3JiB4yumyJUo7ySYouDSQ2KryAjma', 'stu', '0', NULL),
(1487, 'Lihini', 'Wickrema', 'lihiniwickrema@gmail.com', NULL, '$2y$10$L57jQ7ZZnJ6D3QLfzJG46eW4p6xUaH.q5HgzcybzvxggMiMODSn1e', 'stu', '0', NULL),
(1488, 'Liyanaarachchi', 'Dodangoda', 'liyanaarachchidodangoda@gmail.com', NULL, '$2y$10$U.jVLpBHHub2EJCIVG.enugmcj41qpLqBDbUl5sHOR5FpXuAo5nXy', 'stu', '0', NULL),
(1489, 'Liyanaarachchi', 'Fernando', 'liyanaarachchifernando@gmail.com', NULL, '$2y$10$ejowlNUVIup.Vw14BS.Fre6/UgGqqgm1/TU.5RcseYr68LtYDeuy.', 'stu', '0', NULL),
(1490, 'Lokunarangoda', 'Niroshan', 'lokunarangodaniroshan@gmail.com', NULL, '$2y$10$Z3gWG6.p5r0WgFJwRCeCMOX83.JbIfvcU.iQZbEJojgDQtOwgR5Oa', 'stu', '0', NULL),
(1491, 'Lokunarangoda', 'Pathiraja', 'lokunarangodapathiraja@gmail.com', NULL, '$2y$10$iBOtmNEjpnCmF8nGkhJt6ucz3uvMgBAWkHDnQrYMH.ayIJyljMubm', 'stu', '0', NULL);

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
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
  MODIFY `choice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `question_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

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
