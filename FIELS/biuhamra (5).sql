-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 01, 2018 at 04:25 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biuhamra`
--

-- --------------------------------------------------------

--
-- Table structure for table `bf_about`
--

CREATE TABLE `bf_about` (
  `id` int(11) NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `ar_title` varchar(255) NOT NULL,
  `en_description` text NOT NULL,
  `ar_description` text NOT NULL,
  `en_hours` text NOT NULL,
  `ar_hours` text NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_about`
--

INSERT INTO `bf_about` (`id`, `en_title`, `ar_title`, `en_description`, `ar_description`, `en_hours`, `ar_hours`, `logo`, `deleted`, `deleted_by`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 'dfs vdfv', 'dfvdfv', '<p>dfvdfv</p>', '<p>dfvdfv</p>', '<p>dfvdfv</p>', '<p>dfvdfv</p>', '1522237955.jpg', 1, 1, '2018-03-28 13:52:35', 1, '2018-03-28 13:52:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bf_about_us`
--

CREATE TABLE `bf_about_us` (
  `id` int(11) NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `ar_title` varchar(255) NOT NULL,
  `en_description` text NOT NULL,
  `ar_description` text NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_about_us`
--

INSERT INTO `bf_about_us` (`id`, `en_title`, `ar_title`, `en_description`, `ar_description`, `deleted`, `deleted_by`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 'about the clinic', 'عن العيادة', 'As one of the leading clinic in Kuwait, Bouhamra Clinic continues to expand in response to the growing health care needs of the people in Kuwait. Our value statement is Not just Healthcare.', '<div>باعتبارها إحدى العيادات الرائدة في الكويت، تواصل عيادة بوحمرة التوسع في تلبية احتياجات الرعاية الصحية المتزايدة للشعب الكويتي. بيان القيمة لدينا ليس فقط الرعاية الصحية.</div><div><br></div>', 0, NULL, '0000-00-00 00:00:00', 0, '2018-03-21 13:47:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bf_activities`
--

CREATE TABLE `bf_activities` (
  `activity_id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `activity` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `deleted` tinyint(12) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_activities`
--

INSERT INTO `bf_activities` (`activity_id`, `user_id`, `activity`, `module`, `created_on`, `deleted`) VALUES
(1, 1, 'logged in from: ::1', 'users', '2018-02-04 12:43:36', 0),
(2, 1, 'App settings saved from: ::1', 'core', '2018-02-04 12:44:14', 0),
(3, 1, 'modified user: admin', 'users', '2018-02-04 12:44:39', 0),
(4, 1, 'logged in from: ::1', 'users', '2018-02-04 12:45:59', 0),
(5, 1, 'logged in from: ::1', 'users', '2018-02-04 12:46:34', 0),
(6, 1, 'logged in from: ::1', 'users', '2018-02-04 12:54:42', 0),
(7, 1, 'App settings saved from: ::1', 'core', '2018-02-04 13:01:42', 0),
(8, 1, 'updated their profile: admin', 'users', '2018-02-04 13:02:02', 0),
(9, 1, 'updated their profile: admin', 'users', '2018-02-04 13:02:49', 0),
(10, 1, 'logged in from: ::1', 'users', '2018-02-04 13:29:00', 0),
(11, 1, 'updated their profile: admin', 'users', '2018-02-04 14:59:42', 0),
(12, 1, 'logged in from: ::1', 'users', '2018-02-05 13:07:04', 0),
(13, 1, 'Created Module: Slider : ::1', 'modulebuilder', '2018-02-05 13:17:16', 0),
(14, 1, 'Deleted Module: Slider : ::1', 'builder', '2018-02-05 13:19:06', 0),
(15, 1, 'Created Module: Slider : ::1', 'modulebuilder', '2018-02-05 13:23:00', 0),
(16, 1, 'Created Module: About : ::1', 'modulebuilder', '2018-02-05 13:38:17', 0),
(17, 1, 'Created Module: Departments : ::1', 'modulebuilder', '2018-02-05 13:51:44', 0),
(18, 1, 'Created Module: Doctors : ::1', 'modulebuilder', '2018-02-05 14:01:26', 0),
(19, 1, 'Created Module: Photos : ::1', 'modulebuilder', '2018-02-05 14:26:46', 0),
(20, 1, 'Created Module: Videos : ::1', 'modulebuilder', '2018-02-05 14:28:46', 0),
(21, 1, 'Created Module: Administration : ::1', 'modulebuilder', '2018-02-05 14:37:24', 0),
(22, 1, 'Created Module: Careers : ::1', 'modulebuilder', '2018-02-05 14:39:55', 0),
(23, 1, 'Created Module: Social Media : ::1', 'modulebuilder', '2018-02-05 14:52:58', 0),
(24, 1, 'Created Module: Emails : ::1', 'modulebuilder', '2018-02-05 14:54:57', 0),
(25, 1, 'Created Module: Locations : ::1', 'modulebuilder', '2018-02-05 14:59:31', 0),
(26, 1, 'Deleted Module: Emails : ::1', 'builder', '2018-02-05 15:10:42', 0),
(27, 1, 'Created Module: Emails : ::1', 'modulebuilder', '2018-02-05 15:11:25', 0),
(28, 1, 'Created Module: Social Media : ::1', 'modulebuilder', '2018-02-05 15:13:21', 0),
(29, 1, 'Deleted Module: Social_Media : ::1', 'builder', '2018-02-05 15:14:15', 0),
(30, 1, 'Created Module: Social Media : ::1', 'modulebuilder', '2018-02-05 15:15:43', 0),
(31, 1, 'Created Module: Meet Our Team : ::1', 'modulebuilder', '2018-02-05 15:22:28', 0),
(32, 1, 'Created Module: Patients Say : ::1', 'modulebuilder', '2018-02-05 15:30:03', 0),
(33, 1, 'Created Module: FAQ : ::1', 'modulebuilder', '2018-02-05 15:33:51', 0),
(34, 1, 'Created Module: Information : ::1', 'modulebuilder', '2018-02-05 15:39:07', 0),
(35, 1, 'logged in from: ::1', 'users', '2018-02-06 09:57:21', 0),
(36, 1, 'logged in from: ::1', 'users', '2018-02-07 08:36:40', 0),
(37, 1, 'Created record with ID: 3 : ::1', 'about', '2018-02-07 09:19:52', 0),
(38, 1, 'Created record with ID: 4 : ::1', 'about', '2018-02-07 09:28:16', 0),
(39, 1, 'Created record with ID: 1 : ::1', 'locations', '2018-02-07 10:08:05', 0),
(40, 1, 'Created record with ID: 1 : ::1', 'social_media', '2018-02-07 10:09:02', 0),
(41, 1, 'Migrate Type: departments_ Uninstalled Version: 0 from: ::1', 'migrations', '2018-02-07 10:22:55', 0),
(42, 1, 'Migration module: departments Version: 0 from: ::1', 'migrations', '2018-02-07 10:22:55', 0),
(43, 1, 'Migrate Type: departments_ to Version: 2 from: ::1', 'migrations', '2018-02-07 10:23:04', 0),
(44, 1, 'Migration module: departments Version: 2 from: ::1', 'migrations', '2018-02-07 10:23:04', 0),
(45, 1, 'Created record with ID: 5 : ::1', 'about', '2018-02-07 10:37:02', 0),
(46, 1, 'Updated record with ID: 5 : ::1', 'about', '2018-02-07 10:41:07', 0),
(47, 1, 'Updated record with ID: 3 : ::1', 'about', '2018-02-07 10:41:12', 0),
(48, 1, 'Updated record with ID: 3 : ::1', 'about', '2018-02-07 10:41:22', 0),
(49, 1, 'Created record with ID: 1 : ::1', 'departments', '2018-02-07 10:54:17', 0),
(50, 1, 'Updated record with ID: 1 : ::1', 'departments', '2018-02-07 10:56:32', 0),
(51, 1, 'Updated record with ID: 1 : ::1', 'departments', '2018-02-07 10:58:18', 0),
(52, 1, 'Migrate Type: about_ Uninstalled Version: 0 from: ::1', 'migrations', '2018-02-07 11:01:58', 0),
(53, 1, 'Migration module: about Version: 0 from: ::1', 'migrations', '2018-02-07 11:01:59', 0),
(54, 1, 'Migrate Type: about_ to Version: 2 from: ::1', 'migrations', '2018-02-07 11:02:06', 0),
(55, 1, 'Migration module: about Version: 2 from: ::1', 'migrations', '2018-02-07 11:02:06', 0),
(56, 1, 'Migrate Type: departments_ Uninstalled Version: 0 from: ::1', 'migrations', '2018-02-07 11:02:14', 0),
(57, 1, 'Migration module: departments Version: 0 from: ::1', 'migrations', '2018-02-07 11:02:14', 0),
(58, 1, 'Migrate Type: departments_ to Version: 2 from: ::1', 'migrations', '2018-02-07 11:02:25', 0),
(59, 1, 'Migration module: departments Version: 2 from: ::1', 'migrations', '2018-02-07 11:02:25', 0),
(60, 1, 'Migrate Type: doctors_ Uninstalled Version: 0 from: ::1', 'migrations', '2018-02-07 11:02:33', 0),
(61, 1, 'Migration module: doctors Version: 0 from: ::1', 'migrations', '2018-02-07 11:02:33', 0),
(62, 1, 'Migrate Type: doctors_ to Version: 2 from: ::1', 'migrations', '2018-02-07 11:02:43', 0),
(63, 1, 'Migration module: doctors Version: 2 from: ::1', 'migrations', '2018-02-07 11:02:43', 0),
(64, 1, 'Migrate Type: slider_ Uninstalled Version: 0 from: ::1', 'migrations', '2018-02-07 11:02:50', 0),
(65, 1, 'Migration module: slider Version: 0 from: ::1', 'migrations', '2018-02-07 11:02:50', 0),
(66, 1, 'Migrate Type: slider_ to Version: 2 from: ::1', 'migrations', '2018-02-07 11:02:59', 0),
(67, 1, 'Migration module: slider Version: 2 from: ::1', 'migrations', '2018-02-07 11:02:59', 0),
(68, 1, 'Created record with ID: 1 : ::1', 'departments', '2018-02-07 11:03:35', 0),
(69, 1, 'Created record with ID: 3 : ::1', 'departments', '2018-02-07 11:14:48', 0),
(70, 1, 'Updated record with ID: 2 : ::1', 'departments', '2018-02-07 11:15:44', 0),
(71, 1, 'Updated record with ID: 1 : ::1', 'departments', '2018-02-07 11:15:51', 0),
(72, 1, 'Created record with ID: 2 : ::1', 'doctors', '2018-02-07 11:24:26', 0),
(73, 1, 'Updated record with ID: 2 : ::1', 'doctors', '2018-02-07 11:24:53', 0),
(74, 1, 'Created record with ID: 1 : ::1', 'slider', '2018-02-07 11:28:15', 0),
(75, 1, 'Updated record with ID: 1 : ::1', 'slider', '2018-02-07 11:30:23', 0),
(76, 1, 'Created record with ID: 1 : ::1', 'faq', '2018-02-07 11:42:33', 0),
(77, 1, 'Created record with ID: 2 : ::1', 'faq', '2018-02-07 11:43:14', 0),
(78, 1, 'Updated record with ID: 2 : ::1', 'faq', '2018-02-07 11:43:23', 0),
(79, 1, 'Created record with ID: 1 : ::1', 'about', '2018-02-07 11:52:24', 0),
(80, 1, 'Updated record with ID: 2 : ::1', 'doctors', '2018-02-07 11:52:52', 0),
(81, 1, 'Updated record with ID: 2 : ::1', 'doctors', '2018-02-07 11:53:00', 0),
(82, 1, 'Created record with ID: 3 : ::1', 'doctors', '2018-02-07 11:53:20', 0),
(83, 1, 'Created record with ID: 1 : ::1', 'videos', '2018-02-07 12:03:15', 0),
(84, 1, 'Migrate Type: videos_ Uninstalled Version: 0 from: ::1', 'migrations', '2018-02-07 12:06:34', 0),
(85, 1, 'Migration module: videos Version: 0 from: ::1', 'migrations', '2018-02-07 12:06:34', 0),
(86, 1, 'Migrate Type: videos_ to Version: 2 from: ::1', 'migrations', '2018-02-07 12:06:40', 0),
(87, 1, 'Migration module: videos Version: 2 from: ::1', 'migrations', '2018-02-07 12:06:40', 0),
(88, 1, 'Created record with ID: 1 : ::1', 'videos', '2018-02-07 12:07:05', 0),
(89, 1, 'Created record with ID: 2 : ::1', 'videos', '2018-02-07 12:10:37', 0),
(90, 1, 'Created record with ID: 3 : ::1', 'videos', '2018-02-07 12:11:42', 0),
(91, 1, 'Created record with ID: 7 : ::1', 'videos', '2018-02-07 12:24:27', 0),
(92, 1, 'Created record with ID: 8 : ::1', 'videos', '2018-02-07 12:25:40', 0),
(93, 1, 'Created record with ID: 9 : ::1', 'videos', '2018-02-07 12:27:47', 0),
(94, 1, 'Created record with ID: 10 : ::1', 'videos', '2018-02-07 12:49:58', 0),
(95, 1, 'Created record with ID: 11 : ::1', 'videos', '2018-02-07 12:50:11', 0),
(96, 1, 'Created record with ID: 12 : ::1', 'videos', '2018-02-07 12:52:37', 0),
(97, 1, 'Created record with ID: 13 : ::1', 'videos', '2018-02-07 12:52:58', 0),
(98, 1, 'Created record with ID: 14 : ::1', 'videos', '2018-02-07 12:53:23', 0),
(99, 1, 'Created record with ID: 15 : ::1', 'videos', '2018-02-07 12:54:17', 0),
(100, 1, 'Created record with ID: 16 : ::1', 'videos', '2018-02-07 12:54:31', 0),
(101, 1, 'Created record with ID: 17 : ::1', 'videos', '2018-02-07 13:00:30', 0),
(102, 1, 'Created record with ID: 18 : ::1', 'videos', '2018-02-07 13:03:36', 0),
(103, 1, 'Created record with ID: 21 : ::1', 'videos', '2018-02-07 13:06:55', 0),
(104, 1, 'Created record with ID: 22 : ::1', 'videos', '2018-02-07 13:07:22', 0),
(105, 1, 'Created record with ID: 24 : ::1', 'videos', '2018-02-07 13:08:23', 0),
(106, 1, 'Created record with ID: 25 : ::1', 'videos', '2018-02-07 13:08:54', 0),
(107, 1, 'Created record with ID: 26 : ::1', 'videos', '2018-02-07 13:13:46', 0),
(108, 1, 'Created record with ID: 27 : ::1', 'videos', '2018-02-07 13:17:12', 0),
(109, 1, 'Migrate Type: photos_ Uninstalled Version: 0 from: ::1', 'migrations', '2018-02-07 13:25:29', 0),
(110, 1, 'Migration module: photos Version: 0 from: ::1', 'migrations', '2018-02-07 13:25:29', 0),
(111, 1, 'Migrate Type: photos_ to Version: 2 from: ::1', 'migrations', '2018-02-07 13:25:38', 0),
(112, 1, 'Migration module: photos Version: 2 from: ::1', 'migrations', '2018-02-07 13:25:39', 0),
(113, 1, 'Created record with ID: 2 : ::1', 'photos', '2018-02-07 13:28:44', 0),
(114, 1, 'Created record with ID: 3 : ::1', 'photos', '2018-02-07 13:35:51', 0),
(115, 1, 'Created record with ID: 4 : ::1', 'photos', '2018-02-07 13:39:40', 0),
(116, 1, 'Created record with ID: 5 : ::1', 'photos', '2018-02-07 13:39:51', 0),
(117, 1, 'Created record with ID: 6 : ::1', 'photos', '2018-02-07 13:40:18', 0),
(118, 1, 'Created record with ID: 7 : ::1', 'photos', '2018-02-07 13:42:07', 0),
(119, 1, 'Created record with ID: 8 : ::1', 'photos', '2018-02-07 13:46:16', 0),
(120, 1, 'Created record with ID: 28 : ::1', 'videos', '2018-02-07 13:54:13', 0),
(121, 1, 'Migrate Type: doctors_ Uninstalled Version: 0 from: ::1', 'migrations', '2018-02-07 14:05:51', 0),
(122, 1, 'Migration module: doctors Version: 0 from: ::1', 'migrations', '2018-02-07 14:05:51', 0),
(123, 1, 'Migrate Type: doctors_ to Version: 2 from: ::1', 'migrations', '2018-02-07 14:05:59', 0),
(124, 1, 'Migration module: doctors Version: 2 from: ::1', 'migrations', '2018-02-07 14:05:59', 0),
(125, 1, 'Created record with ID: 1 : ::1', 'doctors', '2018-02-07 14:13:48', 0),
(126, 1, 'Created record with ID: 2 : ::1', 'doctors', '2018-02-07 14:16:38', 0),
(127, 1, 'Created record with ID: 3 : ::1', 'doctors', '2018-02-07 14:17:44', 0),
(128, 1, 'Created record with ID: 2 : ::1', 'about', '2018-02-07 14:19:38', 0),
(129, 1, 'Created record with ID: 4 : ::1', 'departments', '2018-02-07 14:23:10', 0),
(130, 1, 'Updated record with ID: 2 : ::1', 'doctors', '2018-02-07 14:32:25', 0),
(131, 1, 'logged in from: ::1', 'users', '2018-02-13 23:46:46', 0),
(132, 1, 'logged in from: ::1', 'users', '2018-02-14 15:54:30', 0),
(133, 1, 'Deleted Module: Photos : ::1', 'builder', '2018-02-14 18:19:39', 0),
(134, 1, 'Created Module: Photo Gallery : ::1', 'modulebuilder', '2018-02-14 18:21:52', 0),
(135, 1, 'Deleted Module: Photo_Gallery : ::1', 'builder', '2018-02-14 18:22:08', 0),
(136, 1, 'Created Module: Photo Gallery : ::1', 'modulebuilder', '2018-02-14 18:23:55', 0),
(137, 1, 'logged in from: ::1', 'users', '2018-02-19 16:37:33', 0),
(138, 1, 'Created record with ID: 1 : ::1', 'photo_gallery', '2018-02-19 19:09:46', 0),
(139, 1, 'Updated record with ID: 1 : ::1', 'photo_gallery', '2018-02-19 21:46:50', 0),
(140, 1, 'logged in from: ::1', 'users', '2018-02-20 12:33:15', 0),
(141, 1, 'Created record with ID: 2 : ::1', 'photo_gallery', '2018-02-20 15:12:59', 0),
(142, 1, 'Created record with ID: 2 : ::1', 'social_media', '2018-02-20 15:33:07', 0),
(143, 1, 'Created record with ID: 3 : ::1', 'social_media', '2018-02-20 15:33:21', 0),
(144, 1, 'Updated record with ID: 1 : ::1', 'social_media', '2018-02-20 15:42:01', 0),
(145, 1, 'Updated record with ID: 1 : ::1', 'information', '2018-02-20 15:44:24', 0),
(146, 1, 'Updated record with ID: 1 : ::1', 'information', '2018-02-20 15:44:26', 0),
(147, 1, 'Updated record with ID: 1 : ::1', 'information', '2018-02-20 15:44:31', 0),
(148, 1, 'Updated record with ID: 1 : ::1', 'information', '2018-02-20 15:45:42', 0),
(149, 1, 'Updated record with ID: 1 : ::1', 'emails', '2018-02-20 15:47:47', 0),
(150, 1, 'logged in from: ::1', 'users', '2018-03-04 13:44:41', 0),
(151, 1, 'App settings saved from: ::1', 'core', '2018-03-04 13:45:13', 0),
(152, 1, 'logged in from: ::1', 'users', '2018-03-04 18:21:34', 0),
(153, 1, 'App settings saved from: ::1', 'core', '2018-03-04 18:21:54', 0),
(154, 1, 'modified user: admin', 'users', '2018-03-04 19:35:27', 0),
(155, 1, 'logged in from: ::1', 'users', '2018-03-05 19:20:18', 0),
(156, 1, 'Created record with ID: 2 : ::1', 'slider', '2018-03-05 19:34:53', 0),
(157, 1, 'Updated record with ID: 1 : ::1', 'slider', '2018-03-05 19:40:14', 0),
(158, 1, 'Updated record with ID: 1 : ::1', 'about', '2018-03-05 19:47:39', 0),
(159, 1, 'Updated record with ID: 2 : ::1', 'about', '2018-03-05 19:49:03', 0),
(160, 1, 'Created record with ID: 3 : ::1', 'about', '2018-03-05 19:50:16', 0),
(161, 1, 'logged in from: ::1', 'users', '2018-03-07 19:11:23', 0),
(162, 1, 'Updated record with ID: 1 : ::1', 'departments', '2018-03-07 19:14:58', 0),
(163, 1, 'Updated record with ID: 2 : ::1', 'departments', '2018-03-07 19:16:17', 0),
(164, 1, 'Updated record with ID: 3 : ::1', 'departments', '2018-03-07 19:17:37', 0),
(165, 1, 'Updated record with ID: 3 : ::1', 'departments', '2018-03-07 19:17:57', 0),
(166, 1, 'Updated record with ID: 4 : ::1', 'departments', '2018-03-07 19:18:36', 0),
(167, 1, 'Updated record with ID: 4 : ::1', 'departments', '2018-03-07 19:18:54', 0),
(168, 1, 'Updated record with ID: 4 : ::1', 'departments', '2018-03-07 19:19:09', 0),
(169, 1, 'Updated record with ID: 5 : ::1', 'departments', '2018-03-07 19:19:51', 0),
(170, 1, 'Updated record with ID: 5 : ::1', 'departments', '2018-03-07 19:20:06', 0),
(171, 1, 'Updated record with ID: 5 : ::1', 'departments', '2018-03-07 19:20:25', 0),
(172, 1, 'Created record with ID: 6 : ::1', 'departments', '2018-03-07 19:21:07', 0),
(173, 1, 'Updated record with ID: 6 : ::1', 'departments', '2018-03-07 19:21:22', 0),
(174, 1, 'Updated record with ID: 6 : ::1', 'departments', '2018-03-07 19:21:41', 0),
(175, 1, 'Created record with ID: 1 : ::1', 'meet_our_team', '2018-03-07 19:40:24', 0),
(176, 1, 'Updated record with ID: 1 : ::1', 'doctors', '2018-03-07 20:15:00', 0),
(177, 1, 'Updated record with ID: 2 : ::1', 'doctors', '2018-03-07 20:15:58', 0),
(178, 1, 'Updated record with ID: 2 : ::1', 'doctors', '2018-03-07 20:16:47', 0),
(179, 1, 'Updated record with ID: 2 : ::1', 'doctors', '2018-03-07 20:16:57', 0),
(180, 1, 'Updated record with ID: 4 : ::1', 'doctors', '2018-03-07 20:18:45', 0),
(181, 1, 'Updated record with ID: 5 : ::1', 'doctors', '2018-03-07 20:19:03', 0),
(182, 1, 'Updated record with ID: 6 : ::1', 'doctors', '2018-03-07 20:19:27', 0),
(183, 1, 'Updated record with ID: 7 : ::1', 'doctors', '2018-03-07 20:19:46', 0),
(184, 1, 'Updated record with ID: 5 : ::1', 'doctors', '2018-03-07 20:19:54', 0),
(185, 1, 'Updated record with ID: 4 : ::1', 'doctors', '2018-03-07 20:20:03', 0),
(186, 1, 'Created record with ID: 1 : ::1', 'patients_say', '2018-03-07 20:59:24', 0),
(187, 1, 'Updated record with ID: 1 : ::1', 'faq', '2018-03-07 21:32:05', 0),
(188, 1, 'Updated record with ID: 2 : ::1', 'faq', '2018-03-07 21:33:13', 0),
(189, 1, 'Updated record with ID: 1 : ::1', 'locations', '2018-03-07 21:49:05', 0),
(190, 1, 'Updated record with ID: 1 : ::1', 'information', '2018-03-07 21:52:40', 0),
(191, 1, 'Updated record with ID: 1 : ::1', 'information', '2018-03-07 21:53:01', 0),
(192, 1, 'logged in from: ::1', 'users', '2018-03-12 09:16:19', 0),
(193, 1, 'Created record with ID: 1 : ::1', 'careers', '2018-03-12 10:14:44', 0),
(194, 1, 'logged in from: ::1', 'users', '2018-03-12 18:44:01', 0),
(195, 1, 'Updated record with ID: 1 : ::1', 'photo_gallery', '2018-03-12 18:44:40', 0),
(196, 1, 'Updated record with ID: 2 : ::1', 'photo_gallery', '2018-03-12 18:44:54', 0),
(197, 1, 'Created record with ID: 3 : ::1', 'photo_gallery', '2018-03-12 18:45:14', 0),
(198, 1, 'Created record with ID: 4 : ::1', 'photo_gallery', '2018-03-12 18:45:32', 0),
(199, 1, 'Updated record with ID: 1 : ::1', 'photo_gallery', '2018-03-12 18:57:37', 0),
(200, 1, 'Updated record with ID: 2 : ::1', 'photo_gallery', '2018-03-12 18:58:04', 0),
(201, 1, 'Updated record with ID: 3 : ::1', 'photo_gallery', '2018-03-12 18:58:16', 0),
(202, 1, 'Updated record with ID: 4 : ::1', 'photo_gallery', '2018-03-12 18:58:31', 0),
(203, 1, 'Created record with ID: 5 : ::1', 'photo_gallery', '2018-03-12 18:58:50', 0),
(204, 1, 'Created record with ID: 6 : ::1', 'photo_gallery', '2018-03-12 18:59:11', 0),
(205, 1, 'Updated record with ID: 6 : ::1', 'photo_gallery', '2018-03-12 18:59:22', 0),
(206, 1, 'Created record with ID: 7 : ::1', 'photo_gallery', '2018-03-12 18:59:48', 0),
(207, 1, 'Created record with ID: 8 : ::1', 'photo_gallery', '2018-03-12 19:00:08', 0),
(208, 1, 'Updated record with ID: 1 : ::1', 'photo_gallery', '2018-03-12 19:15:36', 0),
(209, 1, 'Updated record with ID: 4 : ::1', 'photo_gallery', '2018-03-12 19:15:43', 0),
(210, 1, 'Updated record with ID: 2 : ::1', 'photo_gallery', '2018-03-12 19:26:17', 0),
(211, 1, 'Updated record with ID: 3 : ::1', 'photo_gallery', '2018-03-12 19:26:23', 0),
(212, 1, 'Updated record with ID: 4 : ::1', 'photo_gallery', '2018-03-12 19:26:29', 0),
(213, 1, 'Updated record with ID: 5 : ::1', 'photo_gallery', '2018-03-12 19:26:35', 0),
(214, 1, 'Updated record with ID: 6 : ::1', 'photo_gallery', '2018-03-12 19:26:43', 0),
(215, 1, 'Updated record with ID: 7 : ::1', 'photo_gallery', '2018-03-12 19:26:50', 0),
(216, 1, 'Updated record with ID: 8 : ::1', 'photo_gallery', '2018-03-12 19:26:57', 0),
(217, 1, 'logged in from: ::1', 'users', '2018-03-12 22:44:24', 0),
(218, 1, 'Created record with ID: 29 : ::1', 'videos', '2018-03-12 22:47:05', 0),
(219, 1, 'logged in from: ::1', 'users', '2018-03-21 12:36:36', 0),
(220, 1, 'Created record with ID: 3 : ::1', 'slider', '2018-03-21 12:37:03', 0),
(221, 1, 'Created record with ID: 4 : ::1', 'slider', '2018-03-21 12:39:16', 0),
(222, 1, 'Created record with ID: 8 : ::1', 'slider', '2018-03-21 12:50:25', 0),
(223, 1, 'Created Module: About Us : ::1', 'modulebuilder', '2018-03-21 13:12:45', 0),
(224, 1, 'Migrate Type: about_us_ Uninstalled Version: 0 from: ::1', 'migrations', '2018-03-21 13:17:18', 0),
(225, 1, 'Migration module: about_us Version: 0 from: ::1', 'migrations', '2018-03-21 13:17:18', 0),
(226, 1, 'Migrate Type: about_us_ to Version: 2 from: ::1', 'migrations', '2018-03-21 13:17:28', 0),
(227, 1, 'Migration module: about_us Version: 2 from: ::1', 'migrations', '2018-03-21 13:17:28', 0),
(228, 1, 'Updated record with ID: 1 : ::1', 'about_us', '2018-03-21 13:26:30', 0),
(229, 1, 'Updated record with ID: 1 : ::1', 'about_us', '2018-03-21 13:26:59', 0),
(230, 1, 'Updated record with ID: 1 : ::1', 'about_us', '2018-03-21 13:47:29', 0),
(231, 1, 'Updated record with ID: 1 : ::1', 'about_us', '2018-03-21 13:47:57', 0),
(232, 1, 'Updated record with ID: 1 : ::1', 'patients_say', '2018-03-21 14:02:18', 0),
(233, 1, 'Updated record with ID: 2 : ::1', 'patients_say', '2018-03-21 14:02:36', 0),
(234, 1, 'Updated record with ID: 3 : ::1', 'patients_say', '2018-03-21 14:02:41', 0),
(235, 1, 'Updated record with ID: 1 : ::1', 'patients_say', '2018-03-21 14:03:09', 0),
(236, 1, 'Updated record with ID: 1 : ::1', 'patients_say', '2018-03-21 14:03:34', 0),
(237, 1, 'Updated record with ID: 1 : ::1', 'patients_say', '2018-03-21 14:06:19', 0),
(238, 1, 'Migrate Type: doctors_ to Version: 2 from: ::1', 'migrations', '2018-03-21 14:16:14', 0),
(239, 1, 'Migration module: doctors Version: 2 from: ::1', 'migrations', '2018-03-21 14:16:14', 0),
(240, 1, 'Migrate Type: doctors_ Uninstalled Version: 0 from: ::1', 'migrations', '2018-03-21 14:17:02', 0),
(241, 1, 'Migration module: doctors Version: 0 from: ::1', 'migrations', '2018-03-21 14:17:02', 0),
(242, 1, 'Migrate Type: doctors_ to Version: 2 from: ::1', 'migrations', '2018-03-21 14:17:09', 0),
(243, 1, 'Migration module: doctors Version: 2 from: ::1', 'migrations', '2018-03-21 14:17:09', 0),
(244, 1, 'Updated record with ID: 1 : ::1', 'doctors', '2018-03-21 14:18:30', 0),
(245, 1, 'Updated record with ID: 1 : ::1', 'emails', '2018-03-21 14:33:41', 0),
(246, 1, 'Updated record with ID: 1 : ::1', 'social_media', '2018-03-21 15:23:38', 0),
(247, 1, 'Updated record with ID: 1 : ::1', 'social_media', '2018-03-21 15:26:15', 0),
(248, 1, 'logged in from: ::1', 'users', '2018-03-25 15:07:10', 0),
(249, 1, 'Updated record with ID: 1 : ::1', 'information', '2018-03-25 16:23:06', 0),
(250, 1, 'logged in from: ::1', 'users', '2018-03-26 13:23:54', 0),
(251, 1, 'Updated record with ID: 1 : ::1', 'doctors', '2018-03-26 13:40:27', 0),
(252, 1, 'Updated record with ID: 1 : ::1', 'patients_say', '2018-03-26 14:01:27', 0),
(253, 1, 'Updated record with ID: 1 : ::1', 'patients_say', '2018-03-26 14:06:02', 0),
(254, 1, 'Created record with ID: 2 : ::1', 'locations', '2018-03-26 14:32:49', 0),
(255, 1, 'Created record with ID: 3 : ::1', 'locations', '2018-03-26 14:39:54', 0),
(256, 1, 'Updated record with ID: 3 : ::1', 'locations', '2018-03-26 14:43:47', 0),
(257, 1, 'Updated record with ID: 2 : ::1', 'locations', '2018-03-26 14:43:57', 0),
(258, 1, 'Updated record with ID: 2 : ::1', 'locations', '2018-03-26 14:44:34', 0),
(259, 1, 'Updated record with ID: 2 : ::1', 'doctors', '2018-03-26 15:23:38', 0),
(260, 1, 'Created record with ID: 9 : ::1', 'photo_gallery', '2018-03-26 15:32:12', 0),
(261, 1, 'logged in from: ::1', 'users', '2018-03-28 12:45:29', 0),
(262, 1, 'logged in from: ::1', 'users', '2018-03-28 13:24:01', 0),
(263, 1, 'Migrate Type: about_ Uninstalled Version: 0 from: ::1', 'migrations', '2018-03-28 13:46:09', 0),
(264, 1, 'Migration module: about Version: 0 from: ::1', 'migrations', '2018-03-28 13:46:09', 0),
(265, 1, 'Migrate Type: about_ to Version: 2 from: ::1', 'migrations', '2018-03-28 13:46:15', 0),
(266, 1, 'Migration module: about Version: 2 from: ::1', 'migrations', '2018-03-28 13:46:15', 0),
(267, 1, 'logged in from: ::1', 'users', '2018-03-28 13:46:29', 0),
(268, 1, 'Created record with ID: 1 : ::1', 'about', '2018-03-28 13:52:35', 0),
(269, 1, 'Migrate Type: slider_ Uninstalled Version: 0 from: ::1', 'migrations', '2018-03-28 13:56:51', 0),
(270, 1, 'Migration module: slider Version: 0 from: ::1', 'migrations', '2018-03-28 13:56:51', 0),
(271, 1, 'Migrate Type: slider_ to Version: 2 from: ::1', 'migrations', '2018-03-28 13:56:57', 0),
(272, 1, 'Migration module: slider Version: 2 from: ::1', 'migrations', '2018-03-28 13:56:57', 0),
(273, 1, 'Migrate Type: faq_ Uninstalled Version: 0 from: ::1', 'migrations', '2018-03-28 13:59:51', 0),
(274, 1, 'Migration module: faq Version: 0 from: ::1', 'migrations', '2018-03-28 13:59:51', 0),
(275, 1, 'Migrate Type: faq_ to Version: 2 from: ::1', 'migrations', '2018-03-28 13:59:58', 0),
(276, 1, 'Migration module: faq Version: 2 from: ::1', 'migrations', '2018-03-28 13:59:58', 0),
(277, 1, 'Migrate Type: patients_say_ Uninstalled Version: 0 from: ::1', 'migrations', '2018-03-28 14:03:48', 0),
(278, 1, 'Migration module: patients_say Version: 0 from: ::1', 'migrations', '2018-03-28 14:03:48', 0),
(279, 1, 'Migrate Type: patients_say_ to Version: 2 from: ::1', 'migrations', '2018-03-28 14:04:03', 0),
(280, 1, 'Migration module: patients_say Version: 2 from: ::1', 'migrations', '2018-03-28 14:04:03', 0),
(281, 1, 'Migrate Type: meet_our_team_ Uninstalled Version: 0 from: ::1', 'migrations', '2018-03-28 14:06:55', 0),
(282, 1, 'Migration module: meet_our_team Version: 0 from: ::1', 'migrations', '2018-03-28 14:06:55', 0),
(283, 1, 'Migrate Type: meet_our_team_ to Version: 2 from: ::1', 'migrations', '2018-03-28 14:07:04', 0),
(284, 1, 'Migration module: meet_our_team Version: 2 from: ::1', 'migrations', '2018-03-28 14:07:04', 0),
(285, 1, 'modified user: admin', 'users', '2018-03-28 15:28:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bf_careers`
--

CREATE TABLE `bf_careers` (
  `id` int(11) NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `ar_title` varchar(255) NOT NULL,
  `en_description` text NOT NULL,
  `ar_description` text NOT NULL,
  `job_code` varchar(255) NOT NULL,
  `weight` int(11) NOT NULL,
  `status` tinyint(255) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_careers`
--

INSERT INTO `bf_careers` (`id`, `en_title`, `ar_title`, `en_description`, `ar_description`, `job_code`, `weight`, `status`, `deleted`, `deleted_by`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 'Staff Nurses ICU(F) : 4', 'مطلوب ممرضات عدد ٤', '<p><span style=\"color: rgb(34, 45, 125); font-family: \"Droid Arabic Kufi\", \"Helvetica Neue\", Helvetica, Arial, sans-serif;\">Experience Minimum 2-3 year working experiance in Multispeciality Hospital Qualification Diploma or Degree in their respective speciality.</span><br></p>', '<p>الخبرة خبرة 2-3 سنوات من العمل في دبلوم التأهيل متعدد التخصصات التخصصي أو درجة في تخصص كل منها.</p>', 'abc127', 0, 0, 0, NULL, '2018-03-12 10:14:44', 1, '0000-00-00 00:00:00', NULL),
(2, 'Staff Nurses ICU(F) : 4', 'مطلوب ممرضات عدد ٤', '<p><span style=\"color: rgb(34, 45, 125); font-family: \"Droid Arabic Kufi\", \"Helvetica Neue\", Helvetica, Arial, sans-serif;\">Experience Minimum 2-3 year working experiance in Multispeciality Hospital Qualification Diploma or Degree in their respective speciality.</span><br></p>', '<p>الخبرة خبرة 2-3 سنوات من العمل في دبلوم التأهيل متعدد التخصصات التخصصي أو درجة في تخصص كل منها.</p>', 'abc127', 0, 0, 0, NULL, '2018-03-12 10:14:44', 1, '0000-00-00 00:00:00', NULL),
(3, 'Staff Nurses ICU(F) : 4', 'مطلوب ممرضات عدد ٤', '<p><span style=\"color: rgb(34, 45, 125); font-family: \"Droid Arabic Kufi\", \"Helvetica Neue\", Helvetica, Arial, sans-serif;\">Experience Minimum 2-3 year working experiance in Multispeciality Hospital Qualification Diploma or Degree in their respective speciality.</span><br></p>', '<p>الخبرة خبرة 2-3 سنوات من العمل في دبلوم التأهيل متعدد التخصصات التخصصي أو درجة في تخصص كل منها.</p>', 'abc127', 0, 0, 0, NULL, '2018-03-12 10:14:44', 1, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bf_ci3_sessions`
--

CREATE TABLE `bf_ci3_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_ci3_sessions`
--

INSERT INTO `bf_ci3_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('005e3452906f034698cc0079ec9c0e503a31f0e0', '::1', 1522589270, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323538393031323b7265717565737465645f706167657c733a35333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f63617265657273223b70726576696f75735f706167657c733a35333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f63617265657273223b),
('006d2a34ace62cb0c038c8a33d41e964d528e28d', '::1', 1522063816, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323036333736303b7265717565737465645f706167657c733a37363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f70617469656e74735f7361792f656469742f31223b70726576696f75735f706167657c733a37363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f70617469656e74735f7361792f656469742f31223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('008622186511cd59bf6551dfff74feea47e01bbf', '::1', 1522238647, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323233383338343b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('03fd4311a1753d5fbf1873707c0d247ea20110f9', '::1', 1522249320, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323234393237363b7265717565737465645f706167657c733a36333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f686f6d652f73656e645f636f6e74616374223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('04a7ce061bbec14f3b82ba3365e66ed74e6f9dc8', '::1', 1522068274, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323036373937343b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f7574696c6974792f6c6f636174696f6e73223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f7574696c6974792f6c6f636174696f6e73223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('087809c0057df03d64009a253ff8699b6697ce69', '::1', 1522075580, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323037353430303b7265717565737465645f706167657c733a3130303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f646f5f6d756c74695f75706c6f61642f392f7364637364736463223b70726576696f75735f706167657c733a3130303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f646f5f6d756c74695f75706c6f61642f392f7364637364736463223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('13d30246facde353406284e300712f4988a69bf7', '::1', 1522076720, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323037363432303b7265717565737465645f706167657c733a39383a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f392f7364637364736463223b70726576696f75735f706167657c733a3130303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f646f5f6d756c74695f75706c6f61642f392f7364637364736463223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('20cd99725200a8c2e2659a4e7b06a6a28545e194', '::1', 1522251717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323235313433363b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('239b8315df008e5e8fe503807bb96579c966447f', '::1', 1522067182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323036363931353b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('2790891d138eea9a4631e596d950178aa3a3f1bd', '::1', 1522246441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323234363138393b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('27a283af9a0a8951db8475c3fc1c3231376ed8d7', '::1', 1522587912, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323538373931313b7265717565737465645f706167657c733a35333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f63617265657273223b70726576696f75735f706167657c733a35333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f63617265657273223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('2865da53db8f58e61f824ad882f791f5308c2f3f', '::1', 1522233929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323233333932353b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b),
('2acf66a80c1fbb2a39bbd3c704a39cbfccc6338b', '::1', 1522079161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323037393135323b7265717565737465645f706167657c733a3130303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f646f5f6d756c74695f75706c6f61642f392f7364637364736463223b70726576696f75735f706167657c733a3130303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f646f5f6d756c74695f75706c6f61642f392f7364637364736463223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('2f55ca744267f844878a4f4d9a485aa31dd04cb3', '::1', 1522250904, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323235303631343b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('32dbe90144216b27ed1fd478ed49eb01e0328eaa', '::1', 1522584973, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323538343638343b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b),
('354abc8f91a7c635e8cd737081693f790cffeaa1', '::1', 1522589633, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323538393333383b7265717565737465645f706167657c733a36353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f636172656572732f73656e645f636172656572223b70726576696f75735f706167657c733a35333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f63617265657273223b),
('3797ef5ee43b5bb38bdf6c81855dabddced8da57', '::1', 1522078350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323037383033333b7265717565737465645f706167657c733a3130303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f646f5f6d756c74695f75706c6f61642f392f7364637364736463223b70726576696f75735f706167657c733a3130303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f646f5f6d756c74695f75706c6f61642f392f7364637364736463223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('39a189a03f3eed356afaf77bd93fd517b8759da3', '::1', 1522070429, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323037303133393b7265717565737465645f706167657c733a36303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f61646d696e697374726174696f6e223b70726576696f75735f706167657c733a36303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f61646d696e697374726174696f6e223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('3a55f77506769f51500e06cdad7f9e3a06a47e7e', '::1', 1522585327, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323538353332373b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('3d5d1b36358c1aec5ec1a9e619174db648011551', '::1', 1522588297, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323538383231353b7265717565737465645f706167657c733a35333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f63617265657273223b70726576696f75735f706167657c733a35333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f63617265657273223b),
('4097be6bbdfb3408f1ca932b3f451979a725e364', '::1', 1522249688, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323234393635363b7265717565737465645f706167657c733a36333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f686f6d652f73656e645f636f6e74616374223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('425410448f6b8360b7efc4851ee9b0ac661f0e25', '::1', 1522248703, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323234383536343b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('470e658c60e6a5fd01c33aa410b3723ef09fad7b', '::1', 1522069191, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323036383937383b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('473f9a6ae4bdbf9dbe4ddd1844ab66ac071ee21f', '::1', 1522585327, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323538353031363b7265717565737465645f706167657c733a36333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f686f6d652f73656e645f636f6e74616374223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b6d6573736167657c733a33393a22737563636573733a3ad8aad98520d8a7d8b1d8b3d8a7d98420d8a7d984d8b1d8b3d8a7d984d8a9223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('47c07d14a787f0c7d527d3bf75dabd34e740ee78', '::1', 1522065069, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323036353036393b7265717565737465645f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f656469742f32223b70726576696f75735f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f656469742f32223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('4a52d95ed8cd28cfcdb10daf9242dcbbe1add393', '::1', 1522239099, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323233393039393b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6d6967726174696f6e73223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6d6967726174696f6e73223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('4dd5bed6689e5e1c3fcd3048f5c37fff9834c4b3', '::1', 1522236457, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323233363232393b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('525af5284f8830066fb7a6e8815b45f3e3fbf6eb', '::1', 1522073729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323037333336393b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a3130303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f646f5f6d756c74695f75706c6f61642f392f7364637364736463223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('52f5218121d337c0cb1867177705f946081a9484', '::1', 1522068591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323036383539313b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('5aa66ca9ca7a48733ad2a975915b42bcb9302193', '::1', 1522234354, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323233343237393b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b),
('5dcb074454b96424edeb42ec2014cfb0bc62006c', '::1', 1522237114, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323233363934393b7265717565737465645f706167657c733a36333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f736c69646572223b70726576696f75735f706167657c733a36333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f736c69646572223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('5f97129d9cd1704a711b60949f37b8e05bc7f84f', '::1', 1522251943, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323235313734353b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('61da54bdae96fecab86e89d778209ee3721962ae', '::1', 1522070726, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323037303537323b7265717565737465645f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f656469742f32223b70726576696f75735f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f656469742f32223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('621c02a6282d85f41376ed6d3c900f0e0941cc3d', '::1', 1522235693, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323233353439303b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('622cad82337de77d13b0b7983e99a801fdccd007', '::1', 1522245004, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323234343735373b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('64b4bdfa110327798c47da764f6278c7da4af09d', '::1', 1522244071, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323234333739343b7265717565737465645f706167657c733a36353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f73657474696e67732f656d61696c6572223b70726576696f75735f706167657c733a36353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f73657474696e67732f656d61696c6572223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('6b7dcd96b936e1e8bdd17197aef836bbb5c1740a', '::1', 1522246932, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323234363731353b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('7395279e0f6682ae40ca66643866b50c1ae00341', '::1', 1522238225, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323233373933323b7265717565737465645f706167657c733a36343a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f686f6d65706167652f736c69646572223b70726576696f75735f706167657c733a36343a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f686f6d65706167652f736c69646572223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('74d0db2111bb92ca21bac7dcae88827bdfe3652b', '::1', 1522065973, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323036353637353b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('76a3e000bb98807d732b0590ba8912287d7a2aea', '::1', 1522252410, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323235323230313b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('8768ec5f97be90634dee25fd0878cb0c8b98906d', '::1', 1522249089, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323234383933393b7265717565737465645f706167657c733a36333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f686f6d652f73656e645f636f6e74616374223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('93b2d681fdc5fc9cd6afdac5586149dd2ea03223', '::1', 1522247922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323234373731313b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('a1761b95432bc7fa4bbc0208c53a056f88571273', '::1', 1522067577, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323036373534353b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('a78dc91f0c65985143267193f042c22ce518321b', '::1', 1522072642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323037323631363b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a3130303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f646f5f6d756c74695f75706c6f61642f392f7364637364736463223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('aad19e9a639d2e9cae3ccd8c45cae2304bb93843', '::1', 1522243744, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323234333438363b7265717565737465645f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f73657474696e67732f656d61696c65722f7175657565223b70726576696f75735f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f73657474696e67732f656d61696c65722f7175657565223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('b351b9d71bf504dc39c7c7d6e648dbd03edaf10a', '::1', 1522244307, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323234343136303b7265717565737465645f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f73657474696e67732f656d61696c65722f7175657565223b70726576696f75735f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f73657474696e67732f656d61696c65722f7175657565223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('b37bf50dcafd9d10dc22f27d0502414fe21c4d53', '::1', 1522071163, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323037303837373b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a3130303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f646f5f6d756c74695f75706c6f61642f392f7364637364736463223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('b514e6b0254b6ffac47c5e7b3b33d23255f4c95d', '::1', 1522075886, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323037353736303b7265717565737465645f706167657c733a3130303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f646f5f6d756c74695f75706c6f61642f392f7364637364736463223b70726576696f75735f706167657c733a3130303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f646f5f6d756c74695f75706c6f61642f392f7364637364736463223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('b534cdfdab36ec1373049fcfab00c9c25b31bfcf', '::1', 1522251094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323235303938303b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('b5709407fed964625df6f01c8eb2ff57822349d7', '::1', 1522245347, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323234353231313b7265717565737465645f706167657c733a36333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f686f6d652f73656e645f636f6e74616374223b70726576696f75735f706167657c733a36333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f686f6d652f73656e645f636f6e74616374223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('c0050811a759047ed85653cc1822fb9047106d9c', '::1', 1522068557, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323036383237393b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('c0501d84cf567e1d5db05a40bcd13f8d3368e12f', '::1', 1522064688, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323036343431373b7265717565737465645f706167657c733a35333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f646f63746f7273223b70726576696f75735f706167657c733a35333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f646f63746f7273223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('c4792e9e9e6b11d0326bc96affa1558d0c5721fe', '::1', 1522236870, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323233363630313b7265717565737465645f706167657c733a36333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f736c69646572223b70726576696f75735f706167657c733a36333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f736c69646572223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('c590c34365108db6f4b4c69760886caa168d3c31', '::1', 1522075207, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323037353030303b7265717565737465645f706167657c733a3130303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f646f5f6d756c74695f75706c6f61642f392f7364637364736463223b70726576696f75735f706167657c733a3130303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f646f5f6d756c74695f75706c6f61642f392f7364637364736463223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('c6ffb995964044a344b6ae601ac20bd6a249da02', '::1', 1522070130, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323036393833373b7265717565737465645f706167657c733a35333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f646f63746f7273223b70726576696f75735f706167657c733a35333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f646f63746f7273223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('c72d53ea232a921f2358cfa40a41906e6a449a0f', '::1', 1522064240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323036343130343b7265717565737465645f706167657c733a36373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6661712f656469742f31223b70726576696f75735f706167657c733a36373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6661712f656469742f31223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('c7b6d69300159a02d485a5339dcf595c40adc636', '::1', 1522245638, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323234353539393b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('d422335ef33ff8b70d84acf5b0ea75678269e18c', '::1', 1522240547, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323234303333333b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('e1f37a6e9b20d6cc33891e505ac535dabec7a209', '::1', 1522063724, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323036333433313b7265717565737465645f706167657c733a37363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f70617469656e74735f7361792f656469742f31223b70726576696f75735f706167657c733a37363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f70617469656e74735f7361792f656469742f31223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('e8aa78bedcecb7dad96017c30fe97c8d4ecc4402', '::1', 1522237814, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323233373538303b7265717565737465645f706167657c733a36333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f686f6d65706167652f61626f7574223b70726576696f75735f706167657c733a36333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f686f6d65706167652f61626f7574223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b);
INSERT INTO `bf_ci3_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('e94ba0cc1c71ad40a6a12f3d8d8561b2334f80e9', '::1', 1522238833, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323233383739363b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('eaeab690f317073b25b033f72d58e492c6e65c33', '::1', 1522076973, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323037363733363b7265717565737465645f706167657c733a3130303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f646f5f6d756c74695f75706c6f61642f392f7364637364736463223b70726576696f75735f706167657c733a3130303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f646f5f6d756c74695f75706c6f61642f392f7364637364736463223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('f210bb6abbe0c3bb75dd3418e614eddbb18452e0', '::1', 1522078731, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323037383634373b7265717565737465645f706167657c733a3130303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f646f5f6d756c74695f75706c6f61642f392f7364637364736463223b70726576696f75735f706167657c733a3130303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f646f5f6d756c74695f75706c6f61642f392f7364637364736463223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('f27ab3877f17c2ba372251659e41dc228c5f7486', '::1', 1522074114, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323037333937383b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a3130303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f646f5f6d756c74695f75706c6f61642f392f7364637364736463223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('f7da54979945bb9298951e56fae621f5dcf7d797', '::1', 1522250461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323235303137363b7265717565737465645f706167657c733a36333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f686f6d652f73656e645f636f6e74616374223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('fc4019b12b3de766e9e3ee627c6da90b2aa8dbaf', '::1', 1522235305, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323233353033343b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b);

-- --------------------------------------------------------

--
-- Table structure for table `bf_countries`
--

CREATE TABLE `bf_countries` (
  `iso` char(2) NOT NULL DEFAULT 'US',
  `name` varchar(80) NOT NULL,
  `printable_name` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_countries`
--

INSERT INTO `bf_countries` (`iso`, `name`, `printable_name`, `iso3`, `numcode`) VALUES
('AD', 'ANDORRA', 'Andorra', 'AND', 20),
('AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784),
('AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4),
('AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28),
('AI', 'ANGUILLA', 'Anguilla', 'AIA', 660),
('AL', 'ALBANIA', 'Albania', 'ALB', 8),
('AM', 'ARMENIA', 'Armenia', 'ARM', 51),
('AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530),
('AO', 'ANGOLA', 'Angola', 'AGO', 24),
('AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL),
('AR', 'ARGENTINA', 'Argentina', 'ARG', 32),
('AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16),
('AT', 'AUSTRIA', 'Austria', 'AUT', 40),
('AU', 'AUSTRALIA', 'Australia', 'AUS', 36),
('AW', 'ARUBA', 'Aruba', 'ABW', 533),
('AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31),
('BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70),
('BB', 'BARBADOS', 'Barbados', 'BRB', 52),
('BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50),
('BE', 'BELGIUM', 'Belgium', 'BEL', 56),
('BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854),
('BG', 'BULGARIA', 'Bulgaria', 'BGR', 100),
('BH', 'BAHRAIN', 'Bahrain', 'BHR', 48),
('BI', 'BURUNDI', 'Burundi', 'BDI', 108),
('BJ', 'BENIN', 'Benin', 'BEN', 204),
('BM', 'BERMUDA', 'Bermuda', 'BMU', 60),
('BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96),
('BO', 'BOLIVIA', 'Bolivia', 'BOL', 68),
('BR', 'BRAZIL', 'Brazil', 'BRA', 76),
('BS', 'BAHAMAS', 'Bahamas', 'BHS', 44),
('BT', 'BHUTAN', 'Bhutan', 'BTN', 64),
('BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL),
('BW', 'BOTSWANA', 'Botswana', 'BWA', 72),
('BY', 'BELARUS', 'Belarus', 'BLR', 112),
('BZ', 'BELIZE', 'Belize', 'BLZ', 84),
('CA', 'CANADA', 'Canada', 'CAN', 124),
('CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL),
('CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180),
('CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140),
('CG', 'CONGO', 'Congo', 'COG', 178),
('CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756),
('CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384),
('CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184),
('CL', 'CHILE', 'Chile', 'CHL', 152),
('CM', 'CAMEROON', 'Cameroon', 'CMR', 120),
('CN', 'CHINA', 'China', 'CHN', 156),
('CO', 'COLOMBIA', 'Colombia', 'COL', 170),
('CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188),
('CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL),
('CU', 'CUBA', 'Cuba', 'CUB', 192),
('CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132),
('CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL),
('CY', 'CYPRUS', 'Cyprus', 'CYP', 196),
('CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203),
('DE', 'GERMANY', 'Germany', 'DEU', 276),
('DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262),
('DK', 'DENMARK', 'Denmark', 'DNK', 208),
('DM', 'DOMINICA', 'Dominica', 'DMA', 212),
('DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214),
('DZ', 'ALGERIA', 'Algeria', 'DZA', 12),
('EC', 'ECUADOR', 'Ecuador', 'ECU', 218),
('EE', 'ESTONIA', 'Estonia', 'EST', 233),
('EG', 'EGYPT', 'Egypt', 'EGY', 818),
('EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732),
('ER', 'ERITREA', 'Eritrea', 'ERI', 232),
('ES', 'SPAIN', 'Spain', 'ESP', 724),
('ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231),
('FI', 'FINLAND', 'Finland', 'FIN', 246),
('FJ', 'FIJI', 'Fiji', 'FJI', 242),
('FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238),
('FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583),
('FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234),
('FR', 'FRANCE', 'France', 'FRA', 250),
('GA', 'GABON', 'Gabon', 'GAB', 266),
('GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826),
('GD', 'GRENADA', 'Grenada', 'GRD', 308),
('GE', 'GEORGIA', 'Georgia', 'GEO', 268),
('GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254),
('GH', 'GHANA', 'Ghana', 'GHA', 288),
('GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292),
('GL', 'GREENLAND', 'Greenland', 'GRL', 304),
('GM', 'GAMBIA', 'Gambia', 'GMB', 270),
('GN', 'GUINEA', 'Guinea', 'GIN', 324),
('GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312),
('GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226),
('GR', 'GREECE', 'Greece', 'GRC', 300),
('GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL),
('GT', 'GUATEMALA', 'Guatemala', 'GTM', 320),
('GU', 'GUAM', 'Guam', 'GUM', 316),
('GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624),
('GY', 'GUYANA', 'Guyana', 'GUY', 328),
('HK', 'HONG KONG', 'Hong Kong', 'HKG', 344),
('HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL),
('HN', 'HONDURAS', 'Honduras', 'HND', 340),
('HR', 'CROATIA', 'Croatia', 'HRV', 191),
('HT', 'HAITI', 'Haiti', 'HTI', 332),
('HU', 'HUNGARY', 'Hungary', 'HUN', 348),
('ID', 'INDONESIA', 'Indonesia', 'IDN', 360),
('IE', 'IRELAND', 'Ireland', 'IRL', 372),
('IL', 'ISRAEL', 'Israel', 'ISR', 376),
('IN', 'INDIA', 'India', 'IND', 356),
('IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL),
('IQ', 'IRAQ', 'Iraq', 'IRQ', 368),
('IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364),
('IS', 'ICELAND', 'Iceland', 'ISL', 352),
('IT', 'ITALY', 'Italy', 'ITA', 380),
('JM', 'JAMAICA', 'Jamaica', 'JAM', 388),
('JO', 'JORDAN', 'Jordan', 'JOR', 400),
('JP', 'JAPAN', 'Japan', 'JPN', 392),
('KE', 'KENYA', 'Kenya', 'KEN', 404),
('KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417),
('KH', 'CAMBODIA', 'Cambodia', 'KHM', 116),
('KI', 'KIRIBATI', 'Kiribati', 'KIR', 296),
('KM', 'COMOROS', 'Comoros', 'COM', 174),
('KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659),
('KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408),
('KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410),
('KW', 'KUWAIT', 'Kuwait', 'KWT', 414),
('KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136),
('KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398),
('LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418),
('LB', 'LEBANON', 'Lebanon', 'LBN', 422),
('LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662),
('LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438),
('LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144),
('LR', 'LIBERIA', 'Liberia', 'LBR', 430),
('LS', 'LESOTHO', 'Lesotho', 'LSO', 426),
('LT', 'LITHUANIA', 'Lithuania', 'LTU', 440),
('LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442),
('LV', 'LATVIA', 'Latvia', 'LVA', 428),
('LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434),
('MA', 'MOROCCO', 'Morocco', 'MAR', 504),
('MC', 'MONACO', 'Monaco', 'MCO', 492),
('MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498),
('MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450),
('MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584),
('MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807),
('ML', 'MALI', 'Mali', 'MLI', 466),
('MM', 'MYANMAR', 'Myanmar', 'MMR', 104),
('MN', 'MONGOLIA', 'Mongolia', 'MNG', 496),
('MO', 'MACAO', 'Macao', 'MAC', 446),
('MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580),
('MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474),
('MR', 'MAURITANIA', 'Mauritania', 'MRT', 478),
('MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500),
('MT', 'MALTA', 'Malta', 'MLT', 470),
('MU', 'MAURITIUS', 'Mauritius', 'MUS', 480),
('MV', 'MALDIVES', 'Maldives', 'MDV', 462),
('MW', 'MALAWI', 'Malawi', 'MWI', 454),
('MX', 'MEXICO', 'Mexico', 'MEX', 484),
('MY', 'MALAYSIA', 'Malaysia', 'MYS', 458),
('MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508),
('NA', 'NAMIBIA', 'Namibia', 'NAM', 516),
('NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540),
('NE', 'NIGER', 'Niger', 'NER', 562),
('NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574),
('NG', 'NIGERIA', 'Nigeria', 'NGA', 566),
('NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558),
('NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528),
('NO', 'NORWAY', 'Norway', 'NOR', 578),
('NP', 'NEPAL', 'Nepal', 'NPL', 524),
('NR', 'NAURU', 'Nauru', 'NRU', 520),
('NU', 'NIUE', 'Niue', 'NIU', 570),
('NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554),
('OM', 'OMAN', 'Oman', 'OMN', 512),
('PA', 'PANAMA', 'Panama', 'PAN', 591),
('PE', 'PERU', 'Peru', 'PER', 604),
('PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258),
('PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598),
('PH', 'PHILIPPINES', 'Philippines', 'PHL', 608),
('PK', 'PAKISTAN', 'Pakistan', 'PAK', 586),
('PL', 'POLAND', 'Poland', 'POL', 616),
('PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666),
('PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612),
('PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630),
('PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL),
('PT', 'PORTUGAL', 'Portugal', 'PRT', 620),
('PW', 'PALAU', 'Palau', 'PLW', 585),
('PY', 'PARAGUAY', 'Paraguay', 'PRY', 600),
('QA', 'QATAR', 'Qatar', 'QAT', 634),
('RE', 'REUNION', 'Reunion', 'REU', 638),
('RO', 'ROMANIA', 'Romania', 'ROM', 642),
('RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643),
('RW', 'RWANDA', 'Rwanda', 'RWA', 646),
('SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682),
('SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90),
('SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690),
('SD', 'SUDAN', 'Sudan', 'SDN', 736),
('SE', 'SWEDEN', 'Sweden', 'SWE', 752),
('SG', 'SINGAPORE', 'Singapore', 'SGP', 702),
('SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654),
('SI', 'SLOVENIA', 'Slovenia', 'SVN', 705),
('SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744),
('SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703),
('SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694),
('SM', 'SAN MARINO', 'San Marino', 'SMR', 674),
('SN', 'SENEGAL', 'Senegal', 'SEN', 686),
('SO', 'SOMALIA', 'Somalia', 'SOM', 706),
('SR', 'SURINAME', 'Suriname', 'SUR', 740),
('ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678),
('SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222),
('SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760),
('SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748),
('TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796),
('TD', 'CHAD', 'Chad', 'TCD', 148),
('TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL),
('TG', 'TOGO', 'Togo', 'TGO', 768),
('TH', 'THAILAND', 'Thailand', 'THA', 764),
('TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762),
('TK', 'TOKELAU', 'Tokelau', 'TKL', 772),
('TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL),
('TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795),
('TN', 'TUNISIA', 'Tunisia', 'TUN', 788),
('TO', 'TONGA', 'Tonga', 'TON', 776),
('TR', 'TURKEY', 'Turkey', 'TUR', 792),
('TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780),
('TV', 'TUVALU', 'Tuvalu', 'TUV', 798),
('TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158),
('TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834),
('UA', 'UKRAINE', 'Ukraine', 'UKR', 804),
('UG', 'UGANDA', 'Uganda', 'UGA', 800),
('UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL),
('US', 'UNITED STATES', 'United States', 'USA', 840),
('UY', 'URUGUAY', 'Uruguay', 'URY', 858),
('UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860),
('VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336),
('VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670),
('VE', 'VENEZUELA', 'Venezuela', 'VEN', 862),
('VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92),
('VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850),
('VN', 'VIET NAM', 'Viet Nam', 'VNM', 704),
('VU', 'VANUATU', 'Vanuatu', 'VUT', 548),
('WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876),
('WS', 'SAMOA', 'Samoa', 'WSM', 882),
('YE', 'YEMEN', 'Yemen', 'YEM', 887),
('YT', 'MAYOTTE', 'Mayotte', NULL, NULL),
('ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710),
('ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894),
('ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716);

-- --------------------------------------------------------

--
-- Table structure for table `bf_departments`
--

CREATE TABLE `bf_departments` (
  `id` int(11) NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `ar_title` varchar(255) NOT NULL,
  `en_description` text NOT NULL,
  `ar_description` text NOT NULL,
  `en_image_title` varchar(255) NOT NULL,
  `ar_image_title` varchar(255) DEFAULT NULL,
  `en_image_description` text,
  `ar_image_description` text,
  `dep_image` varchar(255) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_departments`
--

INSERT INTO `bf_departments` (`id`, `en_title`, `ar_title`, `en_description`, `ar_description`, `en_image_title`, `ar_image_title`, `en_image_description`, `ar_image_description`, `dep_image`, `weight`, `status`, `deleted`, `deleted_by`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 'Dermatology & Venereology', 'الأمراض الجلدية والتناسلية', '<p>Venereology is a branch of medicine that is concerned with the study and treatment of sexually transmitted diseases. The name derives from Roman goddess Venus, associated with love, beauty and fertility. A physician specializing in venereology is called a venereologist. The specialty is usually combined with dermatology.</p>', '<p><span style=\"font-weight: lighter;\">علم التناسلية هو فرع من فروع الطب التي تعنى بدراسة وعلاج الأمراض المنقولة عن طريق الاتصال الجنسي. اسم مستمد من إلهة فينوس الرومانية، المرتبطة الحب والجمال والخصوبة. ويختص الطبيب المتخصص في علم التناسلية بعلم الأمراض الوريدية. وعادة ما يتم الجمع بين التخصص مع الأمراض الجلدية</span><br></p>', 'Dermatology & Venereology', 'الأمراض الجلدية والتناسلية', '<p>Venereology is a branch of medicine that is concerned with the study and treatment of sexually transmitted diseases. The name derives from Roman goddess Venus, associated with love, beauty and fertility. A physician specializing in venereology is called a venereologist. The specialty is usually combined with dermatology.<br></p>', '<p>علم التناسلية هو فرع من فروع الطب التي تعنى بدراسة وعلاج الأمراض المنقولة عن طريق الاتصال الجنسي. اسم مستمد من إلهة فينوس الرومانية، المرتبطة الحب والجمال والخصوبة. ويختص الطبيب المتخصص في علم التناسلية بعلم الأمراض الوريدية. وعادة ما يتم الجمع بين التخصص مع الأمراض الجلدية<br></p>', 'tab_img_01.jpg', 0, 0, 0, NULL, '2018-02-07 11:03:35', 1, '2018-03-07 19:14:58', 1),
(2, 'Skin Care', 'العناية بالبشرة', '<p>Venereology is a branch of medicine that is concerned with the study and treatment of sexually transmitted diseases. The name derives from Roman goddess Venus, associated with love, beauty and fertility. A physician specializing in venereology is called a venereologist. The specialty is usually combined with dermatology.</p><div><br></div>', '<p>علم التناسلية هو فرع من فروع الطب التي تعنى بدراسة وعلاج الأمراض المنقولة عن طريق الاتصال الجنسي. اسم مستمد من إلهة فينوس الرومانية، المرتبطة الحب والجمال والخصوبة. ويختص الطبيب المتخصص في علم التناسلية بعلم الأمراض الوريدية. وعادة ما يتم الجمع بين التخصص مع الأمراض الجلدية<br></p>', 'Skin Care', 'العناية بالبشرة', '<p>tutu</p>', '<p>علم التناسلية هو فرع من فروع الطب التي تعنى بدراسة وعلاج الأمراض المنقولة عن طريق الاتصال الجنسي. اسم مستمد من إلهة فينوس الرومانية، المرتبطة الحب والجمال والخصوبة. ويختص الطبيب المتخصص في علم التناسلية بعلم الأمراض الوريدية. وعادة ما يتم الجمع بين التخصص مع الأمراض الجلدية<br></p>', 'tab_img_01.jpg', 1, 1, 0, NULL, '2018-02-07 11:10:47', 1, '2018-03-07 19:16:17', 1),
(3, 'Plastic Surgery', 'جراحة تجميلية', '<p>Venereology is a branch of medicine that is concerned with the study and treatment of sexually transmitted diseases. The name derives from Roman goddess Venus, associated with love, beauty and fertility. A physician specializing in venereology is called a venereologist. The specialty is usually combined with dermatology.<br></p>', '<p>علم التناسلية هو فرع من فروع الطب التي تعنى بدراسة وعلاج الأمراض المنقولة عن طريق الاتصال الجنسي. اسم مستمد من إلهة فينوس الرومانية، المرتبطة الحب والجمال والخصوبة. ويختص الطبيب المتخصص في علم التناسلية بعلم الأمراض الوريدية. وعادة ما يتم الجمع بين التخصص مع الأمراض الجلدية<br></p>', 'Plastic Surgery', 'جراحة تجميلية', '<p>Venereology is a branch of medicine that is concerned with the study and treatment of sexually transmitted diseases. The name derives from Roman goddess Venus, associated with love, beauty and fertility. A physician specializing in venereology is called a venereologist. The specialty is usually combined with dermatology.<br></p>', '<p>علم التناسلية هو فرع من فروع الطب التي تعنى بدراسة وعلاج الأمراض المنقولة عن طريق الاتصال الجنسي. اسم مستمد من إلهة فينوس الرومانية، المرتبطة الحب والجمال والخصوبة. ويختص الطبيب المتخصص في علم التناسلية بعلم الأمراض الوريدية. وعادة ما يتم الجمع بين التخصص مع الأمراض الجلدية<br></p>', 'tab_img_01.jpg', 2, 0, 0, NULL, '2018-02-07 11:14:47', 1, '2018-03-07 19:17:57', 1),
(4, 'Laser Therapy', 'العلاج بالليزر', '<p>Venereology is a branch of medicine that is concerned with the study and treatment of sexually transmitted diseases. The name derives from Roman goddess Venus, associated with love, beauty and fertility. A physician specializing in venereology is called a venereologist. The specialty is usually combined with dermatology.<br></p>', '<p>علم التناسلية هو فرع من فروع الطب التي تعنى بدراسة وعلاج الأمراض المنقولة عن طريق الاتصال الجنسي. اسم مستمد من إلهة فينوس الرومانية، المرتبطة الحب والجمال والخصوبة. ويختص الطبيب المتخصص في علم التناسلية بعلم الأمراض الوريدية. وعادة ما يتم الجمع بين التخصص مع الأمراض الجلدية<br></p>', 'Laser Therapy', 'العلاج بالليزر', '<p>Venereology is a branch of medicine that is concerned with the study and treatment of sexually transmitted diseases. The name derives from Roman goddess Venus, associated with love, beauty and fertility. A physician specializing in venereology is called a venereologist. The specialty is usually combined with dermatology.<br></p>', '<p>علم التناسلية هو فرع من فروع الطب التي تعنى بدراسة وعلاج الأمراض المنقولة عن طريق الاتصال الجنسي. اسم مستمد من إلهة فينوس الرومانية، المرتبطة الحب والجمال والخصوبة. ويختص الطبيب المتخصص في علم التناسلية بعلم الأمراض الوريدية. وعادة ما يتم الجمع بين التخصص مع الأمراض الجلدية<br></p>', 'tab_img_01.jpg', 3, 0, 0, NULL, '2018-02-07 14:23:10', 1, '2018-03-07 19:19:09', 1),
(5, 'Dental Care', 'العناية بالأسنان', '<p>Venereology is a branch of medicine that is concerned with the study and treatment of sexually transmitted diseases. The name derives from Roman goddess Venus, associated with love, beauty and fertility. A physician specializing in venereology is called a venereologist. The specialty is usually combined with dermatology.<br></p>', '<p>علم التناسلية هو فرع من فروع الطب التي تعنى بدراسة وعلاج الأمراض المنقولة عن طريق الاتصال الجنسي. اسم مستمد من إلهة فينوس الرومانية، المرتبطة الحب والجمال والخصوبة. ويختص الطبيب المتخصص في علم التناسلية بعلم الأمراض الوريدية. وعادة ما يتم الجمع بين التخصص مع الأمراض الجلدية<br></p>', 'Dental Care', 'العناية بالأسنان', '<p>Venereology is a branch of medicine that is concerned with the study and treatment of sexually transmitted diseases. The name derives from Roman goddess Venus, associated with love, beauty and fertility. A physician specializing in venereology is called a venereologist. The specialty is usually combined with dermatology.<br></p>', '<p>علم التناسلية هو فرع من فروع الطب التي تعنى بدراسة وعلاج الأمراض المنقولة عن طريق الاتصال الجنسي. اسم مستمد من إلهة فينوس الرومانية، المرتبطة الحب والجمال والخصوبة. ويختص الطبيب المتخصص في علم التناسلية بعلم الأمراض الوريدية. وعادة ما يتم الجمع بين التخصص مع الأمراض الجلدية<br></p>', 'tab_img_01.jpg', 4, 0, 0, NULL, '2018-02-19 20:00:23', 1, '2018-03-07 19:20:25', 1),
(6, 'Laboratory & Pathology', 'مختبر وعلم الأمراض', '<p>Venereology is a branch of medicine that is concerned with the study and treatment of sexually transmitted diseases. The name derives from Roman goddess Venus, associated with love, beauty and fertility. A physician specializing in venereology is called a venereologist. The specialty is usually combined with dermatology.<br></p>', '<p>علم التناسلية هو فرع من فروع الطب التي تعنى بدراسة وعلاج الأمراض المنقولة عن طريق الاتصال الجنسي. اسم مستمد من إلهة فينوس الرومانية، المرتبطة الحب والجمال والخصوبة. ويختص الطبيب المتخصص في علم التناسلية بعلم الأمراض الوريدية. وعادة ما يتم الجمع بين التخصص مع الأمراض الجلدية<br></p>', 'Laboratory & Pathology', 'مختبر وعلم الأمراض', '<p>Venereology is a branch of medicine that is concerned with the study and treatment of sexually transmitted diseases. The name derives from Roman goddess Venus, associated with love, beauty and fertility. A physician specializing in venereology is called a venereologist. The specialty is usually combined with dermatology.<br></p>', '<p>علم التناسلية هو فرع من فروع الطب التي تعنى بدراسة وعلاج الأمراض المنقولة عن طريق الاتصال الجنسي. اسم مستمد من إلهة فينوس الرومانية، المرتبطة الحب والجمال والخصوبة. ويختص الطبيب المتخصص في علم التناسلية بعلم الأمراض الوريدية. وعادة ما يتم الجمع بين التخصص مع الأمراض الجلدية<br></p>', 'tab_img_01.jpg', 5, 0, 0, NULL, '2018-03-07 19:21:07', 1, '2018-03-07 19:21:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bf_doctors`
--

CREATE TABLE `bf_doctors` (
  `id` int(11) NOT NULL,
  `en_name` varchar(255) NOT NULL,
  `ar_name` varchar(255) NOT NULL,
  `en_job_title` varchar(255) NOT NULL,
  `ar_job_title` varchar(255) NOT NULL,
  `en_academic` varchar(255) NOT NULL,
  `ar_academic` varchar(255) NOT NULL,
  `en_description` text NOT NULL,
  `ar_description` text NOT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `personal_photo` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `google` varchar(255) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_doctors`
--

INSERT INTO `bf_doctors` (`id`, `en_name`, `ar_name`, `en_job_title`, `ar_job_title`, `en_academic`, `ar_academic`, `en_description`, `ar_description`, `cover_image`, `personal_photo`, `facebook`, `twitter`, `google`, `weight`, `type`, `status`, `deleted`, `deleted_by`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 'Dr. angela', 'د. انجيلا', 'dentistry', 'طب اسنان', 'Lorem Ipsum', 'لوريم ابسوم', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic </span><br></p>', '<p><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل</span><br></p>', '01.jpg', '01.jpg', '#', '#', '#', 0, 0, 1, 0, NULL, '2018-02-07 14:13:48', 1, '2018-03-26 13:40:27', 1),
(2, 'Dr. John', 'د. جون', 'Dermatologist', 'الأمراض الجلدية', 'Lorem Ipsom', 'لوريم ابسوم', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic </span><br></p>', '<p><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ </span><br></p>', '02.jpg', '02.jpg', 'f', 'ff', 'f', 1, 1, 0, 0, NULL, '2018-02-07 14:16:37', 1, '2018-03-26 15:23:38', 1),
(4, 'Dr. John', 'د. جون', 'Dermatologist', 'الأمراض الجلدية', 'Lorem Ipsom', 'لوريم ابسوم', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic </span><br></p>', '<p><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ </span><br></p>', '03.jpg', '03.jpg', NULL, NULL, NULL, 2, 0, 0, 0, NULL, '2018-02-07 14:16:37', 1, '2018-03-07 20:20:03', 1),
(5, 'Dr. angela', 'د. انجيلا', 'dentistry', 'طب اسنان', 'Lorem Ipsum', 'لوريم ابسوم', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic </span><br></p>', '<p><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل</span><br></p>', '04.jpg', '04.jpg', NULL, NULL, NULL, 4, 0, 0, 0, NULL, '2018-02-07 14:13:48', 1, '2018-03-07 20:19:54', 1),
(6, 'Dr. John', 'د. جون', 'Dermatologist', 'الأمراض الجلدية', 'Lorem Ipsom', 'لوريم ابسوم', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic </span><br></p>', '<p><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ </span><br></p>', '06.jpg', '06.jpg', NULL, NULL, NULL, 5, 0, 0, 0, NULL, '2018-02-07 14:16:37', 1, '2018-03-07 20:19:27', 1),
(7, 'Dr. angela', 'د. انجيلا', 'dentistry', 'طب اسنان', 'Lorem Ipsum', 'لوريم ابسوم', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic </span><br></p>', '<p><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل</span><br></p>', '05.jpg', '05.jpg', NULL, NULL, NULL, 6, 0, 0, 0, NULL, '2018-02-07 14:13:48', 1, '2018-03-07 20:19:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bf_emails`
--

CREATE TABLE `bf_emails` (
  `id` int(11) NOT NULL,
  `careers_email` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_emails`
--

INSERT INTO `bf_emails` (`id`, `careers_email`, `contact_email`, `deleted`, `deleted_by`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 'dqwd@wqedqwd.com', 'moheb.hawari@gmail.com', 0, NULL, '0000-00-00 00:00:00', 0, '2018-03-21 14:33:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bf_email_queue`
--

CREATE TABLE `bf_email_queue` (
  `id` int(11) NOT NULL,
  `to_email` varchar(254) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `alt_message` text,
  `max_attempts` int(11) NOT NULL DEFAULT '3',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `success` tinyint(1) NOT NULL DEFAULT '0',
  `date_published` datetime DEFAULT NULL,
  `last_attempt` datetime DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `csv_attachment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_email_queue`
--

INSERT INTO `bf_email_queue` (`id`, `to_email`, `subject`, `message`, `alt_message`, `max_attempts`, `attempts`, `success`, `date_published`, `last_attempt`, `date_sent`, `csv_attachment`) VALUES
(4, 'moheb.hawari@gmail.com', 'erfcerv', 'eververv', NULL, 3, 1, 1, NULL, '2018-03-28 15:29:04', '2018-03-28 15:29:04', NULL),
(6, 'moheb.hawari@gmail.com', 'Contact Us', '<html>\r\n<body leftmargin=\"0\" marginwidth=\"0\" topmargin=\"0\" marginheight=\"0\" offset=\"0\" bgcolor=\'#ececec\'>\r\n<style>\r\n .headerTop { background-color:#FFCC66; border-top:0px solid #000000; border-bottom:1px solid #FFFFFF; text-align:center; }\r\n .adminText { font-size:10px; color:#996600; line-height:200%; font-family:verdana; text-decoration:none; }\r\n .headerBar { background-color:#FFFFFF; border-top:0px solid #333333; border-bottom:10px solid #FFFFFF; }\r\n .title { font-size:20px; font-weight:bold; color:#CC6600; font-family:arial; line-height:110%; }\r\n .subTitle { font-size:11px; font-weight:normal; color:#666666; font-style:italic; font-family:arial; }\r\n .defaultText { font-size:12px; color:#000000; line-height:150%; font-family:trebuchet ms; }\r\n .footerRow { background-color:#FFFFCC; border-top:10px solid #FFFFFF; }\r\n .footerText { font-size:10px; color:#996600; line-height:100%; font-family:verdana; }\r\n a { color:#FF6600; color:#FF6600; color:#FF6600; }\r\n</style>\r\n<table width=\"100%\" cellpadding=\"10\" cellspacing=\"0\" class=\"backgroundTable\">\r\n    <tr>\r\n        <td valign=\"top\" align=\"center\">\r\n            <table width=\"550\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#fff\" style=\"border: 1px solid #999\">\r\n                <tr>\r\n                    <td style=\"background-color:#333;color: #fff;text-align:center;\" align=\"center\">\r\n<!--	<span style=\"font-size:10px;line-height:200%;font-family:verdana;text-decoration:none;\">Email not displaying correctly? <a href=\"*|ARCHIVE|*\" style=\"font-size:10px;line-height:200%;font-family:verdana;text-decoration:none;\">View it in your browser.</a></span> -->\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n            </table>\r\n            <table width=\"550\" cellpadding=\"20\" cellspacing=\"0\" bgcolor=\"#FFFFFF\">\r\n                <tr>\r\n                    <td bgcolor=\"#FFFFFF\" valign=\"top\" style=\"font-size:12px;color:#000000;line-height:150%;font-family:trebuchet ms;\">Please give my password						</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"background-color:#fff;border-top:1px solid #ccc;\" valign=\"top\">\r\n							Copyright (C) 2014. All rights reserved for UIGTC Group.\r\n						</td>\r\n					</tr>\r\n				</table>\r\n			</td>\r\n		</tr>\r\n	</table>\r\n', NULL, 3, 1, 1, NULL, '2018-03-28 15:38:27', '2018-03-28 15:38:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bf_faq`
--

CREATE TABLE `bf_faq` (
  `id` int(11) NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `ar_title` varchar(255) NOT NULL,
  `en_description` text NOT NULL,
  `ar_description` text NOT NULL,
  `weight` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bf_information`
--

CREATE TABLE `bf_information` (
  `id` int(11) NOT NULL,
  `hot_line` varchar(255) NOT NULL,
  `support` varchar(255) NOT NULL,
  `en_ddress` text NOT NULL,
  `ar_ddress` text NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_information`
--

INSERT INTO `bf_information` (`id`, `hot_line`, `support`, `en_ddress`, `ar_ddress`, `deleted`, `deleted_by`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, '(+965) 25666668', 'support@bouhamracinickw.com', '<p>Salmiya, Hawalli Governorate, Kuwait.<br></p>', '<p> <span style=\"font-weight: lighter;\">السالمية، محافظة حولي، الكويت.</span><br></p>', 0, NULL, '0000-00-00 00:00:00', 0, '2018-03-25 16:23:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bf_locations`
--

CREATE TABLE `bf_locations` (
  `id` int(11) NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `ar_title` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_locations`
--

INSERT INTO `bf_locations` (`id`, `en_title`, `ar_title`, `latitude`, `longitude`, `status`, `deleted`, `deleted_by`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 'Bouhamra Clinic', 'عيادات ابو حمرة', '29.332423', '48.043734', 1, 1, 1, '2018-02-07 10:08:05', 1, '2018-03-07 21:49:05', 1),
(2, 'dsfsdfsdfs', 'صثبصثبصثب', '32.063259', '36.089632', 0, 0, NULL, '2018-03-26 14:32:49', 1, '2018-03-26 14:44:34', 1),
(3, 'sdfsdfsdfsd', 'سبسبسيب', '32.064201', '36.108877', 0, 0, NULL, '2018-03-26 14:39:54', 1, '2018-03-26 14:43:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bf_login_attempts`
--

CREATE TABLE `bf_login_attempts` (
  `id` bigint(20) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bf_meet_our_team`
--

CREATE TABLE `bf_meet_our_team` (
  `id` int(11) NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `ar_title` varchar(255) NOT NULL,
  `ar_home_description` text NOT NULL,
  `en_home_description` text NOT NULL,
  `en_description` text,
  `ar_description` text,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bf_patients_say`
--

CREATE TABLE `bf_patients_say` (
  `id` int(11) NOT NULL,
  `en_name` varchar(255) NOT NULL,
  `ar_name` varchar(255) NOT NULL,
  `en_job_title` varchar(255) NOT NULL,
  `ar_job_title` varchar(255) NOT NULL,
  `en_comment` text NOT NULL,
  `ar_comment` text NOT NULL,
  `weight` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bf_permissions`
--

CREATE TABLE `bf_permissions` (
  `permission_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` enum('active','inactive','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_permissions`
--

INSERT INTO `bf_permissions` (`permission_id`, `name`, `description`, `status`) VALUES
(2, 'Site.Content.View', 'Allow users to view the Content Context', 'active'),
(3, 'Site.Reports.View', 'Allow users to view the Reports Context', 'active'),
(4, 'Site.Settings.View', 'Allow users to view the Settings Context', 'active'),
(5, 'Site.Developer.View', 'Allow users to view the Developer Context', 'active'),
(6, 'Bonfire.Roles.Manage', 'Allow users to manage the user Roles', 'active'),
(7, 'Bonfire.Users.Manage', 'Allow users to manage the site Users', 'active'),
(8, 'Bonfire.Users.View', 'Allow users access to the User Settings', 'active'),
(9, 'Bonfire.Users.Add', 'Allow users to add new Users', 'active'),
(10, 'Bonfire.Database.Manage', 'Allow users to manage the Database settings', 'active'),
(11, 'Bonfire.Emailer.Manage', 'Allow users to manage the Emailer settings', 'active'),
(12, 'Bonfire.Logs.View', 'Allow users access to the Log details', 'active'),
(13, 'Bonfire.Logs.Manage', 'Allow users to manage the Log files', 'active'),
(14, 'Bonfire.Emailer.View', 'Allow users access to the Emailer settings', 'active'),
(15, 'Site.Signin.Offline', 'Allow users to login to the site when the site is offline', 'active'),
(16, 'Bonfire.Permissions.View', 'Allow access to view the Permissions menu unders Settings Context', 'active'),
(17, 'Bonfire.Permissions.Manage', 'Allow access to manage the Permissions in the system', 'active'),
(18, 'Bonfire.Modules.Add', 'Allow creation of modules with the builder.', 'active'),
(19, 'Bonfire.Modules.Delete', 'Allow deletion of modules.', 'active'),
(20, 'Permissions.Administrator.Manage', 'To manage the access control permissions for the Administrator role.', 'active'),
(21, 'Permissions.Editor.Manage', 'To manage the access control permissions for the Editor role.', 'active'),
(23, 'Permissions.User.Manage', 'To manage the access control permissions for the User role.', 'active'),
(24, 'Permissions.Developer.Manage', 'To manage the access control permissions for the Developer role.', 'active'),
(26, 'Activities.Own.View', 'To view the users own activity logs', 'active'),
(27, 'Activities.Own.Delete', 'To delete the users own activity logs', 'active'),
(28, 'Activities.User.View', 'To view the user activity logs', 'active'),
(29, 'Activities.User.Delete', 'To delete the user activity logs, except own', 'active'),
(30, 'Activities.Module.View', 'To view the module activity logs', 'active'),
(31, 'Activities.Module.Delete', 'To delete the module activity logs', 'active'),
(32, 'Activities.Date.View', 'To view the users own activity logs', 'active'),
(33, 'Activities.Date.Delete', 'To delete the dated activity logs', 'active'),
(34, 'Bonfire.UI.Manage', 'Manage the Bonfire UI settings', 'active'),
(35, 'Bonfire.Settings.View', 'To view the site settings page.', 'active'),
(36, 'Bonfire.Settings.Manage', 'To manage the site settings.', 'active'),
(37, 'Bonfire.Activities.View', 'To view the Activities menu.', 'active'),
(38, 'Bonfire.Database.View', 'To view the Database menu.', 'active'),
(39, 'Bonfire.Migrations.View', 'To view the Migrations menu.', 'active'),
(40, 'Bonfire.Builder.View', 'To view the Modulebuilder menu.', 'active'),
(41, 'Bonfire.Roles.View', 'To view the Roles menu.', 'active'),
(42, 'Bonfire.Sysinfo.View', 'To view the System Information page.', 'active'),
(43, 'Bonfire.Translate.Manage', 'To manage the Language Translation.', 'active'),
(44, 'Bonfire.Translate.View', 'To view the Language Translate menu.', 'active'),
(45, 'Bonfire.UI.View', 'To view the UI/Keyboard Shortcut menu.', 'active'),
(48, 'Bonfire.Profiler.View', 'To view the Console Profiler Bar.', 'active'),
(49, 'Bonfire.Roles.Add', 'To add New Roles', 'active'),
(50, 'Dashboard.Content.View', 'View Dashboard Content', 'active'),
(51, 'Dashboard.Content.Create', 'Create Dashboard Content', 'active'),
(52, 'Dashboard.Content.Edit', 'Edit Dashboard Content', 'active'),
(53, 'Dashboard.Content.Delete', 'Delete Dashboard Content', 'active'),
(82, 'Administration.Humanresources.View', 'View Administration Humanresources', 'active'),
(83, 'Careers.Humanresources.View', 'View Careers Humanresources', 'active'),
(84, 'Careers.Humanresources.Create', 'Create Careers Humanresources', 'active'),
(85, 'Careers.Humanresources.Edit', 'Edit Careers Humanresources', 'active'),
(86, 'Careers.Humanresources.Delete', 'Delete Careers Humanresources', 'active'),
(89, 'Locations.Utility.View', 'View Locations Utility', 'active'),
(90, 'Locations.Utility.Create', 'Create Locations Utility', 'active'),
(91, 'Locations.Utility.Edit', 'Edit Locations Utility', 'active'),
(92, 'Locations.Utility.Delete', 'Delete Locations Utility', 'active'),
(93, 'Emails.Utility.View', 'View Emails Utility', 'active'),
(94, 'Emails.Utility.Create', 'Create Emails Utility', 'active'),
(95, 'Emails.Utility.Edit', 'Edit Emails Utility', 'active'),
(96, 'Emails.Utility.Delete', 'Delete Emails Utility', 'active'),
(97, 'Social_media.Utility.View', 'View Social_media Utility', 'active'),
(98, 'Social_media.Utility.Create', 'Create Social_media Utility', 'active'),
(99, 'Social_media.Utility.Edit', 'Edit Social_media Utility', 'active'),
(100, 'Social_media.Utility.Delete', 'Delete Social_media Utility', 'active'),
(101, 'Meet_our_team.Content.View', 'View Meet_our_team Content', 'active'),
(102, 'Meet_our_team.Content.Create', 'Create Meet_our_team Content', 'active'),
(103, 'Meet_our_team.Content.Edit', 'Edit Meet_our_team Content', 'active'),
(104, 'Meet_our_team.Content.Delete', 'Delete Meet_our_team Content', 'active'),
(105, 'Patients_say.Content.View', 'View Patients_say Content', 'active'),
(106, 'Patients_say.Content.Create', 'Create Patients_say Content', 'active'),
(107, 'Patients_say.Content.Edit', 'Edit Patients_say Content', 'active'),
(108, 'Patients_say.Content.Delete', 'Delete Patients_say Content', 'active'),
(109, 'Faq.Content.View', 'View Faq Content', 'active'),
(110, 'Faq.Content.Create', 'Create Faq Content', 'active'),
(111, 'Faq.Content.Edit', 'Edit Faq Content', 'active'),
(112, 'Faq.Content.Delete', 'Delete Faq Content', 'active'),
(113, 'Information.Utility.View', 'View Information Utility', 'active'),
(114, 'Information.Utility.Create', 'Create Information Utility', 'active'),
(115, 'Information.Utility.Edit', 'Edit Information Utility', 'active'),
(116, 'Information.Utility.Delete', 'Delete Information Utility', 'active'),
(121, 'About.Content.View', 'View About Content', 'active'),
(122, 'About.Content.Create', 'Create About Content', 'active'),
(123, 'About.Content.Edit', 'Edit About Content', 'active'),
(124, 'About.Content.Delete', 'Delete About Content', 'active'),
(125, 'Departments.Content.View', 'View Departments Content', 'active'),
(126, 'Departments.Content.Create', 'Create Departments Content', 'active'),
(127, 'Departments.Content.Edit', 'Edit Departments Content', 'active'),
(128, 'Departments.Content.Delete', 'Delete Departments Content', 'active'),
(133, 'Slider.Content.View', 'View Slider Content', 'active'),
(134, 'Slider.Content.Create', 'Create Slider Content', 'active'),
(135, 'Slider.Content.Edit', 'Edit Slider Content', 'active'),
(136, 'Slider.Content.Delete', 'Delete Slider Content', 'active'),
(137, 'Videos.Facilities.View', 'View Videos Facilities', 'active'),
(138, 'Videos.Facilities.Create', 'Create Videos Facilities', 'active'),
(139, 'Videos.Facilities.Edit', 'Edit Videos Facilities', 'active'),
(140, 'Videos.Facilities.Delete', 'Delete Videos Facilities', 'active'),
(153, 'Photo_gallery.Facilities.View', 'View Photo_gallery Facilities', 'active'),
(154, 'Photo_gallery.Facilities.Create', 'Create Photo_gallery Facilities', 'active'),
(155, 'Photo_gallery.Facilities.Edit', 'Edit Photo_gallery Facilities', 'active'),
(156, 'Photo_gallery.Facilities.Delete', 'Delete Photo_gallery Facilities', 'active'),
(161, 'About_us.Utility.View', 'View About_us Utility', 'active'),
(162, 'About_us.Utility.Create', 'Create About_us Utility', 'active'),
(163, 'About_us.Utility.Edit', 'Edit About_us Utility', 'active'),
(164, 'About_us.Utility.Delete', 'Delete About_us Utility', 'active'),
(165, 'Doctors.Content.View', 'View Doctors Content', 'active'),
(166, 'Doctors.Content.Create', 'Create Doctors Content', 'active'),
(167, 'Doctors.Content.Edit', 'Edit Doctors Content', 'active'),
(168, 'Doctors.Content.Delete', 'Delete Doctors Content', 'active'),
(169, 'About.Homepage.View', 'View About Content', 'active'),
(170, 'About.Homepage.Create', 'Create About Content', 'active'),
(171, 'About.Homepage.Edit', 'Edit About Content', 'active'),
(172, 'About.Homepage.Delete', 'Delete About Content', 'active'),
(173, 'Slider.Homepage.View', 'View Slider Homepage', 'active'),
(174, 'Slider.Homepage.Create', 'Create Slider Homepage', 'active'),
(175, 'Slider.Homepage.Edit', 'Edit Slider Homepage', 'active'),
(176, 'Slider.Homepage.Delete', 'Delete Slider Homepage', 'active'),
(177, 'Faq.Homepage.View', 'View Faq Homepage', 'active'),
(178, 'Faq.Homepage.Create', 'Create Faq Homepage', 'active'),
(179, 'Faq.Homepage.Edit', 'Edit Faq Homepage', 'active'),
(180, 'Faq.Homepage.Delete', 'Delete Faq Homepage', 'active'),
(181, 'Patients_say.Homepage.View', 'View Patients_say Homepage', 'active'),
(182, 'Patients_say.Homepage.Create', 'Create Patients_say Homepage', 'active'),
(183, 'Patients_say.Homepage.Edit', 'Edit Patients_say Homepage', 'active'),
(184, 'Patients_say.Homepage.Delete', 'Delete Patients_say Homepage', 'active'),
(185, 'Meet_our_team.Homepage.View', 'View Meet_our_team Homepage', 'active'),
(186, 'Meet_our_team.Homepage.Create', 'Create Meet_our_team Homepage', 'active'),
(187, 'Meet_our_team.Homepage.Edit', 'Edit Meet_our_team Homepage', 'active'),
(188, 'Meet_our_team.Homepage.Delete', 'Delete Meet_our_team Homepage', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `bf_photo_gallery`
--

CREATE TABLE `bf_photo_gallery` (
  `id` int(11) NOT NULL,
  `en_section` varchar(255) NOT NULL,
  `ar_section` varchar(255) NOT NULL,
  `weight` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_photo_gallery`
--

INSERT INTO `bf_photo_gallery` (`id`, `en_section`, `ar_section`, `weight`, `status`, `deleted`, `deleted_by`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 'Dermatology And Venereology', ' الجلدية والتناسلية', 0, 0, 0, NULL, '2018-02-19 19:09:46', 1, '2018-03-12 19:15:36', 1),
(2, 'Dental', 'الاسنان', 1, 0, 0, NULL, '2018-02-20 15:12:59', 1, '2018-03-12 19:26:17', 1),
(3, 'Lobby', 'الردهة', 2, 0, 0, NULL, '2018-03-12 18:45:14', 1, '2018-03-12 19:26:23', 1),
(4, 'Pathology And Laboratory', 'علم الأمراض والمختبرات', 3, 0, 0, NULL, '2018-03-12 18:45:32', 1, '2018-03-12 19:26:29', 1),
(5, 'Scanning', 'المسح', 4, 0, 0, NULL, '2018-03-12 18:58:50', 1, '2018-03-12 19:26:35', 1),
(6, 'Kids Area', 'منطقة الاطفال', 5, 0, 0, NULL, '2018-03-12 18:59:11', 1, '2018-03-12 19:26:43', 1),
(7, 'Waiting Rooms', 'غرف الانتظار', 6, 0, 0, NULL, '2018-03-12 18:59:48', 1, '2018-03-12 19:26:50', 1),
(8, 'Laser Therapy', 'العلاج بالليزر', 7, 0, 0, NULL, '2018-03-12 19:00:08', 1, '2018-03-12 19:26:57', 1),
(9, 'sdcsdsdc', 'sdcsdcsd', 0, 0, 0, NULL, '2018-03-26 15:32:12', 1, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bf_roles`
--

CREATE TABLE `bf_roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(60) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '1',
  `login_destination` varchar(255) NOT NULL DEFAULT '/',
  `default_context` varchar(255) DEFAULT 'content',
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_roles`
--

INSERT INTO `bf_roles` (`role_id`, `role_name`, `description`, `default`, `can_delete`, `login_destination`, `default_context`, `deleted`) VALUES
(1, 'Administrator', 'Has full control over every aspect of the site.', 0, 0, '/admin/content/dashboard', 'content', 0),
(2, 'Editor', 'Can handle day-to-day management, but does not have full power.', 0, 1, '', 'content', 0),
(4, 'User', 'This is the default user with access to login.', 1, 0, '', 'content', 0),
(6, 'Developer', 'Developers typically are the only ones that can access the developer tools. Otherwise identical to Administrators, at least until the site is handed off.', 0, 1, '', 'content', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bf_role_permissions`
--

CREATE TABLE `bf_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_role_permissions`
--

INSERT INTO `bf_role_permissions` (`role_id`, `permission_id`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 23),
(1, 24),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 82),
(1, 83),
(1, 84),
(1, 85),
(1, 86),
(1, 89),
(1, 90),
(1, 91),
(1, 92),
(1, 93),
(1, 94),
(1, 95),
(1, 96),
(1, 97),
(1, 98),
(1, 99),
(1, 100),
(1, 101),
(1, 102),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 107),
(1, 108),
(1, 109),
(1, 110),
(1, 111),
(1, 112),
(1, 113),
(1, 114),
(1, 115),
(1, 116),
(1, 121),
(1, 122),
(1, 123),
(1, 124),
(1, 125),
(1, 126),
(1, 127),
(1, 128),
(1, 133),
(1, 134),
(1, 135),
(1, 136),
(1, 137),
(1, 138),
(1, 139),
(1, 140),
(1, 153),
(1, 154),
(1, 155),
(1, 156),
(1, 161),
(1, 162),
(1, 163),
(1, 164),
(1, 165),
(1, 166),
(1, 167),
(1, 168),
(1, 169),
(1, 170),
(1, 171),
(1, 172),
(1, 173),
(1, 174),
(1, 175),
(1, 176),
(1, 177),
(1, 178),
(1, 179),
(1, 180),
(1, 181),
(1, 182),
(1, 183),
(1, 184),
(1, 185),
(1, 186),
(1, 187),
(1, 188),
(2, 2),
(2, 3),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 48);

-- --------------------------------------------------------

--
-- Table structure for table `bf_schema_version`
--

CREATE TABLE `bf_schema_version` (
  `type` varchar(40) NOT NULL,
  `version` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_schema_version`
--

INSERT INTO `bf_schema_version` (`type`, `version`) VALUES
('about_', 2),
('about_us_', 2),
('administration_', 1),
('careers_', 2),
('core', 43),
('dashboard_', 1),
('departments_', 2),
('doctors_', 2),
('emails_', 2),
('faq_', 2),
('information_', 2),
('locations_', 2),
('meet_our_team_', 2),
('patients_say_', 2),
('photo_gallery_', 2),
('slider_', 2),
('social_media_', 2),
('videos_', 2);

-- --------------------------------------------------------

--
-- Table structure for table `bf_sessions`
--

CREATE TABLE `bf_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bf_settings`
--

CREATE TABLE `bf_settings` (
  `name` varchar(30) NOT NULL,
  `module` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_settings`
--

INSERT INTO `bf_settings` (`name`, `module`, `value`) VALUES
('auth.allow_name_change', 'core', '1'),
('auth.allow_register', 'core', '1'),
('auth.allow_remember', 'core', '1'),
('auth.do_login_redirect', 'core', '1'),
('auth.login_type', 'core', 'email'),
('auth.name_change_frequency', 'core', '1'),
('auth.name_change_limit', 'core', '1'),
('auth.password_force_mixed_case', 'core', '0'),
('auth.password_force_numbers', 'core', '0'),
('auth.password_force_symbols', 'core', '0'),
('auth.password_min_length', 'core', '8'),
('auth.password_show_labels', 'core', '0'),
('auth.remember_length', 'core', '1209600'),
('auth.user_activation_method', 'core', '0'),
('auth.use_extended_profile', 'core', '0'),
('auth.use_usernames', 'core', '1'),
('ext.country', 'core', 'US'),
('ext.state', 'core', ''),
('ext.street_name', 'core', ''),
('ext.type', 'core', 'small'),
('form_save', 'core.ui', 'ctrl+s/⌘+s'),
('goto_content', 'core.ui', 'alt+c'),
('mailpath', 'email', '/usr/sbin/sendmail'),
('mailtype', 'email', 'html'),
('password_iterations', 'users', '8'),
('protocol', 'email', 'smtp'),
('sender_email', 'email', 'moheb.hawari@gmail.com'),
('site.languages', 'core', 'a:2:{i:0;s:6:\"arabic\";i:1;s:7:\"english\";}'),
('site.list_limit', 'core', '25'),
('site.offline_reason', 'core', ''),
('site.show_front_profiler', 'core', '1'),
('site.show_profiler', 'core', '1'),
('site.status', 'core', '1'),
('site.system_email', 'core', 'admin@admin.com'),
('site.title', 'core', 'Biuhamra'),
('smtp_host', 'email', 'ssl://smtp.gmail.com'),
('smtp_pass', 'email', 'fpCy$895'),
('smtp_port', 'email', '465'),
('smtp_timeout', 'email', '7'),
('smtp_user', 'email', 'moheb.hawari@gmail.com'),
('updates.bleeding_edge', 'core', '1'),
('updates.do_check', 'core', '1');

-- --------------------------------------------------------

--
-- Table structure for table `bf_slider`
--

CREATE TABLE `bf_slider` (
  `id` int(11) NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `ar_title` varchar(255) DEFAULT NULL,
  `en_description` text,
  `ar_description` text,
  `image` varchar(255) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bf_social_media`
--

CREATE TABLE `bf_social_media` (
  `id` int(11) NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `pinterest` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `google` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_social_media`
--

INSERT INTO `bf_social_media` (`id`, `facebook`, `twitter`, `instagram`, `pinterest`, `linkedin`, `google`, `youtube`, `deleted`, `deleted_by`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 'd', 'd', 'dffff', '', '', '', '', 0, NULL, '2018-02-20 15:33:21', 1, '2018-03-21 15:26:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bf_states`
--

CREATE TABLE `bf_states` (
  `id` int(11) NOT NULL,
  `name` char(40) NOT NULL,
  `abbrev` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_states`
--

INSERT INTO `bf_states` (`id`, `name`, `abbrev`) VALUES
(1, 'Alaska', 'AK'),
(2, 'Alabama', 'AL'),
(3, 'American Samoa', 'AS'),
(4, 'Arizona', 'AZ'),
(5, 'Arkansas', 'AR'),
(6, 'California', 'CA'),
(7, 'Colorado', 'CO'),
(8, 'Connecticut', 'CT'),
(9, 'Delaware', 'DE'),
(10, 'District of Columbia', 'DC'),
(11, 'Florida', 'FL'),
(12, 'Georgia', 'GA'),
(13, 'Guam', 'GU'),
(14, 'Hawaii', 'HI'),
(15, 'Idaho', 'ID'),
(16, 'Illinois', 'IL'),
(17, 'Indiana', 'IN'),
(18, 'Iowa', 'IA'),
(19, 'Kansas', 'KS'),
(20, 'Kentucky', 'KY'),
(21, 'Louisiana', 'LA'),
(22, 'Maine', 'ME'),
(23, 'Marshall Islands', 'MH'),
(24, 'Maryland', 'MD'),
(25, 'Massachusetts', 'MA'),
(26, 'Michigan', 'MI'),
(27, 'Minnesota', 'MN'),
(28, 'Mississippi', 'MS'),
(29, 'Missouri', 'MO'),
(30, 'Montana', 'MT'),
(31, 'Nebraska', 'NE'),
(32, 'Nevada', 'NV'),
(33, 'New Hampshire', 'NH'),
(34, 'New Jersey', 'NJ'),
(35, 'New Mexico', 'NM'),
(36, 'New York', 'NY'),
(37, 'North Carolina', 'NC'),
(38, 'North Dakota', 'ND'),
(39, 'Northern Mariana Islands', 'MP'),
(40, 'Ohio', 'OH'),
(41, 'Oklahoma', 'OK'),
(42, 'Oregon', 'OR'),
(43, 'Palau', 'PW'),
(44, 'Pennsylvania', 'PA'),
(45, 'Puerto Rico', 'PR'),
(46, 'Rhode Island', 'RI'),
(47, 'South Carolina', 'SC'),
(48, 'South Dakota', 'SD'),
(49, 'Tennessee', 'TN'),
(50, 'Texas', 'TX'),
(51, 'Utah', 'UT'),
(52, 'Vermont', 'VT'),
(53, 'Virgin Islands', 'VI'),
(54, 'Virginia', 'VA'),
(55, 'Washington', 'WA'),
(56, 'West Virginia', 'WV'),
(57, 'Wisconsin', 'WI'),
(58, 'Wyoming', 'WY'),
(59, 'Armed Forces Africa', 'AE'),
(60, 'Armed Forces Canada', 'AE'),
(61, 'Armed Forces Europe', 'AE'),
(62, 'Armed Forces Middle East', 'AE'),
(63, 'Armed Forces Pacific', 'AP');

-- --------------------------------------------------------

--
-- Table structure for table `bf_users`
--

CREATE TABLE `bf_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '4',
  `email` varchar(254) NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password_hash` char(60) DEFAULT NULL,
  `reset_hash` varchar(40) DEFAULT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(45) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `reset_by` int(10) DEFAULT NULL,
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `ban_message` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT '',
  `display_name_changed` date DEFAULT NULL,
  `timezone` varchar(40) NOT NULL DEFAULT 'UM6',
  `language` varchar(20) NOT NULL DEFAULT 'english',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activate_hash` varchar(40) NOT NULL DEFAULT '',
  `force_password_reset` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_users`
--

INSERT INTO `bf_users` (`id`, `role_id`, `email`, `username`, `password_hash`, `reset_hash`, `last_login`, `last_ip`, `created_on`, `deleted`, `reset_by`, `banned`, `ban_message`, `display_name`, `display_name_changed`, `timezone`, `language`, `active`, `activate_hash`, `force_password_reset`) VALUES
(1, 1, 'moheb.hawari@gmail.com', 'admin', '$2a$08$0boTJ7/53NuXGUoA.KEeeOX4d94MwvdogBfPe1oTyPfVuD.gIw0a.', NULL, '2018-03-28 13:46:29', '::1', '2018-02-04 12:00:41', 0, NULL, 0, NULL, 'admin', NULL, 'UM6', 'english', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bf_user_cookies`
--

CREATE TABLE `bf_user_cookies` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(128) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bf_user_meta`
--

CREATE TABLE `bf_user_meta` (
  `meta_id` int(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) NOT NULL DEFAULT '',
  `meta_value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_user_meta`
--

INSERT INTO `bf_user_meta` (`meta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'state', 'IA'),
(2, 1, 'country', 'US');

-- --------------------------------------------------------

--
-- Table structure for table `bf_videos`
--

CREATE TABLE `bf_videos` (
  `id` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `thumbnil` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_videos`
--

INSERT INTO `bf_videos` (`id`, `department`, `link`, `thumbnil`, `status`, `deleted`, `deleted_by`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 11, 'hfghfgh', NULL, 0, 1, 1, '2018-02-07 12:07:05', 1, '2018-02-07 12:07:05', 1),
(2, 11, 'kghfkgfhk', '3.png', 0, 0, NULL, '2018-02-07 12:10:36', 1, '2018-02-07 12:10:37', 1),
(3, 11, 'hj,hj,hj', NULL, 0, 1, 1, '2018-02-07 12:11:42', 1, '2018-02-07 12:11:42', 1),
(4, 11, 'rtyrty', NULL, 0, 1, 1, '2018-02-07 12:21:56', 1, '0000-00-00 00:00:00', NULL),
(5, 11, 'rtyrty', NULL, 0, 1, 1, '2018-02-07 12:22:30', 1, '0000-00-00 00:00:00', NULL),
(6, 11, 'rtyrty', NULL, 0, 1, 1, '2018-02-07 12:23:00', 1, '0000-00-00 00:00:00', NULL),
(7, 11, 'rtyrty', NULL, 0, 1, 1, '2018-02-07 12:24:27', 1, '2018-02-07 12:24:27', 1),
(8, 11, 'sdfgsdg', NULL, 0, 1, 1, '2018-02-07 12:25:40', 1, '2018-02-07 12:25:40', 1),
(9, 11, 'rtrtjhrtj', NULL, 0, 1, 1, '2018-02-07 12:27:47', 1, '2018-02-07 12:27:47', 1),
(10, 11, 'ftgjfgjfgj', NULL, 0, 1, 1, '2018-02-07 12:49:58', 1, '2018-02-07 12:49:58', 1),
(11, 11, 'vvzxvzxv', NULL, 0, 1, 1, '2018-02-07 12:50:11', 1, '2018-02-07 12:50:11', 1),
(12, 11, 'zxvzxvzxv', NULL, 0, 1, 1, '2018-02-07 12:52:37', 1, '2018-02-07 12:52:37', 1),
(13, 11, 'zxvzxvzvx', NULL, 0, 1, 1, '2018-02-07 12:52:57', 1, '2018-02-07 12:52:57', 1),
(14, 11, 'rhdfhdfh', NULL, 0, 1, 1, '2018-02-07 12:53:23', 1, '2018-02-07 12:53:23', 1),
(15, 11, 'sacfasv', NULL, 0, 1, 1, '2018-02-07 12:54:16', 1, '2018-02-07 12:54:16', 1),
(16, 11, 'dfhdfh', '1.png', 0, 0, NULL, '2018-02-07 12:54:31', 1, '2018-02-07 12:54:31', 1),
(17, 11, 'tyydtgkd', NULL, 0, 1, 1, '2018-02-07 13:00:30', 1, '2018-02-07 13:00:30', 1),
(18, 11, 'jgjkhgkj', NULL, 0, 1, 1, '2018-02-07 13:03:35', 1, '2018-02-07 13:03:36', 1),
(19, 11, 'dsds', NULL, 0, 1, 1, '2018-02-07 13:03:57', 1, '0000-00-00 00:00:00', NULL),
(20, 11, 'dsds', NULL, 0, 1, 1, '2018-02-07 13:06:40', 1, '0000-00-00 00:00:00', NULL),
(21, 11, 'dsds', '', 0, 1, 1, '2018-02-07 13:06:55', 1, '2018-02-07 13:06:55', 1),
(22, 11, 'rgfggfg', NULL, 0, 1, 1, '2018-02-07 13:07:22', 1, '2018-02-07 13:07:22', 1),
(23, 11, 'sdvsdv', NULL, 0, 1, 1, '2018-02-07 13:07:54', 1, '0000-00-00 00:00:00', NULL),
(24, 11, 'sdvsdv', NULL, 0, 1, 1, '2018-02-07 13:08:22', 1, '2018-02-07 13:08:23', 1),
(25, 11, 'ascasc', NULL, 0, 1, 1, '2018-02-07 13:08:54', 1, '2018-02-07 13:08:54', 1),
(26, 11, 'asfasf', '3.png', 0, 0, NULL, '2018-02-07 13:13:46', 1, '2018-02-07 13:13:46', 1),
(27, 11, 'fdsdf', '2.png', 0, 0, NULL, '2018-02-07 13:17:12', 1, '2018-02-07 13:17:12', 1),
(28, 3, 'cxcxc', '2.png', 0, 0, NULL, '2018-02-07 13:54:12', 1, '2018-02-07 13:54:13', 1),
(29, 2, 'https://www.youtube.com/watch?v=mkOCU7gh4xk&list=RDMMmkOCU7gh4xk', '01.jpg', 0, 0, NULL, '2018-03-12 22:47:04', 1, '2018-03-12 22:47:05', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bf_about`
--
ALTER TABLE `bf_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_about_us`
--
ALTER TABLE `bf_about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_activities`
--
ALTER TABLE `bf_activities`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `bf_careers`
--
ALTER TABLE `bf_careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_ci3_sessions`
--
ALTER TABLE `bf_ci3_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_countries`
--
ALTER TABLE `bf_countries`
  ADD PRIMARY KEY (`iso`);

--
-- Indexes for table `bf_departments`
--
ALTER TABLE `bf_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_doctors`
--
ALTER TABLE `bf_doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_emails`
--
ALTER TABLE `bf_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_email_queue`
--
ALTER TABLE `bf_email_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_faq`
--
ALTER TABLE `bf_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_information`
--
ALTER TABLE `bf_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_locations`
--
ALTER TABLE `bf_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_login_attempts`
--
ALTER TABLE `bf_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_meet_our_team`
--
ALTER TABLE `bf_meet_our_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_patients_say`
--
ALTER TABLE `bf_patients_say`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_permissions`
--
ALTER TABLE `bf_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `bf_photo_gallery`
--
ALTER TABLE `bf_photo_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_roles`
--
ALTER TABLE `bf_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `bf_role_permissions`
--
ALTER TABLE `bf_role_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`);

--
-- Indexes for table `bf_schema_version`
--
ALTER TABLE `bf_schema_version`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `bf_sessions`
--
ALTER TABLE `bf_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `bf_settings`
--
ALTER TABLE `bf_settings`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `bf_slider`
--
ALTER TABLE `bf_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_social_media`
--
ALTER TABLE `bf_social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_states`
--
ALTER TABLE `bf_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_users`
--
ALTER TABLE `bf_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `bf_user_cookies`
--
ALTER TABLE `bf_user_cookies`
  ADD KEY `token` (`token`);

--
-- Indexes for table `bf_user_meta`
--
ALTER TABLE `bf_user_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `bf_videos`
--
ALTER TABLE `bf_videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bf_about`
--
ALTER TABLE `bf_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bf_about_us`
--
ALTER TABLE `bf_about_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bf_activities`
--
ALTER TABLE `bf_activities`
  MODIFY `activity_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT for table `bf_careers`
--
ALTER TABLE `bf_careers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bf_departments`
--
ALTER TABLE `bf_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bf_doctors`
--
ALTER TABLE `bf_doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bf_emails`
--
ALTER TABLE `bf_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bf_email_queue`
--
ALTER TABLE `bf_email_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bf_faq`
--
ALTER TABLE `bf_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bf_information`
--
ALTER TABLE `bf_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bf_locations`
--
ALTER TABLE `bf_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bf_login_attempts`
--
ALTER TABLE `bf_login_attempts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bf_meet_our_team`
--
ALTER TABLE `bf_meet_our_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bf_patients_say`
--
ALTER TABLE `bf_patients_say`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bf_permissions`
--
ALTER TABLE `bf_permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `bf_photo_gallery`
--
ALTER TABLE `bf_photo_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `bf_roles`
--
ALTER TABLE `bf_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bf_slider`
--
ALTER TABLE `bf_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bf_social_media`
--
ALTER TABLE `bf_social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bf_states`
--
ALTER TABLE `bf_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `bf_users`
--
ALTER TABLE `bf_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bf_user_meta`
--
ALTER TABLE `bf_user_meta`
  MODIFY `meta_id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bf_videos`
--
ALTER TABLE `bf_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
