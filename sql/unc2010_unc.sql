-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 03, 2021 at 05:51 AM
-- Server version: 10.3.30-MariaDB-cll-lve
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unc2010_unc`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) UNSIGNED NOT NULL,
  `registration_no` varchar(100) NOT NULL DEFAULT '',
  `certificate_no` varchar(100) NOT NULL DEFAULT '',
  `graduation_date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `approved` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `registration_no`, `certificate_no`, `graduation_date`, `status`, `approved`, `created_at`, `updated_at`) VALUES
(101, 'NCL10947361013179', 'CR653141214501101', '2019-06-24', 1, 1, NULL, NULL),
(150, 'NCL10947361013234', 'CR653141214501150', '2007-10-04', 1, 1, NULL, NULL),
(149, 'NCL10947361013232', 'CR653141214501149', '2019-12-20', 1, 1, NULL, NULL),
(148, 'UNCLIT1000BS7 ', 'UN20008667', '2007-07-30', 1, 1, NULL, NULL),
(110, 'UNC71853924', 'CR653141214501110', '2010-04-05', 1, 1, NULL, NULL),
(147, 'NCL1094736101319', 'CR65314121450114', '2016-06-18', 1, 1, NULL, NULL),
(112, 'UNC4320UNC040 ', 'UN3202251UA', '2014-03-03', 1, 1, NULL, NULL),
(113, 'UNC20007854 ', 'CR653141214501113', '2006-10-06', 1, 1, NULL, NULL),
(146, 'NCL10947361013194 ', 'CR653141214501114', '2016-06-18', 1, 1, NULL, NULL),
(145, 'NCL10947361013224 ', 'CR653141214501145', '2020-06-29', 1, 1, NULL, NULL),
(144, 'UNC4306UNC040L', 'CR473510982106', '2010-06-14', 1, 1, NULL, NULL),
(142, 'NCL10947361013219  ', 'CR653141214501142', '2020-02-15', 1, 1, NULL, NULL),
(140, 'UNCLIT1000BS3 ', 'NU2009250 ', '2013-03-13', 1, 1, NULL, NULL),
(143, 'UNC56258784004', 'CR653141214501', '2007-06-15', 1, 1, NULL, NULL),
(138, 'NCL10947361013217 ', 'CR653141214501138', '2020-03-31', 1, 1, NULL, NULL),
(137, 'UNC4346UNC040L ', 'UNC200009585', '2014-07-15', 1, 1, NULL, NULL),
(126, 'NCL10947361013203', 'CR653141214501126', '2013-06-20', 1, 1, NULL, NULL),
(127, 'NCL10947361013204 ', 'CR653141214501127', '2020-04-15', 1, 1, NULL, NULL),
(129, 'NCL10947361013206 ', 'CR653141214501129 ', '2016-06-28', 1, 1, NULL, NULL),
(131, 'UNC4011UNC040L', ' UNR30172010UNCUK', '2010-11-22', 1, 1, NULL, NULL),
(132, 'UNCLIT1000BS8 ', 'UN20008666', '2007-07-07', 1, 1, NULL, NULL),
(133, 'UNC06297536 ', 'UN200010029', '2015-11-05', 1, 1, NULL, NULL),
(134, 'NUZ2000102 ', 'UNC20007776', '2007-08-16', 1, 1, NULL, NULL),
(135, 'NCL10947361013213 ', 'CR653141214501135', '2009-06-15', 1, 1, NULL, NULL),
(136, 'NCL10947361013215', 'CR653141214501136', '2020-04-08', 1, 1, NULL, NULL),
(151, '2342342342342342324', '324234234234234234', '2021-05-11', 1, 1, '2021-05-11 10:54:24', '2021-05-11 11:17:43'),
(152, 'UNCUNC27894306', 'CR10975620090', '2008-10-08', 1, 1, NULL, NULL),
(153, 'NCL10947361013241', 'CR653141214501153', '2015-06-25', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_providers`
--

CREATE TABLE `course_providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institute_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `online_only` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_providers`
--

INSERT INTO `course_providers` (`id`, `user_id`, `full_name`, `code`, `institute_name`, `online_only`, `address`, `phone`, `fax`, `mobile`, `city`, `state`, `country`, `zipcode`, `status`, `created_at`, `updated_at`) VALUES
(3, '22', 'NEWCASTLE GROUP OF COLLEGS (KASUR)', 'NCLAF0419CP03', 'NEWCASTLE GROUP OF COLLEGS (KASUR)', '0', 'KASUR', '+441916454788', '', '', 'KASUR', 'PUNJAB', 'PAKISTAN', '45000', '1', NULL, NULL),
(4, '23', 'Elaine', 'NCLAF0520CP04', ' AIP Management Malaysia (Learning & Examination Centre)', '0', ' 50-6-6, Level 6, Wisma UOA 1, Jalan Dungun,Â  Bukit Damansara\r\nÂ www.aip-edu.org  Tele:+6016-9275956,+603-20938684', '', '', '', ' Bukit Damansara', 'KL', 'Malaysia', '50490', '1', NULL, NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_05_05_205153_create_students_table', 2),
(5, '2021_05_05_205222_create_certificates_table', 2),
(6, '2021_05_05_205234_create_courses_table', 2),
(7, '2021_05_05_205250_create_course_providers_table', 2),
(8, '2021_05_05_205205_create_programs_table', 3);

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
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` int(11) UNSIGNED NOT NULL,
  `program_name` varchar(255) NOT NULL DEFAULT '',
  `major` varchar(255) NOT NULL DEFAULT '',
  `credit_hours` varchar(100) NOT NULL DEFAULT '',
  `duration` varchar(100) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `program_name`, `major`, `credit_hours`, `duration`, `created_at`, `updated_at`) VALUES
