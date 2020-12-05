-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 05 2020 г., 11:56
-- Версия сервера: 10.4.16-MariaDB
-- Версия PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `artmir`
--

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
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
-- Структура таблицы `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_28_220602_create_mks_table', 1),
(5, '2020_12_01_212632_create_mk_images_table', 2),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(7, '2020_12_04_184032_create_sessions_table', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `mks`
--

DROP TABLE IF EXISTS `mks`;
CREATE TABLE `mks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_time` datetime NOT NULL,
  `img_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `price_id` int(11) NOT NULL,
  `client_qnt` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `sms` tinyint(1) NOT NULL DEFAULT 0,
  `studio` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mk_images`
--

DROP TABLE IF EXISTS `mk_images`;
CREATE TABLE `mk_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mk_images`
--

INSERT INTO `mk_images` (`id`, `title`, `src`, `status`, `created_at`, `updated_at`) VALUES
(31, 'Картина', '/storage/img/mk/pics/SFIlJw.jpeg', 1, '2020-12-01 16:39:52', '2020-12-01 16:39:52'),
(32, 'Картина', '/storage/img/mk/pics/yumXJG.jpeg', 1, '2020-12-01 16:40:16', '2020-12-01 16:40:16'),
(33, 'Картина', '/storage/img/mk/pics/JMeWyX.jpeg', 1, '2020-12-01 16:40:16', '2020-12-01 16:40:16'),
(34, 'Картина', '/storage/img/mk/pics/D3Hqx7.jpeg', 1, '2020-12-01 16:40:16', '2020-12-01 16:40:16'),
(35, 'Картина', '/storage/img/mk/pics/ARl7JP.jpeg', 1, '2020-12-01 16:40:16', '2020-12-01 16:40:16'),
(36, 'Картина', '/storage/img/mk/pics/hcLZP8.jpeg', 1, '2020-12-01 16:40:16', '2020-12-01 16:40:16'),
(37, 'Картина', '/storage/img/mk/pics/2r4fBJ.jpeg', 1, '2020-12-01 16:40:16', '2020-12-01 16:40:16'),
(38, 'Картина', '/storage/img/mk/pics/uJHCAh.jpeg', 1, '2020-12-01 16:40:16', '2020-12-01 16:40:16'),
(39, 'Картина', '/storage/img/mk/pics/uhzTlk.jpeg', 1, '2020-12-01 16:40:16', '2020-12-01 16:40:16'),
(40, 'Картина', '/storage/img/mk/pics/p6Nh1V.jpeg', 1, '2020-12-01 16:40:16', '2020-12-01 16:40:16'),
(41, 'Картина', '/storage/img/mk/pics/TAGlYu.jpeg', 1, '2020-12-01 16:40:16', '2020-12-01 16:40:16'),
(42, 'Картина', '/storage/img/mk/pics/5S7bhp.jpeg', 1, '2020-12-01 16:49:26', '2020-12-01 16:49:26'),
(43, 'Картина', '/storage/img/mk/pics/YkyJZc.jpeg', 1, '2020-12-01 16:49:26', '2020-12-01 16:49:26'),
(44, 'Картина', '/storage/img/mk/pics/1tOohE.jpeg', 1, '2020-12-01 16:49:26', '2020-12-01 16:49:26'),
(45, 'Картина', '/storage/img/mk/pics/RdWMpH.jpeg', 1, '2020-12-01 16:49:26', '2020-12-01 16:49:26'),
(46, 'Картина', '/storage/img/mk/pics/oLyWBu.jpeg', 1, '2020-12-01 16:49:26', '2020-12-01 16:49:26'),
(47, 'Картина', '/storage/img/mk/pics/Aakx41.jpeg', 1, '2020-12-01 16:49:26', '2020-12-01 16:49:26'),
(48, 'Картина', '/storage/img/mk/pics/yLKtGS.jpeg', 1, '2020-12-01 16:49:26', '2020-12-01 16:49:26'),
(49, 'Картина', '/storage/img/mk/pics/zvWnMG.jpeg', 1, '2020-12-01 16:49:26', '2020-12-01 16:49:26'),
(50, 'Картина', '/storage/img/mk/pics/HyeAyR.jpeg', 1, '2020-12-01 16:49:26', '2020-12-01 16:49:26'),
(51, 'Картина', '/storage/img/mk/pics/0gEQkd.jpeg', 1, '2020-12-01 16:49:26', '2020-12-01 16:49:26'),
(52, 'Картина', '/storage/img/mk/pics/Mzk6Mn.jpeg', 1, '2020-12-01 16:49:26', '2020-12-01 16:49:26'),
(53, 'Картина', '/storage/img/mk/pics/VSoWTZ.jpeg', 1, '2020-12-01 16:49:26', '2020-12-01 16:49:26');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
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
-- Структура таблицы `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('JHwDRes0k5sYCfFEMlu664E00yWucVP1kFKP25wv', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic09vZ0taUjJEcTZ3TUFaWFJyTTdTa3dPY014eFp4akM0NFJIM2cwaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3QvYXJ0L3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1607107293);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
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
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
ADD PRIMARY KEY (`id`),
ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mks`
--
ALTER TABLE `mks`
ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mk_images`
--
ALTER TABLE `mk_images`
ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
ADD PRIMARY KEY (`id`),
ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
ADD PRIMARY KEY (`id`),
ADD KEY `sessions_user_id_index` (`user_id`),
ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
ADD PRIMARY KEY (`id`),
ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `mks`
--
ALTER TABLE `mks`
MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mk_images`
--
ALTER TABLE `mk_images`
MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
