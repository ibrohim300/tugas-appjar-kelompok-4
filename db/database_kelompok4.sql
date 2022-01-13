-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jan 2022 pada 23.53
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_01_190700_laratrust_setup_tables', 1),
(6, '2021_11_01_235701_laratrust_setup_teams', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(5, 'admin', 'Administrator', 'System Administrator', '2021-11-02 05:18:59', '2021-11-02 05:18:59'),
(6, 'author', 'Author', 'Article author', '2021-11-02 05:20:01', '2021-11-02 05:20:01'),
(7, 'committee', 'Committee', 'Conference committee', '2021-11-02 05:36:55', '2021-11-02 05:36:55'),
(8, 'reviewer', 'Reviewer', 'Reviewer of ISMEE', '2021-11-07 18:18:46', '2021-11-07 18:18:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`, `team_id`) VALUES
(5, 1, 'App\\Models\\User', NULL),
(6, 2, 'App\\Models\\User', NULL),
(8, 2, 'App\\Models\\User', NULL),
(7, 3, 'App\\Models\\User', NULL),
(6, 4, 'App\\Models\\User', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sympozia_config`
--

CREATE TABLE `sympozia_config` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` char(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `sympozia_config`
--

INSERT INTO `sympozia_config` (`id`, `code`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'FRP', 'Front page', 1, '2021-11-12 02:53:58', '2021-11-12 02:54:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sympozia_file_type`
--

CREATE TABLE `sympozia_file_type` (
  `id` int(11) NOT NULL,
  `code` char(3) DEFAULT NULL,
  `description` varchar(25) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sympozia_file_type`
--

INSERT INTO `sympozia_file_type` (`id`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'REV', 'Review manuscript', '2021-11-29 01:32:58', '2021-11-29 01:33:01'),
(2, 'FUL', 'Full manuscript', '2021-11-29 01:33:20', '2021-11-29 01:33:22'),
(3, 'COP', 'Copyright', '2021-11-29 01:33:44', '2021-11-29 01:33:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sympozia_manuscript`
--

CREATE TABLE `sympozia_manuscript` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `paper_code` varchar(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `abstract` text DEFAULT NULL,
  `milestone_id` int(1) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sympozia_manuscript`
--

INSERT INTO `sympozia_manuscript` (`id`, `user_id`, `paper_code`, `title`, `abstract`, `milestone_id`, `status_id`, `created_at`, `updated_at`) VALUES
(8, 4, 'ISMEE-4-1', 'Test', NULL, NULL, NULL, '2021-11-28 19:06:01', '2021-11-28 19:06:01'),
(12, 2, 'ISMEE-2-2', 'Wisnu', NULL, NULL, NULL, '2022-01-12 03:55:37', '2022-01-12 03:55:37'),
(15, 3, 'ISMEE-3-5', 'asu', NULL, NULL, NULL, '2022-01-12 04:24:04', '2022-01-12 04:24:04'),
(16, 3, 'ISMEE-3-6', 'hallo dunia', NULL, NULL, NULL, '2022-01-13 04:02:47', '2022-01-13 04:02:47'),
(17, 3, 'ISMEE-3-7', 'abstarkj jskdhsh', NULL, NULL, NULL, '2022-01-13 04:03:43', '2022-01-13 04:03:43'),
(18, 2, 'ISMEE-2-6', 'zsdasd', NULL, NULL, NULL, '2022-01-13 05:39:47', '2022-01-13 05:39:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sympozia_manuscript_author`
--

CREATE TABLE `sympozia_manuscript_author` (
  `id` int(11) NOT NULL,
  `manuscript_id` int(10) DEFAULT NULL,
  `author_id` int(10) DEFAULT NULL,
  `presenter` int(1) DEFAULT NULL,
  `contact` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sympozia_manuscript_file`
--

CREATE TABLE `sympozia_manuscript_file` (
  `id` int(11) NOT NULL,
  `manuscript_id` int(10) DEFAULT NULL,
  `file_type` int(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sympozia_manuscript_file`
--

INSERT INTO `sympozia_manuscript_file` (`id`, `manuscript_id`, `file_type`, `name`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 'submitedManuscript/ISMEE-4-1-manuscript.pdf', '2021-11-28 19:06:01', '2021-11-28 19:06:01'),
(2, 9, 1, 'submitedManuscript/ISMEE-2-2-manuscript.pdf', '2022-01-12 03:38:31', '2022-01-12 03:38:31'),
(3, 10, 1, 'submitedManuscript/ISMEE-2-3-manuscript.pdf', '2022-01-12 03:46:57', '2022-01-12 03:46:57'),
(4, 11, 1, 'submitedManuscript/ISMEE-2-2-manuscript.pdf', '2022-01-12 03:47:46', '2022-01-12 03:47:46'),
(5, 12, 1, 'submitedManuscript/ISMEE-2-2-manuscript.pdf', '2022-01-12 03:55:37', '2022-01-12 03:55:37'),
(6, 13, 1, 'submitedManuscript/ISMEE-3-3-manuscript.pdf', '2022-01-12 04:12:30', '2022-01-12 04:12:30'),
(7, 14, 1, 'submitedManuscript/ISMEE-3-4-manuscript.pdf', '2022-01-12 04:17:08', '2022-01-12 04:17:08'),
(8, 15, 1, 'submitedManuscript/ISMEE-3-5-manuscript.pdf', '2022-01-12 04:24:04', '2022-01-12 04:24:04'),
(9, 16, 1, 'submitedManuscript/ISMEE-3-6-manuscript.pdf', '2022-01-13 04:02:47', '2022-01-13 04:02:47'),
(10, 17, 1, 'submitedManuscript/ISMEE-3-7-manuscript.pdf', '2022-01-13 04:03:43', '2022-01-13 04:03:43'),
(11, 18, 1, 'submitedManuscript/ISMEE-2-6-manuscript.pdf', '2022-01-13 05:39:47', '2022-01-13 05:39:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sympozia_manuscript_milestone`
--

CREATE TABLE `sympozia_manuscript_milestone` (
  `id` int(11) NOT NULL,
  `code` char(3) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sympozia_manuscript_milestone`
--

INSERT INTO `sympozia_manuscript_milestone` (`id`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'CRE', 'Create', '2021-10-26 15:39:48', '2021-10-26 15:39:51'),
(2, 'SUB', 'Submitted', '2021-10-26 15:40:19', '2021-10-26 15:40:21'),
(3, 'REV', 'Review', '2021-10-26 15:40:48', '2021-10-26 15:40:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sympozia_manuscript_status`
--

CREATE TABLE `sympozia_manuscript_status` (
  `id` int(11) NOT NULL,
  `code` char(3) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sympozia_manuscript_status`
--

INSERT INTO `sympozia_manuscript_status` (`id`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'CRE', 'Create', '2021-10-26 15:39:48', '2021-10-26 15:39:51'),
(2, 'SUB', 'Submitted', '2021-10-26 15:40:19', '2021-10-26 15:40:21'),
(3, 'REV', 'Review', '2021-10-26 15:40:48', '2021-10-26 15:40:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sympozia_news`
--

CREATE TABLE `sympozia_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `sympozia_news`
--

INSERT INTO `sympozia_news` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(10, 'Attendance\'s payment deadline', 'Invoice of attendance\'s payment should be paid on Thursday October 28, 2021', '2021-10-24 18:07:40', '2021-10-24 18:19:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sympozia_profile`
--

CREATE TABLE `sympozia_profile` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `user_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `afiliation` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `sympozia_profile`
--

INSERT INTO `sympozia_profile` (`id`, `user_id`, `user_code`, `title_id`, `first_name`, `last_name`, `email`, `afiliation`, `status`, `address`, `phone_number`, `created_at`, `updated_at`) VALUES
(1, 4, NULL, NULL, NULL, 'Didin Wahyudin', NULL, NULL, NULL, NULL, NULL, '2021-11-08 02:07:26', '2021-11-07 19:07:26'),
(2, 2, NULL, NULL, NULL, 'Mas', NULL, NULL, NULL, NULL, NULL, '2022-01-12 03:37:40', '2022-01-12 03:37:40'),
(3, 3, NULL, NULL, NULL, 'kjjj', NULL, NULL, NULL, NULL, NULL, '2022-01-12 04:12:12', '2022-01-12 04:12:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sympozia_profile_title`
--

CREATE TABLE `sympozia_profile_title` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `sympozia_profile_title`
--

INSERT INTO `sympozia_profile_title` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Dr.', '2021-11-03 06:34:08', '2021-11-03 06:34:11'),
(2, 'Mr.', '2021-11-03 06:34:18', '2021-11-03 06:34:20'),
(3, 'Mrs.', '2021-11-03 06:34:28', '2021-11-03 06:34:30'),
(4, 'Ms.', '2021-11-03 06:34:46', '2021-11-03 06:34:48'),
(5, 'Prof.', '2021-11-03 06:34:55', '2021-11-03 06:34:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Didin', 'deewahyu@upi.edu', NULL, '$2a$12$8Ns6YHCGyAwVgNChesRveOEdiwZ1hV2Vejjy1ulgYzRXfO8WrDgzq', NULL, '2021-11-01 12:15:14', '2021-11-01 12:15:14'),
(2, 'Syafiq', 'deewahyu@jaist.ac.jp', NULL, '$2a$12$8Ns6YHCGyAwVgNChesRveOEdiwZ1hV2Vejjy1ulgYzRXfO8WrDgzq', NULL, '2021-11-01 13:10:24', '2021-11-01 13:10:24'),
(3, 'Shafwan', 'shafwan@jaist.ac.jp', NULL, '$2a$12$FORGC4.Mwz9fVnVKVx78K.vtTuuruDpq5Shqja6ExrCm5thtvN9z2', NULL, '2021-11-02 06:42:26', '2021-11-02 06:42:26'),
(4, 'Syafiq', 'syafiq@ee.upi.edu', NULL, '$2y$10$2VGu/adCRoh59EDo3u3ODO8LvgJ134W0/DLvC8WcSGx0jOdTSAXse', NULL, '2021-11-07 18:09:27', '2021-11-07 18:09:27');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indeks untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `permission_user`
--
ALTER TABLE `permission_user`
  ADD UNIQUE KEY `permission_user_user_id_permission_id_user_type_team_id_unique` (`user_id`,`permission_id`,`user_type`,`team_id`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_user_team_id_foreign` (`team_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indeks untuk tabel `role_user`
--
ALTER TABLE `role_user`
  ADD UNIQUE KEY `role_user_user_id_role_id_user_type_team_id_unique` (`user_id`,`role_id`,`user_type`,`team_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_team_id_foreign` (`team_id`);

--
-- Indeks untuk tabel `sympozia_config`
--
ALTER TABLE `sympozia_config`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sympozia_file_type`
--
ALTER TABLE `sympozia_file_type`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sympozia_manuscript`
--
ALTER TABLE `sympozia_manuscript`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sympozia_manuscript_author`
--
ALTER TABLE `sympozia_manuscript_author`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sympozia_manuscript_file`
--
ALTER TABLE `sympozia_manuscript_file`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sympozia_manuscript_milestone`
--
ALTER TABLE `sympozia_manuscript_milestone`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sympozia_manuscript_status`
--
ALTER TABLE `sympozia_manuscript_status`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sympozia_news`
--
ALTER TABLE `sympozia_news`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sympozia_profile`
--
ALTER TABLE `sympozia_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sympozia_profile_title`
--
ALTER TABLE `sympozia_profile_title`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teams_name_unique` (`name`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `sympozia_config`
--
ALTER TABLE `sympozia_config`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sympozia_file_type`
--
ALTER TABLE `sympozia_file_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `sympozia_manuscript`
--
ALTER TABLE `sympozia_manuscript`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `sympozia_manuscript_author`
--
ALTER TABLE `sympozia_manuscript_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sympozia_manuscript_file`
--
ALTER TABLE `sympozia_manuscript_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `sympozia_manuscript_milestone`
--
ALTER TABLE `sympozia_manuscript_milestone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `sympozia_manuscript_status`
--
ALTER TABLE `sympozia_manuscript_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `sympozia_news`
--
ALTER TABLE `sympozia_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `sympozia_profile`
--
ALTER TABLE `sympozia_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `sympozia_profile_title`
--
ALTER TABLE `sympozia_profile_title`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_user_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
