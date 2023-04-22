-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2023 at 06:53 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `laravel`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isTeam` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ageCategory` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ageMin` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ageMax` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gradeCategory` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gradeMin` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gradeMax` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `gender`, `isTeam`, `ageCategory`, `ageMin`, `ageMax`, `gradeCategory`, `gradeMin`, `gradeMax`, `created_at`, `updated_at`) VALUES
(1, 'categories.junior', 'X', 0, 5, 13, 15, 0, 0, 0, '2023-04-22 15:45:55', '2023-04-22 15:45:55'),
(2, 'categories.junior_team', 'X', 1, 5, 13, 15, 0, 0, 0, '2023-04-22 15:45:55', '2023-04-22 15:45:55'),
(3, 'categories.men_single', 'M', 0, 5, 18, 0, 0, 0, 0, '2023-04-22 15:45:56', '2023-04-22 15:45:56'),
(4, 'categories.men_team', 'M', 1, 5, 18, 0, 0, 0, 0, '2023-04-22 15:45:56', '2023-04-22 15:45:56'),
(5, 'categories.ladies_single', 'F', 0, 5, 18, 0, 0, 0, 0, '2023-04-22 15:45:56', '2023-04-22 15:45:56'),
(6, 'categories.ladies_team', 'F', 1, 5, 18, 0, 0, 0, 0, '2023-04-22 15:45:56', '2023-04-22 15:45:56'),
(7, 'categories.master', 'F', 0, 5, 50, 0, 0, 8, 0, '2023-04-22 15:45:56', '2023-04-22 15:45:56');

-- --------------------------------------------------------

--
-- Table structure for table `championship`
--

CREATE TABLE `championship` (
  `id` int(10) UNSIGNED NOT NULL,
  `tournament_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `championship`
--

