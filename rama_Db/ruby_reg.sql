-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 30, 2012 at 12:41 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ruby_reg`
--

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE IF NOT EXISTS `marks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `php` int(11) DEFAULT NULL,
  `ruby` int(11) DEFAULT NULL,
  `joomla` int(11) DEFAULT NULL,
  `drupal` int(11) DEFAULT NULL,
  `wordpress` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `average_marks` float DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_marks_on_student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `marks`
--


-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20120830084545'),
('20120830113856'),
('20120830123843');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `gender`, `created_at`, `updated_at`, `status`) VALUES
(1, 'rama_edit', 'laxmi_edit', 'female', '2012-08-30 09:17:00', '2012-08-30 09:55:36', NULL),
(2, 'rama1', 'laxmi1', 'female', '2012-08-30 09:19:22', '2012-08-30 09:19:22', NULL),
(4, 'test1', 'test1', 'female', '2012-08-30 09:26:23', '2012-08-30 09:26:23', NULL),
(5, 'test2', 'test2', 'male', '2012-08-30 09:28:26', '2012-08-30 09:28:26', NULL),
(6, 'test', 'test', 'male', '2012-08-30 10:05:25', '2012-08-30 10:05:25', NULL),
(7, 'new test', 'new test', 'male', '2012-08-30 10:15:12', '2012-08-30 10:15:12', NULL),
(8, 'new test1', 'new test1', 'female', '2012-08-30 10:15:26', '2012-08-30 10:15:26', NULL),
(9, 'test', '123', 'male', '2012-08-30 12:25:24', '2012-08-30 12:25:24', NULL);
