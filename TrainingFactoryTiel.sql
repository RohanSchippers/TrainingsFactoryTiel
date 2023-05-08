-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 08 mei 2023 om 09:14
-- Serverversie: 10.4.25-MariaDB
-- PHP-versie: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trainingsfactorytiel`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`id`, `user_id`, `group`, `created_at`) VALUES
(1, 1, 'user', '2023-04-05 15:19:35'),
(2, 2, 'user', '2023-04-05 16:02:06'),
(3, 3, 'user', '2023-04-05 16:08:50'),
(4, 4, 'user', '2023-04-06 11:18:56'),
(5, 5, 'user', '2023-04-06 18:44:26'),
(6, 6, 'user', '2023-04-06 19:31:53'),
(7, 7, 'user', '2023-04-07 10:22:48'),
(8, 8, 'user', '2023-04-07 18:35:40'),
(9, 9, 'user', '2023-04-11 12:48:01'),
(10, 10, 'user', '2023-04-14 07:08:57');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `auth_identities`
--

CREATE TABLE `auth_identities` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `secret` varchar(255) NOT NULL,
  `secret2` varchar(255) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `force_reset` tinyint(1) NOT NULL DEFAULT 0,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `auth_identities`
--

INSERT INTO `auth_identities` (`id`, `user_id`, `type`, `name`, `secret`, `secret2`, `expires`, `extra`, `force_reset`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'email_password', NULL, 'rohitgame01@gmail.com', '$2y$10$hgm.rR3LyhHOSSfEQi.FBejrwsvV3izw1nEzD2P0.UuCbTTqz5Zfq', NULL, NULL, 0, '2023-04-23 10:55:20', '2023-04-05 15:19:35', '2023-04-23 10:55:20'),
(2, 2, 'email_password', NULL, 'patryk@gmail.com', '$2y$10$VioNt9htDJm40ENwX.Lk3u2V5HAMBHKIjRiQVV4PyrEX49q8nU5.O', NULL, NULL, 0, NULL, '2023-04-05 16:02:05', '2023-04-05 16:02:06'),
(3, 3, 'email_password', NULL, 'test@gmail.com', '$2y$10$Wkd9fVdO.9dKV87Tw7gGWetK3XQ.ObxK/rv9vmgJStbdugf.NQuqG', NULL, NULL, 0, NULL, '2023-04-05 16:08:50', '2023-04-05 16:08:50'),
(4, 4, 'email_password', NULL, 'testing@gmail.com', '$2y$10$SeZ3j7cf5TVm6wI.sESq7uxxlr9c4YBhg9Ii/dX6SaeEc5gezlpNK', NULL, NULL, 0, NULL, '2023-04-06 11:18:56', '2023-04-06 11:18:56'),
(5, 5, 'email_password', NULL, 'voorbij@gmail.com', '$2y$10$0wZXviplFE5i0Z2kRQ9TlOl57/6DVpoT9FetM9e2lbeLpbYRISdVm', NULL, NULL, 0, NULL, '2023-04-06 18:44:26', '2023-04-06 18:44:26'),
(6, 6, 'email_password', NULL, 'klantding@gmail.com', '$2y$10$kSuUxnZg7fRYxc9c7GTPDuNC2sRy8ESlOaURKt9tQH7sXjqH6BKIi', NULL, NULL, 0, NULL, '2023-04-06 19:31:53', '2023-04-06 19:31:53'),
(7, 7, 'email_password', NULL, 'ditisiets@gmail.com', '$2y$10$MA.BMVrfWB5ERqY4X3yslOxJrEgwlky4J2Eo1UZszhaBAScbPZtTy', NULL, NULL, 0, NULL, '2023-04-07 10:22:47', '2023-04-07 10:22:48'),
(8, 8, 'email_password', NULL, 'soldier@gmail.com', '$2y$10$1FzPYacMrPkkxplDB/yKOOmQEsh3v3jZqOpc.HqdDGD2bi57l383a', NULL, NULL, 0, NULL, '2023-04-07 18:35:40', '2023-04-07 18:35:40'),
(9, 9, 'email_password', NULL, 'patpat@gmail.com', '$2y$10$oULJYhocgJLnOKNOQ7p59utmcrGmAMGx9hDnQVmVkkN6B4/XhZ11W', NULL, NULL, 0, NULL, '2023-04-11 12:48:01', '2023-04-11 12:48:01'),
(10, 10, 'email_password', NULL, 'testin@gmail.com', '$2y$10$TU5UBqlQOccUdsPLOWdGx.h6MTT.FoePdviWOPKLVpEO7cW3U/Htm', NULL, NULL, 0, NULL, '2023-04-14 07:08:57', '2023-04-14 07:08:57');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `user_agent`, `id_type`, `identifier`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-05 15:36:03', 1),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', NULL, '2023-04-08 10:14:58', 0),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', NULL, '2023-04-08 10:15:01', 0),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', NULL, '2023-04-08 10:15:09', 0),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-08 10:15:13', 1),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-08 12:17:10', 1),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-08 16:13:45', 1),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-08 20:23:29', 1),
(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-09 10:12:49', 1),
(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-10 09:39:46', 1),
(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-10 10:54:30', 1),
(12, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-10 18:39:36', 1),
(13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-11 09:46:24', 1),
(14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-11 16:13:40', 1),
(15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-12 08:12:26', 1),
(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-12 12:00:35', 1),
(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-12 16:28:13', 1),
(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-13 06:51:00', 1),
(19, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-13 12:51:04', 1),
(20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-14 07:03:59', 1),
(21, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-14 07:11:45', 1),
(22, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-14 10:07:27', 1),
(23, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-14 18:37:28', 1),
(24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-14 19:54:01', 1),
(25, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-15 10:52:49', 1),
(26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-15 16:04:35', 1),
(27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-15 18:34:58', 1),
(28, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-16 09:59:36', 1),
(29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-16 18:37:57', 1),
(30, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-17 07:49:30', 1),
(31, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-17 10:02:41', 1),
(32, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-17 16:33:41', 1),
(33, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', NULL, '2023-04-17 18:39:26', 0),
(34, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-17 18:39:33', 1),
(35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-18 15:49:44', 1),
(36, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-18 18:34:46', 1),
(37, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-19 10:51:26', 1),
(38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', NULL, '2023-04-19 16:51:00', 0),
(39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-19 16:51:03', 1),
(40, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-19 19:14:35', 1),
(41, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-20 18:47:00', 1),
(42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'email_password', 'rohitgame01@gmail.com', 1, '2023-04-23 10:55:20', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `auth_permissions_users`
--

CREATE TABLE `auth_permissions_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `permission` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `auth_remember_tokens`
--

