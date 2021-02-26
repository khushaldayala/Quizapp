-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2021 at 08:15 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer`, `is_correct`, `created_at`, `updated_at`) VALUES
(57, 7, '15', 0, '2021-02-01 22:45:00', '2021-02-01 22:45:00'),
(58, 7, '16', 1, '2021-02-01 22:45:00', '2021-02-01 22:45:00'),
(59, 7, '18', 0, '2021-02-01 22:45:00', '2021-02-01 22:45:00'),
(60, 7, '21', 0, '2021-02-01 22:45:00', '2021-02-01 22:45:00'),
(61, 8, 'PHP means PHP: Hypertext Preprocessers.', 0, '2021-02-02 02:11:53', '2021-02-02 02:11:53'),
(62, 8, 'PHP means PHP: Hypertext Preprocessor.', 1, '2021-02-02 02:11:53', '2021-02-02 02:11:53'),
(63, 8, 'PHP means PHP: Hypertype Preprocessor.', 0, '2021-02-02 02:11:53', '2021-02-02 02:11:53'),
(64, 8, 'PHP means PHP: Hyperbittext Preprocessor.', 0, '2021-02-02 02:11:53', '2021-02-02 02:11:53'),
(65, 9, 'start();', 0, '2021-02-02 02:13:31', '2021-02-02 02:13:31'),
(66, 9, 'session_open();', 0, '2021-02-02 02:13:31', '2021-02-02 02:13:31'),
(67, 9, 'session_start();', 1, '2021-02-02 02:13:31', '2021-02-02 02:13:31'),
(68, 9, 'session:start()', 0, '2021-02-02 02:13:31', '2021-02-02 02:13:31'),
(69, 10, 'clear-compiled', 1, '2021-02-02 02:16:26', '2021-02-02 02:16:26'),
(70, 10, 'clear compiled', 0, '2021-02-02 02:16:26', '2021-02-02 02:16:26'),
(71, 10, 'compiled:clear', 0, '2021-02-02 02:16:26', '2021-02-02 02:16:26'),
(72, 10, 'clear:all', 0, '2021-02-02 02:16:26', '2021-02-02 02:16:26'),
(73, 11, 'split()', 0, '2021-02-02 02:17:37', '2021-02-02 02:17:37'),
(74, 11, 'explode()', 0, '2021-02-02 02:17:37', '2021-02-02 02:17:37'),
(75, 11, 'break()', 0, '2021-02-02 02:17:37', '2021-02-02 02:17:37'),
(76, 11, 'chunk()', 1, '2021-02-02 02:17:37', '2021-02-02 02:17:37'),
(77, 12, 'cache:flush', 0, '2021-02-02 02:19:16', '2021-02-02 02:19:16'),
(78, 12, 'cache:clear', 1, '2021-02-02 02:19:16', '2021-02-02 02:19:16'),
(79, 12, 'cache:forget', 0, '2021-02-02 02:19:16', '2021-02-02 02:19:16'),
(80, 12, 'cache:remove', 0, '2021-02-02 02:19:16', '2021-02-02 02:19:16'),
(85, 13, 'Rasmus Lerdorf', 0, '2021-02-12 07:09:14', '2021-02-12 07:09:14'),
(86, 13, 'Taylor Otwell', 1, '2021-02-12 07:09:14', '2021-02-12 07:09:14'),
(87, 13, 'James Gosling', 0, '2021-02-12 07:09:14', '2021-02-12 07:09:14'),
(88, 13, 'Guido van Rossum', 0, '2021-02-12 07:09:14', '2021-02-12 07:09:14'),
(89, 14, 'Factory Pattern', 0, '2021-02-13 01:15:55', '2021-02-13 01:15:55'),
(90, 14, 'Singleton Pattern', 0, '2021-02-13 01:15:55', '2021-02-13 01:15:55'),
(91, 14, 'Model View Controller Pattern', 0, '2021-02-13 01:15:55', '2021-02-13 01:15:55'),
(92, 14, 'All of the above', 1, '2021-02-13 01:15:55', '2021-02-13 01:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_21_112309_create_questions_table', 1),
(5, '2021_01_21_112418_create_quizzes_table', 1),
(6, '2021_01_21_112740_create_answers_table', 1),
(7, '2021_01_21_121837_create_quiz_user_table', 1),
(8, '2021_01_22_105110_create_results_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `quiz_id`, `created_at`, `updated_at`) VALUES
(7, 'How many error level in php ?', 1, '2021-02-01 04:44:11', '2021-02-01 04:44:11'),
(8, 'What does the initials of PHP stand for?', 1, '2021-02-02 02:11:53', '2021-02-02 02:11:53'),
(9, 'How to start session in PHP?', 1, '2021-02-02 02:13:31', '2021-02-02 02:13:31'),
(10, 'Which artisan command is used to remove the compiled class file.', 2, '2021-02-02 02:16:26', '2021-02-02 02:16:26'),
(11, 'Which method breaks the collection into multiple, smaller collections of a given size', 2, '2021-02-02 02:17:37', '2021-02-02 02:17:37'),
(12, 'Artisan command to flush the application cache:', 2, '2021-02-02 02:19:16', '2021-02-02 02:19:16'),
(13, 'Who developed Laravel?', 2, '2021-02-09 00:30:02', '2021-02-09 00:30:02'),
(14, 'How many design patterns does Magento Have ?', 3, '2021-02-13 01:15:55', '2021-02-13 01:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `minutes` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `name`, `description`, `minutes`, `created_at`, `updated_at`) VALUES
(1, 'PHP Quiz', 'This php basic Exam', 10, '2021-01-24 23:41:29', '2021-01-28 23:10:08'),
(2, 'Laravel Quiz', 'This contains laravel questions', 10, '2021-01-24 23:46:16', '2021-01-24 23:46:16'),
(3, 'Magento', 'This is a python quiz !', 8, '2021-02-11 03:32:36', '2021-02-11 03:46:53');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_user`
--

