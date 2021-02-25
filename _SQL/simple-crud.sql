-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2021 at 05:20 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simple-crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_25_155037_create_posts_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Olin Reichel', 'dolores', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(2, 1, 'Dr. Kianna Hansen', 'repellat', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(3, 1, 'Kaitlyn Padberg', 'omnis', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(4, 1, 'Mr. Giovani Oberbrunner IV', 'sit', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(5, 1, 'Elvie Dickens', 'praesentium', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(6, 1, 'Albina Strosin', 'rerum', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(7, 1, 'Erik Denesik', 'qui', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(8, 1, 'Devyn Hahn', 'natus', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(9, 1, 'Raven Yost', 'quo', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(10, 1, 'Mr. D\'angelo Deckow Sr.', 'non', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(11, 1, 'Dr. Jocelyn Spencer IV', 'ut', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(12, 1, 'Ms. Ona Graham', 'qui', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(13, 1, 'Dr. Efrain Kozey', 'libero', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(14, 1, 'Gloria Buckridge', 'ad', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(15, 1, 'Odessa Zemlak', 'sit', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(16, 1, 'Miss Madge Buckridge', 'atque', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(17, 1, 'Prof. Jillian McKenzie', 'possimus', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(18, 1, 'Dr. Macie Wiegand', 'provident', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(19, 1, 'Kim Nienow', 'fugiat', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(20, 1, 'Danielle Parker', 'ullam', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(21, 1, 'Mr. Jordon Parisian V', 'ut', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(22, 1, 'Leanna Considine', 'tenetur', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(23, 1, 'Jon Wolff III', 'sunt', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(24, 1, 'Mack Ebert', 'nam', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(25, 1, 'Guiseppe Upton', 'et', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(26, 1, 'Joel Stokes', 'non', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(27, 1, 'Prof. Destin Kuhn', 'consequatur', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(28, 1, 'Dr. Michale Bednar V', 'quia', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(29, 1, 'Abigayle Huel', 'quos', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(30, 1, 'Katherine Kerluke', 'eos', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(31, 1, 'Mr. Joshuah Rosenbaum IV', 'aut', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(32, 1, 'Mrs. Sydni Price', 'ipsam', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(33, 1, 'Marcelino Hane', 'reiciendis', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(34, 1, 'Mr. Van Block MD', 'aliquam', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(35, 1, 'Jairo Bauch', 'cupiditate', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(36, 1, 'Rafael Larkin', 'dolor', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(37, 1, 'Prof. Oral Schuster I', 'rerum', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(38, 1, 'Mr. Merlin Welch II', 'libero', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(39, 1, 'Lorna Oberbrunner', 'repudiandae', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(40, 1, 'Amiya Ondricka', 'et', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(41, 1, 'Dr. Davonte Weimann', 'corrupti', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(42, 1, 'Orval Maggio', 'sed', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(43, 1, 'Isobel Bosco', 'fugiat', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(44, 1, 'Preston Ankunding', 'est', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(45, 1, 'Cassandra Fadel DVM', 'pariatur', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(46, 1, 'Bert Bode', 'itaque', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(47, 1, 'Cali Langosh', 'quia', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(48, 1, 'Grace Ledner', 'suscipit', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(49, 1, 'Ms. Chaya Mraz', 'eum', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(50, 1, 'Mrs. Vicenta Kris MD', 'temporibus', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(51, 1, 'Ryder Dietrich', 'explicabo', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(52, 1, 'Mazie O\'Conner', 'saepe', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(53, 1, 'Prof. Broderick Littel', 'possimus', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(54, 1, 'Eden Mills', 'dicta', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(55, 1, 'Abby Spinka MD', 'perferendis', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(56, 1, 'Prof. Toby Ebert', 'similique', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(57, 1, 'Dr. Robbie Wisozk DVM', 'occaecati', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(58, 1, 'Hassan Hartmann', 'dolorem', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(59, 1, 'Markus Treutel', 'sapiente', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(60, 1, 'Lennie Schiller', 'assumenda', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(61, 1, 'Obie Prohaska', 'dolores', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(62, 1, 'Arlo Jones', 'exercitationem', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(63, 1, 'Max Graham', 'et', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(64, 1, 'Mr. Maxwell Quigley II', 'minus', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(65, 1, 'Roderick Schaden Sr.', 'minus', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(66, 1, 'Miss Della Adams Jr.', 'eum', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(67, 1, 'Candice Klocko', 'explicabo', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(68, 1, 'Kaleigh Bayer', 'perferendis', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(69, 1, 'Myrtis Hackett', 'voluptatem', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(70, 1, 'Prof. Herminio Thompson', 'et', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(71, 1, 'Ms. Ona Mayer', 'rerum', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(72, 1, 'Ms. Tomasa Renner II', 'ipsa', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(73, 1, 'Prof. Terrill Lebsack', 'eos', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(74, 1, 'Bette Parisian', 'et', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(75, 1, 'Norene Bailey', 'voluptatem', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(76, 1, 'Johathan Jaskolski', 'aperiam', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07'),
(77, 1, 'Leta Homenick', 'rerum', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08'),
(78, 1, 'Shany Stiedemann', 'veniam', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08'),
(79, 1, 'Nat Pacocha', 'voluptates', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08'),
(80, 1, 'Josiah Collins', 'beatae', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08'),
(81, 1, 'Cheyanne Harris', 'distinctio', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08'),
(82, 1, 'Prof. Adriel Johnson', 'consequatur', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08'),
(83, 1, 'Lilyan Hills', 'ea', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08'),
(84, 1, 'Samanta Grimes', 'blanditiis', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08'),
(85, 1, 'Dale Hudson', 'facilis', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08'),
(86, 1, 'Leland Littel', 'est', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08'),
(87, 1, 'Carey Cartwright', 'consequuntur', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08'),
(88, 1, 'Eusebio Koelpin', 'occaecati', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08'),
(89, 1, 'Floy Wilkinson', 'veniam', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08'),
(90, 1, 'Jennyfer Huel', 'dignissimos', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08'),
(91, 1, 'Wilmer Green', 'harum', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08'),
(92, 1, 'Crystel Morar', 'similique', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08'),
(93, 1, 'Dedrick Wolf', 'illo', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08'),
(94, 1, 'Royal Runolfsdottir PhD', 'voluptatem', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08'),
(95, 1, 'Golda Mitchell', 'et', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08'),
(96, 1, 'Prof. Savion Wisoky', 'quia', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08'),
(97, 1, 'Carey Bosco', 'rerum', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08'),
(98, 1, 'Matilde Robel II', 'fugit', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08'),
(99, 1, 'Rosina Larkin', 'nam', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08'),
(100, 1, 'Verona Stehr', 'quis', NULL, '2021-02-25 08:20:08', '2021-02-25 08:20:08');

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
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$Hn3IiLcsVbicUr89UFcUBOENdtSoKyb3fn7QovxePoMuFonuCJbZy', NULL, '2021-02-25 08:20:07', '2021-02-25 08:20:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