(1, 'Deploma in I.T', 'IT', '24 hours', '1 year', NULL, NULL),
(2, 'Bachelor in Computers', 'Software', '36 hours', '3 years', NULL, NULL),
(3, 'Master of Computer Sciences', 'Software Engineering', '48 Hours', '4 Year', NULL, NULL),
(4, 'Program name 1', 'Software', '20 hours', '4 Years', NULL, NULL),
(5, 'Bachelor of Laws (LLB)', 'Criminal Justice', '320', '5 Years', NULL, NULL),
(6, 'Master of Laws in Commercial and Corporate Law', 'Commercial and Corporate Law', '64', '24 Months', NULL, NULL),
(7, 'Doctor of Medicine (M.D)', 'Medicine', '65', '5 Years', NULL, NULL),
(8, 'Bachelor of Medicine', 'Medicine', '120', '5 Years', NULL, NULL),
(9, 'Doctor of Philosophy in Education Management', 'Education Management', '65', '24 Months', NULL, NULL),
(10, 'MSc in Hotel Management', 'Hotel Management', '46', '12 Months', NULL, NULL),
(11, 'Bachelor of Laws (Honours)', 'Laws', '360', '3 years', NULL, NULL),
(12, 'Master of Public Health (MPH)', 'Public Health', '65', '18 Months', NULL, NULL),
(13, 'Bachelor of Engineering', 'Mechanical Engineering ', '120', '48 Months', NULL, NULL),
(14, 'Bachelor of Medicine ', 'Medicine', '220', '5 years', NULL, NULL),
(15, 'Bachelor of Business Administration in Marketing', 'Marketing', '120', '18 Months', NULL, NULL),
(16, 'Master of Public Health (MPH) in Program Planning & Evaluation', 'Program Planning & Evaluation', '65', '18 Months', NULL, NULL),
(17, 'Master of Business Administration (MBA) Marketing', 'Marketing', '46', '18 Months', NULL, NULL),
(18, 'Bachelor of Electrical Engineering', 'ELECTRICAL ENGINEERING', '120', '36 MONTHS', NULL, NULL),
(19, 'Bachelor of Civil Engineering', 'Civil Engineering', '120', '48 Months', NULL, NULL),
(20, 'BSc in Transport and Logistics Management', 'Transport and Logistics Management', '120', '36 MONTHS', NULL, NULL),
(21, 'Master OF LAWS (LLM)', 'LAWS', '46.00', '24 Months', NULL, NULL),
(22, 'Bachelor of Business Administration (Financial Planning)', 'Financial Planning', '120', '36 MONTHS', NULL, NULL),
(23, 'BACHELOR OF ARCHITECTURE ', 'ARCHITECTURAL ENGINEERING', '120', '48 Months', NULL, NULL),
(24, 'Bachelor of Science in Mechanical Engineering', 'Mechanical Engineering', '144', '48 Months', NULL, NULL),
(25, 'Bachelor of Business Administration (BBA)', 'Business Administration', '120', '36 Months', NULL, NULL),
(26, 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'COMPUTER SCIENCE', '120', '48 MONTHS', NULL, NULL),
(27, 'BSc in Computing', 'Computing', '120', '36 Months', NULL, NULL),
(28, 'BACHELOR OF ENGINEERING (Electronics and Communication)', 'Electronics and Communication', '120', '36 Months', NULL, NULL),
(29, 'B.Sc. In Control and Instrumentation Engineering Technology', 'Control and Instrumentation Engineering Technology', '144', '48 Months', NULL, NULL),
(30, 'Business Administration in Accounting & Finance', 'Accounting & Finance', '120', '36 Months', NULL, NULL),
(31, 'BSc in Information Technology', ' Information Technology', '120', '36 Months', NULL, NULL),
(32, 'Master of Business Administration (MBA-FM) ', 'Facilities Management ', '46.00', '24 Months', NULL, NULL),
(34, 'Bachelor of Science in (Pharmacy)', 'Pharmacy', '169', '4 Years', NULL, NULL),
(33, 'Bachelor of Pharmacy', 'Pharmacy', '120', '48 Months', NULL, NULL),
(35, 'Doctor of Medicine', 'Medicine', '600', '5 Years', NULL, NULL),
(36, 'Doctor of Medicine', 'Medicine', '600', '5 Years', NULL, NULL),
(37, 'Bachelor of Business Administration (Sales & Marketing Management)', 'Sales & Marketing Management', '120', '3 Years', NULL, NULL),
(38, 'BSc in Business Management', 'Business Management', '430', '36 Months', NULL, NULL),
(39, ' BS Operation Theater Technology ', 'Operation Theater Technology ', '120', '4 Years', NULL, NULL),
(40, 'BSC. INFORMATION TECHNOLOGY', 'NETWORK AND SYSTEM ADMINISTRATION', '120', '36 MONTHS', NULL, NULL),
(41, 'BSc Information Technology', 'Network and System Administration', '120', '36 Months', NULL, NULL),
(42, 'Master of Science in HRM', 'Human Resource Management', '36', '12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) UNSIGNED NOT NULL,
  `program_id` int(11) NOT NULL,
  `course_provider_id` int(11) DEFAULT NULL,
  `registration_no` varchar(100) DEFAULT '',
  `registration_duration` varchar(100) DEFAULT NULL,
  `enrolment_date` date DEFAULT '0000-00-00',
  `completion_date` date DEFAULT NULL,
  `enrolment_major` varchar(100) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT '',
  `registration_location` varchar(100) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `dob_day` int(11) DEFAULT 0,
  `dob_month` int(11) DEFAULT 0,
  `dob_year` int(11) DEFAULT 0,
  `address` varchar(255) DEFAULT '',
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zipcode` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `approved` tinyint(4) DEFAULT 1,
  `isactive` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `program_id`, `course_provider_id`, `registration_no`, `registration_duration`, `enrolment_date`, `completion_date`, `enrolment_major`, `full_name`, `registration_location`, `nationality`, `dob_day`, `dob_month`, `dob_year`, `address`, `city`, `state`, `country`, `zipcode`, `phone`, `status`, `approved`, `isactive`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 'NCL1094736101351', '3 years', '2003-01-18', '2006-03-19', 'Software', 'muhammad irfan', 'London', 'pakistan', 2, 1, 2007, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(28, 7, NULL, 'UNCLIT1000BS23', '5 Years', '2001-01-05', '2006-01-05', 'Medicine', 'NASEER AHMAD', 'Newcastle Group of Colleges', 'Pakistani', 1, 7, 1980, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(29, 8, NULL, 'UNC98714320', '5 Years', '2004-01-05', '2009-02-16', 'Medicine', 'Muhammad Awais', 'Newcastle Group of Colleges', 'Pakistani', 4, 1, 1986, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(142, 13, NULL, 'UNC4320UNC040', '48 Months', '2010-03-24', '2014-03-03', 'Mechanical Engineering ', 'JASEM MOHAMMAD ALBASHAN', 'Distance Learning', 'SYRIAN', 21, 4, 1989, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(41, 9, NULL, 'UNCSAN2005', '36 Months', '2005-01-17', '2007-12-19', 'Education Management', 'BABAR SALEEM', 'London', 'British', 15, 2, 1969, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(42, 10, NULL, 'UNC5876249CY', '12 Months', '2015-05-17', '2016-05-27', 'Hotel Management', 'MENELAOS MENELAOU', 'Newcastle Group of Colleges', 'Pakistani', 14, 5, 1979, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(45, 5, NULL, 'NCL1094736101395', '3 Years', '2014-02-01', '2017-06-05', 'General', 'Sallah Ud Din', 'Distance Learning', 'Pakistani', 3, 5, 1983, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(46, 7, NULL, 'UNCUNC27894306', '5 Years', '2002-10-01', '2008-09-18', 'Medicine', 'SALEEM SHAH', 'Distance Learning', 'Pakistani', 17, 3, 1974, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(63, 12, NULL, 'UND00482 ', '18 Months', '2005-01-01', '2006-07-15', 'Public Health', 'Dr. Ashek Ahmed', 'Dhanmondi, Dhaka. Campus', 'Bangladeshi', 3, 11, 1969, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(158, 4, NULL, 'NCL10947361013208', '4 Years', '2005-02-02', '2009-12-31', 'Software', 'Farrukh', 'Lahore', 'Pakistan', 1, 1, 1980, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(71, 17, NULL, 'UNCUK0101YU', '18 Months', '2003-06-13', '2005-02-17', 'Marketing', 'Zeeshan Amjad Malik', 'Distance Learning', 'Pakistani', 5, 7, 1981, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(72, 16, NULL, 'UND004820', '18 Months', '2005-01-01', '2006-06-30', 'Program Planning & Evaluation', 'Dr. Ashek Ahmed', 'Distance Learning', 'Bangladeshi', 3, 11, 1969, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(83, 18, NULL, 'UNC4221UNC040L', '36 MONTHS', '2009-01-10', '2012-02-18', 'ELECTRICAL ENGINEERING', 'WAJID FAZAL GUL', 'Distance Learning', 'Indian', 19, 1, 1982, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(84, 19, NULL, 'UNC4311UNC040L', '48 Months', '2009-09-10', '2013-06-12', 'Civil Engineering', 'ELYAN YOUSEF AL KHOURI', 'Distance Learning', 'Syrian', 18, 8, 1987, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(85, 18, NULL, 'UNC4072UNC040L', '36 MONTHS', '2008-03-07', '2011-04-11', 'ELECTRICAL ENGINEERING', 'MUHAMMAD ZAKI ALHAKAWATI', 'Distance Learning', 'Syrian', 14, 8, 1967, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(86, 11, NULL, 'NCL10947361013136', '5 years', '2012-02-05', '2017-02-10', 'Laws', 'RIZWAN ALI ASHRAF', 'Distance Learning', 'Pakistani', 10, 2, 1991, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(87, 20, NULL, 'NCL10947361013137', '36 MONTHS', '2016-09-02', '2019-12-16', 'Transport and Logistics Management', 'FELIPE ONDO ALOGO AYINGONO', 'Distance Learning', 'EQUATORIAL GUINEAN', 19, 8, 1993, '', NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL),
(187, 42, NULL, 'UN3452UNCUKMSC', '12', '2006-09-18', '2009-10-22', 'Human Resource Management', 'Umar Skindar Khan', 'Manchester College of Professional Studies', 'PAKISTANI', 12, 1, 1986, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(186, 11, NULL, 'NCL10947361013236', '3 years', '2015-02-05', '2018-06-22', 'Laws', 'Hafiz Muhammad Ayub,', 'Distance Learning', 'Pakistani', 27, 12, 1990, '', NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL),
(95, 22, NULL, 'M0756MAL2005 ', '36 MONTHS', '2002-02-01', '2005-06-30', 'Financial Planning', 'Francis Lee Seng Kuan', 'Distance Learning', 'Malaysian', 27, 2, 1981, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, '2021-06-20 04:25:14'),
(188, 11, NULL, 'NCL10947361013238', '3 years', '2015-02-01', '2018-01-05', 'Laws', 'Arslan  Arif', 'Distance Learning', 'Pakistani', 7, 8, 1990, '', NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL),
(185, 11, NULL, 'NCL10947361013235', '3 years', '2016-02-08', '2019-06-25', 'Laws', 'Muhammad Shakil,', 'Distance Learning', 'Pakistani', 15, 3, 1977, '', NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL),
(182, 41, NULL, 'NCL10947361013232', '36 Months', '2017-01-10', '2019-12-10', 'Network and System Administration', 'DARLINGTON AKAMINKU', 'Distance Learning', 'GHANAIAN', 27, 8, 1977, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(126, 23, NULL, 'UNC4316UNC040L', '48 Months', '2009-10-04', '2013-11-18', 'ARCHITECTURAL ENGINEERING', 'Madhu Kumar Ale', 'Distance Learning', 'Nepalese.', 29, 12, 1970, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(127, 24, NULL, 'UNC4075UNC040L', '48 Months', '2007-06-18', '2011-04-11', 'Mechanical Engineering', 'Ahmad khalil alsalkhadi', 'Distance Learning', 'Syrian', 23, 5, 1976, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(183, 24, NULL, 'UNCLIT1000BS7', '48 Months', '2003-05-07', '2007-07-30', 'Mechanical Engineering', 'HENDRIK ANDRIAAN BARNES', 'LONDON TECHNOLOGY COLLEGE, DUBAI. UAE', 'SOUTH AFRICAN', 28, 4, 1962, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(181, 16, NULL, 'UNC22M105M', '18 Months', '2006-01-01', '2007-12-31', 'Program Planning & Evaluation', 'ANWER SHAHZAD', 'Modern Institute of Sciences, Islamabad.Pakistan', 'Pakistani', 3, 4, 1979, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(176, 11, NULL, 'NCL10947361013226', '3 years', '2015-04-05', '2018-07-08', 'Laws', 'Abduo Ghaffar Bhatti', 'Distance Learning', 'Pakistani', 5, 1, 1963, '', NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL),
(177, 11, NULL, 'NCL10947361013227', '3 years', '2015-04-05', '2018-07-08', 'Laws', 'Muhammad Amin', 'Distance Learning', 'Pakistani', 5, 5, 1977, '', NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL),
(178, 39, NULL, 'NCL10947361013228', '4 Years', '2014-01-15', '2018-02-19', 'Operation Theater Technology ', 'Mudassar ashraf', 'Distance Learning', 'Pakistani', 23, 9, 1989, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(179, 39, NULL, 'NCL10947361013229', '4 Years', '2014-01-05', '2018-02-14', 'Operation Theater Technology ', 'Muhammad Azmat Ali', 'Distance Learning', 'Pakistani', 7, 2, 1987, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(175, 11, NULL, 'NCL10947361013194', '3 years', '2013-02-01', '2016-06-18', 'Laws', 'NABEEL SOHAIL BUTT', 'Distance Learning', 'Pakistani', 1, 1, 1990, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(137, 25, NULL, 'UNC56258784004', '36 Months', '2003-10-10', '2007-06-15', 'Business Administration', 'AKHROR IMINOV', 'Campus, London.United kingdom ', 'KYRGYZSTAN', 14, 7, 1987, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(138, 5, NULL, 'NCL10947361013188', '3 Years', '2018-09-03', '2021-08-31', 'General', 'MUHAMMAD SHAHEER TAHIR', 'Distance Learning', 'PAKISTANI', 25, 1, 1997, '', NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL),
(143, 27, NULL, 'UNC20007854', '36 Months', '2003-10-29', '2006-10-06', 'Computing', 'MAJID KHAN', 'Distance Learning', 'PAKISTANI', 9, 4, 1982, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(174, 38, NULL, 'NCL10947361013224', '36 Months', '2017-07-03', '2020-06-29', 'Business Management', 'Abdalla Hussein Abdalla Hussein Abdalla ', 'NEWCASTLE GROUP OF COLLEGES,LONDON, UNITED KINGDOM', 'Egyptian', 26, 2, 1998, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(146, 11, NULL, 'NCL10947361013196', '3 years', '1989-02-10', '1992-04-18', 'Laws', 'Akmal Saeed', 'Distance Learning', 'Pakistani', 24, 9, 1962, '', NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL),
(147, 11, NULL, 'NCL10947361013197', '3 years', '2013-02-05', '2016-06-20', 'Laws', 'Hafiz Muhammad Jazib', 'Distance Learning', 'Pakistani', 4, 11, 1990, '', NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL),
(173, 37, NULL, 'UNC4306UNC040L', '3 Years', '2007-05-05', '2010-06-14', 'Sales & Marketing Management', 'MUHAMMAD NAEEM BUTT', 'London Technology College, Dubai.UAE', 'PAKISTANI', 25, 2, 1978, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(172, 11, NULL, 'UNC43215068', '3 years', '2008-03-08', '2011-04-05', 'Laws', 'MUHAMMAD ADNAN KHAN', 'PAKISTAN', 'PAKISTANI', 30, 9, 1986, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(170, 34, NULL, 'NCL10947361013219', '4 Years', '2016-01-13', '2020-02-15', 'Pharmacy', 'ALLAA ADNAN KARAM ALI ALI', 'Learning Center', 'IRAQI', 12, 8, 1968, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(171, 36, NULL, 'UND0092410121', '5 Years', '2010-07-01', '2015-06-30', 'Medicine', 'Asim Raza Meer ', 'Newcastle Learning and Examination Centre', 'Pakistani', 16, 5, 1982, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(168, 18, NULL, 'UNCLIT1000BS3', '36 MONTHS', '2004-02-10', '2007-03-13', 'ELECTRICAL ENGINEERING', 'Mohamed Farrag Saleh  Hassan', 'Distance Learning', 'Egyptian', 7, 8, 1976, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(157, 28, NULL, 'UNC4011UNC040L', '36 Months', '2007-10-02', '2010-11-22', 'Electronics and Communication', ' M. V. RAMACHANDRAIAH', 'London Technology College, UAE.', 'Indian', 1, 6, 1980, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(159, 29, NULL, 'UNCLIT1000BS8', '48 Months', '2003-05-02', '2007-07-07', 'Control and Instrumentation Engineering Technology', 'JLSHIN', 'London Technology College, UAE.', 'INDIAN', 15, 6, 1984, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(160, 30, NULL, 'UNC06297536', '36 Months', '2012-10-01', '2015-11-05', 'Accounting & Finance', 'Adnan Sadiq', 'Distance Learning', 'Pakistani', 3, 11, 1992, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(161, 31, NULL, 'NUZ2000102', '36 Months', '2003-07-06', '2007-08-16', ' Information Technology', 'MUHAMMAD ARFAN QADIR', 'EDWARD COLLEGE, LONDON. UK', 'Pakistani', 5, 8, 1981, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(167, 32, NULL, 'NCL10947361013217', '24 Months', '2018-04-01', '2020-03-31', 'Facilities Management', 'Ramasuburaja Sriram Srinivasan', 'LTC COLLEGE, DUBAI. UAE', 'Indian', 7, 6, 1971, '', NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL),
(166, 24, NULL, 'UNC4346UNC040L', '48 Months', '2010-07-01', '2014-07-15', 'Mechanical Engineering', 'Ramasuburaja Sriram Srinivasan', 'DISTANCE LEARNING', 'Indian', 7, 6, 1971, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(190, 8, NULL, 'NCL10947361013241', '5 Years', '2010-09-10', '2015-06-15', 'Medicine', 'Mohammad Tariq', 'Malaysia  ', 'Pakistani', 10, 2, 1983, 'Malaysia ', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `email_verified_at` varchar(19100) DEFAULT NULL,
  `remember_token` varchar(191) DEFAULT NULL,
  `password` varchar(255) NOT NULL DEFAULT '',
  `role` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `remember_token`, `password`, `role`, `created_at`, `updated_at`, `status`) VALUES
(1, 'admin', 'ncledulaw@gmail.com', NULL, 'xdeeB8HqttHp9ViAWNunRLW5O2Dov1KayDcZPhOVBa7hrCOTQUsxG7Rel5gw', '$2y$10$.RawSC7MYcGWgTE6t/LKP.W2rlezdid18M.3asevgbLSrIW4Nln8u', 'admin', '2019-04-03 11:56:58', '2021-08-01 19:02:19', 1),
(23, NULL, 'provider@unc.ac', NULL, NULL, '467e3027fa75af501d7b0e644d046e5b', 'course_provider', '2020-05-02 12:49:32', '2020-05-04 00:12:09', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `certificate_no` (`certificate_no`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_providers`
--
ALTER TABLE `course_providers`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registration_no` (`registration_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_providers`
--
ALTER TABLE `course_providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