INSERT INTO `championship` (`id`, `tournament_id`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2023-04-22 15:45:57', '2023-04-22 15:45:57', NULL),
(2, 1, 2, '2023-04-22 15:45:57', '2023-04-22 15:45:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `championship_settings`
--

CREATE TABLE `championship_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `championship_id` int(10) UNSIGNED NOT NULL,
  `treeType` tinyint(4) NOT NULL DEFAULT '1',
  `fightingAreas` tinyint(3) UNSIGNED DEFAULT '1',
  `limitByEntity` int(10) UNSIGNED DEFAULT NULL,
  `hasPreliminary` tinyint(1) NOT NULL DEFAULT '1',
  `preliminaryGroupSize` tinyint(1) NOT NULL DEFAULT '3',
  `preliminaryWinner` tinyint(4) NOT NULL DEFAULT '1',
  `preliminaryDuration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teamSize` tinyint(4) DEFAULT NULL,
  `teamReserve` tinyint(4) DEFAULT NULL,
  `seedQuantity` smallint(6) DEFAULT NULL,
  `hasEncho` tinyint(1) NOT NULL DEFAULT '1',
  `enchoQty` tinyint(4) NOT NULL DEFAULT '0',
  `enchoDuration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hasHantei` tinyint(1) NOT NULL DEFAULT '0',
  `cost` smallint(6) DEFAULT NULL,
  `fightDuration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hanteiLimit` smallint(6) NOT NULL DEFAULT '0',
  `enchoGoldPoint` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `competitor`
--

CREATE TABLE `competitor` (
  `id` int(10) UNSIGNED NOT NULL,
  `short_id` int(10) UNSIGNED DEFAULT NULL,
  `championship_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `competitor`
--

INSERT INTO `competitor` (`id`, `short_id`, `championship_id`, `user_id`, `confirmed`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 1, '2023-04-22 15:45:58', '2023-04-22 15:45:58', NULL),
(2, 2, 1, 2, 1, '2023-04-22 15:45:58', '2023-04-22 15:45:58', NULL),
(3, 3, 1, 3, 1, '2023-04-22 15:45:59', '2023-04-22 15:45:59', NULL),
(4, 4, 1, 4, 1, '2023-04-22 15:45:59', '2023-04-22 15:45:59', NULL),
(5, 5, 1, 5, 1, '2023-04-22 15:45:59', '2023-04-22 15:45:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `competitor_team`
--

CREATE TABLE `competitor_team` (
  `id` int(10) UNSIGNED NOT NULL,
  `team_id` int(10) UNSIGNED DEFAULT NULL,
  `competitor_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fight`
--

CREATE TABLE `fight` (
  `id` int(10) UNSIGNED NOT NULL,
  `short_id` int(10) UNSIGNED DEFAULT NULL,
  `fighters_group_id` int(10) UNSIGNED NOT NULL,
  `c1` int(10) UNSIGNED DEFAULT NULL,
  `c2` int(10) UNSIGNED DEFAULT NULL,
  `point1_c1` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `point2_c1` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `point1_c2` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `point2_c2` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `winner_id` int(10) UNSIGNED DEFAULT NULL,
  `hansoku1_c1` tinyint(1) DEFAULT NULL,
  `hansoku2_c1` tinyint(1) DEFAULT NULL,
  `hansoku3_c1` tinyint(1) DEFAULT NULL,
  `hansoku4_c1` tinyint(1) DEFAULT NULL,
  `hansoku1_c2` tinyint(1) DEFAULT NULL,
  `hansoku2_c2` tinyint(1) DEFAULT NULL,
  `hansoku3_c2` tinyint(1) DEFAULT NULL,
  `hansoku4_c2` tinyint(1) DEFAULT NULL,
  `area` tinyint(4) NOT NULL DEFAULT '1',
  `order` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fighters_groups`
--

CREATE TABLE `fighters_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `short_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `championship_id` int(10) UNSIGNED NOT NULL,
  `round` tinyint(4) NOT NULL DEFAULT '0',
  `area` tinyint(4) NOT NULL,
  `order` tinyint(4) NOT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fighters_group_competitor`
--

CREATE TABLE `fighters_group_competitor` (
  `id` int(10) UNSIGNED NOT NULL,
  `competitor_id` int(10) UNSIGNED DEFAULT NULL,
  `fighters_group_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fighters_group_team`
--

CREATE TABLE `fighters_group_team` (
  `id` int(10) UNSIGNED NOT NULL,
  `team_id` int(10) UNSIGNED DEFAULT NULL,
  `fighters_group_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(2, '2014_10_12_000001_alter_lt_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2014_11_01_171758_create_lt_Venue_table', 1),
(5, '2014_11_01_171759_create_lt_Tournament_table', 1),
(6, '2014_12_03_230347_create_lt_Category_table', 1),
(7, '2014_12_23_025812_create_lt_ChampionshipSettings_table', 1),
(8, '2015_10_24_223707_create_lt_FightersGroup_table', 1),
(9, '2015_10_28_193240_create_lt_sessions_table', 1),
(10, '2015_11_23_125510_create_lt_Fight_table', 1),
(11, '2015_95_04_171760_create_lt_Team_table', 1),
(12, '2016_02_12_000429_create_lt_FightersGroup_Competitor_table', 1),
(13, '2016_02_12_000438_create_lt_FightersGroup_Team_table', 1),
(14, '2016_03_15_000438_create_lt_Competitor_Team_table', 1);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(10) UNSIGNED NOT NULL,
  `short_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `championship_id` int(10) UNSIGNED NOT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tournament`
--

CREATE TABLE `tournament` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateIni` date NOT NULL,
  `dateFin` date NOT NULL,
  `registerDateLimit` date DEFAULT '2023-05-22',
  `sport` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `promoter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host_organization` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `technical_assistance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rule_id` int(11) NOT NULL DEFAULT '1',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `venue_id` int(10) UNSIGNED DEFAULT NULL,
  `level_id` int(10) UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tournament`
--

INSERT INTO `tournament` (`id`, `user_id`, `name`, `slug`, `dateIni`, `dateFin`, `registerDateLimit`, `sport`, `promoter`, `host_organization`, `technical_assistance`, `rule_id`, `type`, `venue_id`, `level_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Test Tournament', 'd5b438db7a7dd9a18350081ac38cac58', '2023-04-23', '2023-04-23', '2023-04-23', 1, NULL, NULL, NULL, 1, 0, 5, 7, '2023-04-22 15:45:56', '2023-04-22 15:45:56', NULL);

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'firstname',
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lastname'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `firstname`, `lastname`) VALUES
(1, 't1', 'breitenberg.sophie@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', NULL, '2023-04-22 15:45:58', '2023-04-22 15:45:58', 'Deondre', 'Bartoletti'),
(2, 't2', 'fpouros@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', NULL, '2023-04-22 15:45:58', '2023-04-22 15:45:58', 'Ocie', 'Fritsch'),
(3, 't3', 'zita.russel@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', NULL, '2023-04-22 15:45:58', '2023-04-22 15:45:58', 'Rylan', 'Zieme'),
(4, 't4', 'adrienne.reinger@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', NULL, '2023-04-22 15:45:58', '2023-04-22 15:45:58', 'Ernestina', 'Block'),
(5, 't5', 'ewillms@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', NULL, '2023-04-22 15:45:58', '2023-04-22 15:45:58', 'Kiera', 'Cummerata');

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `id` int(10) UNSIGNED NOT NULL,
  `venue_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CP` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`id`, `venue_name`, `address`, `details`, `city`, `CP`, `state`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 'Linen', 'Lebsack Drive', 'Muhammad Points', 'South Annamariefurt', '46433-7792', 'BlueViolet', '0.602237', '-179.804762', '2023-04-22 15:45:55', '2023-04-22 15:45:55'),
(2, 'RoyalBlue', 'Ray Junction', 'Dante Highway', 'Nikolauston', '99297', 'LimeGreen', '32.855016', '164.737945', '2023-04-22 15:45:55', '2023-04-22 15:45:55'),
(3, 'OliveDrab', 'Adelbert Brook', 'Deja Causeway', 'Cruickshankberg', '05424-4129', 'LemonChiffon', '58.320427', '34.16997', '2023-04-22 15:45:55', '2023-04-22 15:45:55'),
(4, 'Maroon', 'Hildegard Springs', 'Aileen Common', 'East Veronaburgh', '00391', 'DimGray', '61.091528', '147.982011', '2023-04-22 15:45:55', '2023-04-22 15:45:55'),
(5, 'MediumSeaGreen', 'Beau Courts', 'Kshlerin Fort', 'New Tito', '04587', 'OldLace', '0.646974', '-130.766612', '2023-04-22 15:45:55', '2023-04-22 15:45:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_fields_unique` (`name`,`gender`,`isTeam`,`ageCategory`,`ageMin`,`ageMax`,`gradeCategory`,`gradeMin`,`gradeMax`);

--
-- Indexes for table `championship`
--
ALTER TABLE `championship`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `championship_tournament_id_category_id_unique` (`tournament_id`,`category_id`),
  ADD KEY `championship_tournament_id_index` (`tournament_id`),
  ADD KEY `championship_category_id_index` (`category_id`);

--
-- Indexes for table `championship_settings`
--
ALTER TABLE `championship_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `championship_settings_championship_id_unique` (`championship_id`);

--
-- Indexes for table `competitor`
--
ALTER TABLE `competitor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `competitor_championship_id_user_id_unique` (`championship_id`,`user_id`),
  ADD UNIQUE KEY `competitor_championship_id_short_id_unique` (`championship_id`,`short_id`),
  ADD KEY `competitor_championship_id_index` (`championship_id`),
  ADD KEY `competitor_user_id_index` (`user_id`);

--
-- Indexes for table `competitor_team`
--
ALTER TABLE `competitor_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `competitor_team_team_id_competitor_id_unique` (`team_id`,`competitor_id`),
  ADD KEY `competitor_team_team_id_index` (`team_id`),
  ADD KEY `competitor_team_competitor_id_index` (`competitor_id`);

--
-- Indexes for table `fight`
--
ALTER TABLE `fight`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fight_fighters_group_id_index` (`fighters_group_id`),
  ADD KEY `fight_c1_index` (`c1`),
  ADD KEY `fight_c2_index` (`c2`);

--
-- Indexes for table `fighters_groups`
--
ALTER TABLE `fighters_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fighters_groups__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`),
  ADD KEY `fighters_groups_championship_id_index` (`championship_id`);

--
-- Indexes for table `fighters_group_competitor`
--
ALTER TABLE `fighters_group_competitor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fighters_group_competitor_competitor_id_fighters_group_id_unique` (`competitor_id`,`fighters_group_id`),
  ADD KEY `fighters_group_competitor_competitor_id_index` (`competitor_id`),
  ADD KEY `fighters_group_competitor_fighters_group_id_index` (`fighters_group_id`);

--
-- Indexes for table `fighters_group_team`
--
ALTER TABLE `fighters_group_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fighters_group_team_team_id_fighters_group_id_unique` (`team_id`,`fighters_group_id`),
  ADD KEY `fighters_group_team_team_id_index` (`team_id`),
  ADD KEY `fighters_group_team_fighters_group_id_index` (`fighters_group_id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_championship_id_name_unique` (`championship_id`,`name`),
  ADD KEY `team_championship_id_index` (`championship_id`),
  ADD KEY `team_entity_id_index` (`entity_id`);

--
-- Indexes for table `tournament`
--
ALTER TABLE `tournament`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tournament_slug_unique` (`slug`),
  ADD KEY `tournament_venue_id_foreign` (`venue_id`),
  ADD KEY `tournament_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `championship`
--
ALTER TABLE `championship`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `championship_settings`
--
ALTER TABLE `championship_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `competitor`
--
ALTER TABLE `competitor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `competitor_team`
--
ALTER TABLE `competitor_team`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fight`
--
ALTER TABLE `fight`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fighters_groups`
--
ALTER TABLE `fighters_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fighters_group_competitor`
--
ALTER TABLE `fighters_group_competitor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fighters_group_team`
--
ALTER TABLE `fighters_group_team`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tournament`
--
ALTER TABLE `tournament`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `venue`
--
ALTER TABLE `venue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `championship`
--
ALTER TABLE `championship`
  ADD CONSTRAINT `championship_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `championship_tournament_id_foreign` FOREIGN KEY (`tournament_id`) REFERENCES `tournament` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `championship_settings`
--
ALTER TABLE `championship_settings`
  ADD CONSTRAINT `championship_settings_championship_id_foreign` FOREIGN KEY (`championship_id`) REFERENCES `championship` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `competitor`
--
ALTER TABLE `competitor`
  ADD CONSTRAINT `competitor_championship_id_foreign` FOREIGN KEY (`championship_id`) REFERENCES `championship` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `competitor_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `competitor_team`
--
ALTER TABLE `competitor_team`
  ADD CONSTRAINT `competitor_team_competitor_id_foreign` FOREIGN KEY (`competitor_id`) REFERENCES `competitor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `competitor_team_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fight`
--
ALTER TABLE `fight`
  ADD CONSTRAINT `fight_fighters_group_id_foreign` FOREIGN KEY (`fighters_group_id`) REFERENCES `fighters_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fighters_groups`
--
ALTER TABLE `fighters_groups`
  ADD CONSTRAINT `fighters_groups_championship_id_foreign` FOREIGN KEY (`championship_id`) REFERENCES `championship` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fighters_group_competitor`
--
ALTER TABLE `fighters_group_competitor`
  ADD CONSTRAINT `fighters_group_competitor_competitor_id_foreign` FOREIGN KEY (`competitor_id`) REFERENCES `competitor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fighters_group_competitor_fighters_group_id_foreign` FOREIGN KEY (`fighters_group_id`) REFERENCES `fighters_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fighters_group_team`
--
ALTER TABLE `fighters_group_team`
  ADD CONSTRAINT `fighters_group_team_fighters_group_id_foreign` FOREIGN KEY (`fighters_group_id`) REFERENCES `fighters_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fighters_group_team_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_championship_id_foreign` FOREIGN KEY (`championship_id`) REFERENCES `championship` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tournament`
--
ALTER TABLE `tournament`
  ADD CONSTRAINT `tournament_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tournament_venue_id_foreign` FOREIGN KEY (`venue_id`) REFERENCES `venue` (`id`);
--
-- Database: `phpmyadmin`
--
