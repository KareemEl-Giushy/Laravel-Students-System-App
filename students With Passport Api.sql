-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2019 at 02:07 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `students`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `className` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `className`, `created_at`, `updated_at`) VALUES
(1, 'Science', NULL, NULL),
(2, 'Bio', NULL, NULL),
(3, 'History', '2019-07-28 19:44:30', '2019-07-28 19:44:30'),
(4, 'Algorithms', '2019-07-28 19:45:23', '2019-07-28 19:45:23'),
(5, 'Data Structure', '2019-07-28 19:45:45', '2019-07-28 19:45:45'),
(6, 'Physics', '2019-07-28 19:46:20', '2019-07-28 19:46:20'),
(7, 'Career Path', '2019-07-28 22:55:26', '2019-07-28 22:55:26'),
(8, 'Engish', '2019-07-29 02:46:32', '2019-07-29 02:46:32'),
(9, 'Prog', '2019-07-29 22:15:31', '2019-07-29 22:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `classe_student`
--

CREATE TABLE `classe_student` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `classe_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classe_student`
--

INSERT INTO `classe_student` (`id`, `classe_id`, `student_id`, `created_at`, `updated_at`) VALUES
(2, 1, 3, NULL, NULL),
(3, 1, 4, NULL, NULL),
(8, 4, 6, NULL, NULL),
(9, 7, 7, NULL, NULL),
(17, 6, 6, NULL, NULL),
(18, 2, 6, NULL, NULL),
(21, 6, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_resets_table', 1),
(21, '2019_07_27_170138_create_students_table', 1),
(22, '2019_07_27_170251_create_classes_table', 1),
(23, '2019_07_27_171119_create_teachers_table', 1),
(24, '2019_07_27_171634_create_students_classes_table', 2),
(35, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(36, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(37, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(38, '2016_06_01_000004_create_oauth_clients_table', 3),
(39, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('5eb2ec5c2cbc7de7bc29b4853a02a72ae4a6d3c4283b74bbabe90b9b042fcab80280321829c57d94', 1, 2, 'UserToken', '[]', 0, '2019-08-07 07:03:31', '2019-08-07 07:03:31', '2020-08-07 00:03:31'),
('a460e7a9f58210c5beb82e97fc67f73af21cba73b643e58cbaf5207e9c6994ba7f17d87f553520b2', 1, 2, 'AuthToken', '[]', 0, '2019-08-07 06:15:01', '2019-08-07 06:15:01', '2020-08-06 23:15:01'),
('b8fe12d6f9493991ebf7f4b93ea30896e9625d532440e3d3a13510aceaf4c4e9f7732f9584e1099e', 1, 2, 'UserToken', '[]', 0, '2019-08-07 06:15:45', '2019-08-07 06:15:45', '2020-08-06 23:15:45'),
('dbea1bd7055b199694a02c874911c04423946c74a044f194aae6f39c51a5d2a96ea99f60dbfc3524', 1, 2, 'UserToken', '[]', 0, '2019-08-07 06:18:07', '2019-08-07 06:18:07', '2020-08-06 23:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'KareemAccess', 'PfGFERF3d4yxlqsCNxWPWQBVYvtP46wEDmXc0zCN', 'http://localhost', 1, 0, 0, '2019-08-06 15:14:15', '2019-08-06 15:14:15'),
(2, NULL, 'Laravel Personal Access Client', 'J5QOg3OczN1Wa3kbSthw05BMOXs16dNR9fHdEVEy', 'http://localhost', 1, 0, 0, '2019-08-07 05:50:59', '2019-08-07 05:50:59'),
(3, NULL, 'Laravel Password Grant Client', '2hZ82HSXW5RKVaU6ifURHRcZ4QApfVuWOiVadGYG', 'http://localhost', 0, 1, 0, '2019-08-07 05:51:00', '2019-08-07 05:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-08-06 15:14:16', '2019-08-06 15:14:16'),
(2, 2, '2019-08-07 05:51:00', '2019-08-07 05:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `studentName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `studentName`, `degree`, `created_at`, `updated_at`) VALUES
(3, 'Ismael', 11.00, '2019-07-28 08:52:09', '2019-07-28 23:12:16'),
(4, 'mohammed', 11.00, '2019-07-28 08:52:20', '2019-07-28 08:52:20'),
(6, 'Salem', 11.00, '2019-07-28 22:54:59', '2019-07-28 22:54:59'),
(7, 'Mohammed', 111.00, '2019-07-28 22:55:39', '2019-07-30 04:55:41'),
(12, 'Suliman', 12.00, '2019-08-07 06:51:19', '2019-08-07 06:51:19');

-- --------------------------------------------------------

--
-- Table structure for table `student_teacher`
--

CREATE TABLE `student_teacher` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_teacher`
--

INSERT INTO `student_teacher` (`id`, `teacher_id`, `student_id`, `created_at`, `updated_at`) VALUES
(9, 5, 6, NULL, NULL),
(10, 7, 6, NULL, NULL),
(11, 2, 6, NULL, NULL),
(14, 6, 7, NULL, NULL),
(15, 7, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacherName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classe_id` bigint(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `teacherName`, `classe_id`, `created_at`, `updated_at`) VALUES
(1, 'hamada', 2, NULL, NULL),
(2, 'Hassan', 2, '2019-07-28 20:06:20', '2019-07-28 20:06:20'),
(3, 'Salem', 5, '2019-07-28 20:06:37', '2019-07-28 20:06:37'),
(4, 'Ahmed', 1, '2019-07-28 21:58:28', '2019-07-28 21:58:28'),
(5, 'Heba', 4, '2019-07-28 22:54:31', '2019-07-28 22:54:31'),
(6, 'Ahmed', 7, '2019-07-28 22:55:52', '2019-07-28 22:55:52'),
(7, 'Ebraheem', 6, '2019-07-28 23:20:41', '2019-07-28 23:20:41'),
(8, 'Mohammed', 3, '2019-07-29 02:38:08', '2019-07-29 02:38:08'),
(9, 'Eman', 8, '2019-07-29 02:46:50', '2019-07-29 02:46:50'),
(10, 'KKK', 9, '2019-07-29 22:15:45', '2019-07-29 22:15:45'),
(11, 'HHH', 9, '2019-07-29 22:16:32', '2019-07-29 22:16:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kareem', 'kareem@gmail.com', NULL, '$2y$10$W7UAyriz1O.BaLPziX5SUejzbhsM0.p.vOw1ftxdGCcHA2dL9qL42', NULL, '2019-08-07 06:14:59', '2019-08-07 06:14:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classe_student`
--
ALTER TABLE `classe_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `the classes` (`classe_id`),
  ADD KEY `the students` (`student_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_teacher`
--
ALTER TABLE `student_teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Students Id` (`student_id`),
  ADD KEY `Teachers Id` (`teacher_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `between teacher and his class` (`classe_id`);

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
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `classe_student`
--
ALTER TABLE `classe_student`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student_teacher`
--
ALTER TABLE `student_teacher`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classe_student`
--
ALTER TABLE `classe_student`
  ADD CONSTRAINT `the classes` FOREIGN KEY (`classe_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `the students` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_teacher`
--
ALTER TABLE `student_teacher`
  ADD CONSTRAINT `Students Id` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Teachers Id` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `between teacher and his class` FOREIGN KEY (`classe_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
