-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 06, 2020 at 12:30 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `censo`
--

-- --------------------------------------------------------

--
-- Table structure for table `casas`
--

CREATE TABLE `casas` (
  `id` int(11) NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `calle` varchar(100) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `numero_interior` varchar(10) DEFAULT NULL,
  `colonia` varchar(100) NOT NULL,
  `numero_banos` int(11) NOT NULL,
  `numero_habitantes` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `negocios`
--

CREATE TABLE `negocios` (
  `id` int(11) NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `calle` varchar(100) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `numero_interior` varchar(10) DEFAULT NULL,
  `colonia` varchar(100) NOT NULL,
  `nombre_negocio` varchar(255) NOT NULL,
  `numero_empleados` int(11) NOT NULL,
  `numero_banos` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1ece9802a50a021f2c92c26893ea2a08ccf1362b51a169f7726d798e071ce7114fae4d4ff3ebe9d9', 2, 2, NULL, '[]', 0, '2020-03-06 07:01:43', '2020-03-06 07:01:43', '2021-03-06 00:01:43'),
('bd8865bb49791b110d4d9f7d50a765e6b4f6a03c31ba702e1cdf04f6a5870a834f86e813cc2a6028', 2, 2, NULL, '[]', 0, '2020-03-06 07:08:34', '2020-03-06 07:08:34', '2021-03-06 00:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, NULL, 'Laravel Personal Access Client', 'Pt8IKg5eoHZYePPQEPXp7i7o1obQbyJuluvdyy3t', 'http://localhost', 1, 0, 0, '2020-03-06 06:35:20', '2020-03-06 06:35:20'),
(2, NULL, 'Laravel Password Grant Client', '857GBu4Obv2gjWd1ekWQHO5d7ws39K44FMabfrwa', 'http://localhost', 0, 1, 0, '2020-03-06 06:35:20', '2020-03-06 06:35:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-03-06 06:35:20', '2020-03-06 06:35:20');

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

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('20d1fc115ffb788950f0e59f05bfbdec5bcc3d6070f311cb488acc50b0049ba9b978019523eda048', '1ece9802a50a021f2c92c26893ea2a08ccf1362b51a169f7726d798e071ce7114fae4d4ff3ebe9d9', 0, '2021-03-06 00:01:43'),
('80aa96e9669091a198b3e68b34f306c9aee62d0729207318c6e1773c9aa2f9495c64f6d38d364fda', 'bd8865bb49791b110d4d9f7d50a765e6b4f6a03c31ba702e1cdf04f6a5870a834f86e813cc2a6028', 0, '2021-03-06 00:08:34');

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
-- Table structure for table `tipos_usuario`
--

CREATE TABLE `tipos_usuario` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tipos_usuario`
--

INSERT INTO `tipos_usuario` (`id`, `descripcion`) VALUES
(1, 'admin'),
(2, 'capturista'),
(3, 'admin'),
(4, 'capturista');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_tipo_usuario` int(11) NOT NULL DEFAULT '2',
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

INSERT INTO `users` (`id`, `id_tipo_usuario`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Administrador', 'admin@censo.com', NULL, '$2y$10$JTt1DvNo41gFEP78x1W2B.IrmX/a3ph4I3TqckqUY2dhBP.usGnIm', NULL, '2020-03-06 06:12:26', '2020-03-06 06:12:26'),
(2, 2, 'Pedro', 'pedro@censo.com', NULL, '$2y$10$SVLgsoZWj1dugfmaE3uC.O/ExceOCvFTK8kg4FZfTWa5bagFnx0.O', NULL, '2020-03-06 06:16:41', '2020-03-06 06:16:41'),
(3, 2, 'Juana', 'juana@censo.com', NULL, '$2y$10$kcemjgltbpWfWrdhxD8mGuG5v/UQQBULrByeKFVedDCZ/ntxBS.D2', NULL, '2020-03-06 06:17:07', '2020-03-06 06:17:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casas`
--
ALTER TABLE `casas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

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
-- Indexes for table `negocios`
--
ALTER TABLE `negocios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tipos_usuario`
--
ALTER TABLE `tipos_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `id_tipo_usuario` (`id_tipo_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `casas`
--
ALTER TABLE `casas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `negocios`
--
ALTER TABLE `negocios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tipos_usuario`
--
ALTER TABLE `tipos_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `casas`
--
ALTER TABLE `casas`
  ADD CONSTRAINT `casas_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `negocios`
--
ALTER TABLE `negocios`
  ADD CONSTRAINT `negocios_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipos_usuario` (`id`);
