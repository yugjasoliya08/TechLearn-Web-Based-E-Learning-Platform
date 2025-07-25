-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2025 at 04:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(1, 'deep k', 'admin1@gmail.com', 'admin'),
(2, 'deep', 'deep01@gmail.com', 'deep'),
(3, 'vasu', 'vasu02@gmail.com', 'vasu');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL,
  `course_desc` text NOT NULL,
  `course_author` varchar(255) NOT NULL,
  `course_img` text NOT NULL,
  `course_duration` text NOT NULL,
  `course_price` int(11) NOT NULL,
  `course_original_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_desc`, `course_author`, `course_img`, `course_duration`, `course_price`, `course_original_price`) VALUES
(8, 'CSS', 'This course is your \"Free Pass\" to playing guitar. It is the most direct and to the point complete online CSS course.', 'Adil', '../image/courseimg/css.jpg', '3 Hours', 1655, 1800),
(9, 'Complete HTML ', '(HyperText Markup Language) is the standard markup language for creating web pages, defining the structure and content of web content using elements and tags. ', 'Rajesh Kumar', '../image/courseimg/html.png', '3 Months', 700, 1700),
(10, 'Learn Java script', 'This is the most comprehensive, yet straight-forward, course for the Java script programming language.', 'Rahul Kumar', '../image/courseimg/Java script.png', '4 Months', 800, 1800),
(11, 'Java', 'Core java', 'James Goasling', '../image/courseimg/java.jpg', '6 Months', 900, 1900),
(12, 'Learn Vue JS', 'The skills you will learn from this course is applicable to the real world, so you can go ahead and build similar app.', 'jay p.', '../image/courseimg/vue js.jpg', '2 Months', 100, 1000),
(13, 'Angular JS', 'Angular is one of the most popular frameworks for building client apps with HTML, CSS and TypeScript.', 'Sonam Gupta', '../image/courseimg/angular.jpg', '4 Month', 800, 1600),
(16, 'Python Complete', 'This is complete Python COurse', 'RK', '../image/courseimg/Python.jpg', '4 hours', 500, 4000),
(17, 'Learn React Native', 'THis is react native for android and iso app development', 'GeekyShows', '../image/courseimg/Machine.jpg', '2 months', 200, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `courseorder`
--

CREATE TABLE `courseorder` (
  `co_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `respmsg` text NOT NULL,
  `amount` int(11) NOT NULL,
  `card_number` varchar(19) NOT NULL,
  `expiry_date` varchar(5) NOT NULL,
  `cvv` varchar(3) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `courseorder`
--

INSERT INTO `courseorder` (`co_id`, `order_id`, `stu_email`, `course_id`, `status`, `respmsg`, `amount`, `card_number`, `expiry_date`, `cvv`, `order_date`) VALUES
(68, 'ORDS48644590', 'abc@gmail.com', 8, 'Success', 'Done', 1655, '2356 7108 3678 3688', '09/25', '677', '2025-04-05'),
(69, 'ORDS91584879', 'abc@gmail.com', 10, 'Success', 'Done', 800, '9067 2354 4678 5346', '09/25', '677', '2025-04-08'),
(70, 'ORDS12274138', 'abc@gmail.com', 11, 'Success', 'Done', 900, '9535 1854 7284 6776', '07/25', '888', '2025-04-08'),
(71, 'ORDS18826308', 'abc@gmail.com', 20, 'Success', 'Done', 900, '3333 3333 3333 3333', '09/34', '898', '2025-04-08'),
(72, 'ORDS17135264', 'abc@gmail.com', 16, 'Success', 'Done', 500, '3333 3333 3333 3333', '03/77', '677', '2025-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `f_content` text NOT NULL,
  `stu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `f_content`, `stu_id`) VALUES
(3, 'Tech Learn is a great platform for learning online. The courses are easy to follow, and the teachers explain everything clearly. I learned Java and web development here and really enjoyed the experience. Thank you, Tech Learn!', 171),
(8, 'Tech Learn is a very helpful website. I learned many new things like coding and web designing. The lessons are simple and the teachers are very supportive. I really enjoyed learning here!.', 172),
(9, 'Tech Learn made online learning easy for me. I could study anytime and the videos were clear and simple. Thank you for the great support!', 173),
(10, 'Tech Learn helped me learn new skills in a fun and easy way. The lessons are clear and I can study at my own pace. I really liked it!', 174),
(12, 'The learning experience was really good. Everything was explained in a simple way, which made it easy to understand.', 180),
(13, 'The courses were easy to understand and really helpful. I learned a lot in a short time and enjoyed every session.', 182);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` text NOT NULL,
  `lesson_desc` text NOT NULL,
  `lesson_link` text NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `lesson_name`, `lesson_desc`, `lesson_link`, `course_id`, `course_name`) VALUES
(32, 'Introduction to Java script', 'Introduction to Java script Desc', '../lessonvid/video15.mp4', 10, 'Learn java script A-Z'),
(33, 'How Java script Works', 'How Java script Works Descc', '../lessonvid/video1.mp4', 10, 'Learn java script A-Z'),
(34, 'Why Java script is powerful', 'Why Java script is powerful Desc', '../lessonvid/video6.mp4', 10, 'Learn java script A-Z'),
(35, 'Everyone should learn java script', 'Everyone should learn java script Desc', '../lessonvid/video4.mp4', 10, 'Learn java script A-Z'),
(36, 'Introduction to HTML', 'Introduction to HTMLDesc', '../lessonvid/video2.mp4', 9, 'Complete HTML'),
(37, 'How HTML works', 'How HTML works Desc', '../lessonvid/video3.mp4', 9, 'Complete HTML '),
(38, 'is HTML really easy ?', 'is HTML really easy ? desc', '../lessonvid/video4.mp4', 9, 'Complete HTML'),
(39, 'Introduction to CSS', 'Introduction to CSS', '../lessonvid/video7.mp4', 8, 'Learn CSSThe Easy Way'),
(40, 'Type of CSS', 'Type of CSS Desc2', '../lessonvid/video8.mp4', 8, 'Learn CSS The Easy Way'),
(41, 'Intro Hands-on Artificial Intelligence', 'Intro Hands-on Artificial Intelligence desc', '../lessonvid/video10.mp4', 11, 'Hands-on Artificial Intelligence'),
(42, 'How it works', 'How it works descccccc', '../lessonvid/video11.mp4', 11, 'Hands-on Artificial Intelligence'),
(43, 'Inro Learn Vue JS', 'Inro Learn Vue JS desc', '../lessonvid/video12.mp4', 12, 'Learn Vue JS'),
(44, 'intro Angular JS', 'intro Angular JS desc', '../lessonvid/video13.mp4', 13, 'Angular JS'),
(48, 'Intro to Python Complete', 'This is lesson number 1', '../lessonvid/video11.mp4', 16, 'Python Complete'),
(49, 'Introduction to React Native', 'This intro video of React native', '../lessonvid/video11.mp4', 17, 'Learn React Native'),
(55, '1', '1', '../lessonvid/video3.mp4', 20, 'PHP'),
(56, '2', '2', '../lessonvid/video1.mp4', 20, 'PHP');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(255) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `stu_pass` varchar(255) NOT NULL,
  `stu_occ` varchar(255) NOT NULL,
  `stu_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `stu_email`, `stu_pass`, `stu_occ`, `stu_img`) VALUES
