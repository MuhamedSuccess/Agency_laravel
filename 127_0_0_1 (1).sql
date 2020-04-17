-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2020 at 04:35 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelauth`
--
CREATE DATABASE IF NOT EXISTS `laravelauth` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravelauth`;

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `token`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 3, 'd0C8dusIcjalXhwuQtyjUHXrGa2VYafv4gs8At7gwYlGkiRM6a33hHAKoYxV2FRv', '0.0.0.0', '2020-04-12 00:37:26', '2020-04-12 00:37:26'),
(2, 3, 'I6vLhqHo5Vl8A026jjSYuoE8a4YVu7bLnoU685EIBeJfPLVTsWuTvhB8P9qMZAYz', '0.0.0.0', '2020-04-12 01:05:29', '2020-04-12 01:05:29'),
(3, 3, 'ngEA6tFzoccZuJtYBaOiqk3AZcpw7O1pXznGfxspU71cRyOorB5FohePH7uJl63W', '0.0.0.0', '2020-04-12 01:07:41', '2020-04-12 01:07:41');

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
-- Table structure for table `guide`
--

CREATE TABLE `guide` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guide`
--

INSERT INTO `guide` (`id`, `user_id`) VALUES
(2, 1),
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `laravel2step`
--

CREATE TABLE `laravel2step` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `authCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authCount` int(11) NOT NULL,
  `authStatus` tinyint(1) NOT NULL DEFAULT '0',
  `authDate` datetime DEFAULT NULL,
  `requestDate` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laravel_blocker`
--