CREATE TABLE `quiz_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_user`
--

INSERT INTO `quiz_user` (`id`, `quiz_id`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 1, 1, NULL, NULL),
(11, 2, 2, NULL, NULL),
(12, 2, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `user_id`, `question_id`, `quiz_id`, `answer_id`, `created_at`, `updated_at`) VALUES
(5, 1, 7, 1, 58, '2021-02-12 22:40:34', '2021-02-12 22:40:34'),
(6, 1, 8, 1, 62, '2021-02-12 22:40:37', '2021-02-12 22:40:37'),
(7, 1, 9, 1, 66, '2021-02-12 22:40:39', '2021-02-12 22:40:39'),
(12, 2, 10, 2, 69, '2021-02-13 00:18:36', '2021-02-13 00:18:36'),
(13, 2, 11, 2, 76, '2021-02-13 00:18:38', '2021-02-13 00:18:38'),
(14, 2, 13, 2, 86, '2021-02-13 00:18:42', '2021-02-13 00:18:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `visible_password`, `occupation`, `address`, `phone`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@gmail.com', NULL, '$2y$10$pRW8XH/LUN/0pX3b.OHeJ.D97VBGx4HRsrLttE3zjEEFGeNzgKzqq', 'testing', 'Php programmer', 'ahmedabad', '1235652145', 0, NULL, '2021-02-02 05:28:59', '2021-02-02 05:28:59'),
(2, 'Nik', 'nik@gmail.com', NULL, '$2y$10$yWmAyPXgaZjUOUtXXf1yEe3LJcggji0cVKOAQEHlFmuYjxxbZmnkK', 'nik', 'laravel programmer', 'surat', '1245698756', 0, NULL, '2021-02-03 01:22:16', '2021-02-04 01:53:39'),
(4, 'admin', 'admin123@gmail.com', '2021-02-04 03:41:09', '$2y$10$k9G8JnOGhBI2blm3MCUOe.4WlKXmPjmFVcYvcYJMtaWwja9WIGVFW', 'password', 'CEO', 'Australia', '1235624589', 1, NULL, '2021-02-04 03:41:09', '2021-02-04 03:41:09'),
(5, 'jon', 'jon@gmail.com', NULL, '$2y$10$wQiXTqbUs8FZ5SdItKLm..a9nYgK3ytXuOEhiVHxlh8c7zZqWNBni', 'jon', 'Magento Developer', 'mumbai', '1236568921', 0, NULL, '2021-02-08 00:29:13', '2021-02-08 00:29:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_user`
--
ALTER TABLE `quiz_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quiz_user`
--
ALTER TABLE `quiz_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
