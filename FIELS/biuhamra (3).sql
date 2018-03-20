-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 20, 2018 at 11:33 AM
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
(1, 'Health Care', 'الرعاية الصحية', 'A complete health care solution that suites all society segments.<br>', '<p>حلول الرعاية الصحية الكاملة التي تناسب جميع شرائح المجتمع.</p>', '<p>urturt</p>', '<p>rturt</p>', 'health_care.png', 0, NULL, '2018-02-07 11:52:24', 1, '2018-03-05 19:47:39', 1),
(2, 'Dental Care', 'العناية بالأسنان', '<p>We provide best dental care solutions to enjoy a Hollywood smile whenever you are.</p>', '<p>نحن نقدم أفضل حلول العناية بالأسنان للاستمتاع بابتسامة هوليوود أكثر من اي وقت مضى.</p>', '<p>ghjg</p>', '<p>jghjg</p>', 'dental_care.png', 0, NULL, '2018-02-07 14:19:38', 1, '2018-03-05 19:49:03', 1),
(3, 'Skin Care', 'العناية بالبشرة', '<p>We provide a super skin care services that covers all the, ladies / men need.<br></p>', '<p>نقدم خدمات العناية الفائقة بالبشرة وما تحتاجه النساء / الرجال.<br></p>', '<p><br></p>', '<p><br></p>', 'skin_care.png', 0, NULL, '2018-03-05 19:50:16', 1, '2018-03-05 19:50:16', 1);

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
(218, 1, 'Created record with ID: 29 : ::1', 'videos', '2018-03-12 22:47:05', 0);

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
('000c0afa8255768dc54ddef072f74d716da2b34c', '::1', 1518625825, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383632353533333b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b),
('001de38a786ce02f3ee1017461cda5c5463f3fe2', '::1', 1518624536, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383632343233373b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b),
('00b990d036a3312ee73780ee9becc1648ce2acd3', '::1', 1519073753, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393037333735333b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b),
('00d960857442fb0fe5f55e6670b40d0bf2e6a055', '::1', 1520842604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303834323439343b7265717565737465645f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f656469742f31223b70726576696f75735f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f656469742f31223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('016baf6146fb0df9bdf1a2d9a72d53249422d73b', '::1', 1518003842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383030333535323b7265717565737465645f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f732f637265617465223b),
('022be2ac73ecab2332628d2b774af36c4ce40477', '::1', 1520269394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303236393233353b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b),
('0339e8016d1639f98811823211672e79a9032567', '::1', 1520268799, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303236383532343b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b),
('0442080aaa25663f6fdc70803e33c32b0a5a77cb', '::1', 1517833399, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373833333133383b7265717565737465645f706167657c733a37363a22687474703a2f2f6c6f63616c686f73742f626f6e666972655f637573746f6d2f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f736c696465722f637265617465223b70726576696f75735f706167657c733a37363a22687474703a2f2f6c6f63616c686f73742f626f6e666972655f637573746f6d2f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f736c696465722f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('044f42edbfba6b3687f74d23201223c492ac7e43', '::1', 1520193889, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303139333634323b7265717565737465645f706167657c733a35313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f61626f7574223b70726576696f75735f706167657c733a35313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f61626f7574223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('04a11bc04625bede7b25e0f50fe1785d8a2fed27', '::1', 1517923622, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373932333435343b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('04ec592c873332ef7d497d0f0942d41defcae0cc', '::1', 1518629040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383632383734363b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b),
('0522a69fdfcb9bbc0cab3a94fb49e5bff7e4e117', '::1', 1520187279, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303138373031383b7265717565737465645f706167657c733a36343a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f686f6d652f7365745f63757272656e745f75736572223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('06903ff577a940ae608a69cfb387938307530dbf', '::1', 1519059780, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393035393530343b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b),
('07e219561344207c34fb0482c730515535229d46', '::1', 1517992354, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373939323037313b7265717565737465645f706167657c733a36373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6661712f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6661712f637265617465223b),
('084e6a38281ecb1cd20a2cb17890807d718d3a4a', '::1', 1520274410, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303237343132353b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f7574696c6974792f696e666f726d6174696f6e2f65646974223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('096e96c395c45a3ea8443d8228b697af88cff6c4', '::1', 1520877514, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303837373231363b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('09cc1279f2a7003e0e65e2aa9b26c0f141dcaf03', '::1', 1518622793, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383632323739333b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b),
('0aaad95714c4bf4208456148d062120af011a9ba', '::1', 1518010352, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383031303130383b7265717565737465645f706167657c733a37383a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f68756d616e7265736f75726365732f61646d696e697374726174696f6e223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37383a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f68756d616e7265736f75726365732f61646d696e697374726174696f6e223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('0aea59aef6477f472177fb627683d01508565f7e', '::1', 1520846702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303834363434333b7265717565737465645f706167657c733a36303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f61646d696e697374726174696f6e223b70726576696f75735f706167657c733a36303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f61646d696e697374726174696f6e223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('0d1a215c637c3d7cd9081082b028c76bad6200c6', '::1', 1517839746, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373833393436353b7265717565737465645f706167657c733a36333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f73657474696e67732f726f6c6573223b70726576696f75735f706167657c733a36333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f73657474696e67732f726f6c6573223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('0d1e44583f60709d5a7a2ea50796a76daa8ce53b', '::1', 1519127003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132363733373b7265717565737465645f706167657c733a39333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f6d6f686562223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a39333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f6d6f686562223b),
('0d8ace5ca5c3af8c1c3fd0e30545e25f9ff2d51a', '::1', 1520876984, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303837363836353b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('0e6760c37ea9feb7e756f7c446c019335d6b95dd', '::1', 1520844508, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303834343231373b7265717565737465645f706167657c733a36323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f646f63746f72732f646f63746f722f31223b70726576696f75735f706167657c733a36323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f646f63746f72732f646f63746f722f31223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('0eedccac246f817842d93017017081425ba4c06b', '::1', 1520274923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303237343733383b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('103b81e37e15010a7829b6d7b48bf21f436999f3', '::1', 1520274599, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303237343432393b7265717565737465645f706167657c733a36333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f736c69646572223b70726576696f75735f706167657c733a36333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f736c69646572223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('10875886fa2515f15875e8b7391a19eacd6457fa', '::1', 1517832424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373833323337323b7265717565737465645f706167657c733a37323a22687474703a2f2f6c6f63616c686f73742f626f6e666972655f637573746f6d2f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b70726576696f75735f706167657c733a37323a22687474703a2f2f6c6f63616c686f73742f626f6e666972655f637573746f6d2f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('10a67cd2b826e71731cf4744e6cb3b59d2b9f486', '::1', 1519741855, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393734313538313b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b),
('10dcc422c2f55cd6e16a7d865b44bd519e144a81', '::1', 1518563386, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383536333338363b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('11eda317096585a996745326f515b92741708130', '::1', 1520847968, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303834373733373b7265717565737465645f706167657c733a35333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f63617265657273223b70726576696f75735f706167657c733a35333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f63617265657273223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('1510b15be46a1c7aa4aed232c03502a2e69f4c52', '::1', 1520448024, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303434373834383b7265717565737465645f706167657c733a37303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6d6565745f6f75725f7465616d223b70726576696f75735f706167657c733a37303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6d6565745f6f75725f7465616d223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('158508db3db08e52442bc528aed1598bca5fcf38', '::1', 1520841909, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303834313830393b7265717565737465645f706167657c733a35313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f61626f7574223b70726576696f75735f706167657c733a35313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f61626f7574223b),
('166baf2267f35475eb480a49e2e6ea68b595f645', '::1', 1519746602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393734363331353b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b),
('17983d377224fdd63428bdf5441483595f5297f3', '::1', 1520842452, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303834323139323b7265717565737465645f706167657c733a36353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f6465706172746d656e74732f696e6465782f31223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b),
('185217362ac5c04e1ec31cbf429a5d9314a8bcc6', '::1', 1517995194, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373939343938313b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b),
('1a45d9ce8a07975d8eb6037894193ff5391192fa', '::1', 1520167315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303136373037393b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b),
('1bc16a0b39ba0d05661fef5a5a582970c76a949f', '::1', 1517837849, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373833373537313b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6275696c6465722f6372656174655f6d6f64756c65223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6275696c6465722f6372656174655f6d6f64756c65223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('1bdfd02074375e4aa4199ab1718e6d3debb6a367', '::1', 1517994810, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373939343635313b7265717565737465645f706167657c733a36323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f7574223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f7574223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('1d849d5c220bfa54c57d587730bfebfb6815fe31', '::1', 1518007576, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383030373531383b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f73223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f73223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('1da5546672363281a2a9f97e29b6c942fc1b0fbc', '::1', 1520185806, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303138353737373b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('1e5ef1aa9767ad332f2e72b564f729cfb757e114', '::1', 1517994571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373939343332313b7265717565737465645f706167657c733a36323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f7574223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f7574223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('1f906f3fe6cbece708cae64c2bf636ce32865552', '::1', 1517907540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373930373432363b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('1fb4aee84e91c5e44d32b86a6652ecc17bea5544', '::1', 1519067263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393036373032303b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b),
('1fbdd6ce2d71346ea878ef7193161f4dd03ae63e', '::1', 1519066823, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393036363535393b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b),
('2043ff0b69ee4abbd33731a49cc7ab64b77bccbe', '::1', 1518009472, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383030393137383b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b),
('2209efb29f8f0c38b00e1357395b28b52d672c96', '::1', 1520275989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303237353734333b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('229283bbe83b1a9143cf4df3b1d3fd32c994764c', '::1', 1519075114, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393037343833343b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b),
('2349bb17097ce3e80961dad8e7dcffdb5056566a', '::1', 1520270201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303237303133393b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b),
('2352b25002b37846f33813628e72af159200d1a7', '::1', 1519061953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393036313935313b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b),
('23db41b6dd1157f57f11166989c46b451651c6f9', '::1', 1520166341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303136363035343b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b),
('243d625e60280cdd2e1c8e8e0fbf8b93bac356d9', '::1', 1520844135, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303834333835383b7265717565737465645f706167657c733a35333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f646f63746f7273223b70726576696f75735f706167657c733a35333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f646f63746f7273223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('2481510fdb1ff655d27a9cf0ee8ba227cb0d269d', '::1', 1520266811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303236363636303b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b),
('24bb13c9dc9bd26ec02ce5e42792ecb2a9794b1e', '::1', 1517918232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373931373939393b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('2550bf065d0237cf42a55472220a6015f113c1db', '::1', 1519064824, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393036343638323b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b),
('25d83fc83a6f4346d9f2b970270abdf33638cc38', '::1', 1517841237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373834303938353b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('2607a787c89808c923632c2a3fadd6abae27ef49', '::1', 1520891141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303839303835313b7265717565737465645f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f732f637265617465223b70726576696f75735f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('28335f223ebdaf8a11cdc82f049f4d0fdce9a4c3', '::1', 1520840899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303834303736343b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b),
('288c8f7f16290a5a97d08076ad7e6f3008dcf12f', '::1', 1520455981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303435353730303b7265717565737465645f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f7574696c6974792f696e666f726d6174696f6e2f65646974223b70726576696f75735f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f7574696c6974792f696e666f726d6174696f6e2f65646974223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('2a4ae75f4b834b7ba5bfe5330ad1aef94b10c431', '::1', 1519063789, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393036333633353b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b),
('2bb25621ec57ceafd4375085c54e18d32a978c0b', '::1', 1520168795, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303136383531333b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('2d15fcf8276fe44bddc30a11700e0ad9a481f80f', '::1', 1520188432, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303138383135373b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('2deeb8602741eda1f23d5f1ed078264c9109ea7f', '::1', 1520446909, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303434363830313b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('2e34b1d54e8469c293d730854dd0d936f91295fc', '::1', 1519068181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393036373839333b7265717565737465645f706167657c733a38373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d61676573223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b);
INSERT INTO `bf_ci3_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('2eaa5d1c3a08ada570d95b518052037109e01801', '::1', 1520193490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303139333235373b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('2faa3a698433f1b2856149135daa66a7ffc00eb3', '::1', 1519076991, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393037363639353b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b),
('302f1cf82b7ed04f6e208aa22be8315929eca942', '::1', 1518625197, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383632353032373b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b),
('31e15ef13a146d8592870264c67c12ba760725f2', '::1', 1519071463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393037313231393b7265717565737465645f706167657c733a38393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f7365727665722f706870223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f7365727665722f706870223b),
('32fa4e37e3b1466797784506e919001bdde5c9ad', '::1', 1519743787, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393734333531363b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b),
('3352fb36ddff51d2f17ec6f1cf6dbc73ebf51e2a', '::1', 1518008939, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383030383734333b7265717565737465645f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f637265617465223b),
('350311f9cacb028513522e56ddcd666be0f686d0', '::1', 1518620665, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383632303636353b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b),
('356a30df14323df074d86d0c824c3651ba60c552', '::1', 1519137866, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133373536363b7265717565737465645f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f7574696c6974792f696e666f726d6174696f6e2f65646974223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f7574696c6974792f696e666f726d6174696f6e2f65646974223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('3625c98a9907858b23b14a47254a813ed27a73e5', '::1', 1517995384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373939353336353b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6d6967726174696f6e73223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6d6967726174696f6e73223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('36912995ceec503a874f703b24867d3e68666580', '::1', 1519130154, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132393836373b7265717565737465645f706167657c733a39373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f756e646566696e6564223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c657279223b),
('377813ee4897be498961406562b0efc7125571f2', '::1', 1519741999, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393734313939393b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b),
('37f154ff503ee86888e55cdc7e3b868589eb24a4', '::1', 1520267929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303236373737353b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b),
('3bc5a3d70c8dc4cc1fee64ed83621f964c57cb22', '::1', 1519138102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133373837313b7265717565737465645f706167657c733a36383a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f7574696c6974792f656d61696c732f65646974223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36383a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f7574696c6974792f656d61696c732f65646974223b),
('3ee3586dc8de1d9485393c5bb3c8e9c188620b72', '::1', 1519129009, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132383735383b7265717565737465645f706167657c733a39353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f312f6d6f686562223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a39353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f312f6d6f686562223b),
('3fcadf263a5f584daf822ae015a1fc9730f2befa', '::1', 1520878960, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303837383637343b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('3fd265997230e7b539a5d344f873718387351fcf', '::1', 1520163519, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303136333336383b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b),
('430c20eabc3c49ab4b6dd4cda2365ba4ec882523', '::1', 1520184505, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303138343239313b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('4327de4113d28576227d332ec850bb862cd0c2e8', '::1', 1520843790, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303834333535313b7265717565737465645f706167657c733a35333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f646f63746f7273223b70726576696f75735f706167657c733a35333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f646f63746f7273223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('434424e0c472b587bf1bbb821e3e4079fa682ae6', '::1', 1517837496, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373833373230363b7265717565737465645f706167657c733a38313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6275696c6465722f6372656174655f636f6e74657874223b70726576696f75735f706167657c733a38313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6275696c6465722f6372656174655f636f6e74657874223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('43468f06a01fc8657204d0a18afea640947a680b', '::1', 1517834310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373833343032373b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f626f6e666972655f637573746f6d2f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f626f6e666972655f637573746f6d2f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('4358bb597faec823ba8bcef8ae55192df9ef143c', '::1', 1519080185, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393038303137313b7265717565737465645f706167657c733a39333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f6d6f686562223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a39333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f6d6f686562223b),
('449aeb81079d97b718394247874d516b8881b6d1', '::1', 1519129334, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132393036373b7265717565737465645f706167657c733a39373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f756e646566696e6564223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a39353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f312f6d6f686562223b),
('44bf1db168b9f09f833acadf65706e05c5723179', '::1', 1520847358, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303834373132333b7265717565737465645f706167657c733a35333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f63617265657273223b70726576696f75735f706167657c733a35333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f63617265657273223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('457f61ad21b626c8361f1b9cfa13437d6bc6e596', '::1', 1517927060, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373932373032373b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('458d79dbd471653312d4a771b21f433bbe47e747', '::1', 1518626978, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383632363832333b7265717565737465645f706167657c733a36303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f666171223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f666171223b),
('463f22d1e07d8d08d0ebb6e0de9efbed306c49d9', '::1', 1519135531, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133353037313b7265717565737465645f706167657c733a39373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f646f5f6d756c74695f75706c6f61642f312f6d6f686562223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a39373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f646f5f6d756c74695f75706c6f61642f312f6d6f686562223b),
('4690f489d314199dcbb841de9340439ad32fdd1f', '::1', 1520192867, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303139323833323b7265717565737465645f706167657c733a35303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f686f6d65223b70726576696f75735f706167657c733a35303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f686f6d65223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('46ae671d20236c4890fafd34ad3e281fb2518ad7', '::1', 1518562771, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383536323734393b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('471952c78992a60cb78ed7ea704a802a027c0618', '::1', 1518627400, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383632373132363b7265717565737465645f706167657c733a37363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f70617469656e74735f7361792f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f70617469656e74735f7361792f637265617465223b),
('472a5c4a779c4c330fed76602e97bf2a31ad1f55', '::1', 1519131012, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133303731333b7265717565737465645f706167657c733a39353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f312f6d6f686562223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a39353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f312f6d6f686562223b),
('476a9e459ffdeccbf111ad49aaae89acb030a5db', '::1', 1518000982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383030303732313b7265717565737465645f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f656469742f32223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f656469742f32223b),
('47bbbb112ed06ddff3aaaf8128ee0e7943c8fa0f', '::1', 1519138973, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133383837373b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b),
('47f67a3cbb6db6ba4bab1499a1a5fc426c0edfbe', '::1', 1517993656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373939333430353b7265717565737465645f706167657c733a37303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f736c696465722f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f736c696465722f637265617465223b),
('4a3faabc378b3fb31a88586766e1b601a8648484', '::1', 1519129731, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132393433313b7265717565737465645f706167657c733a39353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f312f6d6f686562223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a39353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f312f6d6f686562223b),
('4b2240569bbda771c2fa80a0e35200a0a2786a64', '::1', 1519070536, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393037303439353b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b),
('4b8eb6ddd5a216275a0b78560005e917a803943d', '::1', 1520187994, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303138373835303b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('4bafc182d281c09a236559277596c82452e6041a', '::1', 1520163011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303136323839363b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b),
('4c2f79c794b324248aa9f06807d7f8ec4d5e2c9d', '::1', 1517912342, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373931323034363b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('4cac07b3737f0bac4f1c817a7989b2c1e87ff5ed', '::1', 1520846084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303834353739343b7265717565737465645f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f68756d616e7265736f75726365732f63617265657273223b70726576696f75735f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f68756d616e7265736f75726365732f63617265657273223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('4eb0c0b80baa96ea363e114886e44be1f531eb13', '::1', 1520841797, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303834313530383b7265717565737465645f706167657c733a35313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f61626f7574223b70726576696f75735f706167657c733a35313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f61626f7574223b),
('4f6562dc56381f56d2614b848d9ef5612bd82186', '::1', 1518008655, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383030383433323b7265717565737465645f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f637265617465223b),
('5385781e429e42613e4f2e7c19815650a7654629', '::1', 1520184114, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303138333836363b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f73657474696e67732f73657474696e6773223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f73657474696e67732f73657474696e6773223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('553f5bc3d452bb4b53d4553732ba59a9e1e8ed90', '::1', 1520188760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303138383436333b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('57df93fa2a715d3f4d4659483d5ddbfa0f9ae6f1', '::1', 1518629513, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383632393335353b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b),
('5995acbb30acb5aa7c83fb0d23544b883e6ae552', '::1', 1520893495, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303839333439353b7265717565737465645f706167657c733a35393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f50686f746f5f67616c6c657279223b70726576696f75735f706167657c733a35393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f50686f746f5f67616c6c657279223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('59a92d1d5f3d0f64840e7473f09c58d164790942', '::1', 1519054935, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393035343635303b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b),
('59b539b894b5522842ed68e1e73131a10f083aa3', '::1', 1519136162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133353935383b7265717565737465645f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f732f637265617465223b),
('5a7527dfe981f179fce1e7690c6efd3d034175ce', '::1', 1518621684, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383632313631363b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b),
('5bacdad46945818963d9abd5eabc35a90f7bb4cd', '::1', 1518006027, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383030353739363b7265717565737465645f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f732f637265617465223b),
('5d4a7f2ce7fdb4112e59f7a8588c6858b14902ca', '::1', 1518004041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383030333838373b7265717565737465645f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f732f637265617465223b),
('5d70fa2cc39573a96d654a02a71f4f11f0706ecf', '::1', 1519057987, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393035373639383b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b),
('5daf38483b9ff2779a004db0ac67472d2ad6bea1', '::1', 1518002874, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383030323636373b7265717565737465645f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f732f637265617465223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('5dbc75228a9c9c1f4537a53d545a150360280118', '::1', 1520446798, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303434363439383b7265717565737465645f706167657c733a36383a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e7473223b70726576696f75735f706167657c733a36383a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e7473223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('5e31439f83ed8498576b0d7360f13482353c7705', '::1', 1520889308, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303838393032303b7265717565737465645f706167657c733a35393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f50686f746f5f67616c6c657279223b70726576696f75735f706167657c733a35393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f50686f746f5f67616c6c657279223b),
('5e7e67a1c6113703af7e3a12b811ac3e1a237f8b', '::1', 1519076259, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393037363031323b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b),
('5e8bbcb6cc7d2153b9d72d8522a1daebc03090fd', '::1', 1517910792, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373931303532303b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('60651209d81d8de02cad33058437e1e9f8fc54c0', '::1', 1519073254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393037333231303b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b),
('61cba3588b2d7c35d35a183ea50f9bd1da6f2fc2', '::1', 1518002584, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383030323238373b7265717565737465645f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f732f637265617465223b),
('627350de14828fc25c52897caba6dc12843eee35', '::1', 1519139570, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133393333323b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b);
INSERT INTO `bf_ci3_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('63136eb6a103ec89d3a49d884931ed8f2daa4705', '::1', 1518626329, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383632363332363b7265717565737465645f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f637265617465223b),
('6496c8761b02eed16ba075956afd6450b64ec469', '::1', 1518001625, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383030313338343b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f73223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f73223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('64ea9658c615e13c14f01abbdefc7ed7a702acc2', '::1', 1519070142, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393036393837313b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b),
('65acc350fdfe348f9ea1059021dc3eeb2e4e6b22', '::1', 1519132127, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133313832383b7265717565737465645f706167657c733a39353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f312f6d6f686562223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a39353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f312f6d6f686562223b),
('660743a694c04b1349aaec3940b0a5bec4e148af', '::1', 1517999133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373939383835363b7265717565737465645f706167657c733a37303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f736c696465722f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f736c696465722f637265617465223b),
('6638d8501e75469e454af3f12c0f1611e4d09b9c', '::1', 1520450543, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303435303430333b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('66e5c25495b8e0c2c32e4e6152baa2322638ac2c', '::1', 1520185408, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303138353330313b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('66ff1df3cd143b5905a33f87911ab469c6a03119', '::1', 1520845064, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303834343739313b7265717565737465645f706167657c733a36323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f646f63746f72732f646f63746f722f32223b70726576696f75735f706167657c733a36323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f646f63746f72732f646f63746f722f32223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('6762524b92653dceffb14b70369a259e59b32d53', '::1', 1517836523, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373833363439363b7265717565737465645f706167657c733a37323a22687474703a2f2f6c6f63616c686f73742f626f6e666972655f637573746f6d2f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b70726576696f75735f706167657c733a37323a22687474703a2f2f6c6f63616c686f73742f626f6e666972655f637573746f6d2f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('68e762b7dcbbf506c7d684a4bafcd9afc35e2649', '::1', 1520185186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303138343930363b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('6a856fe70b8b8cf1e62f3501fb42c6b085de024d', '::1', 1520845409, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303834353131363b7265717565737465645f706167657c733a36303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f61646d696e697374726174696f6e223b70726576696f75735f706167657c733a36303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f61646d696e697374726174696f6e223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('6b6d7b29ea9635b55e66529699394f152b46a9f0', '::1', 1519137487, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133373233303b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f7574696c6974792f736f6369616c5f6d65646961223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b),
('6bcbd0003525bb851fe5eeb4132441440f63c3b3', '::1', 1519061265, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393036303939383b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b),
('6c160de10049afc2627df2ae166e8f87fe34850d', '::1', 1520455088, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303435343938393b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('6c37d3f5f637062925be8825f3e1b3b5c7a6fb19', '::1', 1519077399, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393037373131363b7265717565737465645f706167657c733a39333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f6d6f686562223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b),
('6d01ea10095e38959d9a27a8e18fb2151395cb80', '::1', 1520845632, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303834353436343b7265717565737465645f706167657c733a36303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f61646d696e697374726174696f6e223b70726576696f75735f706167657c733a36303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f61646d696e697374726174696f6e223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('6e0fd981c852f24c1a892fe58a3ea6f4376c7df5', '::1', 1520891503, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303839313530333b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f73223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f73223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('6e765955b9dfc38f5365bda037eeb1a83f2490ed', '::1', 1518624852, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383632343631383b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b),
('6eeb808017eb270e5faf9e39739e946f61c33439', '::1', 1518005307, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383030353031353b7265717565737465645f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f732f637265617465223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('70d6f21631f3c407989a6abf84c8a2c518dba306', '::1', 1518010070, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383030393739303b7265717565737465645f706167657c733a37383a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f68756d616e7265736f75726365732f61646d696e697374726174696f6e223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37383a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f68756d616e7265736f75726365732f61646d696e697374726174696f6e223b),
('7148b9bbfdb6cfe63dfa559a15c60a9a6f6f7338', '::1', 1520449720, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303434393432383b7265717565737465645f706167657c733a36343a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f7273223b70726576696f75735f706167657c733a36343a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f7273223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('721c2df8ba3a894b9b8313a9622423a8cc0223ea', '::1', 1517837139, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373833363834373b7265717565737465645f706167657c733a38323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6275696c6465722f6372656174655f6d6f64756c652f33223b70726576696f75735f706167657c733a38323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6275696c6465722f6372656174655f6d6f64756c652f33223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('7228f9b95c21851d5f4e16e82ec0618a918b0e60', '::1', 1519056369, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393035363233333b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b),
('72ae0621bc3238460d98a120609d162c396c79aa', '::1', 1520162364, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303136323133323b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b),
('733c0e5640c2fcf4160cdaf56e055a78d3e29a18', '::1', 1519071674, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393037313635393b7265717565737465645f706167657c733a38393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f7365727665722f706870223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f7365727665722f706870223b),
('7342ce9aac8bb45e7078bbb99a546a3ec5f8ae2e', '::1', 1520162798, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303136323536343b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b),
('750b3dc12cbe8dbf548e71c6708eb168c14cfd4e', '::1', 1519127168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132373034393b7265717565737465645f706167657c733a39333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f6d6f686562223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a39333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f6d6f686562223b),
('75b3ba17e912c0cc1c80dfa8471ccabfd90540f7', '::1', 1519068767, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393036383534373b7265717565737465645f706167657c733a38373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d61676573223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b),
('77016ed5c07a30b5b425babdd6cd0487b459e162', '::1', 1520168304, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303136383133323b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('78ad016dbae01c248b6aeb6e821a75e4b3e250b8', '::1', 1519132494, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133323232323b7265717565737465645f706167657c733a39353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f312f6d6f686562223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a39353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f312f6d6f686562223b),
('792ec7a2eeaccad5fe437d4dd40e41519be7cf6c', '::1', 1517837995, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373833373930353b7265717565737465645f706167657c733a38323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6275696c6465722f6372656174655f6d6f64756c652f37223b70726576696f75735f706167657c733a38323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6275696c6465722f6372656174655f6d6f64756c652f37223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('79af0d039e34fa3127747c94ace1b2944f59a246', '::1', 1519134939, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133343736363b7265717565737465645f706167657c733a38373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d61676573223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a39353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f312f6d6f686562223b),
('79fc7a467cbe2735fc5d37518e4777fab339a944', '::1', 1520267516, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303236373336333b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b),
('79fe4689e25e3fe7cacae3b258beb19608159094', '::1', 1520877745, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303837373532393b7265717565737465645f706167657c733a39363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f322f44656e74616c223b70726576696f75735f706167657c733a39363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f322f44656e74616c223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('7a5b2f621c6fac4f06723cbe3bcea792c2305cdc', '::1', 1519081569, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393038313331353b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b),
('7e423e4cdd0fe413e1509956496aaec6a13f0e54', '::1', 1520448492, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303434383439323b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('7f0baa0b7ded3a5dfe90852847acd75e487a490a', '::1', 1519136586, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133363535343b7265717565737465645f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f732f637265617465223b),
('7f24b91e1cbf871238d4a31044db74ec7e73ba34', '::1', 1519074577, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393037343238343b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b),
('8014ae8e153bcfc5a3939e9c62c1727324547047', '::1', 1519134367, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133343036333b7265717565737465645f706167657c733a39353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f312f6d6f686562223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a39353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f312f6d6f686562223b),
('80b7d4806621c60290de08dd85d0ec9b43d85071', '::1', 1519056210, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393035353932373b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b),
('8144f9deb307b624f4ac6002fe02b437dbcdf5bc', '::1', 1519133832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133333635393b7265717565737465645f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c657279223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c657279223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('821c827b1d997d2aaa555504365ea0db0ecd4a6b', '::1', 1517917348, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373931373132303b7265717565737465645f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f637265617465223b70726576696f75735f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('82318e90ced1fe2353ca445bdb31357f6291105d', '::1', 1517998724, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373939383533383b7265717565737465645f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f637265617465223b),
('83f8bca604b11ed8bd895a905560662129eb4297', '::1', 1518009597, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383030393438313b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b),
('84276297f0f2d0a9a7e1c4afecfc9ba192d6e974', '::1', 1517996793, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373939363535363b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b),
('842f1e5a5e87cdfbd361ccf755ad2c525bc34d45', '::1', 1517994296, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373939343031383b7265717565737465645f706167657c733a37383a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f68756d616e7265736f75726365732f636172656572732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37383a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f68756d616e7265736f75726365732f636172656572732f637265617465223b),
('850faf6b9a84763aa11e4bdae4ccc298d7a7d022', '::1', 1519056918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393035363637333b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b),
('864b59c0ed8cc7a528d7ec6bb2c744ac4a0cc8f5', '::1', 1517993222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373939333032383b7265717565737465645f706167657c733a37373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6d6565745f6f75725f7465616d2f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6d6565745f6f75725f7465616d2f637265617465223b),
('878f90bbaf6255369b55263ac8c3bce7df964fb8', '::1', 1518562730, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383536323433383b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('88a4edef07841d2f72e96450ae31ba855068a156', '::1', 1520456590, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303435363430313b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('8936b551b555113fb45ef7ab81e85661ec8d069d', '::1', 1519081096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393038303830363b7265717565737465645f706167657c733a39333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f6d6f686562223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a39333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f6d6f686562223b),
('8957f411defefbd0aab5196507c7bc8f7f24f4a9', '::1', 1520446498, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303434363139373b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f656469742f31223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f656469742f31223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a34303a22737563636573733a3a4465706172746d656e7473207375636365737366756c6c792073617665642e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('89fc275adcba3e9ddb2f2f7db2895858ddd181f9', '::1', 1517926426, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373932363138323b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('8da644433fdff79c080cf9937b7de9865be0fac5', '::1', 1519078357, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393037383133303b7265717565737465645f706167657c733a39333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f6d6f686562223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a39333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f6d6f686562223b),
('8e81f0bef25064746c0413aa913bda6346de610c', '::1', 1517909692, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373930393538303b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('8ea6bfd45f02cafe7ab468a20c0e87acaa1b9a6c', '::1', 1520194220, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303139343136343b7265717565737465645f706167657c733a35313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f61626f7574223b70726576696f75735f706167657c733a35313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f61626f7574223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('8f225064f6fab90f56f5dd949e184a6ec61bb8bd', '::1', 1517996495, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373939363139393b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b);
INSERT INTO `bf_ci3_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('8fce5367ee772a3eb0ccac47b72f0c0ed73f0035', '::1', 1517840835, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373834303534363b7265717565737465645f706167657c733a36343a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f7273223b70726576696f75735f706167657c733a36343a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f7273223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('90f8ba34855ddca8fb95463e9ca6b0ba592f1bae', '::1', 1517990443, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373939303334343b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b),
('9108164ea9c726afb4965c4fb7542e475682c8c2', '::1', 1519134755, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133343435303b7265717565737465645f706167657c733a39373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f756e646566696e6564223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a39353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f312f6d6f686562223b),
('91a0dbe1ff60fb10e8607b20be7b4cc84c962d89', '::1', 1518565927, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383536353833313b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('91fa625ee08665c436cc9b5cb5f5b2644fc914d4', '::1', 1518564516, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383536343235373b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('9349ebbc17d3c5a813714e9606a62ad8a3162623', '::1', 1520847056, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303834363830363b7265717565737465645f706167657c733a35333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f63617265657273223b70726576696f75735f706167657c733a35333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f63617265657273223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('9352a2dd359a72faf788df2121e9d6321e2ecf9b', '::1', 1518005626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383030353333343b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f73223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f73223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('93696f46925061f60229d5114e19221895d0a2c5', '::1', 1520449943, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303434393734363b7265717565737465645f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f656469742f31223b70726576696f75735f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f656469742f31223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('936d1185f6e9b67a27367dfbdffc3d4839c79748', '::1', 1519072615, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393037323631353b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b),
('93a422538c9bec716c1971a1ce3af4d48bf60c56', '::1', 1520192234, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303139323031393b7265717565737465645f706167657c733a35303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f686f6d65223b70726576696f75735f706167657c733a35303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f686f6d65223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('93d85178b25829122279d7b9c42ad4a61990b400', '::1', 1517995980, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373939353831343b7265717565737465645f706167657c733a36323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f7574223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f7574223b),
('9417618850c503eb1670a12e7451dbd4d5f1484d', '::1', 1519066384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393036363235333b7265717565737465645f706167657c733a38373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d61676573223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d61676573223b6d6573736167657c733a35303a226572726f723a3a3c703e596f7520646964206e6f742073656c65637420612066696c6520746f2075706c6f61642e3c2f703e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('94ccf0530ddf594ed81ce196af52bc4f053cfcf2', '::1', 1520847734, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303834373433353b7265717565737465645f706167657c733a3131303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f6465706172746d656e74732f696e6465782f696d672f6465706172745f736572762f636f6d6d6f6e5f64697365617365732f636f6d5f6469735f30312e6a7067223b70726576696f75735f706167657c733a3131303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f6465706172746d656e74732f696e6465782f696d672f6465706172745f736572762f636f6d6d6f6e5f64697365617365732f636f6d5f6469735f30312e6a7067223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('95405610e39e0ac944930169af7fae9ef5ef6d28', '::1', 1517912455, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373931323338313b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('95b7b58fc03db5ec89d6d310318f01bf27ad1c76', '::1', 1517992699, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373939323436333b7265717565737465645f706167657c733a36373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6661712f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6661712f637265617465223b),
('967055d3ca1b0066975d829a3b90289cfba6a616', '::1', 1518620097, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383631393831383b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b),
('96c0637cc8009c7ef204ce654ed3797d0c9db3f9', '::1', 1520454248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303435343135373b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('96c9b322403550477b24650f9cce04bd657c01f5', '::1', 1519065096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393036353034383b7265717565737465645f706167657c733a38373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d61676573223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d61676573223b),
('96e784c10b3e2b612eaf67dc322c74ae450ce7dc', '::1', 1517835301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373833353130333b7265717565737465645f706167657c733a38393a22687474703a2f2f6c6f63616c686f73742f626f6e666972655f637573746f6d2f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6275696c6465722f6372656174655f6d6f64756c652f3132223b70726576696f75735f706167657c733a38393a22687474703a2f2f6c6f63616c686f73742f626f6e666972655f637573746f6d2f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6275696c6465722f6372656174655f6d6f64756c652f3132223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('997eb6c0c4356c011614b55df6181e6e6f351d89', '::1', 1517921260, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373932313139393b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('9a76cad9842a9cada44728d447112b3974bc5fff', '::1', 1517842355, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373834323235393b7265717565737465645f706167657c733a36323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f7574223b70726576696f75735f706167657c733a36323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f7574223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('9a9a110177d3f3f1ff5ee5aad0a6f7026da2d6c7', '::1', 1520892335, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303839323136333b7265717565737465645f706167657c733a35393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f50686f746f5f67616c6c657279223b70726576696f75735f706167657c733a35393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f50686f746f5f67616c6c657279223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('9d59d3b2795519ac31b72fdbc01f2176cd468db1', '::1', 1520450398, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303435303130303b7265717565737465645f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f656469742f34223b70726576696f75735f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f656469742f34223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('9df85accb7b5135aae874c280a8ceb392f98b459', '::1', 1520265561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303236353536313b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b),
('9e85251288a6ad26c152f0575964addcb81b9759', '::1', 1520167978, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303136373831383b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('9efc9e47c0a668d13e9c05e333ba58b445b8ad70', '::1', 1519137222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133363932353b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f7574696c6974792f736f6369616c5f6d65646961223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f7574696c6974792f736f6369616c5f6d65646961223b),
('a175737fdec8a65dad9bc18741fd7c4e8b993b31', '::1', 1520891278, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303839313139323b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f73223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f73223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('a1f0987e256b055660e0eff8f7c3764be7c8856a', '::1', 1519132811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133323631343b7265717565737465645f706167657c733a39353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f312f6d6f686562223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a39353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f312f6d6f686562223b),
('a22b4e43c04444198a0fb11d9438820d9e9255dd', '::1', 1520165886, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303136353730373b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b),
('a3e1c27c592b2e4b47d64caa7909348f4661f4a3', '::1', 1517838543, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373833383236363b7265717565737465645f706167657c733a38323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6275696c6465722f6372656174655f6d6f64756c652f37223b70726576696f75735f706167657c733a38323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6275696c6465722f6372656174655f6d6f64756c652f37223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('a3edc7ac2d8feaaf413cdec5dc18724618aeecdb', '::1', 1520268835, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303236383833343b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b),
('a5f63e52758fc6f2fe2700f549c37fb13c6aad01', '::1', 1520887929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303838373638303b7265717565737465645f706167657c733a35393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f50686f746f5f67616c6c657279223b),
('a65d6d6fef75995ea5df859b0641f01079590655', '::1', 1520269613, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303236393631313b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b),
('a68b1c3c130d7c656f6ce13f63fc66b13b0483c5', '::1', 1519138861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133383536323b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b),
('a6d8605f19d7f836692778c816736eb91b458741', '::1', 1517999423, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373939393238363b7265717565737465645f706167657c733a36333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f736c69646572223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f736c69646572223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('a92858f51972d40736ad14e63b50d6e47fa1c48f', '::1', 1519064571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393036343333313b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b),
('a94852861eef1f090a39d6900cf3990c0e521cd3', '::1', 1517913776, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373931333737363b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('a98c6897e971bf5245250420c4e9ec7a97abae98', '::1', 1519075638, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393037353539393b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b),
('a9bf8ffe448cdf90ad0540c285d7ada30a99f484', '::1', 1519135795, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133353633353b7265717565737465645f706167657c733a39373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f646f5f6d756c74695f75706c6f61642f312f6d6f686562223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a39373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f646f5f6d756c74695f75706c6f61642f312f6d6f686562223b),
('a9c5c57453a3578429eda49ee03da874c8f18c13', '::1', 1518001053, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383030313035313b7265717565737465645f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f732f637265617465223b),
('aa23dfc6628817c4904cbd41359e4bfab85cdf09', '::1', 1519743896, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393734333839363b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b),
('aa7b3cdb24b3505c59241a341144d704c59b8344', '::1', 1520889965, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303838393736343b7265717565737465645f706167657c733a35393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f50686f746f5f67616c6c657279223b70726576696f75735f706167657c733a35393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f50686f746f5f67616c6c657279223b),
('aaa421bae85b22993026431b26a4dbaf5b0c0475', '::1', 1518007020, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383030363735363b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f73223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b),
('abb146d6b6d8264f64d1a11dec7693570981969a', '::1', 1517997535, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373939373234333b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b),
('abbd7621b35c8ab7368d54e98454020967d596c5', '::1', 1520167743, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303136373436393b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('af78d6684c7bf77e751b4c2303049b0ab5e82d27', '::1', 1518620380, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383632303334393b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b),
('b1a8edd3f6fd51776b69ecd87f462be4b85a4d21', '::1', 1520889744, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303838393435333b7265717565737465645f706167657c733a35393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f50686f746f5f67616c6c657279223b70726576696f75735f706167657c733a35393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f50686f746f5f67616c6c657279223b),
('b232688a716ff47578faad3810344b2dde955e56', '::1', 1520878671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303837383337333b7265717565737465645f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c657279223b70726576696f75735f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c657279223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('b238ce380c3132638047419b02ea24e03546bc0a', '::1', 1518562190, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383536313939383b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('b279bd2d3da473dca2ac954854ee031d0bbfde87', '::1', 1520879217, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303837393030313b7265717565737465645f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c657279223b70726576696f75735f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c657279223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('b3141bef0ba0f84878285b0c6d355060014f607a', '::1', 1518007327, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383030373130353b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f73223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f73223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('b4921c4a9374bf1bc24004f0c8544fa8fba6e76d', '::1', 1517908029, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373930383031383b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('b500d16ad75104147dd6b1d8aa9adae2f80c7bca', '::1', 1519067615, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393036373438343b7265717565737465645f706167657c733a38373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d61676573223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b),
('b516aa316fac54118a38164cff52bfebdcf0ef4c', '::1', 1518008190, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383030373939353b7265717565737465645f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37313a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f646f63746f72732f637265617465223b),
('b55336d3c5a684ff23af47c82b450f31a065add1', '::1', 1519055024, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393035353032333b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b),
('b5535287b26f72b75c605d567cd761f605152d01', '::1', 1520187329, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303138373332343b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('b8c82666a29b2fb835172a75337e87377aad3543', '::1', 1517913581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373931333334333b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('b9fa85bf1035a8a2d35fe691d35e63b43e5cf6f7', '::1', 1517991593, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373939313337393b7265717565737465645f706167657c733a36323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f7574223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f7574223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('ba50efd94f939f123ed31062c7da764d6ebe27e6', '::1', 1520887573, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303838373331383b7265717565737465645f706167657c733a35393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f50686f746f5f67616c6c657279223b),
('bab07b09931721d53812cdbb21048097f5ef3249', '::1', 1518004866, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383030343536393b7265717565737465645f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f732f637265617465223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d);
INSERT INTO `bf_ci3_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('bb02988e7f24e5134b6b440d883461c7c52a2a9d', '::1', 1519081836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393038313734333b7265717565737465645f706167657c733a39333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f6d6f686562223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a39333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f6d6f686562223b),
('bb1a0d0bd72e523e72afc3e0ca15550900500a6b', '::1', 1519057496, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393035373236333b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b),
('bb58be4318d7f18f5355588d2c133a4268636d35', '::1', 1517840101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373833393833313b7265717565737465645f706167657c733a38323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6275696c6465722f6372656174655f6d6f64756c652f37223b70726576696f75735f706167657c733a38323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6275696c6465722f6372656174655f6d6f64756c652f37223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('bb89d9014a44ad279552d21d97c4552686908206', '::1', 1519071066, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393037303837343b7265717565737465645f706167657c733a38393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f7365727665722f706870223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f7365727665722f706870223b),
('bbcf8e3006d0c794f1030b0e979b1eb3ea5bad3b', '::1', 1520188846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303138383736383b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('bc5960ebddd6ed3f2721e7023dc59d9a1a2fa8f9', '::1', 1517834634, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373833343530353b7265717565737465645f706167657c733a38393a22687474703a2f2f6c6f63616c686f73742f626f6e666972655f637573746f6d2f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6275696c6465722f6372656174655f6d6f64756c652f3131223b70726576696f75735f706167657c733a38393a22687474703a2f2f6c6f63616c686f73742f626f6e666972655f637573746f6d2f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6275696c6465722f6372656174655f6d6f64756c652f3131223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('bcbfcc77fa5b6944e1a4d7e0deb6587711caedd2', '::1', 1517914687, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373931343431383b7265717565737465645f706167657c733a36383a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e7473223b70726576696f75735f706167657c733a36383a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e7473223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('bd2949f36497cc49c62b6fa63b136a90b4e88f17', '::1', 1520189943, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303138393634383b7265717565737465645f706167657c733a35303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f686f6d65223b70726576696f75735f706167657c733a35303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f686f6d65223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('be5fa58b549d7bab5ec03a447eedee7cc21e6877', '::1', 1518566505, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383536363237373b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('bebac91665ad7ec8998f809f772877244f8331fd', '::1', 1517833056, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373833323830333b7265717565737465645f706167657c733a37363a22687474703a2f2f6c6f63616c686f73742f626f6e666972655f637573746f6d2f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f736c696465722f637265617465223b70726576696f75735f706167657c733a37363a22687474703a2f2f6c6f63616c686f73742f626f6e666972655f637573746f6d2f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f736c696465722f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('bf6c57738b7ec504a8893db659abb9924e1f82fd', '::1', 1517840336, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373834303134323b7265717565737465645f706167657c733a38323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6275696c6465722f6372656174655f6d6f64756c652f36223b70726576696f75735f706167657c733a38323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6275696c6465722f6372656174655f6d6f64756c652f36223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('bf720ef0e9a24f79d8d5fcd8c2f4901b0b511898', '::1', 1519131682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133313339393b7265717565737465645f706167657c733a39353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f312f6d6f686562223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a39353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f312f6d6f686562223b),
('bf7ee9847e9a37f6080154daf1166ae6fc6e512f', '::1', 1520275350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303237353035353b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('c186130ccde779e816872ed3bdc321289ad16a7a', '::1', 1517996964, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373939363835393b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b),
('c25a3c190eeb5340201eacd6225dd2e224d37e85', '::1', 1520843477, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303834333230353b7265717565737465645f706167657c733a3131303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f6465706172746d656e74732f696e6465782f696d672f6465706172745f736572762f636f6d6d6f6e5f64697365617365732f636f6d5f6469735f30312e6a7067223b70726576696f75735f706167657c733a3131303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f6465706172746d656e74732f696e6465782f696d672f6465706172745f736572762f636f6d6d6f6e5f64697365617365732f636f6d5f6469735f30312e6a7067223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('c2c2021aa2b3282f74b10d978eef7f7e417a5397', '::1', 1519061482, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393036313338383b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b),
('c3094027e47517aafff8967682e1473749626edb', '::1', 1519131241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133313032303b7265717565737465645f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c657279223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c657279223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('c498e2d96f0ab95eb9e49f725b73935e7f94ebf5', '::1', 1519133147, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133323935333b7265717565737465645f706167657c733a39353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f312f6d6f686562223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a39353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f312f6d6f686562223b),
('c4c83b6475dcb5490a3697e6e0af247e6ae79145', '::1', 1520191139, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303139303835303b7265717565737465645f706167657c733a35303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f686f6d65223b70726576696f75735f706167657c733a35303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f686f6d65223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('c5a74c6891bc9396974cba0438d2150755ba21f0', '::1', 1517917786, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373931373630303b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('c5cb57d017f77b08cc04bdf161a126c5079a4673', '::1', 1520455633, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303435353334313b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('c632233b6b9e1135b8ab61b87c851fac138b9c1d', '::1', 1518001902, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383030313639363b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f73223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f73223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('c667c278a66027e5afc7636471495bb585145875', '::1', 1518564815, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383536343638353b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('c7c3c15573d9081de6ebe486b1a1d1cd4f02fa8d', '::1', 1518004471, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383030343139353b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f73223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f766964656f73223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('c7cd458931b7da80b41a0673a486454bb45ec1da', '::1', 1517910951, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373931303833343b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('c841f3dff22cf6172b25307b3a8889124bff7004', '::1', 1517925519, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373932353330373b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('c8c118a87ea004e5a5c113474368bfa57eab03db', '::1', 1518000209, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373939393933373b7265717565737465645f706167657c733a36373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6661712f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6661712f637265617465223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('ca22b842d647561d00bbc707a8e86db90bfeea6a', '::1', 1518565668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383536353337343b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('cb5d21aea8b8dca849717f13895552cec7e7e40b', '::1', 1520888262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303838383230363b7265717565737465645f706167657c733a35393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f50686f746f5f67616c6c657279223b70726576696f75735f706167657c733a35393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f50686f746f5f67616c6c657279223b),
('cb8e459c55b585cc7adb0f255e95afe39b03b4dc', '::1', 1520846364, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303834363130363b7265717565737465645f706167657c733a35333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f63617265657273223b70726576696f75735f706167657c733a35333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f63617265657273223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('cc5032c213df4cb608c781519963f1266b341146', '::1', 1520182474, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303138323235363b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b),
('cc596bbd91f26b98092f3826549f7ec78de2bf31', '::1', 1520166679, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303136363338313b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b),
('cf37e00b23f7c30e7feaf7477734f6c2a6404624', '::1', 1517924633, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373932343434373b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('d2bc33d3af5200c312a41dcbfb3fcfad041266d2', '::1', 1517926901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373932363637353b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('d2e79f43597f46e6d7e834651b1ee28be33ea1b5', '::1', 1520453199, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303435323937373b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('d3657f3d560a98993b04d0baaab03e59c9c0a511', '::1', 1520876821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303837363534363b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('d590d89fc42aba42ad210560a033698a7e8e0f8d', '::1', 1518627570, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383632373436303b7265717565737465645f706167657c733a37303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f736c696465722f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f736c696465722f637265617465223b),
('d5ad1d45d87617c8c7cc047469f85819e80d7970', '::1', 1519060056, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393035393832343b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b),
('d90776ae875d3558a5d2f247d84b2ce76901946d', '::1', 1519139882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133393836303b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b),
('da44b777609092cbca5f010db3573d6f2b1688d7', '::1', 1520840740, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303834303436313b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f6172223b),
('dc87c7d88c1d2d75a4b0eeb6b9d2e63f0555223e', '::1', 1520183489, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303138333235303b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b),
('ddc73a022ac72a95e69e9f305b8c769962bb4238', '::1', 1519068526, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393036383232353b7265717565737465645f706167657c733a38373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d61676573223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b),
('ddf0400494ec3a9a330a8529bc45d4a9654455e3', '::1', 1520182945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303138323839373b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b),
('dfeb31b3b1eb6dd53335c5074524930e70106690', '::1', 1517911801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373931313732333b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('e01bf52cae10a1092f0234b7b52aa831c1e4a359', '::1', 1518006533, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383030363330363b7265717565737465645f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f732f637265617465223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('e02f68e3629000f92ca8ede2ffed751527413fd7', '::1', 1519068874, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393036383836353b7265717565737465645f706167657c733a38373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d61676573223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d61676573223b),
('e19fbb83a921bc8f6b59ab2784007a4429b407bd', '::1', 1518628526, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383632383237393b7265717565737465645f706167657c733a36333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6c6f6773223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6c6f6773223b),
('e27f04776f1ef5d4eadc28932a728aa275924ab4', '::1', 1519077955, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393037373832363b7265717565737465645f706167657c733a39333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f6d6f686562223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a39333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f6d6f686562223b),
('e3799ceb4590dd60e98385404b60e53d6f69d009', '::1', 1519076653, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393037363335363b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b),
('e5580f020d24ba3383679434333e605c42e50bba', '::1', 1519841838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393834313833373b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b),
('e5a85dca14ab20df39d4fc8e233a6f3859609ccb', '::1', 1518563796, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383536333739363b7265717565737465645f706167657c733a36383a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e7473223b70726576696f75735f706167657c733a36383a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e7473223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('e66bdf39380249b7dd7d966a17e37bec82d16e8d', '::1', 1519062869, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393036323832353b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b),
('e6f6ed32dded79befa0efa71a35dd0456b349968', '::1', 1520274070, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303237333832343b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('e7d8706b128d16a40f26857df635473e374159d6', '::1', 1520843113, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303834323833343b7265717565737465645f706167657c733a39343a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f6465706172746d656e74732f696e6465782f696d672f6465706172745f736572762f6465705f646f635f30312e6a7067223b70726576696f75735f706167657c733a39343a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f6465706172746d656e74732f696e6465782f696d672f6465706172745f736572762f6465705f646f635f30312e6a7067223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('e816b7e1593fff61ea24256dedd45f5dbb21f14b', '::1', 1520190394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303139303137323b7265717565737465645f706167657c733a35303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f686f6d65223b70726576696f75735f706167657c733a35303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f686f6d65223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('e9346db3c318302e8a0276c22acdac48db900ff4', '::1', 1520879514, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303837393436313b7265717565737465645f706167657c733a35393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f50686f746f5f67616c6c657279223b70726576696f75735f706167657c733a35393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f50686f746f5f67616c6c657279223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('eadfedffb46c6a1ea3c64b0f3c03074b23b4a2a0', '::1', 1517997815, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373939373639343b7265717565737465645f706167657c733a36383a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e7473223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36383a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e7473223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('ec60be49090d9dbc405222a405332775a33bd1aa', '::1', 1517998488, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373939383233353b7265717565737465645f706167657c733a36383a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e7473223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36383a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e7473223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('eccc511318cf54e65975bde46fe98b4898159b3e', '::1', 1517991200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373939313031363b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b);
INSERT INTO `bf_ci3_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('ed15fe20f763137e56184095535b8e5013b67a64', '::1', 1520452764, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303435323631393b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f70617469656e74735f736179223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f70617469656e74735f736179223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('edd96592b040bbaa347efba8f7e9b6c98b13f1c4', '::1', 1520841401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303834313136313b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b),
('ee12e408b87005c88639c5debe1b3740c3b0248a', '::1', 1520189567, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303138393330343b7265717565737465645f706167657c733a35303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f686f6d65223b70726576696f75735f706167657c733a35303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e2f686f6d65223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('f04bd789ce002a0d1d9c5f43540855d516d3e95f', '::1', 1518629210, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383632393034373b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b),
('f13f310c7411eb499170d66db5456d806411ca77', '::1', 1517838992, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373833383735323b7265717565737465645f706167657c733a38323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6275696c6465722f6372656174655f6d6f64756c652f36223b70726576696f75735f706167657c733a38323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f646576656c6f7065722f6275696c6465722f6372656174655f6d6f64756c652f36223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('f2003f612e118dc4ed232164f1028f5e184ba39e', '::1', 1517911434, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373931313134343b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('f20704c908c6db6fa7b0ebd1ce4182c6562e2a8f', '::1', 1517841556, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373834313333333b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('f244f4f2ed2a8c1c1b7e76445894657d9a9f4948', '::1', 1519058297, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393035383239373b7265717565737465645f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f637265617465223b),
('f2a535088ac48ff6b4bb5c19c9b9384814c28d2a', '::1', 1517839205, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373833393134363b7265717565737465645f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b70726576696f75735f706167657c733a36363a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('f2f4e760b690e6920dc898b729ecde89a276e35b', '::1', 1520276156, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303237363135363b7265717565737465645f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b70726576696f75735f706167657c733a34353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f656e223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('f3b4cd7f4e4551468fb291d0ad593a1b5647b80c', '::1', 1518622406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383632323234373b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b),
('f3d657df050543b8923678b2f66aa2829fe4a2e9', '::1', 1518626179, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383632353938383b7265717565737465645f706167657c733a37383a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f68756d616e7265736f75726365732f636172656572732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37383a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f68756d616e7265736f75726365732f636172656572732f637265617465223b),
('f3ef641151bff9c5e3a1d875fe6d9f20d7aa2bfa', '::1', 1519126636, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132363339323b7265717565737465645f706167657c733a39333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f6d6f686562223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a39333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f6d6f686562223b),
('f442343c44cdf4623533cb195b8188c4611f75fc', '::1', 1520454793, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303435343630393b7265717565737465645f706167657c733a36303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f666171223b70726576696f75735f706167657c733a36303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f666171223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('f4ba8ae3f8b40614db2a54d2f7955c9fd274962e', '::1', 1520890751, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303839303438343b7265717565737465645f706167657c733a35393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f50686f746f5f67616c6c657279223b70726576696f75735f706167657c733a35393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61722f50686f746f5f67616c6c657279223b),
('f6abe66c58b3374a99602c7765b68cc0ca206d2b', '::1', 1517841940, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373834313934303b7265717565737465645f706167657c733a36323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f7574223b70726576696f75735f706167657c733a36323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f7574223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('f6cb8acc515660c855bfe5f71c445842c356c2e2', '::1', 1520169160, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303136383939363b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('f6d99454267e31b4a6dd6980c672cda3cc1dc83d', '::1', 1517989018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373938383939323b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b),
('f6deb1ef3842d19958f7b9133077cf4d316c9bae', '::1', 1517910075, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373931303036373b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('f7e6c3a6397227e61c0607b9836e606814681408', '::1', 1520878156, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303837373934353b7265717565737465645f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c657279223b70726576696f75735f706167657c733a37333a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c657279223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('f8319b6a8a7b295aa1cc4989568eb1de33385b06', '::1', 1519072317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393037323132373b7265717565737465645f706167657c733a38393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f7365727665722f706870223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f7365727665722f706870223b),
('f8e01250645a453b1ac829f953ce8814379dd34b', '::1', 1520166986, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303136363732333b7265717565737465645f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b70726576696f75735f706167657c733a34323a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e706870223b),
('f9dfa3710ab502f71e2a331bbea058e494e867b6', '::1', 1517835690, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373833353638353b7265717565737465645f706167657c733a37323a22687474703a2f2f6c6f63616c686f73742f626f6e666972655f637573746f6d2f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b70726576696f75735f706167657c733a37323a22687474703a2f2f6c6f63616c686f73742f626f6e666972655f637573746f6d2f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f64617368626f617264223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('fa568aefbc75e2fc365598d5d4adf672814d8956', '::1', 1519130453, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393133303138313b7265717565737465645f706167657c733a39373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f756e646566696e6564223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a39353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d616765732f312f6d6f686562223b),
('fbb1df16d09ed0aaef4299f4a23f34e86319b9b8', '::1', 1517919224, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373931393232333b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('fcabb92c63aa792b16733026d65f25c71eb54b25', '::1', 1517842877, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373834323836303b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b),
('fcd5cefa36c857a131ef0a2fc1372d4c1cd086b5', '::1', 1518623450, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383632333331313b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b),
('fde8e3c907f14535ab9e4c12841e43917122e98e', '::1', 1520275667, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303237353433303b7265717565737465645f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f656469742f32223b70726576696f75735f706167657c733a36393a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f61626f75742f656469742f32223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('fe24492ca42056f8220aef98a9201e3e850a2f75', '::1', 1519066056, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393036353831363b7265717565737465645f706167657c733a38373a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f75706c616f645f696d61676573223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a38303a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f666163696c69746965732f70686f746f5f67616c6c6572792f656469742f31223b),
('fe28480db514059290b0eb1f0759128de5e01a29', '::1', 1518622197, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383632313931393b7265717565737465645f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b757365725f69647c733a313a2231223b617574685f637573746f6d7c733a353a2261646d696e223b757365725f746f6b656e7c733a34303a2266353833303738373963623162316264636336313633646261363137356635366134383861383138223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b726f6c655f69647c733a313a2231223b6c6f676765645f696e7c623a313b6c616e67756167657c733a373a22656e676c697368223b70726576696f75735f706167657c733a37353a22687474703a2f2f6c6f63616c686f73742f62697568616d72612f7075626c69632f696e6465782e7068702f61646d696e2f636f6e74656e742f6465706172746d656e74732f637265617465223b);

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

INSERT INTO `bf_doctors` (`id`, `en_name`, `ar_name`, `en_job_title`, `ar_job_title`, `en_academic`, `ar_academic`, `en_description`, `ar_description`, `cover_image`, `personal_photo`, `weight`, `type`, `status`, `deleted`, `deleted_by`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 'Dr. angela', 'د. انجيلا', 'dentistry', 'طب اسنان', 'Lorem Ipsum', 'لوريم ابسوم', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic </span><br></p>', '<p><span style=\"color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل</span><br></p>', '01.jpg', '01.jpg', 0, 1, 0, 0, NULL, '2018-02-07 14:13:48', 1, '2018-03-07 20:15:00', 1),
(2, 'Dr. John', 'د. جون', 'Dermatologist', 'الأمراض الجلدية', 'Lorem Ipsom', 'لوريم ابسوم', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic </span><br></p>', '<p><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ </span><br></p>', '02.jpg', '02.jpg', 1, 1, 0, 0, NULL, '2018-02-07 14:16:37', 1, '2018-03-07 20:16:57', 1),
(4, 'Dr. John', 'د. جون', 'Dermatologist', 'الأمراض الجلدية', 'Lorem Ipsom', 'لوريم ابسوم', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic </span><br></p>', '<p><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ </span><br></p>', '03.jpg', '03.jpg', 2, 0, 0, 0, NULL, '2018-02-07 14:16:37', 1, '2018-03-07 20:20:03', 1),
(5, 'Dr. angela', 'د. انجيلا', 'dentistry', 'طب اسنان', 'Lorem Ipsum', 'لوريم ابسوم', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic </span><br></p>', '<p><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل</span><br></p>', '04.jpg', '04.jpg', 4, 0, 0, 0, NULL, '2018-02-07 14:13:48', 1, '2018-03-07 20:19:54', 1),
(6, 'Dr. John', 'د. جون', 'Dermatologist', 'الأمراض الجلدية', 'Lorem Ipsom', 'لوريم ابسوم', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic </span><br></p>', '<p><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ </span><br></p>', '06.jpg', '06.jpg', 5, 0, 0, 0, NULL, '2018-02-07 14:16:37', 1, '2018-03-07 20:19:27', 1),
(7, 'Dr. angela', 'د. انجيلا', 'dentistry', 'طب اسنان', 'Lorem Ipsum', 'لوريم ابسوم', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic </span><br></p>', '<p><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل</span><br></p>', '05.jpg', '05.jpg', 6, 0, 0, 0, NULL, '2018-02-07 14:13:48', 1, '2018-03-07 20:19:46', 1);

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
(1, 'dqwd@wqedqwd.com', 'qdqwd@qwdqw.com', 0, NULL, '0000-00-00 00:00:00', 0, '2018-02-20 15:47:47', 1);

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

--
-- Dumping data for table `bf_faq`
--

INSERT INTO `bf_faq` (`id`, `en_title`, `ar_title`, `en_description`, `ar_description`, `weight`, `status`, `deleted`, `deleted_by`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 'Will i be able to stay with my doctor enogh time to explain my case?', 'هل سأكون قادرا على البقاء مع طبيبي ما يكفي من الوقت لشرح قضيتي؟', '<p>As one of the leading clinic in Kuwait, Bouhamra Clinic continues to expand in response to the growing health care needs of the people in Kuwait. Our value statement is Not just Healthcare. As one of the leading clinic in Kuwait, Bouhamra Clinic continues to expand in response to the growing health care needs of the people in Kuwait. Our value statement is Not just Healthcare.<br></p>', '<p><span style=\"font-weight: lighter;\">باعتبارها إحدى العيادات الرائدة في الكويت، تواصل عيادة بوحمرة التوسع في تلبية احتياجات الرعاية الصحية المتزايدة للشعب الكويتي. بيان القيمة لدينا ليس فقط الرعاية الصحية. باعتبارها إحدى العيادات الرائدة في الكويت، تواصل عيادة بوحمرة التوسع في تلبية احتياجات الرعاية الصحية المتزايدة للشعب الكويتي. بيان القيمة لدينا ليس فقط الرعاية الصحية.</span><br></p><div><br></div>', 0, 0, 0, NULL, '2018-02-07 11:42:33', 1, '2018-03-07 21:32:05', 1),
(2, 'Will i be able to stay with my doctor enogh time to explain my case?', 'هل سأكون قادرا على البقاء مع طبيبي ما يكفي من الوقت لشرح قضيتي؟', '<p>As one of the leading clinic in Kuwait, Bouhamra Clinic continues to expand in response to the growing health care needs of the people in Kuwait. Our value statement is Not just Healthcare. As one of the leading clinic in Kuwait, Bouhamra Clinic continues to expand in response to the growing health care needs of the people in Kuwait. Our value statement is Not just Healthcare.</p><div><br></div>', '<p>باعتبارها إحدى العيادات الرائدة في الكويت، تواصل عيادة بوحمرة التوسع في تلبية احتياجات الرعاية الصحية المتزايدة للشعب الكويتي. بيان القيمة لدينا ليس فقط الرعاية الصحية. باعتبارها إحدى العيادات الرائدة في الكويت، تواصل عيادة بوحمرة التوسع في تلبية احتياجات الرعاية الصحية المتزايدة للشعب الكويتي. بيان القيمة لدينا ليس فقط الرعاية الصحية.<br></p>', 1, 0, 0, NULL, '2018-02-07 11:43:14', 1, '2018-03-07 21:33:13', 1),
(3, 'Will i be able to stay with my doctor enogh time to explain my case?', 'هل سأكون قادرا على البقاء مع طبيبي ما يكفي من الوقت لشرح قضيتي؟', '<p>As one of the leading clinic in Kuwait, Bouhamra Clinic continues to expand in response to the growing health care needs of the people in Kuwait. Our value statement is Not just Healthcare. As one of the leading clinic in Kuwait, Bouhamra Clinic continues to expand in response to the growing health care needs of the people in Kuwait. Our value statement is Not just Healthcare.</p><div><br></div>', '<p>باعتبارها إحدى العيادات الرائدة في الكويت، تواصل عيادة بوحمرة التوسع في تلبية احتياجات الرعاية الصحية المتزايدة للشعب الكويتي. بيان القيمة لدينا ليس فقط الرعاية الصحية. باعتبارها إحدى العيادات الرائدة في الكويت، تواصل عيادة بوحمرة التوسع في تلبية احتياجات الرعاية الصحية المتزايدة للشعب الكويتي. بيان القيمة لدينا ليس فقط الرعاية الصحية.<br></p>', 1, 0, 0, NULL, '2018-02-07 11:43:14', 1, '2018-03-07 21:33:13', 1),
(4, 'Will i be able to stay with my doctor enogh time to explain my case?', 'هل سأكون قادرا على البقاء مع طبيبي ما يكفي من الوقت لشرح قضيتي؟', '<p>As one of the leading clinic in Kuwait, Bouhamra Clinic continues to expand in response to the growing health care needs of the people in Kuwait. Our value statement is Not just Healthcare. As one of the leading clinic in Kuwait, Bouhamra Clinic continues to expand in response to the growing health care needs of the people in Kuwait. Our value statement is Not just Healthcare.</p><div><br></div>', '<p>باعتبارها إحدى العيادات الرائدة في الكويت، تواصل عيادة بوحمرة التوسع في تلبية احتياجات الرعاية الصحية المتزايدة للشعب الكويتي. بيان القيمة لدينا ليس فقط الرعاية الصحية. باعتبارها إحدى العيادات الرائدة في الكويت، تواصل عيادة بوحمرة التوسع في تلبية احتياجات الرعاية الصحية المتزايدة للشعب الكويتي. بيان القيمة لدينا ليس فقط الرعاية الصحية.<br></p>', 1, 0, 0, NULL, '2018-02-07 11:43:14', 1, '2018-03-07 21:33:13', 1);

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
(1, '(+965) 25666668', 'support@bouhamracinickw.com', '<p>السالمية، محافظة حولي، الكويت.</p>', '<p>Salmiya, Hawalli Governorate, Kuwait.<br></p>', 0, NULL, '0000-00-00 00:00:00', 0, '2018-03-07 21:53:01', 1);

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
(1, 'Bouhamra Clinic', 'عيادات ابو حمرة', '29.332423', '48.043734', 1, 0, NULL, '2018-02-07 10:08:05', 1, '2018-03-07 21:49:05', 1);

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

--
-- Dumping data for table `bf_meet_our_team`
--

INSERT INTO `bf_meet_our_team` (`id`, `en_title`, `ar_title`, `ar_home_description`, `en_home_description`, `en_description`, `ar_description`, `deleted`, `deleted_by`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 'MEET OUR TEAM', 'التقي بأطبائنا', '<span style=\"color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء.</span>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic </span><br></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic </span><br></p>', '<p><span style=\"color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء.</span><br></p>', 0, NULL, '2018-03-07 19:40:24', 1, '0000-00-00 00:00:00', NULL);

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

--
-- Dumping data for table `bf_patients_say`
--

INSERT INTO `bf_patients_say` (`id`, `en_name`, `ar_name`, `en_job_title`, `ar_job_title`, `en_comment`, `ar_comment`, `weight`, `status`, `deleted`, `deleted_by`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 'Hima John', 'هيما جون', 'Senior Architect', 'مهندس معماري', '<p> I have never felt comfortable of my dental care in any place like Bouhamra Clinic, they know exactly what is the meaning of medical care that any patient may need<br></p>', '<p>لم أشعر أبدا بالراحة من العناية بالأسنان في أي مكان مثل عيادة بوحمرة، أنهم يعرفون بالضبط ما هو معنى الرعاية الطبية التي قد يحتاجها أي مريض.</p><div><br></div>', 0, 0, 0, NULL, '2018-03-07 20:59:24', 1, '0000-00-00 00:00:00', NULL),
(2, 'Hima John', 'هيما جون', 'Senior Architect', 'مهندس معماري', '<p> I have never felt comfortable of my dental care in any place like Bouhamra Clinic, they know exactly what is the meaning of medical care that any patient may need<br></p>', '<p>لم أشعر أبدا بالراحة من العناية بالأسنان في أي مكان مثل عيادة بوحمرة، أنهم يعرفون بالضبط ما هو معنى الرعاية الطبية التي قد يحتاجها أي مريض.</p><div><br></div>', 0, 0, 0, NULL, '2018-03-07 20:59:24', 1, '0000-00-00 00:00:00', NULL),
(3, 'Hima John', 'هيما جون', 'Senior Architect', 'مهندس معماري', '<p> I have never felt comfortable of my dental care in any place like Bouhamra Clinic, they know exactly what is the meaning of medical care that any patient may need<br></p>', '<p>لم أشعر أبدا بالراحة من العناية بالأسنان في أي مكان مثل عيادة بوحمرة، أنهم يعرفون بالضبط ما هو معنى الرعاية الطبية التي قد يحتاجها أي مريض.</p><div><br></div>', 0, 0, 0, NULL, '2018-03-07 20:59:24', 1, '0000-00-00 00:00:00', NULL);

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
(145, 'Doctors.Content.View', 'View Doctors Content', 'active'),
(146, 'Doctors.Content.Create', 'Create Doctors Content', 'active'),
(147, 'Doctors.Content.Edit', 'Edit Doctors Content', 'active'),
(148, 'Doctors.Content.Delete', 'Delete Doctors Content', 'active'),
(153, 'Photo_gallery.Facilities.View', 'View Photo_gallery Facilities', 'active'),
(154, 'Photo_gallery.Facilities.Create', 'Create Photo_gallery Facilities', 'active'),
(155, 'Photo_gallery.Facilities.Edit', 'Edit Photo_gallery Facilities', 'active'),
(156, 'Photo_gallery.Facilities.Delete', 'Delete Photo_gallery Facilities', 'active');

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
(8, 'Laser Therapy', 'العلاج بالليزر', 7, 0, 0, NULL, '2018-03-12 19:00:08', 1, '2018-03-12 19:26:57', 1);

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
(1, 145),
(1, 146),
(1, 147),
(1, 148),
(1, 153),
(1, 154),
(1, 155),
(1, 156),
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
('mailtype', 'email', 'text'),
('password_iterations', 'users', '8'),
('protocol', 'email', 'mail'),
('sender_email', 'email', ''),
('site.languages', 'core', 'a:2:{i:0;s:6:\"arabic\";i:1;s:7:\"english\";}'),
('site.list_limit', 'core', '25'),
('site.offline_reason', 'core', ''),
('site.show_front_profiler', 'core', '1'),
('site.show_profiler', 'core', '1'),
('site.status', 'core', '1'),
('site.system_email', 'core', 'admin@admin.com'),
('site.title', 'core', 'Biuhamra'),
('smtp_host', 'email', ''),
('smtp_pass', 'email', ''),
('smtp_port', 'email', ''),
('smtp_timeout', 'email', ''),
('smtp_user', 'email', ''),
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

--
-- Dumping data for table `bf_slider`
--

INSERT INTO `bf_slider` (`id`, `en_title`, `ar_title`, `en_description`, `ar_description`, `image`, `weight`, `status`, `deleted`, `deleted_by`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 'dfhdfh', 'dfhdfh', '<p>dfhdfh</p>', '<p>dfhdfh</p>', '1.png', 2, 0, 0, NULL, '2018-02-07 11:28:14', 1, '2018-03-05 19:40:14', 1),
(2, 'Because We Care', 'لأننا نهتم', '<p>Create your medical profile for free and start a complete check up for free for the first time only</p>', '<p>انشىء ملفك الشخصي الطبي مجانا والبدء في فحص كامل مجانا لأول مرة فقط<br></p>', 'header_slider_01.jpg', 1, 0, 0, NULL, '2018-03-05 19:34:53', 1, '2018-03-05 19:34:53', 1);

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
(1, 'd', 'd', 'dffff', 'd', 'd', 'dd', 'd', 0, NULL, '2018-02-20 15:33:21', 1, '2018-02-20 15:42:01', 1);

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
(1, 1, 'admin@admin.com', 'admin', '$2a$08$0boTJ7/53NuXGUoA.KEeeOX4d94MwvdogBfPe1oTyPfVuD.gIw0a.', NULL, '2018-03-12 22:44:24', '::1', '2018-02-04 12:00:41', 0, NULL, 0, NULL, 'admin', NULL, 'UM6', 'english', 1, '', 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bf_activities`
--
ALTER TABLE `bf_activities`
  MODIFY `activity_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bf_faq`
--
ALTER TABLE `bf_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bf_information`
--
ALTER TABLE `bf_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bf_locations`
--
ALTER TABLE `bf_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bf_login_attempts`
--
ALTER TABLE `bf_login_attempts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bf_meet_our_team`
--
ALTER TABLE `bf_meet_our_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bf_patients_say`
--
ALTER TABLE `bf_patients_say`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bf_permissions`
--
ALTER TABLE `bf_permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `bf_photo_gallery`
--
ALTER TABLE `bf_photo_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bf_roles`
--
ALTER TABLE `bf_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bf_slider`
--
ALTER TABLE `bf_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