CREATE TABLE `laravel_blocker` (
  `id` int(10) UNSIGNED NOT NULL,
  `typeId` int(10) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `userId` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_blocker`
--

INSERT INTO `laravel_blocker` (`id`, `typeId`, `value`, `note`, `userId`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'test.com', 'Block all domains/emails @test.com', NULL, '2020-04-11 23:50:46', '2020-04-11 23:50:46', NULL),
(2, 3, 'test.ca', 'Block all domains/emails @test.ca', NULL, '2020-04-11 23:50:46', '2020-04-11 23:50:46', NULL),
(3, 3, 'fake.com', 'Block all domains/emails @fake.com', NULL, '2020-04-11 23:50:46', '2020-04-11 23:50:46', NULL),
(4, 3, 'example.com', 'Block all domains/emails @example.com', NULL, '2020-04-11 23:50:46', '2020-04-12 22:14:53', '2020-04-12 22:14:53'),
(5, 3, 'mailinator.com', 'Block all domains/emails @mailinator.com', NULL, '2020-04-11 23:50:46', '2020-04-11 23:50:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laravel_blocker_types`
--

CREATE TABLE `laravel_blocker_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_blocker_types`
--

INSERT INTO `laravel_blocker_types` (`id`, `slug`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'email', 'E-mail', '2020-04-11 23:50:45', '2020-04-11 23:50:45', NULL),
(2, 'ipAddress', 'IP Address', '2020-04-11 23:50:45', '2020-04-11 23:50:45', NULL),
(3, 'domain', 'Domain Name', '2020-04-11 23:50:45', '2020-04-11 23:50:45', NULL),
(4, 'user', 'User', '2020-04-11 23:50:45', '2020-04-11 23:50:45', NULL),
(5, 'city', 'City', '2020-04-11 23:50:46', '2020-04-11 23:50:46', NULL),
(6, 'state', 'State', '2020-04-11 23:50:46', '2020-04-11 23:50:46', NULL),
(7, 'country', 'Country', '2020-04-11 23:50:46', '2020-04-11 23:50:46', NULL),
(8, 'countryCode', 'Country Code', '2020-04-11 23:50:46', '2020-04-11 23:50:46', NULL),
(9, 'continent', 'Continent', '2020-04-11 23:50:46', '2020-04-11 23:50:46', NULL),
(10, 'region', 'Region', '2020-04-11 23:50:46', '2020-04-11 23:50:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laravel_logger_activity`
--

CREATE TABLE `laravel_logger_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `userType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `route` longtext COLLATE utf8mb4_unicode_ci,
  `ipAddress` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userAgent` text COLLATE utf8mb4_unicode_ci,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` longtext COLLATE utf8mb4_unicode_ci,
  `methodType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_logger_activity`
--

INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Logged In', 'Registered', 3, 'http://127.0.0.1:4200/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'POST', '2020-04-12 00:40:48', '2020-04-12 00:40:48', NULL),
(2, 'Viewed activation-required', 'Registered', 3, 'http://127.0.0.1:4200/activation-required', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 00:40:49', '2020-04-12 00:40:49', NULL),
(3, 'Viewed activation', 'Registered', 3, 'http://127.0.0.1:4200/activation', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/activation-required', 'GET', '2020-04-12 01:05:28', '2020-04-12 01:05:28', NULL),
(4, 'Viewed activation', 'Registered', 3, 'http://127.0.0.1:4200/activation', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/activation-required', 'GET', '2020-04-12 01:07:40', '2020-04-12 01:07:40', NULL),
(5, 'Viewed activation', 'Registered', 3, 'http://127.0.0.1:4200/activation', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/activation-required', 'GET', '2020-04-12 01:09:06', '2020-04-12 01:09:06', NULL),
(6, 'Viewed exceeded', 'Registered', 3, 'http://127.0.0.1:4200/exceeded', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/activation', 'GET', '2020-04-12 01:09:24', '2020-04-12 01:09:24', NULL),
(7, 'Logged Out', 'Registered', 3, 'http://127.0.0.1:4200/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/exceeded', 'POST', '2020-04-12 01:09:32', '2020-04-12 01:09:32', NULL),
(8, 'Viewed social/redirect/google', 'Guest', NULL, 'http://127.0.0.1:4200/social/redirect/google', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/register', 'GET', '2020-04-12 01:09:41', '2020-04-12 01:09:41', NULL),
(9, 'Logged In', 'Registered', 3, 'http://127.0.0.1:4200/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'POST', '2020-04-12 01:10:00', '2020-04-12 01:10:00', NULL),
(10, 'Viewed exceeded', 'Registered', 3, 'http://127.0.0.1:4200/exceeded', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 01:10:02', '2020-04-12 01:10:02', NULL),
(11, 'Logged Out', 'Registered', 3, 'http://127.0.0.1:4200/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/exceeded', 'POST', '2020-04-12 01:14:42', '2020-04-12 01:14:42', NULL),
(12, 'Logged In', 'Registered', 3, 'http://127.0.0.1:4200/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'POST', '2020-04-12 01:14:57', '2020-04-12 01:14:57', NULL),
(13, 'Viewed activation-required', 'Registered', 3, 'http://127.0.0.1:4200/activation-required', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 01:15:00', '2020-04-12 01:15:00', NULL),
(14, 'Viewed activation-required', 'Registered', 3, 'http://127.0.0.1:4200/activation-required', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/', 'GET', '2020-04-12 01:17:07', '2020-04-12 01:17:07', NULL),
(15, 'Viewed activation', 'Registered', 3, 'http://127.0.0.1:4200/activation', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/activation-required', 'GET', '2020-04-12 01:23:22', '2020-04-12 01:23:22', NULL),
(16, 'Viewed activation-required', 'Registered', 3, 'http://127.0.0.1:4200/activation-required', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/', 'GET', '2020-04-12 01:24:33', '2020-04-12 01:24:33', NULL),
(17, 'Viewed activation-required', 'Registered', 3, 'http://127.0.0.1:4200/activation-required', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/', 'GET', '2020-04-12 01:24:59', '2020-04-12 01:24:59', NULL),
(18, 'Viewed profile/mohamed_fcih', 'Registered', 3, 'http://127.0.0.1:4200/profile/mohamed_fcih', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/activation-required', 'GET', '2020-04-12 01:25:51', '2020-04-12 01:25:51', NULL),
(19, 'Viewed home', 'Registered', 3, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/', 'GET', '2020-04-12 01:26:02', '2020-04-12 01:26:02', NULL),
(20, 'Viewed profile/mohamed_fcih', 'Registered', 3, 'http://127.0.0.1:4200/profile/mohamed_fcih', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'GET', '2020-04-12 01:26:31', '2020-04-12 01:26:31', NULL),
(21, 'Viewed profile/mohamed_fcih', 'Registered', 3, 'http://127.0.0.1:4200/profile/mohamed_fcih', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'GET', '2020-04-12 01:30:01', '2020-04-12 01:30:01', NULL),
(22, 'Viewed profile/mohamed_fcih', 'Registered', 3, 'http://127.0.0.1:4200/profile/mohamed_fcih', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'GET', '2020-04-12 01:30:14', '2020-04-12 01:30:14', NULL),
(23, 'Viewed profile/mohamed_fcih', 'Registered', 3, 'http://127.0.0.1:4200/profile/mohamed_fcih', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'GET', '2020-04-12 01:32:17', '2020-04-12 01:32:17', NULL),
(24, 'Viewed profile/mohamed_fcih/edit', 'Registered', 3, 'http://127.0.0.1:4200/profile/mohamed_fcih/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/profile/mohamed_fcih', 'GET', '2020-04-12 01:32:34', '2020-04-12 01:32:34', NULL),
(25, 'Edited profile/3/updateUserAccount', 'Registered', 3, 'http://127.0.0.1:4200/profile/3/updateUserAccount', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/profile/mohamed_fcih/edit', 'PUT', '2020-04-12 01:35:44', '2020-04-12 01:35:44', NULL),
(26, 'Viewed profile/mohamed_fcih/edit', 'Registered', 3, 'http://127.0.0.1:4200/profile/mohamed_fcih/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/profile/mohamed_fcih/edit', 'GET', '2020-04-12 01:35:46', '2020-04-12 01:35:46', NULL),
(27, 'Viewed home', 'Registered', 3, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/', 'GET', '2020-04-12 02:06:38', '2020-04-12 02:06:38', NULL),
(28, 'Logged Out', 'Registered', 3, 'http://127.0.0.1:4200/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'POST', '2020-04-12 02:09:49', '2020-04-12 02:09:49', NULL),
(29, 'Logged In', 'Registered', 1, 'http://127.0.0.1:4200/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'POST', '2020-04-12 02:10:13', '2020-04-12 02:10:13', NULL),
(30, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 02:10:14', '2020-04-12 02:10:14', NULL),
(31, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:4200/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/roles', 'GET', '2020-04-12 02:11:10', '2020-04-12 02:11:10', NULL),
(32, 'Viewed themes', 'Registered', 1, 'http://127.0.0.1:4200/themes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/users/create', 'GET', '2020-04-12 02:11:20', '2020-04-12 02:11:20', NULL),
(33, 'Viewed logs', 'Registered', 1, 'http://127.0.0.1:4200/logs', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/users/create', 'GET', '2020-04-12 02:11:43', '2020-04-12 02:11:43', NULL),
(34, 'Viewed routes', 'Registered', 1, 'http://127.0.0.1:4200/routes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/users/create', 'GET', '2020-04-12 02:12:03', '2020-04-12 02:12:03', NULL),
(35, 'Viewed active-users', 'Registered', 1, 'http://127.0.0.1:4200/active-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/users/create', 'GET', '2020-04-12 02:12:23', '2020-04-12 02:12:23', NULL),
(36, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/', 'GET', '2020-04-12 02:12:40', '2020-04-12 02:12:40', NULL),
(37, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/', 'GET', '2020-04-12 02:33:24', '2020-04-12 02:33:24', NULL),
(38, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/', 'GET', '2020-04-12 02:35:28', '2020-04-12 02:35:28', NULL),
(39, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/', 'GET', '2020-04-12 02:37:25', '2020-04-12 02:37:25', NULL),
(40, 'Logged In', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/', 'GET', '2020-04-12 13:44:13', '2020-04-12 13:44:13', NULL),
(41, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/', 'GET', '2020-04-12 13:44:13', '2020-04-12 13:44:13', NULL),
(42, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/', 'GET', '2020-04-12 13:44:33', '2020-04-12 13:44:33', NULL),
(43, 'Viewed logout', 'Registered', 1, 'http://127.0.0.1:4200/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 13:44:45', '2020-04-12 13:44:45', NULL),
(44, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:4200/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 13:44:45', '2020-04-12 13:44:45', NULL),
(45, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:4200/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'POST', '2020-04-12 14:21:37', '2020-04-12 14:21:37', NULL),
(46, 'Logged In', 'Registered', 1, 'http://127.0.0.1:4200/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'POST', '2020-04-12 14:21:48', '2020-04-12 14:21:48', NULL),
(47, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 14:21:49', '2020-04-12 14:21:49', NULL),
(48, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 14:24:09', '2020-04-12 14:24:09', NULL),
(49, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 14:24:39', '2020-04-12 14:24:39', NULL),
(50, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 14:26:09', '2020-04-12 14:26:09', NULL),
(51, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 14:26:25', '2020-04-12 14:26:25', NULL),
(52, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 14:34:12', '2020-04-12 14:34:12', NULL),
(53, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 14:34:51', '2020-04-12 14:34:51', NULL),
(54, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 14:37:22', '2020-04-12 14:37:22', NULL),
(55, 'Viewed logout', 'Registered', 1, 'http://127.0.0.1:4200/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 14:37:36', '2020-04-12 14:37:36', NULL),
(56, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:4200/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 14:37:37', '2020-04-12 14:37:37', NULL),
(57, 'Logged In', 'Registered', 1, 'http://127.0.0.1:4200/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'POST', '2020-04-12 14:37:55', '2020-04-12 14:37:55', NULL),
(58, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 14:37:56', '2020-04-12 14:37:56', NULL),
(59, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 14:40:53', '2020-04-12 14:40:53', NULL),
(60, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/', 'GET', '2020-04-12 14:41:05', '2020-04-12 14:41:05', NULL),
(61, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/', 'GET', '2020-04-12 14:43:12', '2020-04-12 14:43:12', NULL),
(62, 'Viewed logout', 'Registered', 1, 'http://127.0.0.1:4200/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 14:43:45', '2020-04-12 14:43:45', NULL),
(63, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:4200/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 14:43:46', '2020-04-12 14:43:46', NULL),
(64, 'Logged In', 'Registered', 1, 'http://127.0.0.1:4200/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'POST', '2020-04-12 14:44:02', '2020-04-12 14:44:02', NULL),
(65, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 14:44:03', '2020-04-12 14:44:03', NULL),
(66, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 14:46:01', '2020-04-12 14:46:01', NULL),
(67, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 14:47:43', '2020-04-12 14:47:43', NULL),
(68, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 14:47:50', '2020-04-12 14:47:50', NULL),
(69, 'Viewed logout', 'Registered', 1, 'http://127.0.0.1:4200/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 14:47:58', '2020-04-12 14:47:58', NULL),
(70, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:4200/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 14:47:59', '2020-04-12 14:47:59', NULL),
(71, 'Logged In', 'Registered', 1, 'http://127.0.0.1:4200/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'POST', '2020-04-12 14:48:16', '2020-04-12 14:48:16', NULL),
(72, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 14:48:17', '2020-04-12 14:48:17', NULL),
(73, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 14:49:51', '2020-04-12 14:49:51', NULL),
(74, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 15:25:49', '2020-04-12 15:25:49', NULL),
(75, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 15:28:54', '2020-04-12 15:28:54', NULL),
(76, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 15:33:26', '2020-04-12 15:33:26', NULL),
(77, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 15:38:44', '2020-04-12 15:38:44', NULL),
(78, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 15:39:18', '2020-04-12 15:39:18', NULL),
(79, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 15:40:05', '2020-04-12 15:40:05', NULL),
(80, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 15:40:19', '2020-04-12 15:40:19', NULL),
(81, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 15:44:44', '2020-04-12 15:44:44', NULL),
(82, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 15:46:25', '2020-04-12 15:46:25', NULL),
(83, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 15:47:03', '2020-04-12 15:47:03', NULL),
(84, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/', 'GET', '2020-04-12 15:55:16', '2020-04-12 15:55:16', NULL),
(85, 'Viewed logout', 'Registered', 1, 'http://127.0.0.1:4200/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 15:55:24', '2020-04-12 15:55:24', NULL),
(86, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:4200/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 15:55:24', '2020-04-12 15:55:24', NULL),
(87, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:4200/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'POST', '2020-04-12 15:55:44', '2020-04-12 15:55:44', NULL),
(88, 'Logged In', 'Registered', 1, 'http://127.0.0.1:4200/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'POST', '2020-04-12 15:55:55', '2020-04-12 15:55:55', NULL),
(89, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 15:55:56', '2020-04-12 15:55:56', NULL),
(90, 'Logged In', 'Registered', 1, 'http://127.0.0.1:4200', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'GET', '2020-04-12 18:05:28', '2020-04-12 18:05:28', NULL),
(91, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/', 'GET', '2020-04-12 18:34:24', '2020-04-12 18:34:24', NULL),
(92, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2020-04-12 19:05:51', '2020-04-12 19:05:51', NULL),
(93, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/', 'GET', '2020-04-12 20:46:00', '2020-04-12 20:46:00', NULL),
(94, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/', 'GET', '2020-04-12 20:59:00', '2020-04-12 20:59:00', NULL),
(95, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/', 'GET', '2020-04-12 20:59:49', '2020-04-12 20:59:49', NULL),
(96, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/', 'GET', '2020-04-12 21:10:49', '2020-04-12 21:10:49', NULL),
(97, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/', 'GET', '2020-04-12 21:11:14', '2020-04-12 21:11:14', NULL),
(98, 'Viewed routes', 'Registered', 1, 'http://127.0.0.1:4200/routes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 21:13:13', '2020-04-12 21:13:13', NULL),
(99, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:4200/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 21:15:16', '2020-04-12 21:15:16', NULL),
(100, 'Viewed activity', 'Registered', 1, 'http://127.0.0.1:4200/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 21:16:35', '2020-04-12 21:16:35', NULL),
(101, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 21:21:52', '2020-04-12 21:21:52', NULL),
(102, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 21:25:22', '2020-04-12 21:25:22', NULL),
(103, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 21:25:58', '2020-04-12 21:25:58', NULL),
(104, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 21:27:38', '2020-04-12 21:27:38', NULL),
(105, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 21:28:21', '2020-04-12 21:28:21', NULL),
(106, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 21:31:00', '2020-04-12 21:31:00', NULL),
(107, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 21:33:16', '2020-04-12 21:33:16', NULL),
(108, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 21:35:20', '2020-04-12 21:35:20', NULL),
(109, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 21:35:40', '2020-04-12 21:35:40', NULL),
(110, 'Viewed old-home', 'Registered', 1, 'http://127.0.0.1:4200/old-home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 21:39:28', '2020-04-12 21:39:28', NULL),
(111, 'Viewed old-home', 'Registered', 1, 'http://127.0.0.1:4200/old-home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 21:40:15', '2020-04-12 21:40:15', NULL),
(112, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:4200/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/old-home', 'GET', '2020-04-12 21:57:30', '2020-04-12 21:57:30', NULL),
(113, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:4200/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/users', 'GET', '2020-04-12 21:57:41', '2020-04-12 21:57:41', NULL),
(114, 'Viewed activity', 'Registered', 1, 'http://127.0.0.1:4200/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/users/create', 'GET', '2020-04-12 21:57:49', '2020-04-12 21:57:49', NULL),
(115, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:4200/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/users/create', 'GET', '2020-04-12 21:58:10', '2020-04-12 21:58:10', NULL),
(116, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 21:59:30', '2020-04-12 21:59:30', NULL),
(117, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:4200/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/users', 'GET', '2020-04-12 22:00:05', '2020-04-12 22:00:05', NULL),
(118, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 22:00:53', '2020-04-12 22:00:53', NULL),
(119, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 22:01:25', '2020-04-12 22:01:25', NULL),
(120, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:4200/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'GET', '2020-04-12 22:01:33', '2020-04-12 22:01:33', NULL),
(121, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:4200/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'GET', '2020-04-12 22:01:55', '2020-04-12 22:01:55', NULL),
(122, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:4200/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/users', 'GET', '2020-04-12 22:02:13', '2020-04-12 22:02:13', NULL),
(123, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:4200/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'GET', '2020-04-12 22:02:56', '2020-04-12 22:02:56', NULL),
(124, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 22:03:09', '2020-04-12 22:03:09', NULL),
(125, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 22:04:01', '2020-04-12 22:04:01', NULL),
(126, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:4200/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 22:04:14', '2020-04-12 22:04:14', NULL),
(127, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 22:06:01', '2020-04-12 22:06:01', NULL),
(128, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:4200/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'GET', '2020-04-12 22:06:12', '2020-04-12 22:06:12', NULL),
(129, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:4200/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'GET', '2020-04-12 22:06:14', '2020-04-12 22:06:14', NULL),
(130, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:4200/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'GET', '2020-04-12 22:06:16', '2020-04-12 22:06:16', NULL),
(131, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:4200/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'GET', '2020-04-12 22:06:35', '2020-04-12 22:06:35', NULL),
(132, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:4200/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'GET', '2020-04-12 22:06:37', '2020-04-12 22:06:37', NULL),
(133, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:4200/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'GET', '2020-04-12 22:06:38', '2020-04-12 22:06:38', NULL),
(134, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:4200/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'GET', '2020-04-12 22:06:40', '2020-04-12 22:06:40', NULL),
(135, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:4200/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'GET', '2020-04-12 22:06:42', '2020-04-12 22:06:42', NULL),
(136, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:4200/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'GET', '2020-04-12 22:07:21', '2020-04-12 22:07:21', NULL),
(137, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 22:08:18', '2020-04-12 22:08:18', NULL),
(138, 'Viewed active-users', 'Registered', 1, 'http://127.0.0.1:4200/active-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'GET', '2020-04-12 22:08:29', '2020-04-12 22:08:29', NULL),
(139, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 22:10:44', '2020-04-12 22:10:44', NULL),
(140, 'Viewed themes', 'Registered', 1, 'http://127.0.0.1:4200/themes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'GET', '2020-04-12 22:10:53', '2020-04-12 22:10:53', NULL),
(141, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:4200/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/themes', 'GET', '2020-04-12 22:11:16', '2020-04-12 22:11:16', NULL),
(142, 'Viewed users/3', 'Registered', 1, 'http://127.0.0.1:4200/users/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/users', 'GET', '2020-04-12 22:11:34', '2020-04-12 22:11:34', NULL),
(143, 'Viewed blocker', 'Registered', 1, 'http://127.0.0.1:4200/blocker', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/users/create', 'GET', '2020-04-12 22:12:33', '2020-04-12 22:12:33', NULL),
(144, 'Viewed blocker/4/edit', 'Registered', 1, 'http://127.0.0.1:4200/blocker/4/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/blocker', 'GET', '2020-04-12 22:13:05', '2020-04-12 22:13:05', NULL),
(145, 'Deleted blocker/4', 'Registered', 1, 'http://127.0.0.1:4200/blocker/4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/blocker/4/edit', 'DELETE', '2020-04-12 22:14:53', '2020-04-12 22:14:53', NULL),
(146, 'Viewed blocker', 'Registered', 1, 'http://127.0.0.1:4200/blocker', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/blocker/4/edit', 'GET', '2020-04-12 22:14:56', '2020-04-12 22:14:56', NULL),
(147, 'Viewed routes', 'Registered', 1, 'http://127.0.0.1:4200/routes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/blocker', 'GET', '2020-04-12 22:15:19', '2020-04-12 22:15:19', NULL),
(148, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 22:16:15', '2020-04-12 22:16:15', NULL),
(149, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:4200/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'GET', '2020-04-12 22:16:28', '2020-04-12 22:16:28', NULL),
(150, 'Viewed users/1/edit', 'Registered', 1, 'http://127.0.0.1:4200/users/1/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/users', 'GET', '2020-04-12 22:16:43', '2020-04-12 22:16:43', NULL),
(151, 'Edited users/1', 'Registered', 1, 'http://127.0.0.1:4200/users/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/users/1/edit', 'PUT', '2020-04-12 22:17:33', '2020-04-12 22:17:33', NULL),
(152, 'Viewed users/1/edit', 'Registered', 1, 'http://127.0.0.1:4200/users/1/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/users/1/edit', 'GET', '2020-04-12 22:17:35', '2020-04-12 22:17:35', NULL);
INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(153, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:4200/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/users/1/edit', 'GET', '2020-04-12 22:18:04', '2020-04-12 22:18:04', NULL),
(154, 'Viewed users/3', 'Registered', 1, 'http://127.0.0.1:4200/users/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/users', 'GET', '2020-04-12 22:18:28', '2020-04-12 22:18:28', NULL),
(155, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 22:20:28', '2020-04-12 22:20:28', NULL),
(156, 'Viewed routes', 'Registered', 1, 'http://127.0.0.1:4200/routes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/blocker', 'GET', '2020-04-12 22:21:07', '2020-04-12 22:21:07', NULL),
(157, 'Viewed profile/Muhamed%20Adel', 'Registered', 1, 'http://127.0.0.1:4200/profile/Muhamed%20Adel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/routes', 'GET', '2020-04-12 22:21:13', '2020-04-12 22:21:13', NULL),
(158, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 22:23:09', '2020-04-12 22:23:09', NULL),
(159, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 22:26:00', '2020-04-12 22:26:00', NULL),
(160, 'Viewed profile/Muhamed%20Adel', 'Registered', 1, 'http://127.0.0.1:4200/profile/Muhamed%20Adel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'GET', '2020-04-12 22:26:08', '2020-04-12 22:26:08', NULL),
(161, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 22:28:18', '2020-04-12 22:28:18', NULL),
(162, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:4200/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'POST', '2020-04-12 22:28:38', '2020-04-12 22:28:38', NULL),
(163, 'Logged In', 'Registered', 3, 'http://127.0.0.1:4200/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'POST', '2020-04-12 22:31:28', '2020-04-12 22:31:28', NULL),
(164, 'Viewed home', 'Registered', 3, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 22:31:29', '2020-04-12 22:31:29', NULL),
(165, 'Logged Out', 'Registered', 3, 'http://127.0.0.1:4200/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'POST', '2020-04-12 22:31:45', '2020-04-12 22:31:45', NULL),
(166, 'Logged In', 'Registered', 1, 'http://127.0.0.1:4200/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'POST', '2020-04-12 22:32:37', '2020-04-12 22:32:37', NULL),
(167, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/login', 'GET', '2020-04-12 22:32:38', '2020-04-12 22:32:38', NULL),
(168, 'Viewed profile/Muhamed%20Adel', 'Registered', 1, 'http://127.0.0.1:4200/profile/Muhamed%20Adel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/home', 'GET', '2020-04-12 22:33:03', '2020-04-12 22:33:03', NULL),
(169, 'Viewed profile/Muhamed%20Adel/edit', 'Registered', 1, 'http://127.0.0.1:4200/profile/Muhamed%20Adel/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/profile/Muhamed%20Adel', 'GET', '2020-04-12 22:33:17', '2020-04-12 22:33:17', NULL),
(170, 'Viewed old-home', 'Registered', 1, 'http://127.0.0.1:4200/old-home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 23:15:20', '2020-04-12 23:15:20', NULL),
(171, 'Viewed profile/Muhamed%20Adel', 'Registered', 1, 'http://127.0.0.1:4200/profile/Muhamed%20Adel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/old-home', 'GET', '2020-04-12 23:15:28', '2020-04-12 23:15:28', NULL),
(172, 'Viewed profile/Muhamed%20Adel/edit', 'Registered', 1, 'http://127.0.0.1:4200/profile/Muhamed%20Adel/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://127.0.0.1:4200/profile/Muhamed%20Adel', 'GET', '2020-04-12 23:15:36', '2020-04-12 23:15:36', NULL),
(173, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:4200/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-12 23:15:52', '2020-04-12 23:15:52', NULL),
(174, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://127.0.0.1:8000/login', 'POST', '2020-04-13 17:51:50', '2020-04-13 17:51:50', NULL),
(175, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://localhost:8000/login', 'POST', '2020-04-13 17:54:11', '2020-04-13 17:54:11', NULL),
(176, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://localhost:8000/login', 'GET', '2020-04-13 17:54:12', '2020-04-13 17:54:12', NULL),
(177, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://127.0.0.1:8000/login', 'POST', '2020-04-13 17:54:56', '2020-04-13 17:54:56', NULL),
(178, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://127.0.0.1:8000/login', 'GET', '2020-04-13 17:54:58', '2020-04-13 17:54:58', NULL),
(179, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://127.0.0.1:8000/home', 'GET', '2020-04-13 17:55:29', '2020-04-13 17:55:29', NULL),
(180, 'Viewed users/1', 'Registered', 1, 'http://127.0.0.1:8000/users/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://127.0.0.1:8000/users', 'GET', '2020-04-13 17:55:39', '2020-04-13 17:55:39', NULL),
(181, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://127.0.0.1:8000/home', 'GET', '2020-04-13 17:55:53', '2020-04-13 17:55:53', NULL),
(182, 'Viewed profile/Muhamed%20Adel', 'Registered', 1, 'http://127.0.0.1:8000/profile/Muhamed%20Adel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://127.0.0.1:8000/home', 'GET', '2020-04-13 17:56:51', '2020-04-13 17:56:51', NULL),
(183, 'Viewed profile/Muhamed%20Adel/edit', 'Registered', 1, 'http://127.0.0.1:8000/profile/Muhamed%20Adel/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://127.0.0.1:8000/profile/Muhamed%20Adel', 'GET', '2020-04-13 17:56:57', '2020-04-13 17:56:57', NULL),
(184, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://127.0.0.1:8000/home', 'GET', '2020-04-13 17:57:39', '2020-04-13 17:57:39', NULL),
(185, 'Viewed users/2/edit', 'Registered', 1, 'http://127.0.0.1:8000/users/2/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://127.0.0.1:8000/users', 'GET', '2020-04-13 17:58:17', '2020-04-13 17:58:17', NULL),
(186, 'Viewed routes', 'Registered', 1, 'http://127.0.0.1:8000/routes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://127.0.0.1:8000/home', 'GET', '2020-04-13 18:12:14', '2020-04-13 18:12:14', NULL),
(187, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-04-13 18:14:01', '2020-04-13 18:14:01', NULL),
(188, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-04-13 18:31:01', '2020-04-13 18:31:01', NULL),
(189, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://127.0.0.1:8000/home', 'GET', '2020-04-13 18:31:18', '2020-04-13 18:31:18', NULL),
(190, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2020-04-14 17:45:55', '2020-04-14 17:45:55', NULL),
(191, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-04-14 17:45:57', '2020-04-14 17:45:57', NULL),
(192, 'Viewed profile/Muhamed%20Adel', 'Registered', 1, 'http://localhost:8000/profile/Muhamed%20Adel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/trip', 'GET', '2020-04-14 18:26:07', '2020-04-14 18:26:07', NULL),
(193, 'Viewed logout', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/trip', 'GET', '2020-04-14 18:26:20', '2020-04-14 18:26:20', NULL),
(194, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/trip', 'GET', '2020-04-14 18:26:21', '2020-04-14 18:26:21', NULL),
(195, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2020-04-14 18:37:22', '2020-04-14 18:37:22', NULL),
(196, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-04-14 18:37:24', '2020-04-14 18:37:24', NULL),
(197, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-04-14 18:56:41', '2020-04-14 18:56:41', NULL),
(198, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/home', 'POST', '2020-04-14 18:56:55', '2020-04-14 18:56:55', NULL),
(199, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2020-04-14 19:17:50', '2020-04-14 19:17:50', NULL),
(200, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-04-14 19:17:51', '2020-04-14 19:17:51', NULL),
(201, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-04-14 19:20:59', '2020-04-14 19:20:59', NULL),
(202, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-04-14 19:25:28', '2020-04-14 19:25:28', NULL),
(203, 'Viewed routes', 'Registered', 1, 'http://localhost:8000/routes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-04-14 19:29:20', '2020-04-14 19:29:20', NULL),
(204, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-04-14 19:29:32', '2020-04-14 19:29:32', NULL),
(205, 'Viewed routes', 'Registered', 1, 'http://localhost:8000/routes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-04-14 19:31:50', '2020-04-14 19:31:50', NULL),
(206, 'Viewed routes', 'Registered', 1, 'http://localhost:8000/routes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-04-14 19:36:31', '2020-04-14 19:36:31', NULL),
(207, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-04-14 19:40:01', '2020-04-14 19:40:01', NULL),
(208, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/trip', 'GET', '2020-04-14 19:42:32', '2020-04-14 19:42:32', NULL),
(209, 'Viewed profile/Muhamed%20Adel', 'Registered', 1, 'http://localhost:8000/profile/Muhamed%20Adel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/trip', 'GET', '2020-04-14 19:43:19', '2020-04-14 19:43:19', NULL),
(210, 'Viewed profile/Muhamed%20Adel', 'Registered', 1, 'http://localhost:8000/profile/Muhamed%20Adel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/trip', 'GET', '2020-04-14 19:46:24', '2020-04-14 19:46:24', NULL),
(211, 'Viewed logout', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/trip', 'GET', '2020-04-14 19:48:13', '2020-04-14 19:48:13', NULL),
(212, 'Logged Out', 'Registered', 1, 'http://localhost:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/trip', 'GET', '2020-04-14 19:48:14', '2020-04-14 19:48:14', NULL),
(213, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'POST', '2020-04-14 19:48:28', '2020-04-14 19:48:28', NULL),
(214, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/login', 'GET', '2020-04-14 19:48:29', '2020-04-14 19:48:29', NULL),
(215, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/trip', 'GET', '2020-04-14 19:48:53', '2020-04-14 19:48:53', NULL),
(216, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/trip', 'GET', '2020-04-14 19:51:55', '2020-04-14 19:51:55', NULL),
(217, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/trip', 'GET', '2020-04-14 19:53:35', '2020-04-14 19:53:35', NULL),
(218, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/trip', 'GET', '2020-04-14 19:54:37', '2020-04-14 19:54:37', NULL),
(219, 'Logged In', 'Registered', 1, 'http://localhost:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-04-15 13:20:00', '2020-04-15 13:20:00', NULL),
(220, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', 'http://localhost:8000/trip', 'GET', '2020-04-15 13:20:23', '2020-04-15 13:20:23', NULL),
(221, 'Logged In', 'Registered', 1, 'http://localhost:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://localhost:8000/login', 'POST', '2020-04-16 01:36:23', '2020-04-16 01:36:23', NULL),
(222, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://localhost:8000/login', 'GET', '2020-04-16 01:36:24', '2020-04-16 01:36:24', NULL),
(223, 'Viewed profile/Muhamed%20Adel', 'Registered', 1, 'http://localhost:8000/profile/Muhamed%20Adel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://localhost:8000/home', 'GET', '2020-04-16 01:36:42', '2020-04-16 01:36:42', NULL),
(224, 'Logged In', 'Registered', 1, 'http://localhost:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-04-16 01:46:13', '2020-04-16 01:46:13', NULL),
(225, 'Logged In', 'Registered', 1, 'http://localhost:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-04-16 01:46:15', '2020-04-16 01:46:15', NULL),
(226, 'Viewed routes', 'Registered', 1, 'http://localhost:8000/routes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', NULL, 'GET', '2020-04-16 02:42:03', '2020-04-16 02:42:03', NULL),
(227, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://localhost:8000/trip', 'GET', '2020-04-16 03:42:34', '2020-04-16 03:42:34', NULL),
(228, 'Viewed home', 'Registered', 1, 'http://localhost:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9,ar;q=0.8,fr;q=0.7', 'http://localhost:8000/home', 'GET', '2020-04-16 03:42:46', '2020-04-16 03:42:46', NULL),
(229, 'Logged In', 'Registered', 1, 'http://localhost:8000/trip/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 'en-US,en;q=0.5', NULL, 'GET', '2020-04-16 03:51:25', '2020-04-16 03:51:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` int(250) NOT NULL,
  `phone` int(30) NOT NULL,
  `longitude` int(150) NOT NULL,
  `latitude` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(3, '2016_01_15_105324_create_roles_table', 1),
(4, '2016_01_15_114412_create_role_user_table', 1),
(5, '2016_01_26_115212_create_permissions_table', 1),
(6, '2016_01_26_115523_create_permission_role_table', 1),
(7, '2016_02_09_132439_create_permission_user_table', 1),
(8, '2017_03_09_082449_create_social_logins_table', 1),
(9, '2017_03_09_082526_create_activations_table', 1),
(10, '2017_03_20_213554_create_themes_table', 1),
(11, '2017_03_21_042918_create_profiles_table', 1),
(12, '2017_11_04_103444_create_laravel_logger_activity_table', 1),
(13, '2017_12_09_070937_create_two_step_auth_table', 1),
(14, '2019_02_19_032636_create_laravel_blocker_types_table', 1),
(15, '2019_02_19_045158_create_laravel_blocker_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `model`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Can View Users', 'view.users', 'Can view users', 'Permission', '2020-04-11 23:50:46', '2020-04-11 23:50:46', NULL),
(2, 'Can Create Users', 'create.users', 'Can create new users', 'Permission', '2020-04-11 23:50:46', '2020-04-11 23:50:46', NULL),
(3, 'Can Edit Users', 'edit.users', 'Can edit users', 'Permission', '2020-04-11 23:50:46', '2020-04-11 23:50:46', NULL),
(4, 'Can Delete Users', 'delete.users', 'Can delete users', 'Permission', '2020-04-11 23:50:47', '2020-04-11 23:50:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2020-04-11 23:50:47', '2020-04-11 23:50:47', NULL),
(2, 2, 1, '2020-04-11 23:50:47', '2020-04-11 23:50:47', NULL),
(3, 3, 1, '2020-04-11 23:50:47', '2020-04-11 23:50:47', NULL),
(4, 4, 1, '2020-04-11 23:50:47', '2020-04-11 23:50:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `theme_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `twitter_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `theme_id`, `location`, `bio`, `twitter_username`, `github_username`, `avatar`, `avatar_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, '2020-04-11 23:50:52', '2020-04-11 23:50:52'),
(2, 2, 1, NULL, NULL, NULL, NULL, NULL, 0, '2020-04-11 23:50:52', '2020-04-11 23:50:52'),
(3, 3, 1, NULL, NULL, NULL, NULL, NULL, 0, '2020-04-12 03:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `level`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin', 'Admin Role', 5, '2020-04-11 23:50:47', '2020-04-11 23:50:47', NULL),
(2, 'User', 'user', 'User Role', 1, '2020-04-11 23:50:47', '2020-04-11 23:50:47', NULL),
(3, 'Unverified', 'unverified', 'Unverified Role', 0, '2020-04-11 23:50:47', '2020-04-11 23:50:47', NULL),
(4, 'Guide ', 'guide', 'Guide Role', 4, '2020-04-13 02:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 2, 2, '2020-04-11 23:50:53', '2020-04-11 23:50:53', NULL),
(3, 3, 3, '2020-04-12 00:37:26', '2020-04-12 00:37:26', NULL),
(4, 1, 1, '2020-04-12 22:17:33', '2020-04-12 22:17:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `check_in_date` datetime NOT NULL,
  `check_out_date` datetime NOT NULL,
  `days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `check_in_date`, `check_out_date`, `days`) VALUES
(1, '2020-04-01 00:00:00', '2020-04-14 00:00:00', 10);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `data` text NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `social_logins`
--

CREATE TABLE `social_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `link`, `notes`, `status`, `taggable_type`, `taggable_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Default', 'null', NULL, 1, 'theme', 1, '2020-04-11 23:50:47', '2020-04-11 23:50:49', NULL),
(2, 'Darkly', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/darkly/bootstrap.min.css', NULL, 1, 'theme', 2, '2020-04-11 23:50:48', '2020-04-11 23:50:49', NULL),
(3, 'Cyborg', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cyborg/bootstrap.min.css', NULL, 1, 'theme', 3, '2020-04-11 23:50:48', '2020-04-11 23:50:50', NULL),
(4, 'Cosmo', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cosmo/bootstrap.min.css', NULL, 1, 'theme', 4, '2020-04-11 23:50:48', '2020-04-11 23:50:50', NULL),
(5, 'Cerulean', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cerulean/bootstrap.min.css', NULL, 1, 'theme', 5, '2020-04-11 23:50:48', '2020-04-11 23:50:50', NULL),
(6, 'Flatly', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/flatly/bootstrap.min.css', NULL, 1, 'theme', 6, '2020-04-11 23:50:48', '2020-04-11 23:50:50', NULL),
(7, 'Journal', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/journal/bootstrap.min.css', NULL, 1, 'theme', 7, '2020-04-11 23:50:48', '2020-04-11 23:50:50', NULL),
(8, 'Lumen', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/lumen/bootstrap.min.css', NULL, 1, 'theme', 8, '2020-04-11 23:50:48', '2020-04-11 23:50:50', NULL),
(9, 'Paper', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/paper/bootstrap.min.css', NULL, 1, 'theme', 9, '2020-04-11 23:50:48', '2020-04-11 23:50:50', NULL),
(10, 'Readable', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/readable/bootstrap.min.css', NULL, 1, 'theme', 10, '2020-04-11 23:50:48', '2020-04-11 23:50:50', NULL),
(11, 'Sandstone', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css', NULL, 1, 'theme', 11, '2020-04-11 23:50:48', '2020-04-11 23:50:50', NULL),
(12, 'Simplex', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/simplex/bootstrap.min.css', NULL, 1, 'theme', 12, '2020-04-11 23:50:48', '2020-04-11 23:50:50', NULL),
(13, 'Slate', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/slate/bootstrap.min.css', NULL, 1, 'theme', 13, '2020-04-11 23:50:48', '2020-04-11 23:50:50', NULL),
(14, 'Spacelab', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/spacelab/bootstrap.min.css', NULL, 1, 'theme', 14, '2020-04-11 23:50:48', '2020-04-11 23:50:50', NULL),
(15, 'Superhero', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/superhero/bootstrap.min.css', NULL, 1, 'theme', 15, '2020-04-11 23:50:49', '2020-04-11 23:50:50', NULL),
(16, 'United', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/united/bootstrap.min.css', NULL, 1, 'theme', 16, '2020-04-11 23:50:49', '2020-04-11 23:50:50', NULL),
(17, 'Yeti', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/yeti/bootstrap.min.css', NULL, 1, 'theme', 17, '2020-04-11 23:50:49', '2020-04-11 23:50:50', NULL),
(18, 'Bootstrap 4.3.1', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css', NULL, 1, 'theme', 18, '2020-04-11 23:50:49', '2020-04-11 23:50:51', NULL),
(19, 'Materialize', 'https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.css', NULL, 1, 'theme', 19, '2020-04-11 23:50:49', '2020-04-11 23:50:51', NULL),
(20, 'Material Design for Bootstrap (MDB) 4.8.7', 'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.7/css/mdb.css', NULL, 1, 'theme', 20, '2020-04-11 23:50:49', '2020-04-11 23:50:51', NULL),
(21, 'mdbootstrap', 'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.3.1/css/mdb.min.css', NULL, 1, 'theme', 21, '2020-04-11 23:50:49', '2020-04-11 23:50:51', NULL),
(22, 'Litera', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/litera/bootstrap.min.css', NULL, 1, 'theme', 22, '2020-04-11 23:50:49', '2020-04-11 23:50:51', NULL),
(23, 'Lux', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/lux/bootstrap.min.css', NULL, 1, 'theme', 23, '2020-04-11 23:50:49', '2020-04-11 23:50:51', NULL),
(24, 'Materia', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/materia/bootstrap.min.css', NULL, 1, 'theme', 24, '2020-04-11 23:50:49', '2020-04-11 23:50:51', NULL),
(25, 'Minty', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/minty/bootstrap.min.css', NULL, 1, 'theme', 25, '2020-04-11 23:50:49', '2020-04-11 23:50:51', NULL),
(26, 'Pulse', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/pulse/bootstrap.min.css', NULL, 1, 'theme', 26, '2020-04-11 23:50:49', '2020-04-11 23:50:51', NULL),
(27, 'Sketchy', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/sketchy/bootstrap.min.css', NULL, 1, 'theme', 27, '2020-04-11 23:50:49', '2020-04-11 23:50:51', NULL),
(28, 'Solar', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/solar/bootstrap.min.css', NULL, 1, 'theme', 28, '2020-04-11 23:50:49', '2020-04-11 23:50:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tourism_type`
--

CREATE TABLE `tourism_type` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tourism_type`
--

INSERT INTO `tourism_type` (`id`, `type`) VALUES
(1, 'Histroical'),
(2, 'Medical');

-- --------------------------------------------------------

--
-- Table structure for table `tour_plan`
--

CREATE TABLE `tour_plan` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `schedule_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour_plan`
--

INSERT INTO `tour_plan` (`id`, `name`, `schedule_id`) VALUES
(1, 'Basic', 1),
(2, 'Pro', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `guide_id` int(11) NOT NULL,
  `trip_cover` text NOT NULL,
  `days` int(11) NOT NULL,
  `trip_plan_id` int(11) NOT NULL,
  `tourism_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`id`, `name`, `description`, `guide_id`, `trip_cover`, `days`, `trip_plan_id`, `tourism_type_id`) VALUES
(4, 'Paris', 'sdknlsa', 1, 'fdldf', 10, 1, 1),
(7, 'Cairo', 'sadkdn', 2, 'sajld', 20, 2, 1),
(8, 'Melano', 'l;zlsand', 2, 'jsdsodjo', 20, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `trip_event`
--

CREATE TABLE `trip_event` (
  `id` int(11) NOT NULL,
  `event` text NOT NULL,
  `date` datetime NOT NULL,
  `location_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signup_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_confirmation_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_sm_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `activated`, `token`, `signup_ip_address`, `signup_confirmation_ip_address`, `signup_sm_ip_address`, `admin_ip_address`, `updated_ip_address`, `deleted_ip_address`, `created_at`, `updated_at`, `deleted_at`, `user_type`) VALUES
(1, 'Muhamed Adel', 'mohamed', 'adel', 'admin@admin.com', NULL, '$2y$10$qFd/ZDKySL7EPUQj4EdNl.d9r6Fu33oK8gol.0pd5oViyTF9w0CgW', 'RjaruD8S2OKjZjfxkvtygWpobn7KxQeaJTPprmKvNbvl9uikXMj5TF9w56U4', 1, 'fgoNHBgx4jNkswpQSL8OlwiZPZs6u8m42wF2cSMGY1xbgUS2mcDKzOe8tHPBdMVL', NULL, '104.141.79.49', NULL, '74.203.139.78', '0.0.0.0', NULL, '2020-04-11 23:50:52', '2020-04-12 22:17:34', NULL, 2),
(2, 'antonetta23', 'Esther', 'Abernathy', 'user@user.com', NULL, '$2y$10$TnTTmvEty/O3jQ0.BaCKpuE0IPVbvQPAg.BQQXYKD1nR2ehY4xhSm', NULL, 1, 'DMquVwSDDfjTLXqcKmvdpVG8APBEqVSZFMjLVEuCao74NzcKGRMkPlwZKfjMmDyn', '150.248.213.253', '136.135.42.151', NULL, NULL, NULL, NULL, '2020-04-11 23:50:52', '2020-04-11 23:50:52', NULL, 0),
(3, 'mohamed_fcih', 'mohamed', 'ahmed', 'mohamedadel2015ar@gmail.com', NULL, '$2y$10$FcSltFbQenogg8tNj.17rObYj056kcDXC/32cKhkRbKQaiaKxWTke', 'bQBdYN6Jo8birDXh4s1NU3vg3mY2qSIsI2I15f29N1mq6zzI7D3A5BzxpiE2', 1, 'p3SftHwyS0ibspbtZvEIUG1wYt6tnB4HX7JMv44HGceVNFbdoT5DwCqRtWv43g3p', '0.0.0.0', NULL, NULL, NULL, '0.0.0.0', NULL, '2020-04-12 00:37:26', '2020-04-12 01:35:45', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user types`
--

CREATE TABLE `user types` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user types`
--

INSERT INTO `user types` (`id`, `type`) VALUES
(1, 'tourist'),
(2, 'guide'),
(3, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide`
--
ALTER TABLE `guide`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_pk` (`user_id`);

--
-- Indexes for table `laravel2step`
--
ALTER TABLE `laravel2step`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laravel2step_userid_index` (`userId`);

--
-- Indexes for table `laravel_blocker`
--
ALTER TABLE `laravel_blocker`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `laravel_blocker_value_unique` (`value`),
  ADD KEY `laravel_blocker_typeid_index` (`typeId`),
  ADD KEY `laravel_blocker_userid_index` (`userId`);

--
-- Indexes for table `laravel_blocker_types`
--
ALTER TABLE `laravel_blocker_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `laravel_blocker_types_slug_unique` (`slug`);

--
-- Indexes for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_theme_id_foreign` (`theme_id`),
  ADD KEY `profiles_user_id_index` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_logins_user_id_index` (`user_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `themes_name_unique` (`name`),
  ADD UNIQUE KEY `themes_link_unique` (`link`),
  ADD KEY `themes_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`),
  ADD KEY `themes_id_index` (`id`);

--
-- Indexes for table `tourism_type`
--
ALTER TABLE `tourism_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_plan`
--
ALTER TABLE `tour_plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trip_program_schedule` (`schedule_id`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guide_id` (`guide_id`) USING BTREE,
  ADD KEY `tourism_type_id` (`tourism_type_id`) USING BTREE,
  ADD KEY `trip_plan_id` (`trip_plan_id`) USING BTREE;

--
-- Indexes for table `trip_event`
--
ALTER TABLE `trip_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_location` (`location_id`),
  ADD KEY `event_schedule` (`schedule_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user types`
--
ALTER TABLE `user types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guide`
--
ALTER TABLE `guide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `laravel2step`
--
ALTER TABLE `laravel2step`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laravel_blocker`
--
ALTER TABLE `laravel_blocker`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `laravel_blocker_types`
--
ALTER TABLE `laravel_blocker_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_logins`
--
ALTER TABLE `social_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tourism_type`
--
ALTER TABLE `tourism_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tour_plan`
--
ALTER TABLE `tour_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `trip_event`
--
ALTER TABLE `trip_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user types`
--
ALTER TABLE `user types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activations`
--
ALTER TABLE `activations`
  ADD CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guide`
--
ALTER TABLE `guide`
  ADD CONSTRAINT `user_id_pk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `laravel2step`
--
ALTER TABLE `laravel2step`
  ADD CONSTRAINT `laravel2step_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `laravel_blocker`
--
ALTER TABLE `laravel_blocker`
  ADD CONSTRAINT `laravel_blocker_typeid_foreign` FOREIGN KEY (`typeId`) REFERENCES `laravel_blocker_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`),
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD CONSTRAINT `social_logins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tour_plan`
--
ALTER TABLE `tour_plan`
  ADD CONSTRAINT `trip_program_schedule` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trip`
--
ALTER TABLE `trip`
  ADD CONSTRAINT `guide_id` FOREIGN KEY (`guide_id`) REFERENCES `guide` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tourism_type_id` FOREIGN KEY (`tourism_type_id`) REFERENCES `tourism_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `trip_plan_id` FOREIGN KEY (`trip_plan_id`) REFERENCES `tour_plan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trip_event`
--
ALTER TABLE `trip_event`
  ADD CONSTRAINT `event_location` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_schedule` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`) ON DELETE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'GP_database', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"laravelauth\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"laravelauth\",\"table\":\"users\"},{\"db\":\"laravelauth\",\"table\":\"guide\"},{\"db\":\"laravelauth\",\"table\":\"profiles\"},{\"db\":\"laravelauth\",\"table\":\"trip\"},{\"db\":\"laravelauth\",\"table\":\"tour_plan\"},{\"db\":\"laravelauth\",\"table\":\"schedule\"},{\"db\":\"laravelauth\",\"table\":\"location\"},{\"db\":\"laravelauth\",\"table\":\"session\"},{\"db\":\"laravelauth\",\"table\":\"role_user\"},{\"db\":\"laravelauth\",\"table\":\"roles\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-04-11 04:34:47', '{\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