CREATE TABLE `auth_remember_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `auth_token_logins`
--

CREATE TABLE `auth_token_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lesrooster`
--

CREATE TABLE `lesrooster` (
  `lesrooster_id` int(11) NOT NULL,
  `locatie` varchar(45) NOT NULL,
  `capaciteit` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `instructeur` int(11) NOT NULL,
  `sortenles_idsortenles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  `leeftijd` int(11) NOT NULL,
  `telnummer` varchar(45) NOT NULL,
  `role` enum('admin','klant','docent') NOT NULL DEFAULT 'klant'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-12-28-223112', 'CodeIgniter\\Shield\\Database\\Migrations\\CreateAuthTables', 'default', 'CodeIgniter\\Shield', 1680707531, 1),
(2, '2021-07-04-041948', 'CodeIgniter\\Settings\\Database\\Migrations\\CreateSettingsTable', 'default', 'CodeIgniter\\Settings', 1680707531, 1),
(3, '2021-11-14-143905', 'CodeIgniter\\Settings\\Database\\Migrations\\AddContextColumn', 'default', 'CodeIgniter\\Settings', 1680707531, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `registratietabel`
--

CREATE TABLE `registratietabel` (
  `lesrooster_lesrooster_id` int(11) NOT NULL,
  `login_user_id` int(11) NOT NULL,
  `betaalt` varchar(45) NOT NULL,
  `opmerkingen` varchar(45) NOT NULL,
  `geannuleerd` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(9) NOT NULL,
  `class` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(31) NOT NULL DEFAULT 'string',
  `context` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sortenles`
--

CREATE TABLE `sortenles` (
  `idsortenles` int(11) NOT NULL,
  `naam` varchar(45) NOT NULL,
  `bijzonderheden` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `last_active` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `leeftijd` int(11) NOT NULL,
  `telnummer` varchar(45) NOT NULL,
  `role` enum('admin','klant','instructeur') NOT NULL DEFAULT 'klant',
  `geboortedatum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `username`, `status`, `status_message`, `active`, `last_active`, `created_at`, `updated_at`, `deleted_at`, `leeftijd`, `telnummer`, `role`, `geboortedatum`) VALUES
(1, 'RohitWW', NULL, NULL, 1, NULL, '2023-04-05 15:19:35', '2023-04-05 15:19:35', NULL, 12, '', 'admin', '2023-04-05'),
(2, 'Patryk', NULL, NULL, 1, NULL, '2023-04-05 16:02:05', '2023-04-05 16:02:06', NULL, 0, '', 'instructeur', '0000-00-00'),
(3, 'testing', NULL, NULL, 1, NULL, '2023-04-05 16:08:49', '2023-04-05 16:08:50', NULL, 0, '', 'admin', '0000-00-00'),
(4, 'testing1', NULL, NULL, 1, NULL, '2023-04-06 11:18:56', '2023-04-06 11:18:56', NULL, 0, '', 'klant', '0000-00-00'),
(5, 'voorbij', NULL, NULL, 1, NULL, '2023-04-06 18:44:26', '2023-04-06 18:44:26', NULL, 0, '', 'instructeur', '0000-00-00'),
(6, 'klant', NULL, NULL, 1, NULL, '2023-04-06 19:31:53', '2023-04-06 19:31:53', NULL, 0, '', 'klant', '0000-00-00'),
(7, 'ooo', NULL, NULL, 1, NULL, '2023-04-07 10:22:47', '2023-04-07 10:22:48', NULL, 0, '', 'admin', '0000-00-00'),
(8, 'soldaat', NULL, NULL, 1, NULL, '2023-04-07 18:35:40', '2023-04-07 18:35:40', NULL, 0, '', 'admin', '0000-00-00'),
(9, 'waltwalt', NULL, NULL, 1, NULL, '2023-04-11 12:48:01', '2023-04-11 12:48:01', NULL, 0, '', 'klant', '0000-00-00'),
(10, 'ditiseentest', NULL, NULL, 1, NULL, '2023-04-14 07:08:57', '2023-04-14 07:08:57', NULL, 0, '', 'instructeur', '0000-00-00');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`);

--
-- Indexen voor tabel `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_secret` (`type`,`secret`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexen voor tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexen voor tabel `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_permissions_users_user_id_foreign` (`user_id`);

--
-- Indexen voor tabel `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `auth_remember_tokens_user_id_foreign` (`user_id`);

--
-- Indexen voor tabel `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexen voor tabel `lesrooster`
--
ALTER TABLE `lesrooster`
  ADD PRIMARY KEY (`lesrooster_id`);

--
-- Indexen voor tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexen voor tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `registratietabel`
--
ALTER TABLE `registratietabel`
  ADD PRIMARY KEY (`lesrooster_lesrooster_id`,`login_user_id`);

--
-- Indexen voor tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `sortenles`
--
ALTER TABLE `sortenles`
  ADD PRIMARY KEY (`idsortenles`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `auth_identities`
--
ALTER TABLE `auth_identities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT voor een tabel `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lesrooster`
--
ALTER TABLE `lesrooster`
  MODIFY `lesrooster_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `sortenles`
--
ALTER TABLE `sortenles`
  MODIFY `idsortenles` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD CONSTRAINT `auth_identities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD CONSTRAINT `auth_permissions_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD CONSTRAINT `auth_remember_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
