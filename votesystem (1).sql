-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2026 at 11:58 AM
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
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `candidate_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `party_name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `election_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`candidate_id`, `name`, `party_name`, `description`, `created_at`, `updated_at`, `election_id`) VALUES
(59, 'Jennie', 'Management', 'Make an incredible event with 1000 patricipants', '2025-05-04 12:59:56', '2025-05-04 12:59:56', 44),
(60, 'Lisa', 'Management', 'Got most voted to be VSD Pufa Leader with total 95% voters', '2025-05-04 13:01:26', '2025-05-04 13:01:26', 43),
(61, 'Jay', 'Information System', 'I\'m the new candidate of PUSB leader from Information System batch 2024.', '2025-05-04 15:13:53', '2025-05-04 15:13:53', 45),
(62, 'Rachma', 'Bussines Adminitration', 'Good attitude', '2025-05-05 03:31:28', '2025-05-05 03:31:28', 44),
(63, 'Jovan', 'Informatics', 'Ganteng', '2025-05-05 03:31:59', '2025-05-05 03:31:59', 44),
(67, 'sir nur', 'Information System', 'nice dosen', '2025-05-06 01:02:14', '2025-05-06 01:02:14', 47),
(76, 'hitam', 'Informatics', 'ghgj', '2025-05-17 09:35:35', '2025-05-17 09:35:35', 52),
(77, 'pink', 'Informatics', 'bjh.kjh. v', '2025-05-17 09:35:48', '2025-05-17 09:35:48', 52);

-- --------------------------------------------------------

--
-- Table structure for table `elections`
--

CREATE TABLE `elections` (
  `election_id` int(11) NOT NULL,
  `election name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `elections`
--

INSERT INTO `elections` (`election_id`, `election name`, `description`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(43, 'THE BEST PUFA LEADER', 'The President University Faculty Association (PUFA) is a faculty-level student organization that coordinates the activities and programs of major associations under one faculty. PUFA aims to enhance collaboration across majors and support the development of student potential within the faculty scope.\r\n', '2025-05-04 22:42:29', '2025-05-04 22:45:50', 'Ended', '2025-05-04 12:52:42', '2025-05-04 15:45:50'),
(44, 'THE BEST PUMA LEADER', 'The President University Major Association (PUMA) is a student organization at the study program level that focuses on supporting students\' academic and non-academic development within their respective majors. PUMA acts as a platform for student aspirations, creativity, and collaboration, while also strengthening the relationship between students and faculty members.\r\n', '2025-05-04 22:51:13', '2025-05-05 10:32:20', 'Ended', '2025-05-04 12:54:33', '2025-05-05 03:32:20'),
(45, 'THE NEW PUSB LEADER', 'Vote your new PUSB leader!', '2025-05-12 19:12:50', '2025-05-12 19:13:05', 'Ended', '2025-05-04 15:12:01', '2025-05-12 12:13:05'),
(47, 'DOSEN OOVP HANDSOME', 'NICE', '2025-05-06 08:01:39', '2025-05-06 08:07:54', 'Ended', '2025-05-06 00:57:47', '2025-05-06 01:07:54'),
(52, 'warna kesukaan glory', 'anjay ', '2025-05-17 16:35:11', '2025-05-17 16:36:20', 'Ended', '2025-05-17 09:34:54', '2025-05-17 09:36:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'voter',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `password_hash`, `role`, `created_at`, `updated_at`) VALUES
(28, 'wiewien', 'tan', 'wiwintanchaniago@gmail.com', '073851f1ca2d8e6ee7bd3cedae2c3981', 'voter', '2025-05-01 09:22:08', '2025-05-01 09:22:08'),
(30, 'admin', '123', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', 'admin', '2025-05-01 10:27:11', '2025-05-01 10:27:38'),
(33, 'maya', 'ratmani', 'mayaratmani@gmail.com', 'dc5fdd6d5c99a1571954c72ade2dd239', 'voter', '2025-05-05 03:25:30', '2025-05-05 03:25:30'),
(34, 'dani', 'aurelia', 'dinaurelia@gmail.com', 'f093c0fed979519fbc43d772b76f5c86', 'voter', '2025-05-06 01:00:25', '2025-05-06 01:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `vote_id` int(11) NOT NULL,
  `election_id` int(11) NOT NULL,
  `voter_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `voted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`vote_id`, `election_id`, `voter_id`, `candidate_id`, `voted_at`) VALUES
(32, 43, 28, 60, '2025-05-04 15:43:23'),
(33, 44, 33, 59, '2025-05-05 03:27:58'),
(35, 47, 34, 67, '2025-05-06 01:06:42'),
(39, 52, 30, 77, '2025-05-17 09:35:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`candidate_id`),
  ADD KEY `fk_election` (`election_id`);

--
-- Indexes for table `elections`
--
ALTER TABLE `elections`
  ADD PRIMARY KEY (`election_id`),
  ADD KEY `idx_status_dates` (`status`,`start_date`,`end_date`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_email` (`email`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`vote_id`),
  ADD UNIQUE KEY `unique_vote` (`election_id`,`voter_id`),
  ADD KEY `voter_id` (`voter_id`),
  ADD KEY `candidate_id` (`candidate_id`),
  ADD KEY `idx_election_voter` (`election_id`,`voter_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `elections`
--
ALTER TABLE `elections`
  MODIFY `election_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `vote_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidates`
--
ALTER TABLE `candidates`
  ADD CONSTRAINT `fk_election` FOREIGN KEY (`election_id`) REFERENCES `elections` (`election_id`) ON DELETE CASCADE;

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_ibfk_1` FOREIGN KEY (`election_id`) REFERENCES `elections` (`election_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `votes_ibfk_2` FOREIGN KEY (`voter_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `votes_ibfk_3` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`candidate_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
