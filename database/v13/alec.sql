-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2021 at 05:25 PM
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
(50, 583),
(50, 584),
(50, 585),
(50, 586),
(50, 587),
(50, 588),
(50, 589),
(50, 590),
(50, 591),
(50, 592),
(50, 593),
(50, 594),
(50, 595),
(50, 596),
(50, 597),
(50, 598),
(50, 599),
(50, 600),
(50, 601),
(50, 602),
(50, 603),
(50, 604),
(50, 605),
(50, 606),
(50, 607),
(50, 608),
(50, 609),
(50, 610),
(50, 611),
(50, 612),
(50, 613),
(50, 614),
(50, 615),
(50, 616),
(50, 617),
(50, 618),
(50, 619),
(50, 620),
(50, 621),
(50, 622),
(50, 623),
(50, 624),
(50, 625),
(50, 626),
(50, 627),
(50, 628),
(50, 629),
(50, 630),
(50, 631),
(50, 632),
(50, 633),
(50, 634),
(50, 635),
(50, 636),
(50, 637),
(50, 638),
(50, 639),
(50, 640),
(50, 641),
(50, 642),
(50, 643),
(50, 644),
(50, 645),
(50, 646),
(50, 647),
(50, 648),
(50, 649),
(50, 650),
(50, 651),
(50, 652),
(50, 653),
(50, 654),
(50, 655),
(50, 656),
(50, 657),
(50, 658),
(50, 659),
(50, 660),
(50, 661),
(50, 662),
(50, 663),
(50, 664),
(50, 665),
(50, 666),
(50, 667),
(50, 668),
(50, 669),
(50, 670),
(50, 671),
(50, 672),
(50, 673),
(50, 674),
(50, 675),
(50, 676),
(50, 677),
(50, 678),
(50, 679),
(50, 680),
(50, 681),
(50, 682),
(60, 583),
(60, 584),
(60, 585),
(60, 586),
(60, 587),
(60, 588),
(60, 589),
(60, 590),
(60, 591),
(60, 592),
(60, 593),
(60, 594),
(60, 595),
(60, 596),
(60, 597),
(60, 598),
(60, 599),
(60, 600),
(60, 601),
(60, 602),
(60, 603),
(60, 604),
(60, 605),
(60, 606),
(60, 607),
(60, 608),
(60, 609),
(60, 610),
(60, 611),
(60, 612),
(60, 613),
(60, 614),
(60, 615),
(60, 616),
(60, 617),
(60, 618),
(60, 619),
(60, 620),
(60, 621),
(60, 622),
(60, 623),
(60, 624),
(60, 625),
(60, 626),
(60, 627),
(60, 628),
(60, 629),
(60, 630),
(60, 631),
(60, 632),
(60, 633),
(60, 634),
(60, 635),
(60, 636),
(60, 637),
(60, 638),
(60, 639),
(60, 640),
(60, 641),
(60, 642),
(60, 643),
(60, 644),
(60, 645),
(60, 646),
(60, 647),
(60, 648),
(60, 649),
(60, 650),
(60, 651),
(60, 652),
(60, 653),
(60, 654),
(60, 655),
(60, 656),
(60, 657),
(60, 658),
(60, 659),
(60, 660),
(60, 661),
(60, 662),
(60, 663),
(60, 664),
(60, 665),
(60, 666),
(60, 667),
(60, 668),
(60, 669),
(60, 670),
(60, 671),
(60, 672),
(60, 673),
(60, 674),
(60, 675),
(60, 676),
(60, 677),
(60, 678),
(60, 679),
(60, 680),
(60, 681),
(60, 682),
(72, 483),
(72, 484),
(72, 485),
(72, 486),
(72, 487),
(72, 488),
(72, 489),
(72, 490),
(72, 491),
(72, 492),
(72, 493),
(72, 494),
(72, 495),
(72, 496),
(72, 497),
(72, 498),
(72, 499),
(72, 500),
(72, 501),
(72, 502),
(72, 503),
(72, 504),
(72, 505),
(72, 506),
(72, 507),
(72, 508),
(72, 509),
(72, 510),
(72, 511),
(72, 512),
(72, 513),
(72, 514),
(72, 515),
(72, 516),
(72, 517),
(72, 518),
(72, 519),
(72, 520),
(72, 521),
(72, 522),
(72, 523),
(72, 524),
(72, 525),
(72, 526),
(72, 527),
(72, 528),
(72, 529),
(72, 530),
(72, 531),
(72, 532),
(72, 533),
(72, 534),
(72, 535),
(72, 536),
(72, 537),
(72, 538),
(72, 539),
(72, 540),
(72, 541),
(72, 542),
(72, 543),
(72, 544),
(72, 545),
(72, 546),
(72, 547),
(72, 548),
(72, 549),
(72, 550),
(72, 551),
(72, 552),
(72, 553),
(72, 554),
(72, 555),
(72, 556),
(72, 557),
(72, 558),
(72, 559),
(72, 560),
(72, 561),
(72, 562),
(72, 563),
(72, 564),
(72, 565),
(72, 566),
(72, 567),
(72, 568),
(72, 569),
(72, 570),
(72, 571),
(72, 572),
(72, 573),
(72, 574),
(72, 575),
(72, 576),
(72, 577),
(72, 578),
(72, 579),
(72, 580),
(72, 581),
(72, 582),
(72, 884);

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
(23, 72, 883, 'Week 1', 'SCS2212 - Lecture 1\r\n\r\nJoin Zoom Meeting https://learn.zoom.us/j/63080105329?pwd=TU9DTEN3dm5ZT0ZkSlRwR290amhWQT09\r\n\r\nMeeting ID: 630 8010 5329\r\n\r\nPasscode: YV&LSb0*');

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
(20, 20, 'Well as I know FDM and TDM are two different techniques. FDM deals with modularizing the analogue signals and TDM deals with digital signals. Each has different bandwidth allocations techniques. FDM I\'m not quite familiar but somehow it allocate the bandwidth for each channel using a constant frequency and TDM its bit length. As I know packets comes under digital signal since because of we quantizing the analog to digital. (I think FDM doesn\'t have such packets but I\'m not quite sure).\r\n\r\nSo again if we consider the traffic of the channels then we introduce STDM for store-and-forward instead of TDM since in such case channels are not produce data to transfer in continuous manner. So we follow some statistical method. That is the place where we have packet switching. In TDM packets are gurranted hence its not necessary to do packet switching I guess. (All we have to do follow some round robin pattern).\r\n\r\nAnd when it comes to efficiencies it depends on the strength of the traffic. We have Aloha, and CSMA variations under STDM. (both deals with store-and-forward traffic). We have equation given that so the efficiency depends on the # of attempts(k) and # of channels(G) for store-and-', '2021-10-23 18:28:57', 885),
(20, 21, '\r\nI think I was confusing the trunk utilization efficiency with the overall efficiency.\r\n\r\nMy point was, using Packet switching is much more efficient than Circuit switching as I only compared those two. And, as I understood, packet switching uses TDM (or STDM as you have pointed out) and circuit switching uses FDM (it has no packets). The reference book makes a clear comparison between the two ways of transmitting data.\r\n\r\nHence I was comparing STDM with FDM.\r\n\r\nAnd yes, using STDM is more efficient than TDM for the points you mentioned. And in that case, using TDM instead of STDM would make the trunk utilization efficiency less. Therefore , Efficiency STDM > Efficiency TDM .\r\n\r\nBut what about STDM(or TDM) vs FDM? Is the circuit switching vs packet switching scenario applicable for this case? (That is, when we compare overall efficiency and not just trunk utilization)\r\n\r\nIn FDM too, resources or the allocated bandwidth cannot be used by any other channel even if there are no data being transmitted. \r\n\r\nSo considering the trunk utilization, my conclusion is as below. What do you think?\r\n\r\nEfficiency STDM > Efficiency TDM > Efficiency FDM    \r\n\r\nP.S. Thank you for participating in t', '2021-10-23 18:29:28', 883),
(20, 22, 'Thanks for starting a discussion on this. I think there is some confusion here.\r\n\r\nThere are many multiplexing (combining basic channels) techniques. FDM is a classical technique used in the analog era. OFDM is a modern variation of it. Wrt digital info, the typical approaches are TDM and StatTDM. In TDM, the time slots are permanently assigned to sources (channels): both the sender and receiver know the channels assigned to the time slot and they are synced. TDM has high utilisation when there is continuous activity on all channels, for eg for streaming data like digitised voice/video. If the source data is intermittent (as in browsing, db queries etc) then it is more efficient to assign channels on the multiplexed time axis, on demand to the sources. This is statTDM. When it is StatTDM, each data block must have a source/dest identifiers to uniquely identify a \'packet\' so that it will be picked up by the proper destination. For Poisson like data traffic STDM is more efficient (consider my example of waiting at a sequencing traffic light at mid night with no road traffic). Finally, you cannot compare FDM with TDM or STDM.', '2021-10-23 18:29:45', 885),
(20, 23, 'Thank you for clearing the confusion sir. It was very helpful and I got a clear idea on this now.', '2021-10-23 18:30:04', 883);

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
(20, 'If we use TDM for store-and-forward traffic, would the overall trunk utilization efficiency fall?', 'This is regarding the question in the exercises given in Dr.Nalin Ranasinghe\'s slides.\r\n\r\nTo my understanding, in TDM we use packet switching. Hence this reduces the delay between the sender and the receiver since the first packet from a long message can be forwarded before the second one has fully arrived. \r\n\r\nIf we use FDM, then according to store-and-forward transmission, the long message should arrive fully before sending it to the receiver\'s end. Forwarding a packet such as in the first case is not possible here. \r\n\r\nThe reference material (Computer Networks by Andrew S. Tanenbaum and David J. Wetherall - Page 161-164) compares circuit switching and packet switching. As I have understood, packet switching uses TDM and circuit switching which divides the whole bandwidth into trunks, uses FDM. It describes what happens in the event that both switching methods uses store-and-forward transmission. \r\n\r\nHence I thought that comparison would be applicable here.\r\n\r\nSo, overall, using TDM is more efficient for store-and-forward traffic. \r\n\r\nAnyone has any different ideas?', '2021-10-23 18:27:55', 28, 883, 26, '2021-10-26 20:51:13');

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
(227, 136, 100, 'abcba', 100),
(228, 137, 100, 'TRUE', 100),
(229, 137, 100, 'FALSE', 0),
(230, 138, 100, 'TRUE', -100),
(231, 138, 100, 'FALSE', 100),
(232, 139, 100, 'TRUE', 100),
(233, 139, 100, 'FALSE', -100),
(234, 140, 100, 'w^R = edcba', 100);

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
(100, 'Quiz 1', 'publish', '2021-10-23 22:17:53', '2021-10-24 18:09:00', '2021-10-24 20:09:00', '00:10:00', 883, 23);

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
(140, 100, 'Suppose w = ‘abcde’. Provide the reverse string operation (w^R).', 'mcq-s', 0);

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
(683, 17000001),
(684, 17000002),
(685, 17000003),
(686, 17000004),
(687, 17000005),
(688, 17000006),
(689, 17000007),
(690, 17000008),
(691, 17000009),
(692, 17000010),
(693, 17000011),
(694, 17000012),
(695, 17000013),
(696, 17000014),
(697, 17000015),
(698, 17000016),
(699, 17000017),
(700, 17000018),
(701, 17000019),
(702, 17000020),
(703, 17000021),
(704, 17000022),
(705, 17000023),
(706, 17000024),
(707, 17000025),
(708, 17000026),
(709, 17000027),
(710, 17000028),
(711, 17000029),
(712, 17000030),
(713, 17000031),
(714, 17000032),
(715, 17000033),
(716, 17000034),
(717, 17000035),
(718, 17000036),
(719, 17000037),
(720, 17000038),
(721, 17000039),
(722, 17000040),
(723, 17000041),
(724, 17000042),
(725, 17000043),
(726, 17000044),
(727, 17000045),
(728, 17000046),
(729, 17000047),
(730, 17000048),
(731, 17000049),
(732, 17000050),
(733, 17000051),
(734, 17000052),
(735, 17000053),
(736, 17000054),
(737, 17000055),
(738, 17000056),
(739, 17000057),
(740, 17000058),
(741, 17000059),
(742, 17000060),
(743, 17000061),
(744, 17000062),
(745, 17000063),
(746, 17000064),
(747, 17000065),
(748, 17000066),
(749, 17000067),
(750, 17000068),
(751, 17000069),
(752, 17000070),
(753, 17000071),
(754, 17000072),
(755, 17000073),
(756, 17000074),
(757, 17000075),
(758, 17000076),
(759, 17000077),
(760, 17000078),
(761, 17000079),
(762, 17000080),
(763, 17000081),
(764, 17000082),
(765, 17000083),
(766, 17000084),
(767, 17000085),
(768, 17000086),
(769, 17000087),
(770, 17000088),
(771, 17000089),
(772, 17000090),
(773, 17000091),
(774, 17000092),
(775, 17000093),
(776, 17000094),
(777, 17000095),
(778, 17000096),
(779, 17000097),
(780, 17000098),
(781, 17000099),
(782, 17000100),
(783, 18000101),
(784, 18000102),
(785, 18000103),
(786, 18000104),
(787, 18000105),
(788, 18000106),
(789, 18000107),
(790, 18000108),
(791, 18000109),
(792, 18000110),
(793, 18000111),
(794, 18000112),
(795, 18000113),
(796, 18000114),
(797, 18000115),
(798, 18000116),
(799, 18000117),
(800, 18000118),
(801, 18000119),
(802, 18000120),
(803, 18000121),
(804, 18000122),
(805, 18000123),
(806, 18000124),
(807, 18000125),
(808, 18000126),
(809, 18000127),
(810, 18000128),
(811, 18000129),
(812, 18000130),
(813, 18000131),
(814, 18000132),
(815, 18000133),
(816, 18000134),
(817, 18000135),
(818, 18000136),
(819, 18000137),
(820, 18000138),
(821, 18000139),
(822, 18000140),
(823, 18000141),
(824, 18000142),
(825, 18000143),
(826, 18000144),
(827, 18000145),
(828, 18000146),
(829, 18000147),
(830, 18000148),
(831, 18000149),
(832, 18000150),
(833, 18000151),
(834, 18000152),
(835, 18000153),
(836, 18000154),
(837, 18000155),
(838, 18000156),
(839, 18000157),
(840, 18000158),
(841, 18000159),
(842, 18000160),
(843, 18000161),
(844, 18000162),
(845, 18000163),
(846, 18000164),
(847, 18000165),
(848, 18000166),
(849, 18000167),
(850, 18000168),
(851, 18000169),
(852, 18000170),
(853, 18000171),
(854, 18000172),
(855, 18000173),
(856, 18000174),
(857, 18000175),
(858, 18000176),
(859, 18000177),
(860, 18000178),
(861, 18000179),
(862, 18000180),
(863, 18000181),
(864, 18000182),
(865, 18000183),
(866, 18000184),
(867, 18000185),
(868, 18000186),
(869, 18000187),
(870, 18000188),
(871, 18000189),
(872, 18000190),
(873, 18000191),
(874, 18000192),
(875, 18000193),
(876, 18000194),
(877, 18000195),
(878, 18000196),
(879, 18000197),
(880, 18000198),
(881, 18000199),
(882, 18000200),
(483, 19000201),
(484, 19000202),
(485, 19000203),
(486, 19000204),
(487, 19000205),
(488, 19000206),
(489, 19000207),
(490, 19000208),
(491, 19000209),
(492, 19000210),
(493, 19000211),
(494, 19000212),
(495, 19000213),
(496, 19000214),
(497, 19000215),
(498, 19000216),
(499, 19000217),
(500, 19000218),
(501, 19000219),
(502, 19000220),
(503, 19000221),
(504, 19000222),
(505, 19000223),
(506, 19000224),
(507, 19000225),
(508, 19000226),
(509, 19000227),
(510, 19000228),
(511, 19000229),
(512, 19000230),
(513, 19000231),
(514, 19000232),
(515, 19000233),
(516, 19000234),
(517, 19000235),
(518, 19000236),
(519, 19000237),
(520, 19000238),
(521, 19000239),
(522, 19000240),
(523, 19000241),
(524, 19000242),
(525, 19000243),
(526, 19000244),
(527, 19000245),
(528, 19000246),
(529, 19000247),
(530, 19000248),
(531, 19000249),
(532, 19000250),
(533, 19000251),
(534, 19000252),
(535, 19000253),
(536, 19000254),
(537, 19000255),
(538, 19000256),
(539, 19000257),
(540, 19000258),
(541, 19000259),
(542, 19000260),
(543, 19000261),
(544, 19000262),
(545, 19000263),
(546, 19000264),
(547, 19000265),
(548, 19000266),
(549, 19000267),
(550, 19000268),
(551, 19000269),
(552, 19000270),
(553, 19000271),
(554, 19000272),
(555, 19000273),
(556, 19000274),
(557, 19000275),
(558, 19000276),
(559, 19000277),
(560, 19000278),
(561, 19000279),
(562, 19000280),
(563, 19000281),
(564, 19000282),
(565, 19000283),
(566, 19000284),
(567, 19000285),
(568, 19000286),
(569, 19000287),
(570, 19000288),
(571, 19000289),
(572, 19000290),
(573, 19000291),
(574, 19000292),
(575, 19000293),
(576, 19000294),
(577, 19000295),
(578, 19000296),
(579, 19000297),
(580, 19000298),
(581, 19000299),
(582, 19000300),
(884, 19001428),
(583, 20000301),
(584, 20000302),
(585, 20000303),
(586, 20000304),
(587, 20000305),
(588, 20000306),
(589, 20000307),
(590, 20000308),
(591, 20000309),
(592, 20000310),
(593, 20000311),
(594, 20000312),
(595, 20000313),
(596, 20000314),
(597, 20000315),
(598, 20000316),
(599, 20000317),
(600, 20000318),
(601, 20000319),
(602, 20000320),
(603, 20000321),
(604, 20000322),
(605, 20000323),
(606, 20000324),
(607, 20000325),
(608, 20000326),
(609, 20000327),
(610, 20000328),
(611, 20000329),
(612, 20000330),
(613, 20000331),
(614, 20000332),
(615, 20000333),
(616, 20000334),
(617, 20000335),
(618, 20000336),
(619, 20000337),
(620, 20000338),
(621, 20000339),
(622, 20000340),
(623, 20000341),
(624, 20000342),
(625, 20000343),
(626, 20000344),
(627, 20000345),
(628, 20000346),
(629, 20000347),
(630, 20000348),
(631, 20000349),
(632, 20000350),
(633, 20000351),
(634, 20000352),
(635, 20000353),
(636, 20000354),
(637, 20000355),
(638, 20000356),
(639, 20000357),
(640, 20000358),
(641, 20000359),
(642, 20000360),
(643, 20000361),
(644, 20000362),
(645, 20000363),
(646, 20000364),
(647, 20000365),
(648, 20000366),
(649, 20000367),
(650, 20000368),
(651, 20000369),
(652, 20000370),
(653, 20000371),
(654, 20000372),
(655, 20000373),
(656, 20000374),
(657, 20000375),
(658, 20000376),
(659, 20000377),
(660, 20000378),
(661, 20000379),
(662, 20000380),
(663, 20000381),
(664, 20000382),
(665, 20000383),
(666, 20000384),
(667, 20000385),
(668, 20000386),
(669, 20000387),
(670, 20000388),
(671, 20000389),
(672, 20000390),
(673, 20000391),
(674, 20000392),
(675, 20000393),
(676, 20000394),
(677, 20000395),
(678, 20000396),
(679, 20000397),
(680, 20000398),
(681, 20000399),
(682, 20000400);

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
(125, 'Admin', 'ALec', 'admin@gmail.com', NULL, '$2y$10$qmb.gOivxM6hB1Yoe/UFF.ufcV2V6t3/p9flSmWqDAbEBE6GzgkE6', 'admin', NULL),
(483, 'Madampe', 'Gunasekera', 'madampegunasekera@gmail.com', NULL, '$2y$10$53NPixy6YfLNNQDYzGLY6umUUiSxjnTEfqQaTYKDOLdn2RWqIfDSu', 'stu', NULL),
(484, 'Madampe', 'Lilavati', 'madampelilavati@gmail.com', NULL, '$2y$10$6U6LSftO6n/yOLkJ7Zdsqu7W/F3WGoGTmAU26/F0IPpcjfTKueLoe', 'stu', NULL),
(485, 'Madampe', 'Wimaladharma', 'madampewimaladharma@gmail.com', NULL, '$2y$10$KEQHKpRPI5XnPIPuEt8VTuDefXG7UPSSnyxSVmvFdJ40lXDz9hayK', 'stu', NULL),
(486, 'Madeera', 'Addararachchi', 'madeeraaddararachchi@gmail.com', NULL, '$2y$10$1SObDZmC1aVHk0bKltA2T.EpD3Wim1ZskV4SInCEnhMfKrw/ZgYjm', 'stu', NULL),
(487, 'Madhavi', 'Gunewardena', 'madhavigunewardena@gmail.com', NULL, '$2y$10$Qtdi7kQSTvsLQXjDcz829uq1qur07IsF9nDe.Oh60R5ZKQqTRG8GG', 'stu', NULL),
(488, 'Madhavi', 'Jayamaha', 'madhavijayamaha@gmail.com', NULL, '$2y$10$TxWfG1CdospDlNfytJPBMuga9d/.NIMvA1em4d/kcca0fmKGz.Rk6', 'stu', NULL),
(489, 'Madhubhashini', 'Chandrasiri', 'madhubhashinichandrasiri@gmail.com', NULL, '$2y$10$CpMn5MFDCK7dImMQVT4z9elwE8x2eJedU/JQazuDjjrAM.vRQ6XxG', 'stu', NULL),
(490, 'Madhupani', 'Edirisinghe', 'madhupaniedirisinghe@gmail.com', NULL, '$2y$10$.EacrGV0bJPpRLKacvo69.0.U6VU0TfCXU2Sta1RH1xapOozEAwBq', 'stu', NULL),
(491, 'Madhupani', 'Thotawatte', 'madhupanithotawatte@gmail.com', NULL, '$2y$10$DpBN8zBREw0m/jx67VyDR.eSBYVLzeOLvNWziErLsn7j/dwnVAnzO', 'stu', NULL),
(492, 'Madubashine', 'Jayasuriya', 'madubashinejayasuriya@gmail.com', NULL, '$2y$10$jSg1sbsbGIF0Xuhv/.kIUuWmx4a9WggxfG1Xk3qdhpIVLFLDGP/q6', 'stu', NULL),
(493, 'Madubashine', 'Jayawickrama', 'madubashinejayawickrama@gmail.com', NULL, '$2y$10$v5Gj8zdP4Jer3/Zapl.J9O3oRs633bXha0apJqoMuFvSlpurpxlBO', 'stu', NULL),
(494, 'Maduka', 'Ekanayake', 'madukaekanayake@gmail.com', NULL, '$2y$10$aU9VpD.CvWPzwe/.qELcAuW0f36h8vakOadT/3RN/Gq9BH52z1EB6', 'stu', NULL),
(495, 'Madurawala', 'Gunewardena', 'madurawalagunewardena@gmail.com', NULL, '$2y$10$Tj6t9NXSAVQ/2XNDz.XnJOIClLL3c6Y93YHz9hSkKCZL5Cr5D1ssW', 'stu', NULL),
(496, 'Madurawala', 'Illangasinghe', 'madurawalaillangasinghe@gmail.com', NULL, '$2y$10$rmW7RUpvk/8PNoDh4Bz4mOpYctzjo5wtqZCxBu2nG92gHQYcC6Wa2', 'stu', NULL),
(497, 'Madurika', 'Malewana', 'madurikamalewana@gmail.com', NULL, '$2y$10$HmnJJ8H.vj7tWH5A3gW1tuEBuBDGZiE1U9YV08fGyyf5SgOCOhkNK', 'stu', NULL),
(498, 'Madusanka', 'Nanarama', 'madusankananarama@gmail.com', NULL, '$2y$10$PjVzY2s48IDIKoSV3pZZ5ODSBNwibu0t7LKTmD7.bVIPni2AjWnDS', 'stu', NULL),
(499, 'Madushani', 'Jayasena', 'madushanijayasena@gmail.com', NULL, '$2y$10$t7CHAVzRHW6dWGlXWjv1cumvW39QkP/XxhRhcisJ4GQro.XSQBxni', 'stu', NULL),
(500, 'Maduwanthi', 'Dhanapala', 'maduwanthidhanapala@gmail.com', NULL, '$2y$10$QPjv6RNlgTMTF2SitxI7BeDVGJhrTZ3ei1Wu.y7zQW./i9iVt52J.', 'stu', NULL),
(501, 'Maduwanthi', 'Dharsha', 'maduwanthidharsha@gmail.com', NULL, '$2y$10$6YoVuRFXIbhvz.Zuwm1DCeyImvc2WuofU6x/jMywIqYx71n.opIEO', 'stu', NULL),
(502, 'Maheshika', 'Gnanananda', 'maheshikagnanananda@gmail.com', NULL, '$2y$10$war7BZ1GQsYjaWfnTHXwo.9rI1JnLR7iHwIhzoNGLjYCnRzCaT7Ri', 'stu', NULL),
(503, 'Maheshika', 'Shantha', 'maheshikashantha@gmail.com', NULL, '$2y$10$apsGrD.nZwz7d.KdqnlFc.zEm4K0PzjdXbbytPNAjCvz/XM8UvCi.', 'stu', NULL),
(504, 'Mahinda', 'Kumaranatunga', 'mahindakumaranatunga@gmail.com', NULL, '$2y$10$Fv.suhatlqP6hEY2J.BSD.ACnKBCzmXRA7pZ8nqUkwLtyxkciRq4e', 'stu', NULL),
(505, 'Malinda', 'Gajabahu', 'malindagajabahu@gmail.com', NULL, '$2y$10$J3oY.dEZNhdQaEAxaBZR9Ou.lmSAd54KGnQtNWIYUWchN.xEddC12', 'stu', NULL),
(506, 'Malintha', 'Jayatilleka', 'malinthajayatilleka@gmail.com', NULL, '$2y$10$5lTuTjIGpb1MqRgviry5tOowChpLAc/Y6EQ.2zqFemhz9EsjikcXC', 'stu', NULL),
(507, 'Malintha', 'Suriyasena', 'malinthasuriyasena@gmail.com', NULL, '$2y$10$jCStBJMRZPNIQnax0MzlOuhLcL66sf/jGnJo4bQb6PN6GcTolf7B.', 'stu', NULL),
(508, 'Malithi', 'Jayatilleke', 'malithijayatilleke@gmail.com', NULL, '$2y$10$ekZxczFegKnbfymxMEG5SOIE1SBfAmOJkqjTh/jqeaoxfXI6fqypi', 'stu', NULL),
(509, 'Maneesha', 'Amarasekara', 'maneeshaamarasekara@gmail.com', NULL, '$2y$10$USPW8UPp7OFD3/vXsJEw2u7Vsg4fbo788Vk3sUbp318nKHr9X40YS', 'stu', NULL),
(510, 'Maneesha', 'Iriyagolla', 'maneeshairiyagolla@gmail.com', NULL, '$2y$10$9pHycFfh/fVG4wfcrEOcje4AMzBzFqlC4p1LdHyu8zhHnKpRPALH2', 'stu', NULL),
(511, 'Mangala', 'Ponnamperuma', 'mangalaponnamperuma@gmail.com', NULL, '$2y$10$0dcdEwNLJVULNgWxWU796.WhtTq30XrgD5jK04YZyyRUgYEouv.iW', 'stu', NULL),
(512, 'Manisha', 'Bandaranaike', 'manishabandaranaike@gmail.com', NULL, '$2y$10$.JYjHFHUsm1xJ8mTmIrbv.1wSFQF60xyMp749XB2Vml8LyFzdISgW', 'stu', NULL),
(513, 'Manoj', 'Jayatissa', 'manojjayatissa@gmail.com', NULL, '$2y$10$77yibvf2qRATbKbLxMydLuAGY1mJpAfbalV2J35Lzhh4VLEMAn11m', 'stu', NULL),
(514, 'Manori', 'Gnanananda', 'manorignanananda@gmail.com', NULL, '$2y$10$8dnEtM6PpRMBALICqOpb2uhBAYn/Gvl.84.MAu3gTHSnX7723Pi0q', 'stu', NULL),
(515, 'Manuja', 'Lilavati', 'manujalilavati@gmail.com', NULL, '$2y$10$RqQNTwMXS4I3/U8t5Juzo.oB863me988WAdhT4Jm5du5x9XadADFm', 'stu', NULL),
(516, 'Marlon', 'Dissanayake', 'marlondissanayake@gmail.com', NULL, '$2y$10$g6J8C4tjKLxkY3NxXIV61uhugJyhH5azM6w4xBHMmxSYCg4zZDbUq', 'stu', NULL),
(517, 'Marlon', 'Dodangoda', 'marlondodangoda@gmail.com', NULL, '$2y$10$wnjfMGcvQ5oGvgEblDzXmuew/fgKaoHXU3k5qcJd3ulPeWMAkN/eG', 'stu', NULL),
(518, 'Marlon', 'Ponnamperuma', 'marlonponnamperuma@gmail.com', NULL, '$2y$10$sUfRGKbSuJVmr/Up0XNwhuDPb8Phk3yfkHafGTpbs/krSC1hVpXxe', 'stu', NULL),
(519, 'Mayomi', 'Rahula', 'mayomirahula@gmail.com', NULL, '$2y$10$pA/JsrHNtXhsOqA628jE.OF4IA70oMdh4iD5GmqIEtvYDIqcSy.Ne', 'stu', NULL),
(520, 'Melani', 'Dissanayake', 'melanidissanayake@gmail.com', NULL, '$2y$10$tk0Urjm9.0C3cI5xsH816ucJouLWcv2fghS6K7tY9SozK/a1il6mq', 'stu', NULL),
(521, 'Melani', 'Herath', 'melaniherath@gmail.com', NULL, '$2y$10$Frg/d/nmjixgQ.AXAhdM9.D27U1LPNodabBkPwH6JRYUfxZQVQbLS', 'stu', NULL),
(522, 'Menuka', 'Jayawardena', 'menukajayawardena@gmail.com', NULL, '$2y$10$QoSJt9q6kG0yEHJM2kWy9.oovOmN7dKayMniIjfGOOpMOTpIzq2W6', 'stu', NULL),
(523, 'Mihirani', 'Kumaratunga', 'mihiranikumaratunga@gmail.com', NULL, '$2y$10$XuJGUZ.HIdqvOJqoqnh0TOQ/os/p.Fccajt8pGKEOXLPs.ikwMIi2', 'stu', NULL),
(524, 'Miyushan', 'Goonesekara', 'miyushangoonesekara@gmail.com', NULL, '$2y$10$AJQuCJCfn3ZHzYtRqC9FEu8Uuxz2MCJlJmBtj1yiVKL41Z0xwCks6', 'stu', NULL),
(525, 'Monika', 'Chandawimala', 'monikachandawimala@gmail.com', NULL, '$2y$10$d.jZUXgEOrkSIMTApPqhneZBfgQGTBZGcEJ/J2F/TQjmxCI4PGXFy', 'stu', NULL),
(526, 'Mudannayake', 'Gajabahu', 'mudannayakegajabahu@gmail.com', NULL, '$2y$10$WdrKvGZVQQr1SohMdlAEu.j9wU8SkJMvD14jfTcnSkbMBHyD84ejG', 'stu', NULL),
(527, 'Mudannayake', 'Kumaranatunga', 'mudannayakekumaranatunga@gmail.com', NULL, '$2y$10$9sC61gU.hLVSzSQhhVWE..b2RxGbtywbgIlbuabO7MdydPnTE8/zi', 'stu', NULL),
(528, 'Nadeeja', 'Goonesena', 'nadeejagoonesena@gmail.com', NULL, '$2y$10$2aEJxa0EJXRDHm11KtxBj.T7PFwaY2oBggRif6/87ZKwmqJDsnRxi', 'stu', NULL),
(529, 'Nadeeja', 'Weerasinghe', 'nadeejaweerasinghe@gmail.com', NULL, '$2y$10$yvxngV7GbwpXs44/I7xCSeKQ.XvedkX9WFOouNyZOD4jVnOekI2jW', 'stu', NULL),
(530, 'Nanayakkara', 'Athulathmudali', 'nanayakkaraathulathmudali@gmail.com', NULL, '$2y$10$zZUAEWFKwUMRTihHyhCmbeKEcFemuCU2KbHDlwQ9cKyNkqRVyLeeO', 'stu', NULL),
(531, 'Navarathna', 'Kanakeratne', 'navarathnakanakeratne@gmail.com', NULL, '$2y$10$RWYj5I1stnQWAZoCd7xYXus9oiVxRN.MnENKdgPyt8Wo5DFBrzNma', 'stu', NULL),
(532, 'Navarathna', 'Weerakoon', 'navarathnaweerakoon@gmail.com', NULL, '$2y$10$5sb4UybGA0H.AcNRz7nrwuN/eRCiXnboQAMyTuTqJvXKRI4RUJ7sm', 'stu', NULL),
(533, 'Nayana', 'Tilakaratna', 'nayanatilakaratna@gmail.com', NULL, '$2y$10$c4TyaDVa3t5Oc571W3b6UOTomfzC57ERbXczEpBdUjjbQb9NIlt5a', 'stu', NULL),
(534, 'Nayanadini', 'Nandasiri', 'nayanadininandasiri@gmail.com', NULL, '$2y$10$lraySaWf4mxa.Vk2kfPC6u.a4GFdnc.BUPre3kX0uX4w9tDyJ4jGm', 'stu', NULL),
(535, 'Nayananda', 'Wijewardene', 'nayanandawijewardene@gmail.com', NULL, '$2y$10$xI2GNg79zzWcMjJ.3fj/SulRs6LYydoZ0E37HqohM/RPLvL5Acxge', 'stu', NULL),
(536, 'Neja', 'Amarasekara', 'nejaamarasekara@gmail.com', NULL, '$2y$10$r9sa9zAkGgVi9.cFtpyI6eF.TOv3Uozj7./YSFLH2e3Tyjl0OKTuy', 'stu', NULL),
(537, 'Neja', 'Ekanayake', 'nejaekanayake@gmail.com', NULL, '$2y$10$C8zg20gkZpdZ6pMzFXJZwOd0yGgKTlPEgMi.sdYzt9pBLXIsggTSe', 'stu', NULL),
(538, 'Neja', 'Jayatilleka', 'nejajayatilleka@gmail.com', NULL, '$2y$10$89L4YI9/5PlnT9nVEe14nuuVDIpho3Apo4fGf0pTeHf2npBItMW4K', 'stu', NULL),
(539, 'Nelaka', 'Senanayake', 'nelakasenanayake@gmail.com', NULL, '$2y$10$2jzqqKkuwiVylvjD8LPJ2eBMKOWREREwpSq3SjlAcPZ4CEuoIi6m2', 'stu', NULL),
(540, 'Nelith', 'Senarath', 'nelithsenarath@gmail.com', NULL, '$2y$10$oRKe1jbwDdT6NQNYcb8ZYuz9.koxMnVD.bKhe3EnLig748mEOxdPa', 'stu', NULL),
(541, 'Nelum', 'Gamage', 'nelumgamage@gmail.com', NULL, '$2y$10$4YBCY1O5wbPkwuHeTFT6IuHE3RAilMT2I4xNI4lXi.L0FAZ5eqTRS', 'stu', NULL),
(542, 'Neranjan', 'Jagath', 'neranjanjagath@gmail.com', NULL, '$2y$10$HlSGavXrNDGMaIXi0ocaE.3HFgv8MfKUu3j4Qc4yeWPzLh8nbwCb6', 'stu', NULL),
(543, 'Nethaka', 'Medhananda', 'nethakamedhananda@gmail.com', NULL, '$2y$10$xHbbM67623tS92tr7fMKf.ep0sbvHyLfB.9URdZpbjBkRAcd7KUBi', 'stu', NULL),
(544, 'Nethranjali', 'Kularatne', 'nethranjalikularatne@gmail.com', NULL, '$2y$10$iCOxKoB6uZIqBgCrojG.W.QEwRjzlRilsp6jn8zrqgWOtljA4r6rG', 'stu', NULL),
(545, 'Nilaksha', 'Ekanayake', 'nilakshaekanayake@gmail.com', NULL, '$2y$10$wBso00y42/HRpXf/7OO1CuNe18q6lpOKZFCoBSjWFHJUIotZgeXhO', 'stu', NULL),
(546, 'Nilantha', 'Chandrasiri', 'nilanthachandrasiri@gmail.com', NULL, '$2y$10$39hu1xljBsEm5F2yiiPILeYfZ5JXQoUOtMvn890NK.Miv5ODD9bWC', 'stu', NULL),
(547, 'Nilmini', 'Dewasiri', 'nilminidewasiri@gmail.com', NULL, '$2y$10$LqxjLqetUnmPYIAghjG.POaw6TgCp22c8Ssl7YVEwZEHdCIOeYpHW', 'stu', NULL),
(548, 'Niluka', 'Kulatunga', 'nilukakulatunga@gmail.com', NULL, '$2y$10$kexVb0xddehNI3W/BWNNo.lOeK7IXtL7A3TCUsUlv9AevMbCOoTvm', 'stu', NULL),
(549, 'Nilusha', 'Wimalasuriya', 'nilushawimalasuriya@gmail.com', NULL, '$2y$10$JGRprIkI2/dwbNYaf29gXuICsGi1dwfTmVHxlfmB5CwlMixzhnhS6', 'stu', NULL),
(550, 'Nilushana', 'Jayamaha', 'nilushanajayamaha@gmail.com', NULL, '$2y$10$w1ac9Yq0CYXtGgb3Xim30udbyUUPCqPqBF6Bc8bXfm7owAX4Y582a', 'stu', NULL),
(551, 'Nimna', 'Amaradeva', 'nimnaamaradeva@gmail.com', NULL, '$2y$10$UUAmgvNhrqHDURqcdjuHiu7U5Mwz1DQmTGWJRskZZwVNHNXB65Yoi', 'stu', NULL),
(552, 'Nimthaki', 'Sumangala', 'nimthakisumangala@gmail.com', NULL, '$2y$10$NoIJrxPOFnxl3C/lgfV/IOBOFkfBv8ikcJUWQFNO2VUqymvt1SEt.', 'stu', NULL),
(553, 'Niranga', 'Lankage', 'nirangalankage@gmail.com', NULL, '$2y$10$uC.Q69rE./2rIJzy1TlESO0R8kbtuxT7F86zPdTqa/NXsBt3sR1wW', 'stu', NULL),
(554, 'Niranji', 'Nissanka', 'niranjinissanka@gmail.com', NULL, '$2y$10$z9JkJ2dJRdoN4reE3B1Ry.RE2ujgvFoiSQwcws4KKcp0EbnkvBGLW', 'stu', NULL),
(555, 'Nirasha', 'Gamage', 'nirashagamage@gmail.com', NULL, '$2y$10$STS.03QNCN9Y6NnceNZUuuqMmy36hMggNH5XQbOFWpFZiyILcaMwW', 'stu', NULL),
(556, 'Nirmal', 'Senanayake', 'nirmalsenanayake@gmail.com', NULL, '$2y$10$gCeUfmDrku90wzgSdzAxy.0UJ2iErLPbwS1ODSS5sebJ0d6igNLPy', 'stu', NULL),
(557, 'Nisal', 'Nandasiri', 'nisalnandasiri@gmail.com', NULL, '$2y$10$nfEILtWnxneXzxKUpxIw9O4tD2vCug1mO4xoof978.4gIM3iZPxWS', 'stu', NULL),
(558, 'Nisanka', 'Vithanage', 'nisankavithanage@gmail.com', NULL, '$2y$10$OVOyGeFQap9wNQ6x0R1kMOSve66WwmcEC/q.GDSkQu1oBsAwt7X1K', 'stu', NULL),
(559, 'Nisansala', 'Chandawimala', 'nisansalachandawimala@gmail.com', NULL, '$2y$10$unJLcTGwLo5Be6mSUJVIo.q1GonKTclYP7HgIIFk03xQ.7KzoW8NW', 'stu', NULL),
(560, 'Nishadi', 'Ranaweera', 'nishadiranaweera@gmail.com', NULL, '$2y$10$aqTxYw4374Pb1zNsdkLVD.tZoZg/8To/UYKkPcDHyQkQDmG8nYSmm', 'stu', NULL),
(561, 'Nishal', 'Samaraweera', 'nishalsamaraweera@gmail.com', NULL, '$2y$10$wwhdjsDxVXmO1C/3UaPXHOID2lvHnQppOUxtMbV1nal5mrmLSB0aK', 'stu', NULL),
(562, 'Nishan', 'Illangasinghe', 'nishanillangasinghe@gmail.com', NULL, '$2y$10$BjXU/o7WctJGIp9Ao/LzS.bFwaqclgHQ2iJw9pxtA8cjOCEZ7nQq6', 'stu', NULL),
(563, 'Nishshanka', 'Dharsha', 'nishshankadharsha@gmail.com', NULL, '$2y$10$uvNxrDinT8ifQlPFNLwAzeSO5swQ./8fBPS5HRfaGnhYk2gXwuZfW', 'stu', NULL),
(564, 'Nissan', 'Gooneratne', 'nissangooneratne@gmail.com', NULL, '$2y$10$7tKGLssT.SKgTefKf/NvoOx3hpiAVES1IXZ/0tOzYNOmXdEvM3VdK', 'stu', NULL),
(565, 'Niwanthi', 'Jayasuriya', 'niwanthijayasuriya@gmail.com', NULL, '$2y$10$4mAmd7zmOXEmd5wUTVuEaugVALsk3kC9p5SLB2XKbPdnUlvx6hPPi', 'stu', NULL),
(566, 'Nushan', 'Addararachchi', 'nushanaddararachchi@gmail.com', NULL, '$2y$10$lDGovmxDVBm7KLVvyEibbOfVKKZAn5rSksn28vRlLKmphRmV6PzhG', 'stu', NULL),
(567, 'Nuveena', 'Kumaranatunga', 'nuveenakumaranatunga@gmail.com', NULL, '$2y$10$5koY98iOZHbq2o.O8JCvaO/ZBYOfF4.yg12hvl9wM2BFXRElrnMtS', 'stu', NULL),
(568, 'Omeshi', 'Dharmagunawardhana', 'omeshidharmagunawardhana@gmail.com', NULL, '$2y$10$BAnNJOpCYhXdq68usaiylO9F3dwvxRN7yz/ylazirWRABO6idUjVG', 'stu', NULL),
(569, 'Omeshi', 'Lankage', 'omeshilankage@gmail.com', NULL, '$2y$10$.Xm2/Bbr1KvvFg1HtDnW9.D5YXtwmc3LPi.X1w3QnRbUX7jfExiQC', 'stu', NULL),
(570, 'Oshadhi', 'Madugalle', 'oshadhimadugalle@gmail.com', NULL, '$2y$10$z8lKoFC.azdG4QTRh/6gj.pnDLTShmC8Tb6eBhG.t9cAQjDOkMSxK', 'stu', NULL),
(571, 'Oshadhi', 'Walpola', 'oshadhiwalpola@gmail.com', NULL, '$2y$10$3zrbAVtCE.79OAjMEB6Riey777Oxh5eROV7F5KpOI8jIXsj1z5DIi', 'stu', NULL),
(572, 'Padmakumara', 'Gooneratne', 'padmakumaragooneratne@gmail.com', NULL, '$2y$10$fzLPpKxEdMhwehzyAmFwTuGHyizuxaXSEolFKPe/98MuHk6Heuxgi', 'stu', NULL),
(573, 'Palitha', 'Illangasinghe', 'palithaillangasinghe@gmail.com', NULL, '$2y$10$HnGZf40AvGL2VTEryjdD8e0n3IQoTOfgsYZwt5ClRnpgTrh9OX4d.', 'stu', NULL),
(574, 'Pannala', 'Dharsha', 'pannaladharsha@gmail.com', NULL, '$2y$10$xkwK/qo00rScbIpsIPq6OuCaOed5/C/WrHjQcx7Qi.DByDNUhZUu6', 'stu', NULL),
(575, 'Parami', 'Lankage', 'paramilankage@gmail.com', NULL, '$2y$10$kIf8nadiBgNXlcY72dcS8.6qVU.lp4OssmzL8qLvQsJw2ZCOsY4/K', 'stu', NULL),
(576, 'Pasan', 'Gunasekera', 'pasangunasekera@gmail.com', NULL, '$2y$10$Zuf5uJfgxUllDgurgHPJ3.6gYHt0pjh9FGoHAeASBtEBppzdJbXym', 'stu', NULL),
(577, 'Pasan', 'Hettige', 'pasanhettige@gmail.com', NULL, '$2y$10$1MTgvGRdAPf2FOYXYTw5u.GrJ9KDYwCRrt4yxWfUPBpUDDVxz1I12', 'stu', NULL),
(578, 'Pavithra', 'Kannangara', 'pavithrakannangara@gmail.com', NULL, '$2y$10$0HmdRoAdzve/SCzVdZT1VOQMkp1YJ7F5OQXqeYqlvCD/Ba7eSmAzG', 'stu', NULL),
(579, 'Pavithra', 'Saranankara', 'pavithrasaranankara@gmail.com', NULL, '$2y$10$6foc9W4O45kLgU7pA.Bi1Ox76m6duYVNVlpRNZRZd.QKsVeM7m3TW', 'stu', NULL),
(580, 'Perera', 'Sangakkara', 'pererasangakkara@gmail.com', NULL, '$2y$10$VXqCCc8S.jE3jMBdSkzhY.WhKOO4uJeLt6Wc/8KjptcD6BSzTvnw2', 'stu', NULL),
(581, 'Peshila', 'Bandara', 'peshilabandara@gmail.com', NULL, '$2y$10$joHwI95Yj5IbOk4iGuF.ROmzcLXMX23NImbwshW1HStBq1UWr3x02', 'stu', NULL),
(582, 'Piumi', 'Devenampiyatissa', 'piumidevenampiyatissa@gmail.com', NULL, '$2y$10$Cf271NINNp.zbd3mlW5fqOwHndhb2oHSTfdHA90EQ.c1oQkvOcceG', 'stu', NULL),
(583, 'Poornima', 'Gunasekera', 'poornimagunasekera@gmail.com', NULL, '$2y$10$j.FXRe1uV3jrN5YnM5i5IegqbzKIpQX1jvGIQZv7xw96aTuqBDaqq', 'stu', NULL),
(584, 'Prabath', 'Suriyasena', 'prabathsuriyasena@gmail.com', NULL, '$2y$10$yZ9Mcqqni953wY63vgipKeim37G0CdCQJPuAsdNhmgB60Gec9hNxa', 'stu', NULL),
(585, 'Prabha', 'Kumaratunga', 'prabhakumaratunga@gmail.com', NULL, '$2y$10$IqT50OjgmW24AcAjnpsFq.QKxMxgoge3XSMhcSNtPo3QBCGKwDco6', 'stu', NULL),
(586, 'Prabha', 'Wickremasinghe', 'prabhawickremasinghe@gmail.com', NULL, '$2y$10$35Dgm4Ga5.OXrmAmxqWI4u3dp2W/EOH0Aj45Gm3kQi4RNOdU6N2li', 'stu', NULL),
(587, 'Prabhalini', 'Dodangoda', 'prabhalinidodangoda@gmail.com', NULL, '$2y$10$yJ2zROdycegfN5zPjpoET.PmXSGXA3B.nUNme1sGrWS01dvZbgwLy', 'stu', NULL),
(588, 'Prabhalini', 'Vithanage', 'prabhalinivithanage@gmail.com', NULL, '$2y$10$tZ4d8x/GCvYy3yBEc5uIReGpFhJDiBaZI2NToeJbvym9lVsKZeEiq', 'stu', NULL),
(589, 'Prageeth', 'Goonesena', 'prageethgoonesena@gmail.com', NULL, '$2y$10$nQtCN1vMFcJcRxX/Ha0E4uH3NnG3ALIRWOOc9qjXMRWpoOFuPWvJi', 'stu', NULL),
(590, 'Prageeth', 'Jayaweera', 'prageethjayaweera@gmail.com', NULL, '$2y$10$AQkRSjYzcbpp42ooLoMOw.Yud9jSfuRwCpGoHsz0Hj.76lOkCyFXW', 'stu', NULL),
(591, 'Prageeth', 'Silu', 'prageethsilu@gmail.com', NULL, '$2y$10$9JiG9X396c0Y7C06Rdwkc.cNl64OxYC30o7xm67Ii6A9MJ0i9Bxl.', 'stu', NULL),
(592, 'Pramila', 'Prasanna', 'pramilaprasanna@gmail.com', NULL, '$2y$10$NMF7rMK2l24v.I4uXZ.4L.ZxkXTd270V.A7L7SW/3hAHWs0s7sIT2', 'stu', NULL),
(593, 'Pramila', 'Wickremasinghe', 'pramilawickremasinghe@gmail.com', NULL, '$2y$10$bx.VGQVCNCxNvUVNOcunTORhuQ0N.zJVy6a/Q5FxN8f4XVoGwvGvi', 'stu', NULL),
(594, 'Pranama', 'Serasinghe', 'pranamaserasinghe@gmail.com', NULL, '$2y$10$yuWF4WPXXpE2uNNmxlhgxe6tIOUTNyCryAGcZTRxegYIqGirQP7Xu', 'stu', NULL),
(595, 'Prasad', 'Serasinghe', 'prasadserasinghe@gmail.com', NULL, '$2y$10$ciFGTnTZOvOGZeGGJMoEHeI/o6B3mEtjrSApx2smff26TVLOpk24m', 'stu', NULL),
(596, 'Prasadi', 'Lilavati', 'prasadililavati@gmail.com', NULL, '$2y$10$EM2blV75ZdNwp.Lzh1q8W.z3cOxv0FJOS5Ilrn2zm7thO6cxKnXU.', 'stu', NULL),
(597, 'Prasadika', 'Samarakoon', 'prasadikasamarakoon@gmail.com', NULL, '$2y$10$5dHe.gY3oBdYXvR2CwFmR.CV45asxt2KrYVQXuQdlyas7wH6.g0DS', 'stu', NULL),
(598, 'Prasangi', 'Jayewardene', 'prasangijayewardene@gmail.com', NULL, '$2y$10$Pulzxv1a.ogT0WOu0b9xu.gAqP/Kkmhsk2v0KvF9PGh5bwivue2Ge', 'stu', NULL),
(599, 'Priya', 'Gunawardena', 'priyagunawardena@gmail.com', NULL, '$2y$10$0nMNJhBc1DhhVmUtN.KvFOYUHMTdUiHrrZUy4mVwadOuMbpRbZqBC', 'stu', NULL),
(600, 'Priyana', 'Gunewardene', 'priyanagunewardene@gmail.com', NULL, '$2y$10$5xhRx3dKAnuGfqIx/pzAYupwcVAUsnKSk2SIObuCSEudq8tJYgji6', 'stu', NULL),
(601, 'Priyana', 'Iriyagolla', 'priyanairiyagolla@gmail.com', NULL, '$2y$10$PggaNU1mCCfizMq/nURc3evJutgXL87GP7IUwEYRhhA6UZXs9g9Hm', 'stu', NULL),
(602, 'Priyana', 'Jayawardene', 'priyanajayawardene@gmail.com', NULL, '$2y$10$8b8CistubgKwbws/n5AemeAykfAhQ83rfe0Nqxbfx2xR0PkFGwFNG', 'stu', NULL),
(603, 'Priyanka', 'Dissanayake', 'priyankadissanayake@gmail.com', NULL, '$2y$10$6xGT8I/MK/AOaN722hnprO8ArK4Sbe9BymFzS8wCTKZaZ3wKfj6pu', 'stu', NULL),
(604, 'Priyanka', 'Pannaseeha', 'priyankapannaseeha@gmail.com', NULL, '$2y$10$xifSnO4ZpLr/GRgShZ3RhuF8IpkAml38nm8KL6gCN2HJwOdOU0B6.', 'stu', NULL),
(605, 'Purnima', 'Fernando', 'purnimafernando@gmail.com', NULL, '$2y$10$Kqdnmgd1PuDscHTC7RfrxOgaMTjpvCDvOa3OoRVGDyWFld3NX96FK', 'stu', NULL),
(606, 'Purnima', 'Vithanage', 'purnimavithanage@gmail.com', NULL, '$2y$10$8zhkVFIMQLbLfLmy00n2n.zL6btDsKSxY4r43R8l.PR423vfbCKpq', 'stu', NULL),
(607, 'Pushpakumara', 'Palihapitiya', 'pushpakumarapalihapitiya@gmail.com', NULL, '$2y$10$PFMeZHRqVi2shnZ/Qh9yZuLOCUHcysPCDwzoMlJveY7Dy4QYVCZc.', 'stu', NULL),
(608, 'Ranasingha', 'Kotelawala', 'ranasinghakotelawala@gmail.com', NULL, '$2y$10$5dJt5i6r5g8XzDatQnlNw.nR1mnodeNssQKuqYlUyXPPj5A7z6QdS', 'stu', NULL),
(609, 'Ranawakkage', 'Kulasinghe', 'ranawakkagekulasinghe@gmail.com', NULL, '$2y$10$PuK1eec.TL2YZ4TSHBedneBtcb2P5yXzl/A.iNecEzQap3BCYpj26', 'stu', NULL),
(610, 'Ranawakkage', 'Vithanage', 'ranawakkagevithanage@gmail.com', NULL, '$2y$10$9Z4wlGZ3TdiNsvcvOWpy2OqyCWkxpwuUd2ksclZhTGCujIF4NPkFW', 'stu', NULL),
(611, 'Ranaweera', 'Fernando', 'ranaweerafernando@gmail.com', NULL, '$2y$10$13GKshs0EGdisPxq9VpWAugZEwopUroooNJVjX9s54QRHHYvPjxly', 'stu', NULL),
(612, 'Ranaweera', 'Nissanka', 'ranaweeranissanka@gmail.com', NULL, '$2y$10$BcToXEtbz6jC1AIBpRmaAe5PNFaNUb42qe4PM4qqnIUvG2yDrQvfK', 'stu', NULL),
(613, 'Randika', 'Kumaranatunga', 'randikakumaranatunga@gmail.com', NULL, '$2y$10$1A0Org24SLbmSSuMSYrQ7.bnQ3itC7.2rTCNr7ELOMFa3hzCvfgCm', 'stu', NULL),
(614, 'Rangi', 'Bandaranaike', 'rangibandaranaike@gmail.com', NULL, '$2y$10$H4yxQ93ih78UwG.eCVzVcuRHOjjekLFabflsx204nZBo.cjv2W1h2', 'stu', NULL),
(615, 'Ransara', 'Karannagoda', 'ransarakarannagoda@gmail.com', NULL, '$2y$10$96MZyJlC9OMNME7.kIBth.IHmv0qlBqVkeL5sxrQSYcqadEXFSaFy', 'stu', NULL),
(616, 'Ranuga', 'Dahanayake', 'ranugadahanayake@gmail.com', NULL, '$2y$10$cKcN6z4CPCUJCOHCK./F4e5KZEP08zw2vlLrFaIK1Sxl3LQ6dihWm', 'stu', NULL),
(617, 'Ranuga', 'Jararatne', 'ranugajararatne@gmail.com', NULL, '$2y$10$bFRjadEnJk/pZB9EU5raT.KoKhk6T0D4KCKCB/3P08NhYEiPK160m', 'stu', NULL),
(618, 'Rathunga', 'Bandaranayake', 'rathungabandaranayake@gmail.com', NULL, '$2y$10$nSNDFdzaaHUYcU.VbcOb.OR1fMdN4lC/92lc3Jr9Sues11ghQuU8a', 'stu', NULL),
(619, 'Raveena', 'Paranavithana', 'raveenaparanavithana@gmail.com', NULL, '$2y$10$abd7ThWBdE7AF1P.02.nQueAba0cmcmagau7jPSkZKFxDwsAgpXpC', 'stu', NULL),
(620, 'Ravindu', 'Pathirana', 'ravindupathirana@gmail.com', NULL, '$2y$10$SgYb3QF7zmIm3FCW.t06rOXJ4Rxye6ffj2F5u2Morw0VDHlmiwHEW', 'stu', NULL),
(621, 'Rodrigo', 'Pathiraja', 'rodrigopathiraja@gmail.com', NULL, '$2y$10$rsr/mpLHtm8OlVVwoZZ.VOIn7NPb1vjCPhRY7a3nUrax2KP.ge/oW', 'stu', NULL),
(622, 'Rohan', 'Jagath', 'rohanjagath@gmail.com', NULL, '$2y$10$n6CslfL3eFV0eVRWfAC9H.Y9AIBheBmD3rmrWk0eGQdvza7H99hyG', 'stu', NULL),
(623, 'Rohana', 'Siriwardena', 'rohanasiriwardena@gmail.com', NULL, '$2y$10$xgcpZBYltWKEOTdaYoyrGOqcPn0HYWG2C0Ox9la0Ja18gSNCnT0Yu', 'stu', NULL),
(624, 'Roshen', 'Balasuriya', 'roshenbalasuriya@gmail.com', NULL, '$2y$10$1hHJ7sFT.HHePL6en4ZSv.hztqJHTPiYGBvFih84EG90DUKxwXw/6', 'stu', NULL),
(625, 'Rubathas', 'Jayawardena', 'rubathasjayawardena@gmail.com', NULL, '$2y$10$TFF57chIim6fW3cR9yI.s.bsVC.Rob/smF5Dofw0ogw7wIhPi/IKC', 'stu', NULL),
(626, 'Ruklanthi', 'Amarashinghe', 'ruklanthiamarashinghe@gmail.com', NULL, '$2y$10$KwCp3CSGH3wd6lm9dJhIRugFvW3Uzy9KN1DVXzMMTOA9MKRmqRY0e', 'stu', NULL),
(627, 'Rukman', 'Premaratne', 'rukmanpremaratne@gmail.com', NULL, '$2y$10$Bd3zdGDlkNdQ7aiyy0JsmuGPiLyjHeBKxMJva4hb94u.8d2NVBDMe', 'stu', NULL),
(628, 'Ruparathna', 'Gajabahu', 'ruparathnagajabahu@gmail.com', NULL, '$2y$10$cImsUbeV6FlZJ6mafP2owOPm7vae6MxsWIqTjBMg9LiD/1W7Weuqq', 'stu', NULL),
(629, 'Rupasinghe', 'Silu', 'rupasinghesilu@gmail.com', NULL, '$2y$10$76S9Q4HUT7F/Dw8y0fcT2eC4DWpbnAJRjz.dPs4Bsb6TEzy5qb7Fq', 'stu', NULL),
(630, 'Ruvini', 'Pathirana', 'ruvinipathirana@gmail.com', NULL, '$2y$10$as3wM3U9WIBEe/hbofa9oeaw7rum0zmSNONzHHwWPRa6bZ4HsYfje', 'stu', NULL),
(631, 'Ruwani', 'Walpola', 'ruwaniwalpola@gmail.com', NULL, '$2y$10$rXWnGwsfnQ4E.WBY8vtKWejPYaaN5Sx8wc/ERc0.7x1hE01ECVr3G', 'stu', NULL),
(632, 'Sachini', 'Kehelgamuwa', 'sachinikehelgamuwa@gmail.com', NULL, '$2y$10$UlCH0dTYcK2uUBZRkwbNQeYUaTFaKQUD7ALkkyDgg2YkRWmKA1NRq', 'stu', NULL),
(633, 'Samali', 'Anula', 'samalianula@gmail.com', NULL, '$2y$10$j9cmrWtKNG247cvAiRgy9Osmej1hwh2MyPZ.q.N.IaOpenLxmdMaK', 'stu', NULL),
(634, 'Saman', 'Serasinghe', 'samanserasinghe@gmail.com', NULL, '$2y$10$yN6Y6M2.auW.VUXwe2PD8umiuQGbb9jXE6KFd7V0IzVnySHsDHIEK', 'stu', NULL),
(635, 'Samanthi', 'Goonewardena', 'samanthigoonewardena@gmail.com', NULL, '$2y$10$Is5l/N4XhTmmDm1pj8lk5uLhoqUUDoj9ivH09uSzLWCwbfmkTLj/W', 'stu', NULL),
(636, 'Samanthi', 'Jayasinghe', 'samanthijayasinghe@gmail.com', NULL, '$2y$10$FCaDkRr38h7gV2JJOc6IhO6hgSBFV9VGlkusqHdOBEMvHJF2tgS/G', 'stu', NULL),
(637, 'Samanthi', 'Obeysekera', 'samanthiobeysekera@gmail.com', NULL, '$2y$10$FtFkA8G8m1dDx5K50r8NlOCG6m02SebWRhFaVL5PcE.10UwxjrSAy', 'stu', NULL),
(638, 'Samanthika', 'Karunaratne', 'samanthikakarunaratne@gmail.com', NULL, '$2y$10$.2g5wKsJ8icHUEBiASVR7.jA44Q93nCJ9/6ezS45svfFTJT8arQlK', 'stu', NULL),
(639, 'Samarakoon', 'Kularatne', 'samarakoonkularatne@gmail.com', NULL, '$2y$10$RuhWWetMWSvy1ELC2EAWYOtJXPO1TpK/VVJW0XugMJ727RJTrloXi', 'stu', NULL),
(640, 'Sameera', 'Abayaratne', 'sameeraabayaratne@gmail.com', NULL, '$2y$10$jlxtbP5KxeQ7W4mZR37iKu5ouiH6SZcIQexcXBlP7/7wjhLXcMP.q', 'stu', NULL),
(641, 'Samindi', 'Addararachchi', 'samindiaddararachchi@gmail.com', NULL, '$2y$10$y2NUJavOu6bDZxnE3Vu0I.5agm2BfHnePW024rfXpQOgULIfnDkTu', 'stu', NULL),
(642, 'Samindi', 'Rahula', 'samindirahula@gmail.com', NULL, '$2y$10$yJut0p5PRw3Yg0Ka5v1cZePDHRUSW5mMAx2j68TkkwMgp2P6dYCf2', 'stu', NULL),
(643, 'Samodha', 'Bandaranayake', 'samodhabandaranayake@gmail.com', NULL, '$2y$10$Llzo0hG5160IG2WtiJAFlO.ELEBdBL/BtsrYf9CRV3yP3WWUEqs2K', 'stu', NULL),
(644, 'Sampath', 'Weerasekara', 'sampathweerasekara@gmail.com', NULL, '$2y$10$e49s3Z8SSaq17eHRJfe92eoF6lwmAFVpm09xlNu.b1Y0eXNtea./i', 'stu', NULL),
(645, 'Sandaruwan', 'Madugalle', 'sandaruwanmadugalle@gmail.com', NULL, '$2y$10$6po0fqLHOddFXfZm1bt5o.ISM6XdPrq0l0rG3F5hcGOWUBXGG5fi6', 'stu', NULL),
(646, 'Sandika', 'Khemadasa', 'sandikakhemadasa@gmail.com', NULL, '$2y$10$QqRyVUH5RoQUVcWQay7vaer..W9j2QptX9c6VLXhvnvQajyrJ1l2i', 'stu', NULL),
(647, 'Sandika', 'Silva', 'sandikasilva@gmail.com', NULL, '$2y$10$sDSejZ98UBzFhVDjSwuChuNEKPxMs0ibZqFgC9mPcgre9asz.rYdy', 'stu', NULL),
(648, 'Sandunmali', 'Seneviratne', 'sandunmaliseneviratne@gmail.com', NULL, '$2y$10$6KaQsR8jiJPMX2CoB/DeO.wQGBogIacEbc9B1rLUw4HrIh9y.Ml2y', 'stu', NULL),
(649, 'Sanjeewa', 'Obeyesekere', 'sanjeewaobeyesekere@gmail.com', NULL, '$2y$10$NSGCOa6y8l/XuenKoh9p9e75UnCHqjwSuZ3EX.vFD76tqym2pYTIS', 'stu', NULL),
(650, 'Sanka', 'Bandaranaike', 'sankabandaranaike@gmail.com', NULL, '$2y$10$qajpI1JnvanB7sIKEl0cd.WO3Cjwzv8DjPeybYppBaE1XaPcq5q3C', 'stu', NULL),
(651, 'Sanuja', 'Wimalasuriya', 'sanujawimalasuriya@gmail.com', NULL, '$2y$10$4tRwYievqXbVQPI4AgtNH.KMluo/YvK52EkEg0W7exNeGJkjUDxy.', 'stu', NULL),
(652, 'Sanuthi', 'Hewavitharana', 'sanuthihewavitharana@gmail.com', NULL, '$2y$10$mu53zFy3CqT/k/rUD4dO/.UY9FUQYtbFyM2LNQVjKfGyIS/1yOwfK', 'stu', NULL),
(653, 'Saritha', 'Wipulasara', 'sarithawipulasara@gmail.com', NULL, '$2y$10$1mPhOEP80UJdgOStjDJw/u2bfY1XsAmqQyJycdSIewcRtVDekpvfu', 'stu', NULL),
(654, 'Sarojani', 'Kulatunga', 'sarojanikulatunga@gmail.com', NULL, '$2y$10$oFt4RMro.aPeI9W4gDAaOOlPbreufd2hYli/nXnM1D8Xfrh7yatVa', 'stu', NULL),
(655, 'Sashika', 'Fernando', 'sashikafernando@gmail.com', NULL, '$2y$10$pj.SuUaNYbuiQ7iBg9iiMezORIS3ee0gY/SC/ziyYS7FiBIM9bJKG', 'stu', NULL),
(656, 'Sashika', 'Jayasinha', 'sashikajayasinha@gmail.com', NULL, '$2y$10$KnuZiQRMEQl0hX8et1dwweC2ZXtCyRZ/dstKzI0fDgX19xGsVF2UW', 'stu', NULL),
(657, 'Sasiri', 'Bandaranaike', 'sasiribandaranaike@gmail.com', NULL, '$2y$10$OXg3yBNezFsI10lQy.pZ3edmdsiNdfkPqVmmSPw0KnoMnZcNgV0ui', 'stu', NULL),
(658, 'Sasrutha', 'Jayatilleka', 'sasruthajayatilleka@gmail.com', NULL, '$2y$10$lD6.f/PV/ZNu/Sj6ZKNGrO5uXki6WgNpKNEKt9XMKHPGkI9dZ7Zdm', 'stu', NULL),
(659, 'Sasrutha', 'Weerasinghe', 'sasruthaweerasinghe@gmail.com', NULL, '$2y$10$Ra0wFAYn2lc7HaV3Fo5jP.kXtca8m05MFXiXHNItETC.W./BYLZEK', 'stu', NULL),
(660, 'Saummika', 'Abeysekera', 'saummikaabeysekera@gmail.com', NULL, '$2y$10$fYdLpkwuEx.sP19b5nIN2O5uke6A2XAD.JUQPTqs67roQPA59EjES', 'stu', NULL),
(661, 'Saumya', 'Vikkamabahu', 'saumyavikkamabahu@gmail.com', NULL, '$2y$10$4zc4HlAp4.42HRngmM/HCuumRKJ122EzyCS7pNVEFqdbEm.115/OS', 'stu', NULL),
(662, 'Saveen', 'Wickremanayake', 'saveenwickremanayake@gmail.com', NULL, '$2y$10$tJkH/gtL297o7UiNcdwyW.Hx.mRb7WT5aLzfuu4Rz4/F29RXcRrsa', 'stu', NULL),
(663, 'Savin', 'Jayasuriya', 'savinjayasuriya@gmail.com', NULL, '$2y$10$.ns./20GSub9SiEdUcnw/ubbMPHujnBQaDIZQ2RH3GBgzXyqANUSC', 'stu', NULL),
(664, 'Senanayake', 'Maitreya', 'senanayakemaitreya@gmail.com', NULL, '$2y$10$7qxT4/Ap3MwQLGmZctG1HO84FYSUOuXh7FDqjRU93o0SAaL3DUTW2', 'stu', NULL),
(665, 'Serasinghe', 'Vikkamabahu', 'serasinghevikkamabahu@gmail.com', NULL, '$2y$10$JgvS8m5TaPBHywlBjTtp3uhXtbrFg8O7fJwUmmLtZtc6Boah8ztkK', 'stu', NULL),
(666, 'Sewwandi', 'Deraniyagala', 'sewwandideraniyagala@gmail.com', NULL, '$2y$10$tTYxFLCVsOUvH3wb7xjvduGz3YYKAaFfNu/C6T21lBcAw/ZZhIRuO', 'stu', NULL),
(667, 'Sewwandi', 'Dewasiri', 'sewwandidewasiri@gmail.com', NULL, '$2y$10$TRV06jyZM6iJ0Eba3n0MzuWLm.6F3g4qf3jP1DBiwOX73LGKyL086', 'stu', NULL),
(668, 'Shaami', 'Jayatilleka', 'shaamijayatilleka@gmail.com', NULL, '$2y$10$LAMwOABP/X9yQogM3w9SsePLBZKIp9eSuBelJHFXW8sRgxH4WOOCK', 'stu', NULL),
(669, 'Shakila', 'Gunewardene', 'shakilagunewardene@gmail.com', NULL, '$2y$10$7pemQqKnWQCFFjQpOOhaLuOqJ6LguhyzOAIEYrAEgjcBSxwkews.W', 'stu', NULL),
(670, 'Shakila', 'Peiris', 'shakilapeiris@gmail.com', NULL, '$2y$10$c8WEurhu5VbpRKpirUv3LeIGXhsbe0V03hg1c93p1OhDUxqayjNNy', 'stu', NULL),
(671, 'Shalika', 'Ranaweera', 'shalikaranaweera@gmail.com', NULL, '$2y$10$1OvkHkxjeK8/TwUlBcg53eM2iBY5oq/svudVF5D93ZUUmUGZ41gA6', 'stu', NULL),
(672, 'Shanika', 'Dahanayake', 'shanikadahanayake@gmail.com', NULL, '$2y$10$ySFZ18Hbj/ecbXn9bRRD7uaLnVkGLk8Lil8jL1Beq7KcKdtNhGsSm', 'stu', NULL),
(673, 'Shashi', 'Perera', 'shashiperera@gmail.com', NULL, '$2y$10$s3HsPdeyZsJFJ8Y.TygvNOinl/WFAVTCcxaTUqX6Otu0zGJI52cE2', 'stu', NULL),
(674, 'Shashi', 'Weerathunga', 'shashiweerathunga@gmail.com', NULL, '$2y$10$hsGv6g7povJ4IZiq1T/BveJP5HasUK.lx4c6lTiBXOuBQrp9dNBZK', 'stu', NULL),
(675, 'Shasipraba', 'Anula', 'shasiprabaanula@gmail.com', NULL, '$2y$10$iXr8OgMPxy/omqfGQKHhneXzIwl8ScQUPgM8h12bxtBpYLhS6aX9G', 'stu', NULL),
(676, 'Shehani', 'Attygalle', 'shehaniattygalle@gmail.com', NULL, '$2y$10$yp8kwL2hXrSpS70oaLiRe.CYQRNqHxyXtPXNYiyjctOAsMFW5oUSS', 'stu', NULL),
(677, 'Sithara', 'Weerasinghe', 'sitharaweerasinghe@gmail.com', NULL, '$2y$10$oTodianJIuT1qSSkNwZoFOpipDmQgtZwXoAS3hVwxVokT4yerJe6G', 'stu', NULL),
(678, 'Solanga', 'Kobbekaduwa', 'solangakobbekaduwa@gmail.com', NULL, '$2y$10$.WoR758iw6hE2SE9vqvRV.grwx/GbT2jEwG/VT96mV1PUWXaiOLNW', 'stu', NULL),
(679, 'Srinika', 'Jayaratne', 'srinikajayaratne@gmail.com', NULL, '$2y$10$TTU7JYuU3bsFXviflekIw.aujCWhrvcG9ONm860fT3nbCbFLufmS2', 'stu', NULL),
(680, 'Srinika', 'Premadasa', 'srinikapremadasa@gmail.com', NULL, '$2y$10$PGyGTvk3GQp48RZhKpel5enPuakTcQUKtNiHEXXP.eXPd1bT1.Kiq', 'stu', NULL),
(681, 'Srinika', 'Premaratne', 'srinikapremaratne@gmail.com', NULL, '$2y$10$Q6fCacI6KOlhgFByz.jMyunPlB0rhakf0EluQ1gINsfoI0D9y7ik2', 'stu', NULL),
(682, 'Srinika', 'Wijeratne', 'srinikawijeratne@gmail.com', NULL, '$2y$10$pH3mw3oIPeX.GuCKuD12we70xHHKscK6G08pchcEANu1eYqYPXUGK', 'stu', NULL),
(683, 'Abeykoon', 'Dissanayake', 'abeykoondissanayake@gmail.com', NULL, '$2y$10$1goR9FAm.L65Ip/LaKtniewxG.lmsVu6JvzwPQ.XqA/OJKz43D9TS', 'stu', NULL),
(684, 'Abeykoon', 'Rahula', 'abeykoonrahula@gmail.com', NULL, '$2y$10$LPEC5R26lp0zc1wzGicM2Ol.ycmW6U9/oVzvkAgu4aAUWWE9F1Ime', 'stu', NULL),
(685, 'Adikari', 'Sumangala', 'adikarisumangala@gmail.com', NULL, '$2y$10$QwqvVyuBL2PvA4c9BewT4esyNRz1BBz85MTlaKtI9KhigtQ8QdAma', 'stu', NULL),
(686, 'Ajitha', 'Saranankara', 'ajithasaranankara@gmail.com', NULL, '$2y$10$yOkvDZXRsGWWL74VpaXQBulrpIe0jqqnBYm2AqZ6Gr4vYBCYoY8Ma', 'stu', NULL),
(687, 'Akila', 'Abeysekera', 'akilaabeysekera@gmail.com', NULL, '$2y$10$UdWCQuIsHcLjhEfq1zaB4u5jQXqrYwXbXDoWVPmUxr.ewyZkauOOO', 'stu', NULL),
(688, 'Amaali', 'Attygalle', 'amaaliattygalle@gmail.com', NULL, '$2y$10$VlBmH95nT2qYHWGRgZ8pfeympFp2e02oCRPeNNrW8Rk9DvRFnvKw6', 'stu', NULL),
(689, 'Amaali', 'Chandawimala', 'amaalichandawimala@gmail.com', NULL, '$2y$10$FpYUvtKuQiVV5LtcbRzhROAk/uHTKbslPtAIDgaI3YQCYldVO2.Ry', 'stu', NULL),
(690, 'Amaali', 'Priyantha', 'amaalipriyantha@gmail.com', NULL, '$2y$10$jHE/CwebDsPeCi/EHmzupuIeIFPYWH5m1xo26j6YbAgeqqmPYgCBK', 'stu', NULL),
(691, 'Amalie', 'Khemadasa', 'amaliekhemadasa@gmail.com', NULL, '$2y$10$zPlEhVdsF5pzI6MuT51JM.ExA2DL3iYfFvu9jMPxZtzrDU4K2J1.G', 'stu', NULL),
(692, 'Amalie', 'Paranavithana', 'amalieparanavithana@gmail.com', NULL, '$2y$10$65hp1azKIeNwYdjoJB9yOenKUv4H1rokOG10qq9D9UE4Grxu2ytI.', 'stu', NULL),
(693, 'Amanda', 'Gunapala', 'amandagunapala@gmail.com', NULL, '$2y$10$kjzrOZ4yuAivz1KnWWm3YuuPqHBsHY8pIRdlh5vbkXzeGNjQs.5N.', 'stu', NULL),
(694, 'Amanda', 'Premadasa', 'amandapremadasa@gmail.com', NULL, '$2y$10$AGYshSyclXKSE1H8sxUpgOYURYzFPYNcBFHtwTbh4wHHZr5XdNuua', 'stu', NULL),
(695, 'Amani', 'Addararachchi', 'amaniaddararachchi@gmail.com', NULL, '$2y$10$g.LyNHkrbmvaU/cD37gE6uC.leu6cK7YlojrOdaJINLklJOGrCqXu', 'stu', NULL),
(696, 'Amani', 'Jayasuriya', 'amanijayasuriya@gmail.com', NULL, '$2y$10$kWXBmV7qVs7TdvfmT5xnQeyIPmZsnjPJLBFyDadtRKW86qjCne882', 'stu', NULL),
(697, 'Amarakoon', 'Seneviratne', 'amarakoonseneviratne@gmail.com', NULL, '$2y$10$DubQBXFEfT.tRwg7db1qNeyjk8BoBEXk2n2vQSyPdE3fuTBZoWnei', 'stu', NULL),
(698, 'Ambegoda', 'Senanayake', 'ambegodasenanayake@gmail.com', NULL, '$2y$10$UFsEWXkvwFsfM3aXqJ.2YOlel24MGP46uSe9LKvm4yMYQwT5sUVqS', 'stu', NULL),
(699, 'Amilajith', 'Devapriya', 'amilajithdevapriya@gmail.com', NULL, '$2y$10$.K/jvK.cGRYY5eiNg/zxQeUYdPmcQUOYY0PHKGwqMGwxyHXlLP9k6', 'stu', NULL),
(700, 'Amilajith', 'Jayewardene', 'amilajithjayewardene@gmail.com', NULL, '$2y$10$9KfRys2Ic0i.OEnzbJ82fuxSxCsL34WVf6yhLxvyGkpQXAcQKb.ZC', 'stu', NULL),
(701, 'Anuhas', 'Goonesena', 'anuhasgoonesena@gmail.com', NULL, '$2y$10$dLBvzMQhrtB6vW3WusePDexuPbjL/Om6/mWNSxSIZ8iymZXr0zW6S', 'stu', NULL),
(702, 'Anupama', 'Jayamanne', 'anupamajayamanne@gmail.com', NULL, '$2y$10$ewNKRAFvgvOhxo62YpiHYebF1YuBQdt0Q/MNT.89.h8SaKclMC7Vi', 'stu', NULL),
(703, 'Anuradha', 'Devapriya', 'anuradhadevapriya@gmail.com', NULL, '$2y$10$muae6OpaYKKhXBEG/eSMd.A.fJmnDxtrzKAXQnEW1jQaioG6bYREy', 'stu', NULL),
(704, 'Anuradha', 'Nandasiri', 'anuradhanandasiri@gmail.com', NULL, '$2y$10$wuZmK.f9hq45vz8UZeohuu57DouGOudWn35l1kPtqTqGTluybu70G', 'stu', NULL),
(705, 'Aravinda', 'Dewasiri', 'aravindadewasiri@gmail.com', NULL, '$2y$10$hHBfaxAETngDHRuo99QCcORQn7/23/Y2NN4yXP5fYAAiWUrIpbHNa', 'stu', NULL),
(706, 'Ariyarathna', 'Wijetunge', 'ariyarathnawijetunge@gmail.com', NULL, '$2y$10$fXTxq6QbgwTu726mrH.iUOVwYkcvpoubXmGqKzsSdDQUNQESXbHqi', 'stu', NULL),
(707, 'Arwinda', 'Premadasa', 'arwindapremadasa@gmail.com', NULL, '$2y$10$VHBALgMrOeHW70SP0TbjMOxtwRsKMKlJZCCEcYRiBnafKGRQLqLB6', 'stu', NULL),
(708, 'Attanayake', 'Saranankara', 'attanayakesaranankara@gmail.com', NULL, '$2y$10$obFpRLlyhkKb8RVt./nqOukTA9lUBjMDoiZ7fuKcvlEB2JSqneqwG', 'stu', NULL),
(709, 'Bandara', 'Anula', 'bandaraanula@gmail.com', NULL, '$2y$10$avbMzoRNFlKbGMqx3ffiaeXHjsBxZ5z9HBD/9S0boN7fEbWsgni82', 'stu', NULL),
(710, 'Bandara', 'Kotelawala', 'bandarakotelawala@gmail.com', NULL, '$2y$10$LKUJMJe1nOA32WG8kCMBsuBhKRvQSo4YEgOm4T6J6L/rN6xkiIhYK', 'stu', NULL),
(711, 'Bimali', 'Dharmapala', 'bimalidharmapala@gmail.com', NULL, '$2y$10$qaiVAsZ4FpmlyYWuc7fZEexehGDeuyGG7Dxde59QMZ3AQ/yh1xJ0C', 'stu', NULL),
(712, 'Bimali', 'Samaraweera', 'bimalisamaraweera@gmail.com', NULL, '$2y$10$Jy8lKEDKiGD3gIPnIhbW/ueOF9SwiTDZ29CwI.jfK83VoIEmq0a3a', 'stu', NULL),
(713, 'Biyanka', 'Prasanna', 'biyankaprasanna@gmail.com', NULL, '$2y$10$hz3F1eTb7mC6.gLCyoTjh.N55sl8aDuHQ8NlFrwGpTEUFjVTvQwUS', 'stu', NULL),
(714, 'Chamari', 'Silu', 'chamarisilu@gmail.com', NULL, '$2y$10$pPBgJv8B/QAzLZkRRWga0.eVefmWifKrnh2n9JXNy4/dEerDnaNAW', 'stu', NULL),
(715, 'Chameera', 'Senanayake', 'chameerasenanayake@gmail.com', NULL, '$2y$10$yVwFjfarj9rSON.P5FfvTuCd3xbyL8huV/8qVVc3s.17WrfB1t2TS', 'stu', NULL),
(716, 'Chamila', 'Dharsha', 'chamiladharsha@gmail.com', NULL, '$2y$10$EKXXaDGM84OcFcXs32s1ue3VutWh59kBS/AxUkrQNINvCynuYRQbK', 'stu', NULL),
(717, 'Chaminda', 'Jothipala', 'chamindajothipala@gmail.com', NULL, '$2y$10$h2tD43QbuCv5NCeGaSswb.5JTMzJI47XuqwiszRlDN6b5ds7IhxNS', 'stu', NULL),
(718, 'Chamindi', 'Prasanna', 'chamindiprasanna@gmail.com', NULL, '$2y$10$FnJ7gVJAsBB7PsvCnuHZjunS.fv7O6WCPMIBeh3EI7E5bgklDK4GG', 'stu', NULL),
(719, 'Chammi', 'Vijaya', 'chammivijaya@gmail.com', NULL, '$2y$10$jr8RtM4igt0no/VXLcoKm.3j/dxcNRLP.AyQoFlJskX6qkzam9j92', 'stu', NULL),
(720, 'Chandrika', 'Anula', 'chandrikaanula@gmail.com', NULL, '$2y$10$FsfkjPoIK8JmyPmMhJrB7eJGFUAyKf3H1CDxpmAPVewaJa4Sd5I1S', 'stu', NULL),
(721, 'Chandrika', 'Deraniyagala', 'chandrikaderaniyagala@gmail.com', NULL, '$2y$10$iOU7NWMHTZYQAZlaXEyS8OPWm/B9JXcWEYI/QU0GUha0bBhrcnXge', 'stu', NULL),
(722, 'Chandrika', 'Kulasinghe', 'chandrikakulasinghe@gmail.com', NULL, '$2y$10$bWmPSg6GMpfk7p9n/aPb2ucl2WI1d836xOeRF5BQth.t2P4fXw/nC', 'stu', NULL),
(723, 'Cherith', 'Corea', 'cherithcorea@gmail.com', NULL, '$2y$10$G8DA40r2sKi/5Q3YfxKSLOOzBmiU5G0Mx4sGS8eCPkrS5GSfsAF1O', 'stu', NULL),
(724, 'Chinthaka', 'Bandaranayake', 'chinthakabandaranayake@gmail.com', NULL, '$2y$10$nit1c0FDCx2jzLlKn4yyyexupiS8cWiaVQfVHZVPOVhwMVAlQZAsO', 'stu', NULL),
(725, 'Chiranjaya', 'Premadasa', 'chiranjayapremadasa@gmail.com', NULL, '$2y$10$cfHB3l1tVNUKI/Id55zkeO2YQhhIRGGxnmmeFwOFtE2suY0pPm3H6', 'stu', NULL),
(726, 'Danasooriya', 'Kumarage', 'danasooriyakumarage@gmail.com', NULL, '$2y$10$Nx78WvcjUcrv2HADsa0i5uzKGiSws7ax7RvAk36nCEfCxWcf1SqTS', 'stu', NULL),
(727, 'Danasooriya', 'Madugalle', 'danasooriyamadugalle@gmail.com', NULL, '$2y$10$AWxHsGBXqrJmPRKBnpaOh.xZhZNFEkJSyIyePAVACAlzp2h6tBzsa', 'stu', NULL),
(728, 'Darshana', 'Medhananda', 'darshanamedhananda@gmail.com', NULL, '$2y$10$xHd88ptzx3fLpHlF2PJDiuwoRWVIEhk4Cb.Tt.aLyIk/742lc/mcK', 'stu', NULL),
(729, 'Dasuni', 'Ponnamperuma', 'dasuniponnamperuma@gmail.com', NULL, '$2y$10$p4aPpUuyTOiC7CK2.5l4meiAEGW0v22.ZgBBNSKT59n1FEAOZcqCe', 'stu', NULL),
(730, 'Dayarathne', 'Samaranayake', 'dayarathnesamaranayake@gmail.com', NULL, '$2y$10$yuPQsnC99TMlhKp8poJHVuy2P1neklv4lLWrezQfG68ADAzHmtP9y', 'stu', NULL),
(731, 'Deshadhi', 'Jagath', 'deshadhijagath@gmail.com', NULL, '$2y$10$v9SMflrTMIuRFUiK684iWeZ6xstm3T8dyVv0PzgFI8XIz.LxXlNJ.', 'stu', NULL),
(732, 'Deshan', 'Attygale', 'deshanattygale@gmail.com', NULL, '$2y$10$b8bYFcwkpjK7ReMPYOg5POYZdb6iAd3HN.Spx0CacCO6uER9rN0Qy', 'stu', NULL),
(733, 'Deshan', 'Dissanayake', 'deshandissanayake@gmail.com', NULL, '$2y$10$gQ7blBHywc8Og.LQtTOeeODMjoKk2HoBGg7dLOearDoqt5fpSeUBK', 'stu', NULL),
(734, 'Deshappriya', 'Fonseca', 'deshappriyafonseca@gmail.com', NULL, '$2y$10$uHSVOgUytxmL/ndpXIgZJuYGu7wVfRYpZl2jTIEAQfkZh5WwdpFeK', 'stu', NULL),
(735, 'Devika', 'Weeraratne', 'devikaweeraratne@gmail.com', NULL, '$2y$10$pMldWftvTIOFpi/8dhpUgOFAIXGO8.pXotQZoq3KbZcudLaP.RJb2', 'stu', NULL),
(736, 'Dewmal', 'Weerakoon', 'dewmalweerakoon@gmail.com', NULL, '$2y$10$1N0.IqKcoIWA3kGpRwAClOorugj7IPNG/XrAGA/D1juIwTqKwqmJ.', 'stu', NULL),
(737, 'Dhananjaya', 'Wickremanayake', 'dhananjayawickremanayake@gmail.com', NULL, '$2y$10$y2zFmw/0UG3tDvPqHAiG2.THwrq/Oph0xPaKZYJnJuCqPaB4X7ktC', 'stu', NULL),
(738, 'Dhanasoorya', 'Samaraweera', 'dhanasooryasamaraweera@gmail.com', NULL, '$2y$10$ySH1i9CZIpi2r9q57CiGKeLI7bDVJc2u7BAQudAeSGIUHAYgRC.bC', 'stu', NULL),
(739, 'Dhanuka', 'Wickrema', 'dhanukawickrema@gmail.com', NULL, '$2y$10$7W1hieSsfK.q3zVmG.zmPOh1qyWPf/4GACcdS52blpV7sqRdLbHgq', 'stu', NULL),
(740, 'Dhanushka', 'Rathnayake', 'dhanushkarathnayake@gmail.com', NULL, '$2y$10$.U5OFnK9FfAw2ymjF9tQgeCX.pvZzmzKA/ey3UVOQWfFlKMgFZv5i', 'stu', NULL),
(741, 'Dharani', 'Kulasinghe', 'dharanikulasinghe@gmail.com', NULL, '$2y$10$ccrApHZYUlR.lTEuj5wmO.mq8wy9XqTE5jGe3ks2SFFq7CcLvGT16', 'stu', NULL),
(742, 'Dheeravi', 'Gamage', 'dheeravigamage@gmail.com', NULL, '$2y$10$lOW3wLyX.YIWVlyXKz7Fsu4Fa56c.IyDVm3EppeOla/QVTjN8CgJu', 'stu', NULL),
(743, 'Dilanka', 'Siriwardena', 'dilankasiriwardena@gmail.com', NULL, '$2y$10$vqRZl/y6nUK4L/bmnNcG1elEgVuywsuD55gG3nb1XxJ8HoEOIWpPK', 'stu', NULL),
(744, 'Dilshana', 'Siriwardena', 'dilshanasiriwardena@gmail.com', NULL, '$2y$10$f3zPCOvOuzAyU22sQoYHDOnpC5.HqMw/j82fZ7b26ZZgthmcjXwBO', 'stu', NULL),
(745, 'Dilshani', 'Bandaranayake', 'dilshanibandaranayake@gmail.com', NULL, '$2y$10$jmIjgPbgda3T/ds1zomLru2M960sr6GtS/jMY.yl7gFriNb0ywUXW', 'stu', NULL),
(746, 'Dilshani', 'Gooneratne', 'dilshanigooneratne@gmail.com', NULL, '$2y$10$iObYsjpjYjsDjbEHUKWxgO9JsglPcRUquK6G.2arbrrHzEYIOweEG', 'stu', NULL),
(747, 'Dilshani', 'Nanarama', 'dilshaninanarama@gmail.com', NULL, '$2y$10$7lxvMnTi7LYuJ.19bbmNzOsZNtTwxhpjldGwcJBee9wqZBhTZR3u.', 'stu', NULL),
(748, 'Dimeshi', 'Banda', 'dimeshibanda@gmail.com', NULL, '$2y$10$y4eGmWNSg9PfTeXcA5ZhROvazLdVniheY5oJsEBsjFnHWlgidX5cq', 'stu', NULL),
(749, 'Dimeshi', 'Devenampiyatissa', 'dimeshidevenampiyatissa@gmail.com', NULL, '$2y$10$UdDNn9MP1aCAO8Mm41lRpuUDsS3TY4IUfwVF/C6s.b8CtjsTldJvK', 'stu', NULL),
(750, 'Dimuthu', 'Hegoda', 'dimuthuhegoda@gmail.com', NULL, '$2y$10$3wmthjEGlZIoNYBMTD7KEeHigEr1BSPnrWwlwRAbdXKwCCl/X4OKm', 'stu', NULL),
(751, 'Dimuthu', 'Wimalaratne', 'dimuthuwimalaratne@gmail.com', NULL, '$2y$10$NJ9tEjYURoFkdO12FrGfB.UYsBTbFhg0dGcZnYiT7/iesecAulG2K', 'stu', NULL),
(752, 'Dines', 'Dissanayake', 'dinesdissanayake@gmail.com', NULL, '$2y$10$IsD1CWVsH91Jw6U4v/FH7OLDpzCtMQ3m2BWqkydeFrHACQ/6W7GZm', 'stu', NULL),
(753, 'Dinesha', 'Goonewardena', 'dineshagoonewardena@gmail.com', NULL, '$2y$10$tyTVh8G0WUVoa19kAw.Zqe7S5v2xTCxyFNMGEC9fS2AHoI26Cwn5W', 'stu', NULL),
(754, 'Dineshika', 'Gunasekara', 'dineshikagunasekara@gmail.com', NULL, '$2y$10$45.c0cjAh9Xf8/nlWg.sEONRv4m8aNcnExtGwhVaTEGh0zXhWPNce', 'stu', NULL),
(755, 'Dineshika', 'Kotiduwakku', 'dineshikakotiduwakku@gmail.com', NULL, '$2y$10$7yehqL9iPkb8h/yJw3K9ieSAe1K4pdkNc2eFNpjPK.ApDNdmkRcb2', 'stu', NULL),
(756, 'Dineshika', 'Kumaratunga', 'dineshikakumaratunga@gmail.com', NULL, '$2y$10$pS1wLS77Pz/il1FzuLn7yupbLh4ED6qzzy2rHht98hm14HD8mTUZy', 'stu', NULL),
(757, 'Dinini', 'Deraniyagala', 'dininideraniyagala@gmail.com', NULL, '$2y$10$Dc8CpQPWen9LPICcpKq7SOfknAyuPHONI.4QvplZkAzgXo.DhBf/W', 'stu', NULL),
(758, 'Dinuli', 'Fonseka', 'dinulifonseka@gmail.com', NULL, '$2y$10$LfVJMM/j3nLd472HBiVnMutUuTQv6HPU4iuktQbb/.xzFc1OxXk0a', 'stu', NULL),
(759, 'Dinuli', 'Samarakoon', 'dinulisamarakoon@gmail.com', NULL, '$2y$10$cWlHMGkbMopljQDpp4DnqeD3w5fM.xFMY0plICxmqaD7hUfL6FumW', 'stu', NULL),
(760, 'Dinuli', 'Senanayake', 'dinulisenanayake@gmail.com', NULL, '$2y$10$Pah5vpqJvEkawlygfOC.l.U37ufmKL.CFOc/KQ/O/H9cXkGi0bnJq', 'stu', NULL),
(761, 'Dinuli', 'Vijaya', 'dinulivijaya@gmail.com', NULL, '$2y$10$mVaF.xcyCIKNidSgyl.hKO7v3uU9LFcNY.f5i93zHCeXyBeqLkpVK', 'stu', NULL),
(762, 'Dinusha', 'Samaraweera', 'dinushasamaraweera@gmail.com', NULL, '$2y$10$NHGd2/gJYO7KFSW6BnE6Tebki31T4dtvajzpKxHuHVQpeAB4BZg2G', 'stu', NULL),
(763, 'Dinushika', 'Gnanananda', 'dinushikagnanananda@gmail.com', NULL, '$2y$10$yCAC.q2cbTEGM2KuXiS1v.hL8MjfsoOAm3Og7JcK.w1k3BsClFtLe', 'stu', NULL),
(764, 'Dinushka', 'Walpola', 'dinushkawalpola@gmail.com', NULL, '$2y$10$N1soyoSB4aGlK9K/MQd51eWfDN8X64oIHjoUKL753flsO38rlBeDO', 'stu', NULL),
(765, 'Dulangi', 'Bandaranaike', 'dulangibandaranaike@gmail.com', NULL, '$2y$10$G0U0gAWlHjaaHTXn.njU3O4Q9jVUE4miBLwcohx/3a4jJQ1SYxNgO', 'stu', NULL),
(766, 'Dulangi', 'Nanarama', 'dulanginanarama@gmail.com', NULL, '$2y$10$58WmZiywgY6Xsrj5yaOVuO7H1WtlYM1g8xvjxhGG7stVl5cxKUyem', 'stu', NULL),
(767, 'Dulani', 'Jayewardene', 'dulanijayewardene@gmail.com', NULL, '$2y$10$eL/TPSdJH/rt/p4ok4bsXurhzXFxL1ypwEq6VNDJ3PFCIMyISFp3G', 'stu', NULL),
(768, 'Dulanki', 'Cooray', 'dulankicooray@gmail.com', NULL, '$2y$10$n5RGRjgpIahXlC9GULeSD.JAFUtsQPBbvLxU8uibXtopqrMuTmfRC', 'stu', NULL),
(769, 'Dulanki', 'Wimalaratne', 'dulankiwimalaratne@gmail.com', NULL, '$2y$10$pms6GglTaOcy3B2K/q9iuuWcIoZ.lyEtzqCVd0lD5A2F3xYk1CcRq', 'stu', NULL),
(770, 'Duleeshika', 'Jayawickrama', 'duleeshikajayawickrama@gmail.com', NULL, '$2y$10$oDZ9cUYkcx7GKMFXok4nt./o4aHTHqPk6jMj0XG6H/eimxya71aZC', 'stu', NULL),
(771, 'Dulmini', 'Amarashinghe', 'dulminiamarashinghe@gmail.com', NULL, '$2y$10$Sdd74qgI4R8ySnHz3LVOtu2QEdDAAidqZRB4m0hYaUdTXKZoYLdWS', 'stu', NULL),
(772, 'Dulmini', 'Khemadasa', 'dulminikhemadasa@gmail.com', NULL, '$2y$10$uPTJInQl13OL/9/PkYXccef7Y3UuuU/8W2pnHHZ8sWWALPkvEehDO', 'stu', NULL),
(773, 'Duminda', 'Wickremanayake', 'dumindawickremanayake@gmail.com', NULL, '$2y$10$9bndpsDZ3h22SWWJiLt.ze5nO/lO7Pjtx2j.neBTEe6dAwcJtUUWK', 'stu', NULL),
(774, 'Ekanayake', 'Jayamanne', 'ekanayakejayamanne@gmail.com', NULL, '$2y$10$82gfcg86kl8hqGev0AIqauBB0vfUYuBtfanogg5MoBjVc1NzSjJ/e', 'stu', NULL),
(775, 'Fernando', 'Gunasekera', 'fernandogunasekera@gmail.com', NULL, '$2y$10$eL6.TB6S3OnOolSHLlMm2.31yKJXRpi8cFUy5o83vMTBCklnarlom', 'stu', NULL),
(776, 'Gayani', 'Obeysekera', 'gayaniobeysekera@gmail.com', NULL, '$2y$10$3gYghJJ3RgxVZOf97ZTpKOo0K.Hy0Pf7DRXgd8gEAig0qC2Q/ReHy', 'stu', NULL),
(777, 'Gayashan', 'Fernando', 'gayashanfernando@gmail.com', NULL, '$2y$10$Sj8l1bejGssT1qSOPtviVO/RxRe6F.9NznjpBGFCRrq5767bqDs/G', 'stu', NULL),
(778, 'Gayathiri', 'Rahula', 'gayathirirahula@gmail.com', NULL, '$2y$10$Jeu9BK9dDmO3SdWXAPU9cO5QmP2fytjhfa1lBooBtL2IQG7rpw9R2', 'stu', NULL),
(779, 'Gayesha', 'Addararachchi', 'gayeshaaddararachchi@gmail.com', NULL, '$2y$10$6UczYxcf9vYBOkIlEcIDouYqUEmGGUZYgQ.FQFZ1My3PCBv4Q5ai6', 'stu', NULL),
(780, 'Geeshani', 'Mendis', 'geeshanimendis@gmail.com', NULL, '$2y$10$wZ/nxMRkPiBdZpR16vhy4.Yb79q60A5pCt6AJfBVCOKqyQilY.MxW', 'stu', NULL),
(781, 'Geeshani', 'Weerathunga', 'geeshaniweerathunga@gmail.com', NULL, '$2y$10$tQL6B1009AHu.CiJm3UHqev303wG/2gf62./aT18dGZSSKdTrBglu', 'stu', NULL),
(782, 'Geeth', 'Anula', 'geethanula@gmail.com', NULL, '$2y$10$mIUSFO4.dxkUFZjhp6gkduFAklNGLeJEML1D0IwFEecJ3V/YTtIU2', 'stu', NULL),
(783, 'Geeth', 'Goonewardena', 'geethgoonewardena@gmail.com', NULL, '$2y$10$kEDDhs3v8P/l1QJOkEViO.oVQgwZNmoidtJ9OOo.2UGo9lZ9Yj8k6', 'stu', NULL),
(784, 'Geeth', 'Vikkamabahu', 'geethvikkamabahu@gmail.com', NULL, '$2y$10$U2HENWyB4mMmfqcHZpNVtunIVVktDEfTGovCWhGJGOvvXjUS4XzM2', 'stu', NULL),
(785, 'Gihan', 'Gajabahu', 'gihangajabahu@gmail.com', NULL, '$2y$10$9hTd13Z1JNQRXmSXBD0UeOqAYCzFz1JYtJlRJ4Xu4HsckAA8EC8NW', 'stu', NULL),
(786, 'Gunarathna', 'Dharmagunawardhana', 'gunarathnadharmagunawardhana@gmail.com', NULL, '$2y$10$pwtXbQ5IYBigMwNiJnDo7O/Wq0Pne3kd5jjbMcZsQkmC7aW9G21ra', 'stu', NULL),
(787, 'Gunatilleka', 'Malewana', 'gunatillekamalewana@gmail.com', NULL, '$2y$10$LUxTztJXdj3iPLQVogCC4etjvyGbvXAuVBy8CCHaVqKQUM.RTpKZ.', 'stu', NULL),
(788, 'Hamkana', 'Priyantha', 'hamkanapriyantha@gmail.com', NULL, '$2y$10$1AvZGr2cmcTd8/aNu1zDJeScSIMSsiOvNaKoKChFyrqjSIJgnnfOq', 'stu', NULL),
(789, 'Hansamal', 'Jayamaha', 'hansamaljayamaha@gmail.com', NULL, '$2y$10$ubXc8.BK5k8uOQIoySehm.d0M7X/qx27FfR6q6fFbF6JlrRMLT5.y', 'stu', NULL),
(790, 'Hansika', 'Sangakkara', 'hansikasangakkara@gmail.com', NULL, '$2y$10$b8lVn2U6aEBrMl7NUrlwHOPGHG31PdgxUQbWtYVkiBkhEKGucS3Wi', 'stu', NULL),
(791, 'Harsha', 'Attygalle', 'harshaattygalle@gmail.com', NULL, '$2y$10$/6.1yr5rzMMfV9dd6/9URuEZO.EJeD3qcd7e81cSYFDTv1I/UI3CK', 'stu', NULL),
(792, 'Harshani', 'Gabadamudalige', 'harshanigabadamudalige@gmail.com', NULL, '$2y$10$i4EQcPZ.kGXPJuAy/qIAaeaOC1Kr7pj0i46.k9bUD3MX8UnfybeNy', 'stu', NULL),
(793, 'Hasani', 'Kannangara', 'hasanikannangara@gmail.com', NULL, '$2y$10$2Yw0twKf3kvJpyjQvQvXCevTtsQbXFRyU949WU5vpm9hDyp1mWvhO', 'stu', NULL),
(794, 'Hasara', 'Ponnamperuma', 'hasaraponnamperuma@gmail.com', NULL, '$2y$10$/CkOsj8D.zHf0sF1ZfTjJOR85rHYAPIY3T.j8.xKdxUNBh2/7OTn6', 'stu', NULL),
(795, 'Hashni', 'Rajapaksa', 'hashnirajapaksa@gmail.com', NULL, '$2y$10$TI9TOPbbdy5aRRD4OMs5Au7QihSfn4b9RQegko5T5w/BFZZNFRHMu', 'stu', NULL),
(796, 'Hasinth', 'Addararachchi', 'hasinthaddararachchi@gmail.com', NULL, '$2y$10$z57/VH/A.WmbrzNGzueVcOKpr1fn7r8jXRjpiAXRwfFRp/xv2occe', 'stu', NULL),
(797, 'Hasinth', 'Medhalankara', 'hasinthmedhalankara@gmail.com', NULL, '$2y$10$VpZkCzezee4FQNR870SF.uxbfBT3.sePZhJEF1BiaDGNwMaEryMKa', 'stu', NULL),
(798, 'Hasintha', 'Bandaranaike', 'hasinthabandaranaike@gmail.com', NULL, '$2y$10$m4rUJdOtdpir21rASvh1ZuzPD1TeEDTHqCCdkG9iaULnaXVMJtMTy', 'stu', NULL),
(799, 'Hasintha', 'Kulasinghe', 'hasinthakulasinghe@gmail.com', NULL, '$2y$10$4/zqDf3ipLu9XLQRpifIiuSGOreR9yEk3iQmX3pU.xQgiQVV9dheS', 'stu', NULL),
(800, 'Hewawasam', 'Goonewardena', 'hewawasamgoonewardena@gmail.com', NULL, '$2y$10$2Y4FTv4wF2RTUKnsZB6a6.oN.fnqHtMso7cCwlptenB6.AFMUrtSO', 'stu', NULL),
(801, 'Himali', 'Jothipala', 'himalijothipala@gmail.com', NULL, '$2y$10$BszIiMahQfyohvHRG5z8juuVRHsa0ZmVO6Wu3/zhiFswLHvKWZeFG', 'stu', NULL),
(802, 'Himashi', 'Jayasena', 'himashijayasena@gmail.com', NULL, '$2y$10$Yix6nvqIN1y58df33166JO5LW0RkQxZApLgxkIYVUDjkrc8pqL946', 'stu', NULL),
(803, 'Himashi', 'Wimalaratne', 'himashiwimalaratne@gmail.com', NULL, '$2y$10$IwF92DSWGNBZBxOo6tLoceMfWFT1CBLonmBh8v7uX3OddDmGKaMae', 'stu', NULL),
(804, 'Hiranyamali', 'Jayatilleke', 'hiranyamalijayatilleke@gmail.com', NULL, '$2y$10$UwbvWDwpXLvT4zejSt44KuJDeNVjsJNBdGQS4oofb5OatTqTUZdoS', 'stu', NULL),
(805, 'Hiranyamali', 'Kobbekaduwa', 'hiranyamalikobbekaduwa@gmail.com', NULL, '$2y$10$7u9tPkRGfhZO2gZ2m/xps.MtZ2v87/7bkT4Yz3pdcKNQGD3uQPZwW', 'stu', NULL),
(806, 'Hiruni', 'Jothipala', 'hirunijothipala@gmail.com', NULL, '$2y$10$5bSV7llITba3bn6PJtAs7uqo9E8fm2iYIVaG16kaW3oyjjamOfwUK', 'stu', NULL),
(807, 'Hiruni', 'Wickrema', 'hiruniwickrema@gmail.com', NULL, '$2y$10$/p8SZ75Err2yeztJtxtgWeO2bDiVoQccPP6EDE8U52dz6EDQBGcr2', 'stu', NULL),
(808, 'Hirunika', 'Ponnamperuma', 'hirunikaponnamperuma@gmail.com', NULL, '$2y$10$hvPAkokKNkIcD0ot3m7xFuVPzVi6V9DfWLmiH2n3OMfMxherGIMUm', 'stu', NULL),
(809, 'Igalavithana', 'Amarasinghe', 'igalavithanaamarasinghe@gmail.com', NULL, '$2y$10$uOyY/msvFcZzOC76DxXEWutV/iZjP0CP6Re7RbdruZ9SWsg4WuIRC', 'stu', NULL),
(810, 'Imali', 'Amarashinghe', 'imaliamarashinghe@gmail.com', NULL, '$2y$10$gKQSuSd4XAXHO4/GzSJ4h.xZr/ulKyhF7oLoaWqVKhItkJC0unUL6', 'stu', NULL),
(811, 'Imeshi', 'Wickremasinghe', 'imeshiwickremasinghe@gmail.com', NULL, '$2y$10$l1T3l0z1hqJckBBkzF7vueNTcLjliGZsFNC3zkyOxQ0BwZ25XNbuK', 'stu', NULL),
(812, 'Indeewari', 'Jayawickrama', 'indeewarijayawickrama@gmail.com', NULL, '$2y$10$AFrBdK1xfDfdmRD2Cvh.Y.EWOhch.84AbEi69BEoRwXha49tXrJd.', 'stu', NULL),
(813, 'Indu', 'Dhanapala', 'indudhanapala@gmail.com', NULL, '$2y$10$70txZKzkCepJh0aeIc4ZauGw0jVsCs568arwx.Y7wBvnjY75LFe7u', 'stu', NULL),
(814, 'Indumini', 'Ranwala', 'induminiranwala@gmail.com', NULL, '$2y$10$ennLoYEmbNcx9fe.hlWnhe9.KlDuULoUrUpSthqenqiUOAotatNjG', 'stu', NULL),
(815, 'Iranthi', 'Nandasiri', 'iranthinandasiri@gmail.com', NULL, '$2y$10$QcehQxD1YIRB3RRCgAnCL.QjQkN3uJRXlaP.Wr.Q0kFd0JF/Cahv.', 'stu', NULL),
(816, 'Iroshika', 'Jayewardene', 'iroshikajayewardene@gmail.com', NULL, '$2y$10$bLPR3ud02FLmzYGtdl8M6u87Kl2mFZqAH8l7mE1x55x.X4S95naXe', 'stu', NULL),
(817, 'Iroshika', 'Wimaladharma', 'iroshikawimaladharma@gmail.com', NULL, '$2y$10$Ep2lkWD9iv9uS3IuGDuWJu1Oh4k8GQyDWG9K3W4X5elEakzz32HmO', 'stu', NULL),
(818, 'Irroshan', 'Gunasekera', 'irroshangunasekera@gmail.com', NULL, '$2y$10$sShoo9rlT3G2TsDXzfDlkOsz919g1Ll.ONi86MGaUD9ayWTjY9myK', 'stu', NULL),
(819, 'Irugalbandara', 'Pannaseeha', 'irugalbandarapannaseeha@gmail.com', NULL, '$2y$10$s47I4WSh9o/sFRv0fhY02Ohq3XVTA7MeMBp68TtEU.yNfa4HpG8/W', 'stu', NULL),
(820, 'Ishari', 'Abeysekera', 'ishariabeysekera@gmail.com', NULL, '$2y$10$BddatNxXQyt4xFvNOjlv1Ov9UDvYJQookvKSkaUkq5KPaXq5Wdhx.', 'stu', NULL),
(821, 'Ishmi', 'Kulasinghe', 'ishmikulasinghe@gmail.com', NULL, '$2y$10$Y15gv33NM2.i00EMH8VxTO6A6uIzy9hfzQtwt.LBQ.CefhHNOgvty', 'stu', NULL),
(822, 'Isura', 'Obeyesekere', 'isuraobeyesekere@gmail.com', NULL, '$2y$10$jz0DItq22RyQBRsgj1BUh.K72UNUZsdjns1uGoANce5zl54ri/STC', 'stu', NULL),
(823, 'Isuru', 'Mendis', 'isurumendis@gmail.com', NULL, '$2y$10$MSWLiuaSL2AQxQnCY9xi0.h3TwCXzZ3pNFkt5h5oQcslo7zUHPwzG', 'stu', NULL),
(824, 'Janaka', 'Cooray', 'janakacooray@gmail.com', NULL, '$2y$10$zkfKpFEtCwt1k.2ukazkDuaSwN3W1/ceMDSe30cwtCngCcSWYdN8u', 'stu', NULL),
(825, 'Janashantha', 'Jayakody', 'janashanthajayakody@gmail.com', NULL, '$2y$10$pCUJcz3b.elXQUJ./vhdAuh6mAq2tVA1SckXdjSPD9.Ve/CnTw9b.', 'stu', NULL),
(826, 'Januka', 'Jagath', 'janukajagath@gmail.com', NULL, '$2y$10$whml4JRzL3n4nkmkXpPlEuiG/Z9J9ngN8N4SdprTSTkqVuOoFsEyy', 'stu', NULL);
INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `tele`, `pass`, `user_type`, `img`) VALUES
(827, 'Januka', 'Samarasinghe', 'janukasamarasinghe@gmail.com', NULL, '$2y$10$3ASYNVi/2Hd7mvV7AVX2vu8rdYQW6eZha35pw1fDtwUVARaJpCnGe', 'stu', NULL),
(828, 'Januka', 'Senarath', 'janukasenarath@gmail.com', NULL, '$2y$10$MKdt44ijRI11PyEK9zi08uvZS4153OokhSE1w8LLmF6OJG9txKBSi', 'stu', NULL),
(829, 'Jayakody', 'Gunewardene', 'jayakodygunewardene@gmail.com', NULL, '$2y$10$TgkPAXu3LUnp4BV.YfAZ1OPUe7QalwJvtdAFAX8UoKw6GYITUUfU6', 'stu', NULL),
(830, 'Jayami', 'Abeywickrama', 'jayamiabeywickrama@gmail.com', NULL, '$2y$10$CaZMjWjocki35ADcesrSyOkwL5.Q1Nk3vmj9Uqxn/lH1vPkZxAjMO', 'stu', NULL),
(831, 'Jayamini', 'Kobbekaduwa', 'jayaminikobbekaduwa@gmail.com', NULL, '$2y$10$kO1Iot6UI.QX5f9HFTISceQcL1vo.0tbckwhLecJezeqGWcfQ.nCy', 'stu', NULL),
(832, 'Jayamini', 'Rahula', 'jayaminirahula@gmail.com', NULL, '$2y$10$PLVRvR8N3pFe115pWFAL6u.PbWr3GOT9PprnZB10TxgysjyU5uSe2', 'stu', NULL),
(833, 'Jayanath', 'Illangasinghe', 'jayanathillangasinghe@gmail.com', NULL, '$2y$10$Lpe/A7Ior0/1wCZTTupGmeFoM9VGw4p4VZvax4bFZO4.Bc1Q14woC', 'stu', NULL),
(834, 'Jayanath', 'Mendis', 'jayanathmendis@gmail.com', NULL, '$2y$10$44k8OlcbwJ50em1DAf6LZezqR30/7DnqsQETepe90Fq.QVrtqZjMC', 'stu', NULL),
(835, 'Jayaneth', 'Wichramasinghe', 'jayanethwichramasinghe@gmail.com', NULL, '$2y$10$N9.oqn9wBQ94QZaqBn3BiOG7uhPh0X2CfWCdsBH6nQ.C5F3vlZl4C', 'stu', NULL),
(836, 'Jayaranga', 'Kehelgamuwa', 'jayarangakehelgamuwa@gmail.com', NULL, '$2y$10$Us8sEHaBcZYqIHeI2LaN2eCn2rtee88y68fi7OvYP8neQW8QyipDC', 'stu', NULL),
(837, 'Jayaranga', 'Malinga', 'jayarangamalinga@gmail.com', NULL, '$2y$10$9rSpbX9seTUzfLSD3tVM0.iAue5qY0bLTESLzgmeiusPFfufpWj32', 'stu', NULL),
(838, 'Jayasekara', 'Obeyesekere', 'jayasekaraobeyesekere@gmail.com', NULL, '$2y$10$t76V09UMpan0NqCp2olBFeonNn4CvFB./MUKprK96iAJYTfnfd8NS', 'stu', NULL),
(839, 'Jayasekara', 'Tilakaratna', 'jayasekaratilakaratna@gmail.com', NULL, '$2y$10$dZnUqrQugR35hIjluaHjgeKrJwlzphBNBp5b01.KY2D6Y07zRRh/e', 'stu', NULL),
(840, 'Jayasinghe', 'Attygalle', 'jayasingheattygalle@gmail.com', NULL, '$2y$10$UuJnxf.buWBUFHss5bBm3eQgWIOj3UmVAlPlCTo2M9EOQMBSFmSZO', 'stu', NULL),
(841, 'Jayasinghe', 'Samarasinghe', 'jayasinghesamarasinghe@gmail.com', NULL, '$2y$10$e7fAxZGSKIG9lEGm6rpW3.effRVjj12uTiu4UsDhc7y4CDjNCI0hG', 'stu', NULL),
(842, 'Jayasoorya', 'Nandasiri', 'jayasooryanandasiri@gmail.com', NULL, '$2y$10$/Vm2.tTBQVttspxr3n0ERuI7fqAlSX.HaKfmII3ElRo2xo4q91qfe', 'stu', NULL),
(843, 'Jayasundara', 'Sangakkara', 'jayasundarasangakkara@gmail.com', NULL, '$2y$10$2hc0WbQqonS.zozzM74w6OUBrmKx9Br8pHfLsTRJRe.veXtAp8o4C', 'stu', NULL),
(844, 'Jeewani', 'Shantha', 'jeewanishantha@gmail.com', NULL, '$2y$10$S1XvKWKPnwNXxyZyY7DkMuD2YQTQGCbncs6z8lcUCxpDU48DAX6qy', 'stu', NULL),
(845, 'Jeewanthra', 'Dharmapala', 'jeewanthradharmapala@gmail.com', NULL, '$2y$10$vpb.XdPkwbPeMf81wJTVTuzC1lTQG9yw6lkFkrZNzXY80y2G.4eUO', 'stu', NULL),
(846, 'Jeewanthra', 'Ranwala', 'jeewanthraranwala@gmail.com', NULL, '$2y$10$h1FDPsgXY7PaZTN7GzP4xerLB16oGWoI6S.ArmcNKeTgQ.rw4JEf2', 'stu', NULL),
(847, 'Kalani', 'Shantha', 'kalanishantha@gmail.com', NULL, '$2y$10$1ayScrcGcPV7S6zihxdT0.t.exX653twllcayUlqUnqX/1wO4Y9VW', 'stu', NULL),
(848, 'Kapil', 'Sirisena', 'kapilsirisena@gmail.com', NULL, '$2y$10$aWLp67JTVVBA3y5PXJ.UKubK7grIqtQ37fgsP6tWRjxM3I4iq7wEK', 'stu', NULL),
(849, 'Kapila', 'Pathiraja', 'kapilapathiraja@gmail.com', NULL, '$2y$10$655FknZ1JvxjBDtcHcB0geda1DA3gt0ksl2CHPFZQ1VfprYpDA.Eu', 'stu', NULL),
(850, 'Karalliyadda', 'Fonseka', 'karalliyaddafonseka@gmail.com', NULL, '$2y$10$dMKrSxkhQSRrzuoUELzDdeSrsepHP.J3ml1wDox3DHEBpLg1sAbAq', 'stu', NULL),
(851, 'Karalliyadda', 'Gunewardena', 'karalliyaddagunewardena@gmail.com', NULL, '$2y$10$5uTERLOKc3/dHIKf9OEN8OFMTRjdGu4AaTJ.2QeM/lH8ylVNXTI.O', 'stu', NULL),
(852, 'Kariyawasam', 'Hemantha', 'kariyawasamhemantha@gmail.com', NULL, '$2y$10$gZ.jf0D9UxxKtfPPDxORuOx78PxD1vogcH03g/4.7lhqmLRe0/KSC', 'stu', NULL),
(853, 'Karunarathna', 'Gabadamudalige', 'karunarathnagabadamudalige@gmail.com', NULL, '$2y$10$.62GIukt9IEugQZJ7ZSXq.fOM2x.4nuQI3pT3zX9CgSOqf.Oniw2a', 'stu', NULL),
(854, 'Karunarathna', 'Nanananda', 'karunarathnananananda@gmail.com', NULL, '$2y$10$uvKlCQTNl0MHK9ytTzCmnO.UqPZ2Z8hxrgZuwOCu86kBpQ1/jK3bm', 'stu', NULL),
(855, 'Kasumi', 'Paranavithana', 'kasumiparanavithana@gmail.com', NULL, '$2y$10$AxHwbjNss2SC4JNJBhPRBOSmGtx3vpDRXhCjMSMvcSviy07H0Vd7i', 'stu', NULL),
(856, 'Kaushi', 'Wipulasara', 'kaushiwipulasara@gmail.com', NULL, '$2y$10$CpxU6UkysSlnSq8lvs/TN.v3Gz.Ywe2obj7uf2YO2T6U7dcwP/QCe', 'stu', NULL),
(857, 'Khushi', 'Thotawatte', 'khushithotawatte@gmail.com', NULL, '$2y$10$WhFZn532ynQcP3tvcy7t5.fKoq3egERfwxneI1AcR7oxkFGYpdB9K', 'stu', NULL),
(858, 'Khushi', 'Wipulasara', 'khushiwipulasara@gmail.com', NULL, '$2y$10$RV0RMThwx1U2KJx7jIY9GOwNQ1j1CEjvrCz7bpxOZ9EEDqNMOFf0S', 'stu', NULL),
(859, 'Kodikara', 'Kalupahana', 'kodikarakalupahana@gmail.com', NULL, '$2y$10$79IBLooWGpVGVHUTboKFdueKXNtQkK2RpyTwjUtFfwfZhIqA58EDK', 'stu', NULL),
(860, 'Krishani', 'Kotiduwakku', 'krishanikotiduwakku@gmail.com', NULL, '$2y$10$GHj1ox/m98hJ8XLj2dx97u2Gt8gkBSn3tePPGyGf/qGVW1Oz3Mr4C', 'stu', NULL),
(861, 'Kularathna', 'Gunawardena', 'kularathnagunawardena@gmail.com', NULL, '$2y$10$KrAYjoy4BR9B.jDA5oSLr.k1pNNV0NS4GhBtw6c5IV/y2TcyIJq9O', 'stu', NULL),
(862, 'Kulna', 'Lilavati', 'kulnalilavati@gmail.com', NULL, '$2y$10$40g1tyvqrzHq.MJ/pKBz/OmGTGcuV6NLqMxuKR3m7UgQarBHvA2VG', 'stu', NULL),
(863, 'Kumara', 'Cooray', 'kumaracooray@gmail.com', NULL, '$2y$10$uaYawvUH4J9wjL.v0f1qJ.1.Nq7A7v6tW3c2ULpoomQ5j80.Oc.9q', 'stu', NULL),
(864, 'Kumarasri', 'Ranaweera', 'kumarasriranaweera@gmail.com', NULL, '$2y$10$JwJ3EtI4tKhlhGzgwuQyp.0mY2cNWuplKMJC39vRbD5TyCdp6VYR6', 'stu', NULL),
(865, 'Kumburuthenne', 'Weerasekara', 'kumburuthenneweerasekara@gmail.com', NULL, '$2y$10$R4SS4ArLeeSBajD3KYaure7yRPkow5DbvLQaCSujF433CFbwwACmi', 'stu', NULL),
(866, 'Kumudusena', 'Gunewardena', 'kumudusenagunewardena@gmail.com', NULL, '$2y$10$KJkDrUNppUYu9KpOAXVOl.wUlgGBzVDn8KlwTmgNbo8yDxa1J8cfq', 'stu', NULL),
(867, 'Lakmal', 'Gamage', 'lakmalgamage@gmail.com', NULL, '$2y$10$q6KCnuZxXOAEUxUgHEP4s.bQvTQMqxLfr3Ec/q6NEEGZfJ5rKhnLO', 'stu', NULL),
(868, 'Lakmali', 'Gunasekera', 'lakmaligunasekera@gmail.com', NULL, '$2y$10$gSodtMzFQHEat3.lNOmV/erdHxgnvcmjj.0f1MiX74qGWhnnEz.Ky', 'stu', NULL),
(869, 'Lakmini', 'Hettige', 'lakminihettige@gmail.com', NULL, '$2y$10$gGg.Ve4L51Xsy.CK8qBzMuKUb5ZkYa9TRxcDFO8MsTJCJuBTSt3IG', 'stu', NULL),
(870, 'Lakshitha', 'Wijeratne', 'lakshithawijeratne@gmail.com', NULL, '$2y$10$j6Y00NWeimXBvenD3KeswOPGdsBp7w/7y2iEEa0yiNOj3U8lRZCMm', 'stu', NULL),
(871, 'Lalitha', 'Dodangoda', 'lalithadodangoda@gmail.com', NULL, '$2y$10$oufxCpnNfCsKHWjtrG5M2usDh5fpgGVnPFnPCc0S/.Gqu4kQ8S/om', 'stu', NULL),
(872, 'Lankani', 'Kalupahana', 'lankanikalupahana@gmail.com', NULL, '$2y$10$2ZanKWCAcF6fz1Iy1R1.KO9PnafgQDa1xcuOFF3CCodotfZ.o9D8u', 'stu', NULL),
(873, 'Lansakara', 'Gamage', 'lansakaragamage@gmail.com', NULL, '$2y$10$9J1fkKH6AFVa9mUZIAiPF.gWjpYQ9k.S2qMHrKd45OGJ2XNw3HJHK', 'stu', NULL),
(874, 'Lasantha', 'Wijemanne', 'lasanthawijemanne@gmail.com', NULL, '$2y$10$nMdVJmDskur3HntUKcxDSOUu4VeORHf54FXT06QlUVJbU4qKni9cW', 'stu', NULL),
(875, 'Lasika', 'Anula', 'lasikaanula@gmail.com', NULL, '$2y$10$yRSPjqroMiymFOJ.khSY..xcuESW3RDH759noxWyAhp2V6aK.vENa', 'stu', NULL),
(876, 'Lasika', 'Priyantha', 'lasikapriyantha@gmail.com', NULL, '$2y$10$Rv6qTlmjem7nN8kZvv/fUeL3.V8gNLlTPOvWd54Puziq9CrhzPzV.', 'stu', NULL),
(877, 'Leelanka', 'Rajapaksa', 'leelankarajapaksa@gmail.com', NULL, '$2y$10$RvOQ/3h5c1DO0dXf4DnFi..uMNGT0Txt0PWo6BBoWAuDpRIdel/1y', 'stu', NULL),
(878, 'Lihini', 'Wickrema', 'lihiniwickrema@gmail.com', NULL, '$2y$10$aq2VcjZLaBKBpCcl0CbEUOdPyAVC/pipuHTj/U4HFsesNoUEgqnbG', 'stu', NULL),
(879, 'Liyanaarachchi', 'Dodangoda', 'liyanaarachchidodangoda@gmail.com', NULL, '$2y$10$sApQeJKUnD5NUEfOw3sn.O0c85CogK73mSiWGbc3vNaa1AiVCobPq', 'stu', NULL),
(880, 'Liyanaarachchi', 'Fernando', 'liyanaarachchifernando@gmail.com', NULL, '$2y$10$amHBphxcqSCd57Hy.yaIyu9oeHF3M8T7ogr5m2G0i/q/0oDAtPa.a', 'stu', NULL),
(881, 'Lokunarangoda', 'Niroshan', 'lokunarangodaniroshan@gmail.com', NULL, '$2y$10$SwnGZK5dyM9K6hqsiURlCO9sIJc5btADJ6El/UGRK0zD/faPPdT7.', 'stu', NULL),
(882, 'Lokunarangoda', 'Pathiraja', 'lokunarangodapathiraja@gmail.com', NULL, '$2y$10$DiUKii4IY6ZmA4zScspv/uEFK4bZ4M2hb0GaSDcodNG8krRlxmS.K', 'stu', NULL),
(883, 'Lec', 'ALec', 'lec@gmail.com', NULL, '$2y$10$ldJI8L4gdOtMhldBQNs1U.Xp8w77PnpIVy/jmziO7Bh/1X/7dvetC', 'lec', NULL),
(884, 'Janitha', 'Ratnayake', 'janithadevin@gmail.com', NULL, '$2y$10$HI5nvPIdGyTfGjdfKdYbTejNRwSIeV156hZQODpn9OYpmhIGwbmei', 'stu', NULL),
(885, 'Dulitha', 'Ratnayake', 'janithadevinratnayake@gmail.com', NULL, '$2y$10$6kCmvxWI0TDIbjtoNf9BsuPyDC9h8vyKoi/ftPYdhbNz4DHyJGLge', 'lec', NULL);

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
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `forum_topic`
--
ALTER TABLE `forum_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `question_choice`
--
ALTER TABLE `question_choice`
  MODIFY `choice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `question_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=886;

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
