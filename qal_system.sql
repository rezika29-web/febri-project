-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Mar 2026 pada 17.08
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qal_system`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `action` varchar(120) NOT NULL,
  `context` text DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `context`, `created_at`) VALUES
(1, 123, 'view_dashboard', '{\"status\":null}', '2026-02-23 08:15:29'),
(2, 123, 'view_dashboard', '{\"status\":\"revision_requested\"}', '2026-02-23 08:15:47'),
(3, 123, 'view_dashboard', '{\"status\":\"draft\"}', '2026-02-23 08:15:51'),
(4, 123, 'view_dashboard', '{\"status\":null}', '2026-02-23 08:15:58'),
(5, 123, 'view_dashboard', '{\"status\":null}', '2026-02-23 08:17:26'),
(6, 123, 'view_dashboard', '{\"status\":null}', '2026-02-23 08:17:28'),
(7, 123, 'create_qal', '{\"document_id\":1}', '2026-02-23 08:18:04'),
(8, 123, 'submit_qal', '{\"document_id\":1}', '2026-02-23 08:18:08'),
(9, 123, 'view_dashboard', '{\"status\":\"draft\"}', '2026-02-23 08:18:14'),
(10, 123, 'view_dashboard', '{\"status\":\"revision_requested\"}', '2026-02-23 08:18:18'),
(11, 123, 'update_profile', '{\"user_id\":\"123\"}', '2026-02-23 08:18:27'),
(12, 123, 'view_dashboard', '{\"status\":null}', '2026-02-23 08:18:37'),
(13, 123, 'view_dashboard', '{\"status\":null}', '2026-02-23 08:57:42'),
(14, 123, 'view_dashboard', '{\"status\":null}', '2026-02-23 09:01:24'),
(15, 123, 'view_dashboard', '{\"status\":null}', '2026-02-23 09:01:42'),
(16, 123, 'view_dashboard', '{\"status\":null}', '2026-02-23 09:01:44'),
(17, 123, 'create_qal', '{\"document_id\":2}', '2026-02-23 09:02:14'),
(18, 123, 'submit_qal', '{\"document_id\":2}', '2026-02-23 09:02:19'),
(19, 123, 'view_dashboard', '{\"status\":\"draft\"}', '2026-02-23 09:02:24'),
(20, 126, 'view_dashboard', '{\"status\":null}', '2026-02-23 09:19:47'),
(21, 126, 'view_dashboard', '{\"status\":null}', '2026-02-23 09:19:58'),
(22, 125, 'view_dashboard', '{\"status\":null}', '2026-02-23 09:22:44'),
(23, 125, 'view_dashboard', '{\"status\":null}', '2026-02-23 09:23:04'),
(24, 125, 'view_dashboard', '{\"status\":\"submitted\"}', '2026-02-23 09:23:17'),
(25, 125, 'view_dashboard', '{\"status\":null}', '2026-02-23 09:24:01'),
(26, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 05:46:00'),
(27, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 05:46:04'),
(28, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 05:47:49'),
(29, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 05:49:48'),
(30, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 05:51:26'),
(31, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 13:59:24'),
(32, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 14:01:46'),
(33, 123, 'create_qal', '{\"document_id\":3}', '2026-02-25 14:08:08'),
(34, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 14:14:58'),
(35, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 14:17:12'),
(36, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 14:18:16'),
(37, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 14:25:14'),
(38, 123, 'create_qal', '{\"document_id\":4}', '2026-02-25 14:38:23'),
(39, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 14:39:29'),
(40, 123, 'create_qal', '{\"document_id\":5}', '2026-02-25 14:40:19'),
(41, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 14:40:31'),
(42, 123, 'view_dashboard', '{\"status\":\"draft\"}', '2026-02-25 14:44:27'),
(43, 123, 'view_dashboard', '{\"status\":\"revision_requested\"}', '2026-02-25 14:44:32'),
(44, 123, 'view_dashboard', '{\"status\":\"draft\"}', '2026-02-25 14:44:34'),
(45, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 14:44:39'),
(46, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 14:45:01'),
(47, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-25 14:46:29'),
(48, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-25 14:46:36'),
(49, 1125, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-02-25 14:46:39'),
(50, 1125, 'view_dashboard', '{\"status\":\"pc_signed\"}', '2026-02-25 14:46:43'),
(51, 1125, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-02-25 14:46:45'),
(52, 1125, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-02-25 14:47:13'),
(53, 1125, 'view_dashboard', '{\"status\":\"pc_signed\"}', '2026-02-25 14:47:15'),
(54, 1125, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-02-25 14:47:17'),
(55, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-25 14:47:24'),
(56, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-25 14:47:25'),
(57, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-25 14:54:38'),
(58, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-25 15:01:51'),
(59, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 15:03:08'),
(60, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 15:03:20'),
(61, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 15:03:23'),
(62, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-25 15:04:13'),
(63, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 15:04:17'),
(64, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 15:13:01'),
(65, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 15:13:47'),
(66, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 15:14:19'),
(67, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 15:14:49'),
(68, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-25 15:15:03'),
(69, 1125, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-02-25 15:15:31'),
(70, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-25 15:15:37'),
(71, 123, 'submit_qal', '{\"document_id\":5}', '2026-02-25 15:34:11'),
(72, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 15:34:18'),
(73, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 15:34:21'),
(74, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-25 15:34:33'),
(75, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-25 15:34:36'),
(76, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-25 15:38:34'),
(77, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-25 15:38:36'),
(78, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-25 15:39:36'),
(79, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 15:39:40'),
(80, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-25 15:40:26'),
(81, 1125, 'review_qal', '{\"document_id\":2,\"action\":\"approve\"}', '2026-02-25 16:02:13'),
(82, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-25 16:02:22'),
(83, 1126, 'view_dashboard', '{\"status\":null}', '2026-02-25 16:02:54'),
(84, 1126, 'view_dashboard', '{\"status\":null}', '2026-02-25 16:03:32'),
(85, 1126, 'owner_approve_qal', '{\"document_id\":2}', '2026-02-25 16:04:24'),
(86, 1126, 'view_dashboard', '{\"status\":null}', '2026-02-25 16:04:29'),
(87, 123, 'view_dashboard', '{\"status\":null}', '2026-02-25 16:04:34'),
(88, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 01:58:50'),
(89, 1125, 'review_qal', '{\"document_id\":1,\"action\":\"revision\"}', '2026-02-26 01:59:24'),
(90, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 01:59:36'),
(91, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 01:59:56'),
(92, 123, 'update_qal', '{\"document_id\":1}', '2026-02-26 02:00:16'),
(93, 123, 'submit_qal', '{\"document_id\":1}', '2026-02-26 02:00:42'),
(94, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:00:48'),
(95, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:00:51'),
(96, 1125, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-02-26 02:01:43'),
(97, 1125, 'view_dashboard', '{\"status\":\"pc_signed\"}', '2026-02-26 02:01:45'),
(98, 1125, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-02-26 02:01:48'),
(99, 1125, 'view_dashboard', '{\"status\":\"pc_signed\"}', '2026-02-26 02:01:49'),
(100, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:01:54'),
(101, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:01:59'),
(102, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:02:11'),
(103, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:02:16'),
(104, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:02:22'),
(105, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:20:27'),
(106, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:21:57'),
(107, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:24:56'),
(108, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:25:57'),
(109, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:26:29'),
(110, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:50:03'),
(111, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:50:05'),
(112, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:50:24'),
(113, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:50:26'),
(114, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:50:45'),
(115, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:51:12'),
(116, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:51:25'),
(117, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:51:37'),
(118, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:51:47'),
(119, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:51:54'),
(120, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:52:13'),
(121, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:52:17'),
(122, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:53:33'),
(123, 1125, 'review_qal', '{\"document_id\":1,\"action\":\"approve\"}', '2026-02-26 02:53:45'),
(124, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:53:51'),
(125, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:55:21'),
(126, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:55:30'),
(127, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:56:22'),
(128, 1125, 'view_dashboard', '{\"status\":\"submitted\"}', '2026-02-26 02:56:25'),
(129, 1125, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-02-26 02:56:27'),
(130, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:56:31'),
(131, 1125, 'view_dashboard', '{\"status\":\"submitted\"}', '2026-02-26 02:56:33'),
(132, 1125, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-02-26 02:56:35'),
(133, 1125, 'view_dashboard', '{\"status\":\"submitted\"}', '2026-02-26 02:56:37'),
(134, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:56:38'),
(135, 1125, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-02-26 02:57:47'),
(136, 1125, 'view_dashboard', '{\"status\":\"submitted\"}', '2026-02-26 02:57:53'),
(137, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:59:03'),
(138, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:59:06'),
(139, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:59:14'),
(140, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 02:59:31'),
(141, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:00:05'),
(142, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:00:13'),
(143, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:01:29'),
(144, 1125, 'view_dashboard', '{\"status\":\"submitted\"}', '2026-02-26 03:01:32'),
(145, 1125, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-02-26 03:01:34'),
(146, 1125, 'view_dashboard', '{\"status\":\"submitted\"}', '2026-02-26 03:01:35'),
(147, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:01:38'),
(148, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:01:42'),
(149, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:01:44'),
(150, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:02:55'),
(151, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:03:19'),
(152, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:04:16'),
(153, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:04:18'),
(154, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:04:32'),
(155, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:04:40'),
(156, 123, 'update_qal', '{\"document_id\":4}', '2026-02-26 03:04:49'),
(157, 123, 'submit_qal', '{\"document_id\":4}', '2026-02-26 03:04:54'),
(158, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:04:58'),
(159, 1125, 'view_dashboard', '{\"status\":\"submitted\"}', '2026-02-26 03:05:00'),
(160, 1125, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-02-26 03:05:02'),
(161, 1125, 'view_dashboard', '{\"status\":\"submitted\"}', '2026-02-26 03:05:04'),
(162, 1125, 'view_dashboard', '{\"status\":\"submitted\"}', '2026-02-26 03:05:07'),
(163, 1125, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-02-26 03:05:10'),
(164, 1125, 'view_dashboard', '{\"status\":\"submitted\"}', '2026-02-26 03:05:16'),
(165, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:05:26'),
(166, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:06:40'),
(167, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:06:48'),
(168, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:06:53'),
(169, 1125, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-02-26 03:08:26'),
(170, 1125, 'view_dashboard', '{\"status\":\"submitted\"}', '2026-02-26 03:08:27'),
(171, 1126, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:08:43'),
(172, 1126, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-02-26 03:08:51'),
(173, 1126, 'view_dashboard', '{\"status\":\"pc_signed\"}', '2026-02-26 03:08:53'),
(174, 1126, 'view_dashboard', '{\"status\":\"pc_signed\"}', '2026-02-26 03:09:25'),
(175, 1126, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-02-26 03:09:39'),
(176, 1126, 'view_dashboard', '{\"status\":\"archived\"}', '2026-02-26 03:09:42'),
(177, 1126, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-02-26 03:09:58'),
(178, 1126, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-02-26 03:10:08'),
(179, 1126, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:10:10'),
(180, 1126, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-02-26 03:10:26'),
(181, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:12:35'),
(182, 1126, 'review_qal', '{\"document_id\":1,\"action\":\"revision\"}', '2026-02-26 03:17:52'),
(183, 1126, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:17:56'),
(184, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:18:08'),
(185, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:18:11'),
(186, 1126, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:18:45'),
(187, 1126, 'view_dashboard', '{\"status\":\"archived\"}', '2026-02-26 03:19:09'),
(188, 1126, 'update_profile', '{\"user_id\":\"1126\"}', '2026-02-26 03:19:21'),
(189, 1126, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:19:40'),
(190, 1125, 'view_dashboard', '{\"status\":\"submitted\"}', '2026-02-26 03:24:43'),
(191, 1125, 'view_dashboard', '{\"status\":\"submitted\"}', '2026-02-26 03:24:45'),
(192, 1125, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-02-26 03:24:47'),
(193, 1126, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:25:12'),
(194, 1126, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:25:40'),
(195, 1126, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:26:35'),
(196, 1126, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:27:30'),
(197, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:27:44'),
(198, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:28:55'),
(199, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:29:21'),
(200, 1126, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:29:28'),
(201, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:29:34'),
(202, 123, 'view_dashboard', '{\"status\":\"revision_requested\"}', '2026-02-26 03:29:41'),
(203, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 03:29:47'),
(204, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 04:02:52'),
(205, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 04:03:00'),
(206, 123, 'create_qal', '{\"document_id\":6}', '2026-02-26 04:04:40'),
(207, 123, 'submit_qal', '{\"document_id\":6}', '2026-02-26 04:04:54'),
(208, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 04:05:01'),
(209, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 04:05:19'),
(210, 1127, 'view_dashboard', '{\"status\":null}', '2026-02-26 04:05:32'),
(211, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 04:07:39'),
(212, 1126, 'view_dashboard', '{\"status\":null}', '2026-02-26 04:07:56'),
(213, 1125, 'review_qal', '{\"document_id\":6,\"action\":\"approve\"}', '2026-02-26 04:08:18'),
(214, 1125, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-02-26 04:08:23'),
(215, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 04:08:26'),
(216, 1125, 'view_dashboard', '{\"status\":\"submitted\"}', '2026-02-26 04:08:28'),
(217, 1125, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-02-26 04:08:30'),
(218, 1126, 'view_dashboard', '{\"status\":null}', '2026-02-26 04:08:40'),
(219, 1126, 'owner_approve_qal', '{\"document_id\":6}', '2026-02-26 04:09:05'),
(220, 1126, 'view_dashboard', '{\"status\":null}', '2026-02-26 04:09:09'),
(221, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 04:09:20'),
(222, 1125, 'review_qal', '{\"document_id\":5,\"action\":\"revision\"}', '2026-02-26 04:09:45'),
(223, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 04:09:49'),
(224, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 04:10:00'),
(225, 123, 'view_dashboard', '{\"status\":\"revision_requested\"}', '2026-02-26 04:10:04'),
(226, 123, 'view_dashboard', '{\"status\":\"revision_requested\"}', '2026-02-26 04:11:03'),
(227, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 04:11:13'),
(228, 123, 'submit_qal', '{\"document_id\":5}', '2026-02-26 04:11:27'),
(229, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 04:11:39'),
(230, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 04:12:31'),
(231, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 04:13:29'),
(232, 123, 'delete_qal', '{\"document_id\":3}', '2026-02-26 04:13:41'),
(233, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 04:13:41'),
(234, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 04:13:50'),
(235, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 06:02:55'),
(236, 123, 'view_dashboard', '{\"status\":\"draft\"}', '2026-02-26 06:03:22'),
(237, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 06:03:25'),
(238, 123, 'submit_qal', '{\"document_id\":1}', '2026-02-26 06:05:31'),
(239, 1125, 'view_dashboard', '{\"status\":null}', '2026-02-26 06:05:37'),
(240, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 06:09:32'),
(241, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 06:10:00'),
(242, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 06:15:49'),
(243, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 06:15:58'),
(244, 1125, 'view_dashboard', '{\"status\":\"submitted\"}', '2026-02-26 06:16:05'),
(245, 1125, 'review_qal', '{\"document_id\":4,\"action\":\"approve\"}', '2026-02-26 06:16:33'),
(246, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 06:17:16'),
(247, 123, 'view_dashboard', '{\"status\":\"draft\"}', '2026-02-26 06:20:31'),
(248, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 06:20:34'),
(249, 1126, 'view_dashboard', '{\"status\":null}', '2026-02-26 06:20:47'),
(250, 1126, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-02-26 06:20:49'),
(251, 1126, 'owner_approve_qal', '{\"document_id\":4}', '2026-02-26 06:20:55'),
(252, 1126, 'view_dashboard', '{\"status\":null}', '2026-02-26 06:22:23'),
(253, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 16:17:07'),
(254, 123, 'create_user', '{\"user_id\":1129,\"by_role\":\"construction\"}', '2026-02-26 16:23:46'),
(255, 123, 'update_user', '{\"user_id\":1129,\"by_role\":\"construction\"}', '2026-02-26 16:23:58'),
(256, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 16:25:02'),
(257, 123, 'create_qal', '{\"document_id\":7}', '2026-02-26 16:25:40'),
(258, 123, 'create_user', '{\"user_id\":1130,\"by_role\":\"construction\"}', '2026-02-26 16:31:48'),
(259, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 16:32:12'),
(260, 123, 'view_dashboard', '{\"status\":null}', '2026-02-26 16:32:18'),
(261, 123, 'view_dashboard', '{\"status\":null}', '2026-02-27 03:03:54'),
(262, 123, 'create_user', '{\"user_id\":1131,\"by_role\":\"construction\"}', '2026-02-27 03:04:30'),
(263, 123, 'create_user', '{\"user_id\":1132,\"by_role\":\"construction\"}', '2026-02-27 03:37:27'),
(264, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 04:29:49'),
(265, 123, 'view_dashboard', '{\"status\":\"revision_requested\"}', '2026-03-08 04:29:55'),
(266, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 04:30:03'),
(267, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 04:33:23'),
(268, 123, 'view_dashboard', '{\"status\":\"revision_requested\"}', '2026-03-08 04:47:23'),
(269, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 13:03:28'),
(270, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 13:04:32'),
(271, 123, 'view_dashboard', '{\"status\":\"draft\"}', '2026-03-08 13:05:07'),
(272, 123, 'view_dashboard', '{\"status\":\"revision_requested\"}', '2026-03-08 13:05:12'),
(273, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 13:05:43'),
(274, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 13:07:23'),
(275, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 13:08:43'),
(276, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 13:10:15'),
(277, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 13:17:24'),
(278, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 13:17:29'),
(279, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 13:33:26'),
(280, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 13:36:56'),
(281, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 13:40:58'),
(282, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 13:41:02'),
(283, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 13:41:09'),
(284, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 13:42:41'),
(285, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 13:42:42'),
(286, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 13:43:31'),
(287, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 13:43:45'),
(288, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 13:44:08'),
(289, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 13:44:22'),
(290, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 13:44:47'),
(291, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 13:45:00'),
(292, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:01:59'),
(293, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:02:40'),
(294, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:02:52'),
(295, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:02:58'),
(296, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:03:13'),
(297, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:04:45'),
(298, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:04:48'),
(299, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:05:20'),
(300, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:05:22'),
(301, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:06:05'),
(302, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:07:02'),
(303, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:07:05'),
(304, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:08:49'),
(305, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 14:09:37'),
(306, 123, 'view_dashboard', '{\"status\":\"submitted\"}', '2026-03-08 14:09:43'),
(307, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:10:21'),
(308, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:10:40'),
(309, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 14:10:55'),
(310, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:11:39'),
(311, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:12:21'),
(312, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:12:49'),
(313, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:12:56'),
(314, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:13:15'),
(315, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:14:28'),
(316, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:14:33'),
(317, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:14:40'),
(318, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:14:49'),
(319, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:15:14'),
(320, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:18:07'),
(321, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:18:17'),
(322, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:21:24'),
(323, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:24:43'),
(324, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:24:50'),
(325, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:25:55'),
(326, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:28:43'),
(327, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:34:20'),
(328, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:34:57'),
(329, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:35:08'),
(330, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 14:41:59'),
(331, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 14:52:16'),
(332, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 15:10:23'),
(333, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 15:13:01'),
(334, 123, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 15:13:05'),
(335, 1126, 'view_dashboard', '{\"status\":null}', '2026-03-08 15:22:07'),
(336, 1126, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-03-08 15:22:24'),
(337, 1126, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-03-08 15:22:28'),
(338, 1126, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-03-08 15:22:30'),
(339, 1126, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 15:22:32'),
(340, 1126, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-03-08 15:22:36'),
(341, 1126, 'view_dashboard', '{\"status\":null}', '2026-03-08 15:22:38'),
(342, 1126, 'view_dashboard', '{\"status\":null}', '2026-03-08 15:24:05'),
(343, 1126, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-03-08 15:24:09'),
(344, 1126, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 15:24:14'),
(345, 1125, 'view_dashboard', '{\"status\":null}', '2026-03-08 15:24:24'),
(346, 1125, 'view_dashboard', '{\"status\":\"submitted\"}', '2026-03-08 15:24:28'),
(347, 1125, 'review_qal', '{\"document_id\":5,\"action\":\"approve\"}', '2026-03-08 15:24:34'),
(348, 1126, 'view_dashboard', '{\"status\":null}', '2026-03-08 15:24:51'),
(349, 1126, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-03-08 15:24:54'),
(350, 1126, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-03-08 15:24:57'),
(351, 1126, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 15:24:59'),
(352, 1126, 'view_dashboard', '{\"status\":null}', '2026-03-08 15:25:08'),
(353, 1126, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-03-08 15:25:13'),
(354, 1126, 'view_dashboard', '{\"status\":null}', '2026-03-08 15:25:15'),
(355, 1126, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-03-08 15:25:24'),
(356, 1126, 'view_dashboard', '{\"status\":\"pc_signed\"}', '2026-03-08 15:25:30'),
(357, 1126, 'view_dashboard', '{\"status\":null}', '2026-03-08 15:25:32'),
(358, 1126, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-03-08 15:25:52'),
(359, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 15:25:59'),
(360, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 15:30:03'),
(361, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 15:30:49'),
(362, 123, 'submit_qal', '{\"document_id\":7}', '2026-03-08 15:31:11'),
(363, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 15:31:16'),
(364, 1125, 'view_dashboard', '{\"status\":null}', '2026-03-08 15:31:49'),
(365, 1125, 'view_dashboard', '{\"status\":\"submitted\"}', '2026-03-08 15:31:51'),
(366, 1125, 'review_qal', '{\"document_id\":7,\"action\":\"approve\"}', '2026-03-08 15:36:00'),
(367, 1125, 'review_qal', '{\"document_id\":7,\"action\":\"approve\"}', '2026-03-08 15:37:24'),
(368, 1126, 'view_dashboard', '{\"status\":null}', '2026-03-08 15:41:00'),
(369, 1126, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-03-08 15:41:03'),
(370, 1126, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-03-08 15:43:02'),
(371, 1126, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-03-08 15:44:14'),
(372, 1126, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-03-08 15:44:42'),
(373, 1126, 'owner_approve_qal', '{\"document_id\":7}', '2026-03-08 15:45:36'),
(374, 123, 'view_dashboard', '{\"status\":null}', '2026-03-08 16:01:56'),
(375, 123, 'create_qal', '{\"document_id\":8}', '2026-03-08 16:02:11'),
(376, 123, 'submit_qal', '{\"document_id\":8}', '2026-03-08 16:02:15'),
(377, 1125, 'view_dashboard', '{\"status\":null}', '2026-03-08 16:02:39'),
(378, 1125, 'review_qal', '{\"document_id\":8,\"action\":\"approve\"}', '2026-03-08 16:02:48'),
(379, 1126, 'view_dashboard', '{\"status\":null}', '2026-03-08 16:03:08'),
(380, 1126, 'view_dashboard', '{\"status\":\"reviewed\"}', '2026-03-08 16:03:11'),
(381, 1126, 'owner_approve_qal', '{\"document_id\":8}', '2026-03-08 16:03:21'),
(382, 1126, 'view_dashboard', '{\"status\":\"archived\"}', '2026-03-08 16:04:09'),
(383, 1126, 'owner_approve_qal', '{\"document_id\":8}', '2026-03-08 16:06:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `companies`
--

INSERT INTO `companies` (`id`, `name`, `no_hp`, `alamat`, `deleted_at`) VALUES
(1, 'Perusahaan A', NULL, NULL, NULL),
(2, 'Perusahaan B', NULL, NULL, NULL),
(3, 'Perusahaan C', NULL, NULL, NULL),
(4, 'user baru', '081231231', 'user baru alamat', NULL),
(8, 'user 1', '0812313', 'alamat user 111', '2026-03-08 15:30:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `documents`
--

CREATE TABLE `documents` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `doc_number` varchar(100) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'draft',
  `owner_id` int(10) UNSIGNED NOT NULL,
  `reviewer_id` int(10) UNSIGNED DEFAULT NULL,
  `approver_id` int(10) UNSIGNED DEFAULT NULL,
  `owner_approval_id` int(10) UNSIGNED DEFAULT NULL,
  `current_version_id` int(10) UNSIGNED DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `approved_by` int(10) UNSIGNED DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `companies_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `documents`
