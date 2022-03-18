-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2021 at 09:13 AM
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
  `points` int(2) DEFAULT NULL,
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
  `course_description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_registration_lec`
--

CREATE TABLE `course_registration_lec` (
  `course_id` int(11) NOT NULL,
  `lecturer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_registration_stu`
--

CREATE TABLE `course_registration_stu` (
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `points` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_quiz`
--

CREATE TABLE `feedback_quiz` (
  `student_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `feedback_id` int(11) NOT NULL,
  `points` int(2) NOT NULL
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

-- --------------------------------------------------------

--
-- Table structure for table `forum_reply`
--

CREATE TABLE `forum_reply` (
  `reply_id` int(11) NOT NULL,
  `reply` varchar(500) NOT NULL,
  `post_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum_reply_lec`
--

CREATE TABLE `forum_reply_lec` (
  `reply_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `lecturer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum_reply_points`
--

CREATE TABLE `forum_reply_points` (
  `lecturer_id` int(11) NOT NULL,
  `reply_id` int(11) NOT NULL,
  `points` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum_reply_stu`
--

CREATE TABLE `forum_reply_stu` (
  `reply_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic`
--

CREATE TABLE `forum_topic` (
  `topic_id` int(11) NOT NULL,
  `topic_name` varchar(200) NOT NULL,
  `post_time` datetime NOT NULL,
  `forum_Id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic_points`
--

CREATE TABLE `forum_topic_points` (
  `lecturer_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `points` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `user_id` int(11) NOT NULL,
  `lecturer_no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`user_id`, `lecturer_no`) VALUES
(13, 19000112),
(9, 19000472),
(15, 19001425),
(10, 19001843);

-- --------------------------------------------------------

--
-- Table structure for table `question_choice`
--

CREATE TABLE `question_choice` (
  `choice_id` int(11) NOT NULL,
  `question_no` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `choice_name` varchar(100) NOT NULL,
  `points` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `create_date` datetime NOT NULL,
  `published_date` datetime DEFAULT NULL,
  `close_date` datetime NOT NULL,
  `duration` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_attempt`
--

CREATE TABLE `quiz_attempt` (
  `student_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `marks` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_creation`
--

CREATE TABLE `quiz_creation` (
  `quiz_id` int(11) NOT NULL,
  `lecturer_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL
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
  `success_rate` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `user_id` int(11) NOT NULL,
  `index_no` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`user_id`, `index_no`) VALUES
(12, 19000111),
(11, 19001428),
(14, 19001843),
(16, 19001847);

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
  `tele` int(10) DEFAULT NULL,
  `pass` varchar(255) NOT NULL,
  `user_type` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(16, 'Maneth', 'Wijetunga', 'maneth@gmail.com', NULL, '$2y$10$nbOjSMAWBwXsfgT/KnV4z.xA3jriygc3faw0QbQLAdPX7NWFqhB7C', 'stu');

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
  ADD PRIMARY KEY (`course_id`),
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
  ADD PRIMARY KEY (`reply_id`);

--
-- Indexes for table `forum_reply_lec`
--
ALTER TABLE `forum_reply_lec`
  ADD PRIMARY KEY (`reply_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `lecturer_id` (`lecturer_id`);

--
-- Indexes for table `forum_reply_points`
--
ALTER TABLE `forum_reply_points`
  ADD PRIMARY KEY (`lecturer_id`,`reply_id`),
  ADD KEY `reply_id` (`reply_id`);

--
-- Indexes for table `forum_reply_stu`
--
ALTER TABLE `forum_reply_stu`
  ADD PRIMARY KEY (`reply_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `forum_topic`
--
ALTER TABLE `forum_topic`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `forum_topic_ibfk_1` (`student_id`),
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
  ADD PRIMARY KEY (`choice_id`,`question_no`,`quiz_id`),
  ADD KEY `question_no` (`question_no`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `quiz_attempt`
--
ALTER TABLE `quiz_attempt`
  ADD PRIMARY KEY (`student_id`,`quiz_id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `quiz_creation`
--
ALTER TABLE `quiz_creation`
  ADD PRIMARY KEY (`quiz_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `quiz_creation_ibfk_3` (`lecturer_id`);

--
-- Indexes for table `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD PRIMARY KEY (`question_no`,`quiz_id`),
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
  MODIFY `badge_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_topic`
--
ALTER TABLE `course_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `forum_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_reply`
--
ALTER TABLE `forum_reply`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_topic`
--
ALTER TABLE `forum_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_choice`
--
ALTER TABLE `question_choice`
  MODIFY `choice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `question_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
