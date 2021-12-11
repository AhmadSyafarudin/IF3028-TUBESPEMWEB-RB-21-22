-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2021 at 06:17 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lapor`
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_30_081233_create_reports_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `aspek` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submited_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `lampiran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extensi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `excerpt`, `body`, `aspek`, `submited_at`, `lampiran`, `extensi`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eius praesentium dolores earum pariatur enim sint amet possimus placeat at tenetur ex dignissimos voluptatum perferendis repellendus consectet', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eius praesentium dolores earum pariatur enim sint amet possimus placeat at tenetur ex dignissimos voluptatum perferendis repellendus consectetur voluptate eum inventore recusandae aut, repellat aliquam nisi quidem impedit labore. Iure vero delectus perferendis aliquid tempora hic aperiam corrupti officia, quo nam. Molestiae cumque quia excepturi hic iure saepe vitae, soluta rem deleniti temporibus ipsa dolorem eaque laborum placeat commodi ea facilis illum qui sint. Quo minima corporis nesciunt dolorem id, optio magni perspiciatis distinctio totam nobis iste fugit ratione recusandae labore? Recusandae, quos ipsam veniam voluptatem, voluptatibus veritatis quo sint reiciendis ipsa consequatur tempore eveniet autem dicta dignissimos explicabo. Sunt cumque doloribus voluptate perferendis tempora quis, delectus sed! Quae commodi laudantium corporis pariatur ut voluptatem id tempore temporibus nemo, hic eligendi veritatis omnis nobis totam eius dolore sint ab, quisquam unde quaerat adipisci itaque qui. Corporis sit accusantium voluptatum maxime laudantium doloribus hic rem, exercitationem est tempora aspernatur nihil omnis quod cumque, eos dolore? Enim quis velit veritatis quos itaque nihil id inventore accusantium aliquam sint veniam rem, autem nesciunt nemo ipsa molestias nobis corporis dolor eaque necessitatibus doloremque excepturi? Eligendi earum ad dolor totam saepe quo laborum libero voluptatibus quas obcaecati!', 'aspek1', '2021-12-11 14:21:32', '1639232492_INI LAPORAN.docx', 'docx', '2021-12-11 07:21:32', '2021-12-11 07:21:32'),
(2, 'Irure ut voluptate deserunt consequat exercitation consectetur ipsum consequat. Ad culpa mollit enim eu velit consectetur ex esse nulla. Quis quis cillum dolore elit ex consectetur dolore quis aliqua ', 'Irure ut voluptate deserunt consequat exercitation consectetur ipsum consequat. Ad culpa mollit enim eu velit consectetur ex esse nulla. Quis quis cillum dolore elit ex consectetur dolore quis aliqua fugiat mollit nulla. Fugiat ea amet eiusmod aute qui irure aliquip occaecat anim et aliqua cillum officia pariatur.\r\n\r\nAnim sint veniam ex mollit. Quis fugiat incididunt ut ad. Aliqua nostrud ex minim est nisi adipisicing nulla magna pariatur deserunt adipisicing consectetur.\r\n\r\nCupidatat labore sunt voluptate est irure do mollit excepteur esse fugiat aute cillum. Consectetur exercitation pariatur adipisicing aute aliquip ad officia excepteur voluptate Lorem id id ad et. Excepteur officia magna duis amet ea occaecat anim ea do occaecat eu excepteur. Voluptate proident sunt velit esse veniam anim est aliquip incididunt veniam reprehenderit culpa. Nostrud ipsum reprehenderit nulla et consequat.', 'aspek3', '2021-12-11 14:23:34', '1639232614_alt-images.jpg', 'jpg', '2021-12-11 07:23:34', '2021-12-11 07:23:34');

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
