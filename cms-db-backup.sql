-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 12, 2023 at 08:57 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--
CREATE DATABASE IF NOT EXISTS `cms` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cms`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Bootstrap'),
(2, 'Java\r\n'),
(3, 'Bootstrap'),
(4, 'Java\r\n'),
(11, 'The vice president'),
(13, 'The final test');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_date` date NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_date`, `comment_email`, `comment_content`, `comment_status`) VALUES
(1, 1, 'Dan', '2022-10-17', 'danogbo0@gmail.com', 'this is our first content comment', 'Submitted'),
(3, 12, 'Dan', '2022-10-07', 'danogbo0@gmail.com', 'our very first comment ', 'UNAPPROVED'),
(5, 12, 'Dan', '2022-10-07', 'danogbo0@gmail.com', 'this is a very tiring project', 'UNAPPROVED'),
(6, 2, 'Dan', '2022-10-09', 'example@gmail.com', 'this is an example comment!', 'UNAPPROVED'),
(7, 2, '', '2023-01-12', '', '', 'UNAPPROVED');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` varchar(255) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(2, 1, 'Daniel\'s first backend language', 'Dann', '2022-09-21', 'cms_image2.jpeg', 'This has been a really great course so far!', 'Dan', '', 'draft'),
(7, 4, 'Vanilla', 'Van Rossum', '2022-09-29', 'Screenshot 2022-09-23 at 20.30.44.png', 'This is a new and updated category    ', 'new, language, javascript', '4', 'Published'),
(11, 11, 'Eldritch', 'Jagaban', '2022-10-01', 'Screenshot 2022-09-29 at 16.23.41.png', 'this is the first category page for the president', 'governor, mandate', '4', 'PULISHED'),
(12, 4, 'Lorem', 'Chief NDK', '2022-10-03', 'Screenshot 2022-09-28 at 04.29.41.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'active, chief, lorem', '4', 'Recently published');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` text NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(1, 'Rico', '123', 'rico', 'swavey', 'ricoswavey@gmail.com', '', 'admin', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `crm_system`
--
CREATE DATABASE IF NOT EXISTS `crm_system` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `crm_system`;

-- --------------------------------------------------------

--
-- Table structure for table `crm_users`
--

CREATE TABLE `crm_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `roles` enum('manager','sales') NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crm_users`
--
ALTER TABLE `crm_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crm_users`
--
ALTER TABLE `crm_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `new_file`
--
CREATE DATABASE IF NOT EXISTS `new_file` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `new_file`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`) VALUES
(3, 'mike moreno', 'example@gmail.com', '456'),
(5, 'alex', 'alex@gmail.com', 'heisalex'),
(6, 'alex', 'alex@gmail.com', 'heisalex');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `new_tuts`
--
CREATE DATABASE IF NOT EXISTS `new_tuts` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `new_tuts`;
--
-- Database: `the_list`
--
CREATE DATABASE IF NOT EXISTS `the_list` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `the_list`;

-- --------------------------------------------------------

--
-- Table structure for table `new_list`
--

CREATE TABLE `new_list` (
  `list_id` int(11) NOT NULL,
  `list_title` varchar(255) NOT NULL,
  `list_description` varchar(255) NOT NULL,
  `list_time` varchar(255) NOT NULL,
  `list_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `new_list`
--

INSERT INTO `new_list` (`list_id`, `list_title`, `list_description`, `list_time`, `list_date`) VALUES
(7, '29/02/22', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `new_list`
--
ALTER TABLE `new_list`
  ADD PRIMARY KEY (`list_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `new_list`
--
ALTER TABLE `new_list`
  MODIFY `list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `website`
--
CREATE DATABASE IF NOT EXISTS `website` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `website`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