--

INSERT INTO `documents` (`id`, `title`, `doc_number`, `category`, `description`, `status`, `owner_id`, `reviewer_id`, `approver_id`, `owner_approval_id`, `current_version_id`, `locked_at`, `approved_by`, `approved_at`, `created_at`, `updated_at`, `companies_id`) VALUES
(1, 'pemasanagn pipa', 'd001', 'Kontruksi', 'pemasangan pipa', 'submitted', 123, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-02-23 08:18:04', '2026-02-26 06:05:31', 1),
(2, 'contoh', 'd004', 'hdjkw', 'contoh', 'archived', 123, NULL, NULL, NULL, 2, '2026-02-25 16:04:24', 1126, '2026-02-25 16:04:24', '2026-02-23 09:02:14', '2026-02-25 16:04:24', 1),
(4, 'QAL Perusahaan A', 'A001', '', 'Document A 001', 'archived', 123, 1125, NULL, NULL, 6, '2026-02-26 06:20:55', 1126, '2026-02-26 06:20:55', '2026-02-25 14:38:22', '2026-02-26 06:20:55', 1),
(5, 'QAL Perusahaan B', 'B001', NULL, 'document perusahaan B', 'reviewed', 123, 1125, NULL, NULL, 7, NULL, NULL, NULL, '2026-02-25 14:40:19', '2026-03-08 15:24:34', 2),
(6, 'Dokumen Baru Perusahaan A', 'A007', NULL, 'Dokumen Baru cok untuk jalan', 'archived', 123, NULL, NULL, NULL, 9, '2026-02-26 04:09:05', 1126, '2026-02-26 04:09:05', '2026-02-26 04:04:40', '2026-02-26 04:09:05', 1),
(7, 'test', '123', NULL, '', 'archived', 123, 1125, NULL, NULL, NULL, '2026-03-08 15:45:36', 1126, '2026-03-08 15:45:36', '2026-02-26 16:25:40', '2026-03-08 15:45:36', 2),
(8, 'tests baru', '1234', NULL, '', 'archived', 123, 1125, NULL, NULL, NULL, '2026-03-08 16:06:40', 1126, '2026-03-08 16:06:40', '2026-03-08 16:02:11', '2026-03-08 16:06:40', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `document_reviews`
--

CREATE TABLE `document_reviews` (
  `id` int(11) UNSIGNED NOT NULL,
  `document_id` int(10) UNSIGNED NOT NULL,
  `reviewer_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(30) NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `document_reviews`
--

INSERT INTO `document_reviews` (`id`, `document_id`, `reviewer_id`, `status`, `comment`, `created_at`) VALUES
(1, 2, 1125, 'review_approved', 'reiew 1 pc 1', '2026-02-25 16:02:13'),
(2, 1, 1125, 'revision_requested', 'Revisi PC 1 perusahaan A', '2026-02-26 01:59:24'),
(3, 1, 1125, 'review_approved', 'Teruskan ke owner', '2026-02-26 02:53:45'),
(4, 1, 1126, 'revision_requested', 'revisi dari owner', '2026-02-26 03:17:52'),
(5, 6, 1125, 'review_approved', 'Lanjutkan om', '2026-02-26 04:08:17'),
(6, 5, 1125, 'revision_requested', 'revisi dong', '2026-02-26 04:09:45'),
(7, 4, 1125, 'review_approved', '', '2026-02-26 06:16:33'),
(8, 5, 1125, 'review_approved', '', '2026-03-08 15:24:34'),
(9, 7, 1125, 'review_approved', '', '2026-03-08 15:36:00'),
(10, 7, 1125, 'review_approved', '', '2026-03-08 15:37:24'),
(11, 8, 123, 'submitted', '', '2026-03-08 16:02:15'),
(12, 8, 1125, 'reviewed', '', '2026-03-08 16:02:48'),
(13, 8, 1126, 'reviewed', '', '2026-03-08 16:06:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `document_versions`
--

CREATE TABLE `document_versions` (
  `id` int(11) UNSIGNED NOT NULL,
  `document_id` int(10) UNSIGNED NOT NULL,
  `revision` int(11) NOT NULL DEFAULT 1,
  `file_path` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `document_versions`
--

INSERT INTO `document_versions` (`id`, `document_id`, `revision`, `file_path`, `file_name`, `notes`, `created_by`, `created_at`) VALUES
(1, 1, 1, 'uploads/qal/1/1771834684_00bfa4e618074d437ae5.png', '8e6adc4d-3a92-4ff8-846a-762723093ed6.png', 'Draft awal', 123, '2026-02-23 08:18:04'),
(2, 2, 1, 'uploads/qal/2/1771837334_63e7ccad47db12bb8b84.png', '8e6adc4d-3a92-4ff8-846a-762723093ed6.png', 'Draft awal', 123, '2026-02-23 09:02:14'),
(5, 4, 1, 'uploads/qal/4/1772030302_ba23d99d59a87c205a19.jpg', 'cc.jpg', 'Draft awal', 123, '2026-02-25 14:38:22'),
(6, 4, 2, 'uploads/qal/4/1772030302_b4ece0dad822a4b67fee.jpeg', 'image.jpeg', 'Draft awal', 123, '2026-02-25 14:38:22'),
(7, 5, 1, 'uploads/qal/5/1772030419_07d3dbf23076a1e84fc2.jpg', 'cc.jpg', 'Draft awal', 123, '2026-02-25 14:40:19'),
(8, 6, 1, 'uploads/qal/6/1772078680_f5216087016254f11ad1.jpg', 'cc.jpg', 'Draft awal', 123, '2026-02-26 04:04:40'),
(9, 6, 2, 'uploads/qal/6/1772078680_17adc020dd4f5dcbafc2.jpeg', 'image.jpeg', 'Draft awal', 123, '2026-02-26 04:04:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2026-02-05-000001', 'App\\Database\\Migrations\\CreateUsers', 'default', 'App', 1771833096, 1),
(2, '2026-02-05-000002', 'App\\Database\\Migrations\\CreateDocuments', 'default', 'App', 1771833096, 1),
(3, '2026-02-05-000003', 'App\\Database\\Migrations\\CreateDocumentVersions', 'default', 'App', 1771833096, 1),
(4, '2026-02-05-000004', 'App\\Database\\Migrations\\CreateDocumentReviews', 'default', 'App', 1771833096, 1),
(5, '2026-02-06-000005', 'App\\Database\\Migrations\\AddPasswordToUsers', 'default', 'App', 1771833096, 1),
(6, '2026-02-06-000006', 'App\\Database\\Migrations\\CreateActivityLogs', 'default', 'App', 1771833096, 1),
(7, '2026-02-11-000007', 'App\\Database\\Migrations\\AddOwnerApprovalToDocuments', 'default', 'App', 1771833096, 1),
(8, '2026-02-11-000008', 'App\\Database\\Migrations\\AddFileNameToDocumentVersions', 'default', 'App', 1771833096, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL DEFAULT 'construction',
  `companies_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `companies_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(123, 'admin', 'admin@example.com', '$2y$10$gNne3VQdYLDoml1/hBvm0uFhC2og5iuhLbILxgaUS15Pml16tCj7S', 'construction', 0, NULL, '2026-02-23 08:18:27', NULL),
(125, 'raysa', 'pc@example.com', '$2y$10$6gDUK431lVXEBou2ojgzQOZIQUq./l2o1pNMSPxlcbJFZ0.VIKp.S', 'Projec Control', NULL, NULL, NULL, NULL),
(126, 'putri', 'user@example.com', '$2y$10$Fuoy7Yx0G3oYR/I5inO4juuKmMgR7j4ZDsEMtabQiDzxKX7i8XweC', 'User', NULL, NULL, NULL, NULL),
(1124, 'febri', 'qc@example.com', '$2y$10$6gDUK431lVXEBou2ojgzQOZIQUq./l2o1pNMSPxlcbJFZ0.VIKp.S', 'Quality control', NULL, NULL, NULL, NULL),
(1125, 'PC 1', 'pc1@gmail.com', '$2y$10$gNne3VQdYLDoml1/hBvm0uFhC2og5iuhLbILxgaUS15Pml16tCj7S', 'pc', NULL, NULL, NULL, NULL),
(1126, 'Owner satu', 'owner1@gmail.com', '$2y$10$gNne3VQdYLDoml1/hBvm0uFhC2og5iuhLbILxgaUS15Pml16tCj7S', 'owner', 1, NULL, '2026-02-26 03:19:21', NULL),
(1127, 'PC 2', 'pc2@gmail.com', '$2y$10$gNne3VQdYLDoml1/hBvm0uFhC2og5iuhLbILxgaUS15Pml16tCj7S', 'pc', NULL, NULL, NULL, NULL),
(1128, 'Owner 2', 'owner2@gmail.com', '$2y$10$gNne3VQdYLDoml1/hBvm0uFhC2og5iuhLbILxgaUS15Pml16tCj7S', 'owner', 2, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_owner_id_foreign` (`owner_id`),
  ADD KEY `documents_reviewer_id_foreign` (`reviewer_id`),
  ADD KEY `documents_approver_id_foreign` (`approver_id`),
  ADD KEY `documents_approved_by_foreign` (`approved_by`),
  ADD KEY `doc_number` (`doc_number`),
  ADD KEY `status` (`status`),
  ADD KEY `documents_owner_approval_id_foreign` (`owner_approval_id`);

--
-- Indeks untuk tabel `document_reviews`
--
ALTER TABLE `document_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_reviews_reviewer_id_foreign` (`reviewer_id`),
  ADD KEY `document_id` (`document_id`);

--
-- Indeks untuk tabel `document_versions`
--
ALTER TABLE `document_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_versions_created_by_foreign` (`created_by`),
  ADD KEY `document_id_revision` (`document_id`,`revision`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

--
-- AUTO_INCREMENT untuk tabel `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `document_reviews`
--
ALTER TABLE `document_reviews`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `document_versions`
--
ALTER TABLE `document_versions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1133;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON UPDATE SET NULL,
  ADD CONSTRAINT `documents_approver_id_foreign` FOREIGN KEY (`approver_id`) REFERENCES `users` (`id`) ON UPDATE SET NULL,
  ADD CONSTRAINT `documents_owner_approval_id_foreign` FOREIGN KEY (`owner_approval_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `documents_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `documents_reviewer_id_foreign` FOREIGN KEY (`reviewer_id`) REFERENCES `users` (`id`) ON UPDATE SET NULL;

--
-- Ketidakleluasaan untuk tabel `document_reviews`
--
ALTER TABLE `document_reviews`
  ADD CONSTRAINT `document_reviews_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `document_reviews_reviewer_id_foreign` FOREIGN KEY (`reviewer_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `document_versions`
--
ALTER TABLE `document_versions`
  ADD CONSTRAINT `document_versions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `document_versions_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