(171, 'Captain Marvel', 'cap@example.com', '123456', ' Web Designer', '../image/stu/student2.jpg'),
(172, 'Ant Man', 'ant@example.com', '123456', ' Web Developer', '../image/stu/student4.jpg'),
(173, 'Amit c.', 'doc@example.com', '123456', 'Student', '../image/stu/student1.jpg'),
(174, 'Scarlet Witch', 'witch@example.com', '123456', 'Web Designer', '../image/stu/student3.jpg'),
(176, 'Rajesh', 'rajesh01@gmail.com', '123456', 'under graduate', '../image/stu/shaktiman.jpg'),
(178, 'Dev', 'dev156@gmail.com', '1234567', 'student', '../image/stu/super-mario-2690254_1280.jpg'),
(182, ' sonam', 'sonam@gmail.com', '123456', 'under graduate', '../image/stu/student2.jpg'),
(183, 'Kabir', 'abc@gmail.com', 'abc', '  ', '../image/stu/student1.jpg'),
(185, '    Anthoni', 'Anthoni01@gmail.com', 'abc', '    ', '../image/stu/pic-1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `courseorder`
--
ALTER TABLE `courseorder`
  ADD PRIMARY KEY (`co_id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `courseorder`
--
ALTER TABLE `courseorder`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
