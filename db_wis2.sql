-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2015 at 06:12 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_wis2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_access`
--

CREATE TABLE IF NOT EXISTS `tbl_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` int(11) DEFAULT NULL,
  `usertype` int(11) DEFAULT NULL,
  `add_` tinyint(4) DEFAULT '0',
  `edit_` tinyint(4) DEFAULT '0',
  `delete_` tinyint(4) DEFAULT '0',
  `print_` tinyint(4) DEFAULT '0',
  `create_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_access`
--

INSERT INTO `tbl_access` (`id`, `module`, `usertype`, `add_`, `edit_`, `delete_`, `print_`, `create_date`, `created_by`, `modify_date`, `modified_by`) VALUES
(4, 4, 28, 0, 0, 0, 0, NULL, NULL, NULL, NULL),
(5, 1, 28, 0, 1, 1, 0, '2015-11-03', 169, NULL, NULL),
(6, 2, 28, 1, 1, 1, 0, '2015-11-03', 169, NULL, NULL),
(7, 3, 28, 1, 1, 1, 0, '2015-11-03', 169, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE IF NOT EXISTS `tbl_attendance` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `student` bigint(20) DEFAULT NULL,
  `offering` bigint(20) DEFAULT NULL,
  `g_term` int(11) DEFAULT NULL,
  `a_date` date DEFAULT NULL,
  `a_time` time DEFAULT NULL,
  `point` double(15,2) DEFAULT NULL,
  `terminal_ip` varchar(80) DEFAULT NULL,
  `terminal_host` varchar(80) DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`id`, `student`, `offering`, `g_term`, `a_date`, `a_time`, `point`, `terminal_ip`, `terminal_host`, `modify_date`, `modified_by`) VALUES
(1, 89953, 35636, 3, '2015-11-22', '11:30:20', 3.00, 'test_ip', 'test_host', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_classlist`
--

CREATE TABLE IF NOT EXISTS `tbl_classlist` (
  `id` bigint(20) NOT NULL,
  `student` bigint(20) DEFAULT NULL,
  `offering` bigint(20) DEFAULT NULL,
  `seat_no` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_classlist`
--

INSERT INTO `tbl_classlist` (`id`, `student`, `offering`, `seat_no`, `create_date`, `modify_date`, `created_by`, `modified_by`) VALUES
(902215, 14419, 34503, NULL, '2015-09-02', NULL, NULL, NULL),
(902216, 14419, 34504, NULL, '2015-09-02', NULL, NULL, NULL),
(902217, 14419, 34550, NULL, '2015-09-02', NULL, NULL, NULL),
(902718, 14419, 34506, NULL, '2015-09-02', NULL, NULL, NULL),
(902749, 14419, 34146, NULL, '2015-09-02', NULL, NULL, NULL),
(944268, 14419, 35233, NULL, '2015-09-08', NULL, NULL, NULL),
(950430, 16958, 34550, NULL, '2015-09-21', NULL, NULL, NULL),
(900152, 17088, 35373, NULL, '2015-09-02', NULL, NULL, NULL),
(900153, 17088, 34595, NULL, '2015-09-02', NULL, NULL, NULL),
(900154, 17088, 34503, NULL, '2015-09-02', NULL, NULL, NULL),
(900155, 17088, 34550, NULL, '2015-09-02', NULL, NULL, NULL),
(900156, 17088, 34543, NULL, '2015-09-02', NULL, NULL, NULL),
(900185, 17088, 34541, NULL, '2015-09-02', NULL, NULL, NULL),
(900196, 17088, 34526, NULL, '2015-09-02', NULL, NULL, NULL),
(903970, 17492, 34550, NULL, '2015-09-02', NULL, NULL, NULL),
(903971, 17492, 34543, NULL, '2015-09-02', NULL, NULL, NULL),
(904858, 17492, 34541, NULL, '2015-09-02', NULL, NULL, NULL),
(904866, 17492, 35630, NULL, '2015-09-02', NULL, NULL, NULL),
(904872, 17492, 34142, NULL, '2015-09-02', NULL, NULL, NULL),
(950271, 52119, 35663, NULL, '2015-09-18', NULL, NULL, NULL),
(950272, 52119, 34550, NULL, '2015-09-18', NULL, NULL, NULL),
(950273, 52119, 36182, NULL, '2015-09-18', NULL, NULL, NULL),
(950274, 52119, 35799, NULL, '2015-09-18', NULL, NULL, NULL),
(896596, 72503, 34526, NULL, '2015-09-02', NULL, NULL, NULL),
(896612, 72503, 34543, NULL, '2015-09-02', NULL, NULL, NULL),
(896615, 72503, 34541, NULL, '2015-09-02', NULL, NULL, NULL),
(947461, 72503, 34550, NULL, '2015-09-09', NULL, NULL, NULL),
(900427, 72585, 34543, NULL, '2015-09-02', NULL, NULL, NULL),
(900428, 72585, 34550, NULL, '2015-09-02', NULL, NULL, NULL),
(900429, 72585, 34541, NULL, '2015-09-02', NULL, NULL, NULL),
(895080, 72600, 35371, NULL, '2015-09-02', NULL, NULL, NULL),
(895081, 72600, 35636, NULL, '2015-09-02', NULL, NULL, NULL),
(895083, 72600, 34526, NULL, '2015-09-02', NULL, NULL, NULL),
(895461, 72600, 34476, NULL, '2015-09-02', NULL, NULL, NULL),
(947410, 72600, 34550, NULL, '2015-09-09', NULL, NULL, NULL),
(904476, 72966, 34526, NULL, '2015-09-02', NULL, NULL, NULL),
(904477, 72966, 34543, NULL, '2015-09-02', NULL, NULL, NULL),
(904478, 72966, 34550, NULL, '2015-09-02', NULL, NULL, NULL),
(904479, 72966, 34513, NULL, '2015-09-02', NULL, NULL, NULL),
(916008, 73513, 35373, NULL, '2015-09-03', NULL, NULL, NULL),
(916009, 73513, 34595, NULL, '2015-09-03', NULL, NULL, NULL),
(916010, 73513, 34550, NULL, '2015-09-03', NULL, NULL, NULL),
(916011, 73513, 34563, NULL, '2015-09-03', NULL, NULL, NULL),
(948654, 73513, 35288, NULL, '2015-09-11', NULL, NULL, NULL),
(900725, 73752, 34495, NULL, '2015-09-02', NULL, NULL, NULL),
(900726, 73752, 34526, NULL, '2015-09-02', NULL, NULL, NULL),
(900727, 73752, 34543, NULL, '2015-09-02', NULL, NULL, NULL),
(900728, 73752, 34550, NULL, '2015-09-02', NULL, NULL, NULL),
(900729, 73752, 34513, NULL, '2015-09-02', NULL, NULL, NULL),
(895093, 73809, 35371, NULL, '2015-09-02', NULL, NULL, NULL),
(895094, 73809, 35636, NULL, '2015-09-02', NULL, NULL, NULL),
(895096, 73809, 34526, NULL, '2015-09-02', NULL, NULL, NULL),
(895380, 73809, 34476, NULL, '2015-09-02', NULL, NULL, NULL),
(947399, 73809, 34550, NULL, '2015-09-09', NULL, NULL, NULL),
(947431, 73809, 35863, NULL, '2015-09-09', NULL, NULL, NULL),
(895516, 84235, 35640, NULL, '2015-09-02', NULL, NULL, NULL),
(897027, 84235, 34552, NULL, '2015-09-02', NULL, NULL, NULL),
(948188, 84235, 34550, NULL, '2015-09-10', NULL, NULL, NULL),
(905502, 85357, 35636, NULL, '2015-09-02', NULL, NULL, NULL),
(905503, 85357, 34595, NULL, '2015-09-02', NULL, NULL, NULL),
(905504, 85357, 35628, NULL, '2015-09-02', NULL, NULL, NULL),
(905505, 85357, 34550, NULL, '2015-09-02', NULL, NULL, NULL),
(905771, 85357, 34541, NULL, '2015-09-02', NULL, NULL, NULL),
(905786, 85357, 34476, NULL, '2015-09-02', NULL, NULL, NULL),
(895766, 86351, 34567, NULL, '2015-09-02', NULL, NULL, NULL),
(895767, 86351, 34566, NULL, '2015-09-02', NULL, NULL, NULL),
(945890, 86351, 34550, NULL, '2015-09-08', NULL, NULL, NULL),
(900676, 87340, 34550, NULL, '2015-09-02', NULL, NULL, NULL),
(900677, 87340, 34541, NULL, '2015-09-02', NULL, NULL, NULL),
(900678, 87340, 34554, NULL, '2015-09-02', NULL, NULL, NULL),
(900679, 87340, 34500, NULL, '2015-09-02', NULL, NULL, NULL),
(900794, 87340, 34511, NULL, '2015-09-02', NULL, NULL, NULL),
(900478, 89924, 34253, NULL, '2015-09-02', NULL, NULL, NULL),
(900479, 89924, 34526, NULL, '2015-09-02', NULL, NULL, NULL),
(900480, 89924, 34504, NULL, '2015-09-02', NULL, NULL, NULL),
(900481, 89924, 34543, NULL, '2015-09-02', NULL, NULL, NULL),
(900482, 89924, 34550, NULL, '2015-09-02', NULL, NULL, NULL),
(900483, 89924, 34554, NULL, '2015-09-02', NULL, NULL, NULL),
(900633, 89924, 34541, NULL, '2015-09-02', NULL, NULL, NULL),
(893301, 89953, 35636, NULL, '2015-09-02', NULL, NULL, NULL),
(893302, 89953, 34543, NULL, '2015-09-02', NULL, NULL, NULL),
(893303, 89953, 34550, NULL, '2015-09-02', NULL, NULL, NULL),
(893304, 89953, 34541, NULL, '2015-09-02', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_offerings`
--

CREATE TABLE IF NOT EXISTS `tbl_course_offerings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `section` varchar(50) DEFAULT NULL,
  `subject` bigint(20) DEFAULT NULL COMMENT 'this is a foreign key to the table subjects',
  `sch_year_term` int(11) DEFAULT NULL,
  `is_lec` int(1) DEFAULT NULL,
  `is_lab` int(1) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36219 ;

--
-- Dumping data for table `tbl_course_offerings`
--

INSERT INTO `tbl_course_offerings` (`id`, `section`, `subject`, `sch_year_term`, `is_lec`, `is_lab`, `create_date`, `modify_date`, `created_by`, `modified_by`) VALUES
(34142, '302-F', 3210, NULL, 0, NULL, '2015-07-23', NULL, NULL, NULL),
(34146, '402-F', 3211, NULL, 0, NULL, '2015-07-23', NULL, NULL, NULL),
(34253, 'BSED 1-A', 3185, NULL, 0, NULL, '2015-07-25', NULL, NULL, NULL),
(34476, 'CITCS 2A', 9259, NULL, 0, NULL, '2015-08-01', NULL, NULL, NULL),
(34495, 'CITCS 2C', 3637, NULL, 0, NULL, '2015-08-01', NULL, NULL, NULL),
(34500, 'CITCS 2D', 4146, NULL, 0, NULL, '2015-08-01', NULL, NULL, NULL),
(34503, 'CITCS 2D', 3224, NULL, 0, NULL, '2015-08-01', NULL, NULL, NULL),
(34504, 'CITCS 2D', 3220, NULL, 0, NULL, '2015-08-01', NULL, NULL, NULL),
(34506, 'CITCS 2E', 5327, NULL, 0, NULL, '2015-08-01', NULL, NULL, NULL),
(34511, 'CITCS 2E', 4735, NULL, 0, NULL, '2015-08-01', NULL, NULL, NULL),
(34513, 'CITCS 2F', 4146, NULL, 0, NULL, '2015-08-01', NULL, NULL, NULL),
(34526, 'CITCS 2G', 5340, NULL, 0, NULL, '2015-08-01', NULL, NULL, NULL),
(34541, 'CITCS 3A', 5364, NULL, 0, NULL, '2015-08-01', NULL, NULL, NULL),
(34543, 'CITCS 3A', 3726, NULL, 0, NULL, '2015-08-01', NULL, NULL, NULL),
(34550, 'CITCS 3B', 3998, NULL, 0, NULL, '2015-08-01', NULL, NULL, NULL),
(34552, 'CITCS 3C', 5343, NULL, 0, NULL, '2015-08-01', NULL, NULL, NULL),
(34554, 'CITCS 3C', 5342, NULL, 0, NULL, '2015-08-01', NULL, NULL, NULL),
(34563, 'CITCS 3E', 4146, NULL, 0, NULL, '2015-08-01', NULL, NULL, NULL),
(34566, 'CITCS 3F', 5344, NULL, 0, NULL, '2015-08-01', NULL, NULL, NULL),
(34567, 'CITCS 3F', 5345, NULL, 0, NULL, '2015-08-01', NULL, NULL, NULL),
(34595, 'CITCS INTL 2', 3605, NULL, 0, NULL, '2015-08-01', NULL, NULL, NULL),
(35233, 'BS PSYCH 3-1', 3227, NULL, 0, NULL, '2015-08-10', NULL, NULL, NULL),
(35288, 'BSBA 1B', 3185, NULL, 0, NULL, '2015-08-10', NULL, NULL, NULL),
(35371, 'CITCS 1G', 3335, NULL, 0, NULL, '2015-08-11', NULL, NULL, NULL),
(35373, 'CITCS 1H', 3335, NULL, 0, NULL, '2015-08-11', NULL, NULL, NULL),
(35628, 'CITCS 3A', 5340, NULL, 0, NULL, '2015-08-18', NULL, NULL, NULL),
(35630, 'CITCS 3A', 3860, NULL, 0, NULL, '2015-08-18', NULL, NULL, NULL),
(35636, 'CITCS 3A', 5365, NULL, 0, NULL, '2015-08-18', NULL, NULL, NULL),
(35640, 'CITCS 3D', 5341, NULL, 0, NULL, '2015-08-18', NULL, NULL, NULL),
(35663, 'CITCS 2F', 9260, NULL, 0, NULL, '2015-08-20', NULL, NULL, NULL),
(35799, 'BSHM IIIB', 3755, NULL, 0, NULL, '2015-08-27', NULL, NULL, NULL),
(35863, 'BSTM IIIA', 3221, NULL, 0, NULL, '2015-08-27', NULL, NULL, NULL),
(36182, 'CITCS INTL A', 3630, NULL, 0, NULL, '2015-09-11', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_prog`
--

CREATE TABLE IF NOT EXISTS `tbl_course_prog` (
  `id` int(11) NOT NULL,
  `college` int(11) DEFAULT NULL,
  `course_name` varchar(80) DEFAULT NULL,
  `course_code` varchar(180) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_course_prog`
--

INSERT INTO `tbl_course_prog` (`id`, `college`, `course_name`, `course_code`, `create_date`, `created_by`, `modify_date`, `modified_by`) VALUES
(72, 26, 'BACHELOR OF SCIENCE IN INFORMATION SYSTEMS', 'BSIS', NULL, NULL, NULL, NULL),
(122, 26, 'BACHELOR OF SCIENCE IN INFORMATION & COMPUTER SCIENCE', 'BSICS', NULL, NULL, NULL, NULL),
(123, 26, 'BACHELOR OF SCIENCE IN INFORMATION MANAGEMENT', 'BSIM', NULL, NULL, NULL, NULL),
(127, 26, 'DEFAULT COURSE CITCS', 'DEF-CITCS', NULL, NULL, NULL, NULL),
(69, 26, 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'BSCS', NULL, NULL, NULL, NULL),
(70, 26, 'BACHELOR OF SCIENCE IN INFORMATION TECHNOLOGY', 'BSIT', NULL, NULL, NULL, NULL),
(71, 26, 'ASSOCIATE IN COMPUTER TECHNOLOGY', 'ACT', NULL, NULL, NULL, NULL),
(124, 26, 'COMPUTER SECRETARIAL COURSE', 'COMSEC', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_sched`
--

CREATE TABLE IF NOT EXISTS `tbl_course_sched` (
  `id` int(11) NOT NULL,
  `offering` bigint(20) DEFAULT NULL,
  `WEEK_DAY` int(11) DEFAULT NULL,
  `HOUR_FROM` int(11) DEFAULT NULL,
  `MINUTE_FROM` int(11) DEFAULT NULL,
  `AMPM_FROM` tinyint(4) DEFAULT NULL,
  `HOUR_TO` int(11) DEFAULT NULL,
  `MINUTE_TO` int(11) DEFAULT NULL,
  `AMPM_TO` tinyint(4) DEFAULT NULL,
  `room` int(11) DEFAULT NULL,
  `HOUR_FROM_24` decimal(15,2) DEFAULT NULL,
  `HOUR_TO_24` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_course_sched`
--

INSERT INTO `tbl_course_sched` (`id`, `offering`, `WEEK_DAY`, `HOUR_FROM`, `MINUTE_FROM`, `AMPM_FROM`, `HOUR_TO`, `MINUTE_TO`, `AMPM_TO`, `room`, `HOUR_FROM_24`, `HOUR_TO_24`) VALUES
(94800, 34142, 1, 10, 0, 0, 11, 15, 0, 846, '10.00', '11.25'),
(94801, 34142, 3, 10, 0, 0, 11, 15, 0, 846, '10.00', '11.25'),
(94808, 34146, 2, 10, 0, 0, 11, 15, 0, 846, '10.00', '11.25'),
(94809, 34146, 4, 10, 0, 0, 11, 15, 0, 846, '10.00', '11.25'),
(95087, 34253, 1, 1, 45, 1, 3, 0, 1, 842, '13.75', '15.00'),
(95088, 34253, 3, 1, 45, 1, 3, 0, 1, 842, '13.75', '15.00'),
(95089, 34253, 5, 1, 45, 1, 3, 0, 1, 842, '13.75', '15.00'),
(95699, 34476, 2, 1, 45, 1, 3, 0, 1, 748, '13.75', '15.00'),
(95700, 34476, 4, 1, 45, 1, 3, 0, 1, 748, '13.75', '15.00'),
(95701, 34476, 6, 1, 45, 1, 3, 0, 1, 748, '13.75', '15.00'),
(95751, 34495, 2, 3, 0, 1, 4, 15, 1, 723, '15.00', '16.25'),
(95752, 34495, 4, 3, 0, 1, 4, 15, 1, 723, '15.00', '16.25'),
(95765, 34500, 1, 3, 0, 1, 4, 15, 1, 748, '15.00', '16.25'),
(95766, 34500, 3, 3, 0, 1, 4, 15, 1, 748, '15.00', '16.25'),
(95767, 34500, 5, 3, 0, 1, 4, 15, 1, 748, '15.00', '16.25'),
(95773, 34503, 2, 12, 30, 1, 1, 45, 1, 749, '12.50', '13.75'),
(95774, 34503, 4, 12, 30, 1, 1, 45, 1, 749, '12.50', '13.75'),
(95775, 34503, 6, 12, 30, 1, 1, 45, 1, 749, '12.50', '13.75'),
(95776, 34504, 2, 1, 45, 1, 3, 0, 1, 749, '13.75', '15.00'),
(95777, 34504, 4, 1, 45, 1, 3, 0, 1, 749, '13.75', '15.00'),
(95778, 34504, 6, 1, 45, 1, 3, 0, 1, 749, '13.75', '15.00'),
(95782, 34506, 1, 1, 45, 1, 3, 0, 1, 748, '13.75', '15.00'),
(95783, 34506, 3, 1, 45, 1, 3, 0, 1, 748, '13.75', '15.00'),
(95784, 34506, 5, 1, 45, 1, 3, 0, 1, 748, '13.75', '15.00'),
(95796, 34511, 2, 1, 45, 1, 3, 0, 1, 750, '13.75', '15.00'),
(95797, 34511, 4, 1, 45, 1, 3, 0, 1, 750, '13.75', '15.00'),
(95798, 34511, 6, 1, 45, 1, 3, 0, 1, 750, '13.75', '15.00'),
(95802, 34513, 1, 8, 45, 0, 10, 0, 0, 749, '8.75', '10.00'),
(95803, 34513, 3, 8, 45, 0, 10, 0, 0, 749, '8.75', '10.00'),
(95804, 34513, 5, 8, 45, 0, 10, 0, 0, 749, '8.75', '10.00'),
(95838, 34526, 2, 10, 0, 0, 11, 15, 0, 749, '10.00', '11.25'),
(95839, 34526, 4, 10, 0, 0, 11, 15, 0, 749, '10.00', '11.25'),
(95877, 34541, 1, 12, 30, 1, 1, 45, 1, 725, '12.50', '13.75'),
(95878, 34541, 3, 12, 30, 1, 1, 45, 1, 725, '12.50', '13.75'),
(95879, 34541, 5, 12, 30, 1, 1, 45, 1, 725, '12.50', '13.75'),
(95883, 34543, 1, 4, 15, 1, 5, 30, 1, 721, '16.25', '17.50'),
(95884, 34543, 3, 4, 15, 1, 5, 30, 1, 721, '16.25', '17.50'),
(95885, 34543, 5, 4, 15, 1, 5, 30, 1, 721, '16.25', '17.50'),
(95903, 34550, 2, 5, 30, 1, 6, 45, 1, 726, '17.50', '18.75'),
(95904, 34550, 4, 5, 30, 1, 6, 45, 1, 726, '17.50', '18.75'),
(95908, 34552, 1, 4, 15, 1, 5, 30, 1, 750, '16.25', '17.50'),
(95909, 34552, 3, 4, 15, 1, 5, 30, 1, 750, '16.25', '17.50'),
(95910, 34552, 5, 4, 15, 1, 5, 30, 1, 750, '16.25', '17.50'),
(95914, 34554, 2, 4, 15, 1, 5, 30, 1, 750, '16.25', '17.50'),
(95915, 34554, 4, 4, 15, 1, 5, 30, 1, 750, '16.25', '17.50'),
(95916, 34554, 6, 4, 15, 1, 5, 30, 1, 750, '16.25', '17.50'),
(95941, 34563, 2, 11, 15, 0, 12, 30, 1, 750, '11.25', '12.50'),
(95942, 34563, 4, 11, 15, 0, 12, 30, 1, 750, '11.25', '12.50'),
(95943, 34563, 6, 11, 15, 0, 12, 30, 1, 750, '11.25', '12.50'),
(95949, 34566, 1, 5, 30, 1, 6, 45, 1, 722, '17.50', '18.75'),
(95950, 34566, 3, 5, 30, 1, 6, 45, 1, 722, '17.50', '18.75'),
(95951, 34566, 5, 5, 30, 1, 6, 45, 1, 722, '17.50', '18.75'),
(95952, 34567, 2, 5, 30, 1, 6, 45, 1, 723, '17.50', '18.75'),
(95953, 34567, 4, 5, 30, 1, 6, 45, 1, 723, '17.50', '18.75'),
(95954, 34567, 6, 5, 30, 1, 6, 45, 1, 723, '17.50', '18.75'),
(96023, 34595, 1, 1, 45, 1, 3, 0, 1, 749, '13.75', '15.00'),
(96024, 34595, 3, 1, 45, 1, 3, 0, 1, 749, '13.75', '15.00'),
(96025, 34595, 5, 1, 45, 1, 3, 0, 1, 749, '13.75', '15.00'),
(97693, 35233, 2, 11, 15, 0, 12, 30, 1, 799, '11.25', '12.50'),
(97694, 35233, 4, 11, 15, 0, 12, 30, 1, 799, '11.25', '12.50'),
(97695, 35233, 6, 11, 15, 0, 12, 30, 1, 799, '11.25', '12.50'),
(97856, 35288, 2, 8, 45, 0, 10, 0, 0, 846, '8.75', '10.00'),
(97857, 35288, 4, 8, 45, 0, 10, 0, 0, 846, '8.75', '10.00'),
(97858, 35288, 6, 8, 45, 0, 10, 0, 0, 846, '8.75', '10.00'),
(98091, 35371, 1, 12, 30, 1, 1, 45, 1, 749, '12.50', '13.75'),
(98092, 35371, 3, 12, 30, 1, 1, 45, 1, 749, '12.50', '13.75'),
(98093, 35371, 5, 12, 30, 1, 1, 45, 1, 749, '12.50', '13.75'),
(98097, 35373, 1, 11, 15, 0, 12, 30, 1, 750, '11.25', '12.50'),
(98098, 35373, 3, 11, 15, 0, 12, 30, 1, 750, '11.25', '12.50'),
(98099, 35373, 5, 11, 15, 0, 12, 30, 1, 750, '11.25', '12.50'),
(98791, 35628, 2, 8, 45, 0, 10, 0, 0, 901, '8.75', '10.00'),
(98792, 35628, 4, 8, 45, 0, 10, 0, 0, 901, '8.75', '10.00'),
(98796, 35630, 2, 10, 0, 0, 11, 15, 0, 901, '10.00', '11.25'),
(98797, 35630, 4, 10, 0, 0, 11, 15, 0, 901, '10.00', '11.25'),
(98798, 35630, 6, 10, 0, 0, 11, 15, 0, 901, '10.00', '11.25'),
(98813, 35636, 2, 12, 30, 1, 1, 45, 1, 750, '12.50', '13.75'),
(98814, 35636, 4, 12, 30, 1, 1, 45, 1, 750, '12.50', '13.75'),
(98824, 35640, 2, 6, 45, 1, 8, 0, 1, 725, '18.75', '20.00'),
(98825, 35640, 4, 6, 45, 1, 8, 0, 1, 725, '18.75', '20.00'),
(98826, 35640, 6, 6, 45, 1, 8, 0, 1, 725, '18.75', '20.00'),
(98891, 35663, 1, 12, 30, 1, 1, 45, 1, 747, '12.50', '13.75'),
(98892, 35663, 3, 12, 30, 1, 1, 45, 1, 747, '12.50', '13.75'),
(98893, 35663, 5, 12, 30, 1, 1, 45, 1, 747, '12.50', '13.75'),
(99263, 35799, 1, 7, 30, 0, 8, 45, 0, 905, '7.50', '8.75'),
(99264, 35799, 3, 7, 30, 0, 8, 45, 0, 905, '7.50', '8.75'),
(99265, 35799, 5, 7, 30, 0, 8, 45, 0, 905, '7.50', '8.75'),
(99451, 35863, 2, 3, 0, 1, 4, 15, 1, 908, '15.00', '16.25'),
(99452, 35863, 4, 3, 0, 1, 4, 15, 1, 908, '15.00', '16.25'),
(99453, 35863, 6, 3, 0, 1, 4, 15, 1, 908, '15.00', '16.25'),
(100411, 36182, 2, 8, 45, 0, 10, 0, 0, 749, '8.75', '10.00'),
(100412, 36182, 4, 8, 45, 0, 10, 0, 0, 749, '8.75', '10.00'),
(100413, 36182, 6, 8, 45, 0, 10, 0, 0, 749, '8.75', '10.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faculty_loads`
--

CREATE TABLE IF NOT EXISTS `tbl_faculty_loads` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `faculty` bigint(20) DEFAULT NULL,
  `offering` bigint(20) DEFAULT NULL,
  `is_main` int(1) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20458 ;

--
-- Dumping data for table `tbl_faculty_loads`
--

INSERT INTO `tbl_faculty_loads` (`id`, `faculty`, `offering`, `is_main`, `create_date`, `modify_date`, `created_by`, `modified_by`) VALUES
(20104, 100431, 34142, 1, '2015-10-08', NULL, NULL, NULL),
(19086, 240, 34476, 1, '2015-09-28', NULL, NULL, NULL),
(19184, 648, 34495, 1, '2015-09-28', NULL, NULL, NULL),
(19750, 542, 34500, 1, '2015-10-02', NULL, NULL, NULL),
(19597, 232, 34503, 1, '2015-10-02', NULL, NULL, NULL),
(19505, 94389, 34504, 1, '2015-10-01', NULL, NULL, NULL),
(19109, 305, 34506, 1, '2015-09-28', NULL, NULL, NULL),
(20350, 485, 34511, 1, '2015-10-24', NULL, NULL, NULL),
(20167, 100440, 34513, 1, '2015-10-12', NULL, NULL, NULL),
(19752, 75744, 34513, 1, '2015-10-02', NULL, NULL, NULL),
(19170, 642, 34526, 1, '2015-09-28', NULL, NULL, NULL),
(19193, 660, 34541, 1, '2015-09-28', NULL, NULL, NULL),
(19119, 347, 34543, 1, '2015-09-28', NULL, NULL, NULL),
(19145, 97, 34550, 1, '2015-09-28', NULL, NULL, NULL),
(19114, 305, 34552, 1, '2015-09-28', NULL, NULL, NULL),
(19848, 100447, 34554, 1, '2015-10-02', NULL, NULL, NULL),
(19755, 542, 34563, 1, '2015-10-02', NULL, NULL, NULL),
(19103, 313, 34566, 1, '2015-09-28', NULL, NULL, NULL),
(18724, 305, 34567, 1, '2015-08-10', NULL, NULL, NULL),
(19128, 357, 34595, 1, '2015-09-28', NULL, NULL, NULL),
(19443, 649, 35233, 1, '2015-10-01', NULL, NULL, NULL),
(19085, 240, 35371, 1, '2015-09-28', NULL, NULL, NULL),
(19153, 602, 35373, 1, '2015-09-28', NULL, NULL, NULL),
(19172, 642, 35628, 1, '2015-09-28', NULL, NULL, NULL),
(19675, 100442, 35630, 1, '2015-10-02', NULL, NULL, NULL),
(19208, 685, 35636, 1, '2015-09-28', NULL, NULL, NULL),
(19144, 75739, 35640, 1, '2015-09-28', NULL, NULL, NULL),
(19147, 541, 35663, 1, '2015-09-28', NULL, NULL, NULL),
(20355, 83862, 35799, 1, '2015-10-24', NULL, NULL, NULL),
(20130, 758, 35863, 1, '2015-10-09', NULL, NULL, NULL),
(20255, 648, 36182, 1, '2015-10-16', NULL, NULL, NULL),
(20144, 100433, 34146, 1, '2015-10-09', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_grading_terms`
--

CREATE TABLE IF NOT EXISTS `tbl_grading_terms` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `grade_term` varchar(25) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_grading_terms`
--

INSERT INTO `tbl_grading_terms` (`id`, `grade_term`, `create_date`, `modify_date`, `created_by`, `modified_by`) VALUES
(1, 'Prelim', NULL, NULL, NULL, NULL),
(2, 'Midterm', NULL, NULL, NULL, NULL),
(3, 'Final', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loginlogs`
--

CREATE TABLE IF NOT EXISTS `tbl_loginlogs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_login` date DEFAULT NULL,
  `time_login` time DEFAULT NULL,
  `remote_ip` varchar(250) DEFAULT NULL,
  `is_success` tinyint(1) DEFAULT '0',
  `user_name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_major`
--

CREATE TABLE IF NOT EXISTS `tbl_major` (
  `id` int(11) NOT NULL,
  `course` int(11) DEFAULT NULL,
  `major_name` varchar(130) DEFAULT NULL,
  `major_code` varchar(80) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_major`
--

INSERT INTO `tbl_major` (`id`, `course`, `major_name`, `major_code`, `create_date`, `created_by`, `modify_date`, `modified_by`) VALUES
(71, 70, 'Enterprise Resource Planning Track', 'ERP TRACK', NULL, NULL, NULL, NULL),
(72, 70, 'Web Technology Track', 'WEB TRACK', NULL, NULL, NULL, NULL),
(73, 70, 'Network and Security Track', 'NET SEC TRACK', NULL, NULL, NULL, NULL),
(129, 72, 'E-LEARNING TECHNOLOGY TRACK', 'E-LEARNING TECH TRACK', NULL, NULL, NULL, NULL),
(141, 72, 'BUSINESS PROCESS MANAGEMENT TRACk', 'BPM TRACK', NULL, NULL, NULL, NULL),
(146, 69, 'EMBEDDED APPLICATION TRACK', 'EMBEDDED APP TRACK', NULL, NULL, NULL, NULL),
(148, 71, 'EMPHASIS IN COMPUTER MAINTENANCE AND NETWORK MANAGEMENT', 'NET MGMT', NULL, NULL, NULL, NULL),
(149, 71, 'EMPHASIS IN CALL CENTER SERVICES', 'ECCS TRACK', NULL, NULL, NULL, NULL),
(158, 70, 'Business Analytics Track', 'BA TRACK', NULL, NULL, NULL, NULL),
(159, 69, 'NONE', 'NONE', NULL, NULL, NULL, NULL),
(126, 69, 'MOBILE TECHNOLOGY TRACK', 'MOBILE TECH TRACK', NULL, NULL, NULL, NULL),
(127, 69, 'DIGITAL ARTS AND ANIMATION TRACK', 'DIGITAL ARTS TRACK', NULL, NULL, NULL, NULL),
(145, 72, 'INFORMATION & LIBRARY TECHNOLOGY', 'INFO & LIB TRACK', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modules`
--

CREATE TABLE IF NOT EXISTS `tbl_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_name` varchar(50) DEFAULT NULL,
  `mod_filename` varchar(180) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_modules`
--

INSERT INTO `tbl_modules` (`id`, `mod_name`, `mod_filename`, `create_date`, `created_by`, `modify_date`, `modified_by`) VALUES
(1, 'User Management', 'users_main.php', '2015-06-24', 161, NULL, NULL),
(2, 'Module Management', 'modules_main.php', '2015-06-24', 161, '2015-06-24', 161),
(3, 'User Type Management', 'usertypes_main.php', '2015-06-24', 161, NULL, NULL),
(4, 'Access Management', 'access_main.php', '2015-06-24', 161, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_question_choices`
--

CREATE TABLE IF NOT EXISTS `tbl_question_choices` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `choice_code` varchar(255) DEFAULT NULL,
  `choice_data` varchar(255) DEFAULT NULL,
  `is_correct` int(1) DEFAULT NULL,
  `point` double(15,2) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quiz_questions`
--

CREATE TABLE IF NOT EXISTS `tbl_quiz_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL,
  `offering_num` int(11) DEFAULT NULL,
  `q_number` int(11) DEFAULT NULL,
  `q_desc` varchar(255) DEFAULT NULL,
  `q_img` varchar(255) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `correct` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sch_terms`
--

CREATE TABLE IF NOT EXISTS `tbl_sch_terms` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sch_code` varchar(15) DEFAULT NULL,
  `sch_description` varchar(150) DEFAULT NULL,
  `sch_active` int(1) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `modified_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_sch_terms`
--

INSERT INTO `tbl_sch_terms` (`id`, `sch_code`, `sch_description`, `sch_active`, `create_date`, `modify_date`, `created_by`, `modified_by`) VALUES
(1, '2015-1', 'FIRST TRIMESTER 2015-2016', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_students_info`
--

CREATE TABLE IF NOT EXISTS `tbl_students_info` (
  `id` bigint(20) NOT NULL,
  `student` bigint(20) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `course` int(11) DEFAULT NULL,
  `major` int(11) DEFAULT NULL,
  `college` int(11) DEFAULT NULL,
  `year_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_students_info`
--

INSERT INTO `tbl_students_info` (`id`, `student`, `gender`, `contact`, `course`, `major`, `college`, `year_level`) VALUES
(83786, 14419, 'F', '9202800295', 70, 72, 26, 3),
(164666, 16958, 'F', '9351961392', 70, 72, 26, 1),
(116945, 17088, 'M', '9279807972', 70, 72, 26, 2),
(116779, 17492, 'F', '9496168866', 70, 72, 26, 3),
(56845, 52119, 'M', 'NULL', 70, 72, 26, 3),
(135417, 72503, 'M', '9287530531', 70, 72, 26, 2),
(129604, 72585, 'M', 'NULL', 70, 72, 26, 3),
(127916, 72600, 'M', '9306168453', 70, 72, 26, 3),
(165009, 72966, 'M', 'NULL', 70, 72, 26, 3),
(134234, 73513, 'M', '9272710402', 70, 72, 26, 2),
(134354, 73752, 'M', '9477568829', 70, 72, 26, 3),
(127871, 73809, 'M', '9175779873', 70, 72, 26, 2),
(138366, 84235, 'M', 'NULL', 70, 72, 26, 3),
(151266, 85357, 'M', '9354996158', 70, 72, 26, 2),
(152271, 86351, 'F', '9129538289', 70, 72, 26, 3),
(151257, 87340, 'M', '9057834013', 70, 72, 26, 3),
(148761, 89924, 'M', 'NULL', 70, 72, 26, 3),
(148891, 89953, 'M', 'NULL', 70, 72, 26, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subjects`
--

CREATE TABLE IF NOT EXISTS `tbl_subjects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sub_code` varchar(50) DEFAULT NULL,
  `sub_name` varchar(250) DEFAULT NULL,
  `lec_units` decimal(15,2) DEFAULT NULL,
  `lab_units` decimal(15,2) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9316 ;

--
-- Dumping data for table `tbl_subjects`
--

INSERT INTO `tbl_subjects` (`id`, `sub_code`, `sub_name`, `lec_units`, `lab_units`, `create_date`, `modify_date`, `created_by`, `modified_by`) VALUES
(3177, 'PSYCH 1', 'GENERAL PSYCHOLOGY WITH DRUG PREVENTION', '3.00', '0.00', NULL, NULL, NULL, NULL),
(3178, 'FIL 1', 'KOMUNIKASYON SA AKADEMIKONG FILIPINO', '3.00', '0.00', NULL, NULL, NULL, NULL),
(3184, 'NSTP 1', 'NATIONAL SERVICE TRAINING PROGRAM 1', '3.00', '0.00', NULL, NULL, NULL, NULL),
(3185, 'NSTP 2', 'NATIONAL SERVICE TRAINING PROGRAM 2', '3.00', '0.00', NULL, NULL, NULL, NULL),
(3206, 'FIL 2', 'PAGBASA AT PAGSULAT TUNGO SA PANANALIKSIK', '3.00', '0.00', NULL, NULL, NULL, NULL),
(3220, 'ECON 1', 'PRINCIPLES OF ECONOMICS WITH TAXATION AND AGRARIAN REFORM', '3.00', '0.00', NULL, NULL, NULL, NULL),
(3221, 'HIST 22', 'LIFE AND WORKS OF RIZAL', '3.00', '0.00', NULL, NULL, NULL, NULL),
(3223, 'HUMAN 1', 'ART APPRECIATION', '3.00', '0.00', NULL, NULL, NULL, NULL),
(3224, 'ENGL 7', 'PHILIPPINE LITERATURE', '3.00', '0.00', NULL, NULL, NULL, NULL),
(3315, 'ITP.1101', 'IT FUNDAMENTALS', '2.00', '1.00', NULL, NULL, NULL, NULL),
(3316, 'MC 1', 'MODERN COMMUNICATION 1', '3.00', '0.00', NULL, NULL, NULL, NULL),
(3317, 'MC 2', 'MODERN COMMUNICATION 2', '3.00', '0.00', NULL, NULL, NULL, NULL),
(3334, 'MATHCS 1', 'COLLEGE ALGEBRA', '3.00', '0.00', NULL, NULL, NULL, NULL),
(3335, 'MATHCS 2', 'PLANE TRIGONOMETRY', '3.00', '0.00', NULL, NULL, NULL, NULL),
(3382, 'SOCIO 1', 'SOCIETY AND CULTURE WITH FAMILY PLANNING', '3.00', '0.00', NULL, NULL, NULL, NULL),
(3401, 'SOC OR', 'PERSONALITY DEVELOPMENT AND GENDER ISSUES', '3.00', '0.00', NULL, NULL, NULL, NULL),
(3428, 'MIT C01', 'ADVANCED DATA STRUCTURES', '0.00', '0.00', NULL, NULL, NULL, NULL),
(3431, 'MIT C03', 'ADVANCED OPERATING SYSTEMS', '0.00', '0.00', NULL, NULL, NULL, NULL),
(3433, 'MIT C04', 'ADVANCED DATABASE MANAGEMENT SYSTEMS', '0.00', '0.00', NULL, NULL, NULL, NULL),
(3436, 'MIT C06', 'SOFTWARE ENGINEERING', '0.00', '0.00', NULL, NULL, NULL, NULL),
(3443, 'CCS.1102', 'OBJECT ORIENTED PROGRAMMING 1', '2.00', '1.00', NULL, NULL, NULL, NULL),
(3479, 'CCS.1104', 'OBJECT ORIENTED PROGRAMMING 2', '2.00', '1.00', NULL, NULL, NULL, NULL),
(3493, 'CCS.1105', 'APPLIED DATA STRUCTURES', '2.00', '1.00', NULL, NULL, NULL, NULL),
(3508, 'CCS.1106', 'INTRODUCTION TO ELECTRONICS', '2.00', '1.00', NULL, NULL, NULL, NULL),
(3605, 'CCS.1113', 'SOFTWARE ENGINEERING', '3.00', '0.00', NULL, NULL, NULL, NULL),
(3621, 'CCS.1115', 'WEB DEVELOPMENT 1', '2.00', '1.00', NULL, NULL, NULL, NULL),
(3630, 'ITP.1102', 'BUSINESS PROCESSES', '3.00', '0.00', NULL, NULL, NULL, NULL),
(3637, 'CCS.1112', 'NETWORK FUNDAMENTALS', '2.00', '1.00', NULL, NULL, NULL, NULL),
(3668, 'CCS.1116', 'PROFESSIONAL ETHICS AND COMPUTING ISSUES', '3.00', '0.00', NULL, NULL, NULL, NULL),
(3679, 'CCS.1118', 'OPERATING SYSTEM APPLICATIONS', '3.00', '0.00', NULL, NULL, NULL, NULL),
(3726, 'ITP.1111', 'PROJECT MANAGEMENT', '3.00', '0.00', NULL, NULL, NULL, NULL),
(3733, 'ITP.1112', 'ABAP PROGRAMMING 2', '2.00', '1.00', NULL, NULL, NULL, NULL),
(3736, 'CCS.1122', 'INTERNSHIP', '9.00', '0.00', NULL, NULL, NULL, NULL),
(3860, 'NAT SCI 1', 'PHYSICAL SCIENCE', '3.00', '0.00', NULL, NULL, NULL, NULL),
(3994, 'ITP.1110', 'WEB INFORMATION SYSTEM 1', '2.00', '1.00', NULL, NULL, NULL, NULL),
(3998, 'ITP.1114', 'WEB INFORMATION SYSTEMS 2', '2.00', '1.00', NULL, NULL, NULL, NULL),
(4000, 'ITP.1108', 'SWITCHES AND SWITCHING BASICS', '2.00', '1.00', NULL, NULL, NULL, NULL),
(4006, 'ITP.1113', 'WAN TECHNOLOGIES', '2.00', '1.00', NULL, NULL, NULL, NULL),
(4016, 'ITP.1105', 'NETWORK MANAGEMENT', '2.00', '1.00', NULL, NULL, NULL, NULL),
(4146, 'STS', 'SCIENCE, TECHNOLOGY AND SOCIETY', '3.00', '0.00', NULL, NULL, NULL, NULL),
(4627, 'CSP.1103', 'DATA STRUCTURES', '2.00', '1.00', NULL, NULL, NULL, NULL),
(4629, 'CSP.1106', 'ARTIFICIAL INTELLIGENCE', '3.00', '0.00', NULL, NULL, NULL, NULL),
(4630, 'CSP.1107', 'AUTOMATA AND LANGUAGE THEORY', '3.00', '0.00', NULL, NULL, NULL, NULL),
(4632, 'CSP.1108', 'PROGRAMMING LANGUAGES', '3.00', '0.00', NULL, NULL, NULL, NULL),
(4635, 'CSP.1111', 'COMPUTER SECURITY', '3.00', '0.00', NULL, NULL, NULL, NULL),
(4639, 'CSP.1115', 'GAME DEVELOPMENT', '2.00', '1.00', NULL, NULL, NULL, NULL),
(4643, 'CSP.1119', 'INTERNSHIP', '3.00', '0.00', NULL, NULL, NULL, NULL),
(4735, 'ENGL 07', 'PHILIPPINE LITERATURE', '3.00', '0.00', NULL, NULL, NULL, NULL),
(4837, 'CCNA 2', 'ROUTERS AND ROUTING BASICS', '2.00', '1.00', NULL, NULL, NULL, NULL),
(4839, 'ITCS 312', 'OPERATING SYSTEMS', '3.00', '0.00', NULL, NULL, NULL, NULL),
(4843, 'ITS 321', 'INTERNSHIP', '9.00', '0.00', NULL, NULL, NULL, NULL),
(4844, 'ITS 331', 'CAPSTONE PROJECT', '3.00', '0.00', NULL, NULL, NULL, NULL),
(4924, 'ITM 1', 'SYSTEMS ARCHITECTURE', '3.00', '0.00', NULL, NULL, NULL, NULL),
(4959, 'ACT 112', 'OS APPLICATION', '2.00', '1.00', NULL, NULL, NULL, NULL),
(4961, 'ACT 131', 'COMPUTER MAINTENANCE & REPAIR', '2.00', '1.00', NULL, NULL, NULL, NULL),
(5327, 'CCS.1127', 'COMMUNICATION IN THE WORKPLACE', '3.00', '0.00', NULL, NULL, NULL, NULL),
(5336, 'CCS.1132', 'WEB DEVELOPMENT 2', '2.00', '1.00', NULL, NULL, NULL, NULL),
(5340, 'CCS.1134', 'MOBILE TECHNOLOGY', '2.00', '1.00', NULL, NULL, NULL, NULL),
(5341, 'CCS.1135', 'INTERNSHIP 1', '3.00', '0.00', NULL, NULL, NULL, NULL),
(5342, 'SOC SCI 1', 'PHILIPPINE HISTORY AND GOVERNMENT WITH CONSTITUTION', '3.00', '0.00', NULL, NULL, NULL, NULL),
(5343, 'CCS.1137', 'CAPSTONE PROJECT 1', '2.00', '1.00', NULL, NULL, NULL, NULL),
(5344, 'CCS.1138', 'CAPSTONE PROJECT 2', '3.00', '0.00', NULL, NULL, NULL, NULL),
(5345, 'CCS.1136', 'INTERNSHIP 2', '6.00', '0.00', NULL, NULL, NULL, NULL),
(5347, 'CSP.1127', 'DATABASE MANAGEMENT SYSTEMS', '3.00', '0.00', NULL, NULL, NULL, NULL),
(5348, 'CSP.1128', 'DIGITAL ARTS AND ANIMATION 1', '2.00', '1.00', NULL, NULL, NULL, NULL),
(5353, 'ACT 122', 'OS MAINTENANCE AND ADMINISTRATION', '2.00', '1.00', NULL, NULL, NULL, NULL),
(5354, 'CSP.1133', 'THESIS 1', '3.00', '0.00', NULL, NULL, NULL, NULL),
(5355, 'CSP.1134', 'THESIS 2', '3.00', '0.00', NULL, NULL, NULL, NULL),
(5356, 'ACT 224', 'COMPUTER TECHNOLOGY CERTIFICATION REVIEW CHS', '3.00', '0.00', NULL, NULL, NULL, NULL),
(5357, 'ACT 225', 'PRACTICUM', '3.00', '0.00', NULL, NULL, NULL, NULL),
(5359, 'CCS.1140', 'COMPUTER ORGANIZATION AND ASSEMBLY LANGUAGE', '2.00', '1.00', NULL, NULL, NULL, NULL),
(5362, 'CCS.1141', 'COMPUTER ARCHITECTURE', '3.00', '0.00', NULL, NULL, NULL, NULL),
(5364, 'ITP.1121', 'SPECIAL TOPICS', '3.00', '0.00', NULL, NULL, NULL, NULL),
(5365, 'ITP.1125', 'TECHNOPRENEURSHIP', '2.00', '1.00', NULL, NULL, NULL, NULL),
(5366, 'CSP.1137', 'ADVANCED MOBILE TECHNOLOGY', '2.00', '1.00', NULL, NULL, NULL, NULL),
(5369, 'CSP.1139', 'ABAP PROGRAMMING 1', '2.00', '1.00', NULL, NULL, NULL, NULL),
(9229, 'CCS.1150', 'OBJECT ORIENTED PROGAMMING', '2.00', '1.00', NULL, NULL, NULL, NULL),
(9230, 'CCS.1151', 'PLATFORM TECHNOLOGIES', '2.00', '1.00', NULL, NULL, NULL, NULL),
(9231, 'CCS.1152', 'HUMAN COMPUTER INTERACTION', '2.00', '1.00', NULL, NULL, NULL, NULL),
(9232, 'CCS.1153', 'WEB DEVELOPMENT', '2.00', '1.00', NULL, NULL, NULL, NULL),
(9255, 'CCS.1159', 'ACCOUNTING ESSENTIALS', '3.00', '1.00', NULL, NULL, NULL, NULL),
(9256, 'CCS.1160', 'SYSTEMS ANALYSIS AND DESIGN', '3.00', '1.00', NULL, NULL, NULL, NULL),
(9257, 'ITP.1127', 'TECHNOPRENEURSHIP', '2.00', '1.00', NULL, NULL, NULL, NULL),
(9258, 'CSP.1141', 'DIGITAL DESIGN', '3.00', '0.00', NULL, NULL, NULL, NULL),
(9259, 'CCS.1161', 'DISCRETE STRUCTURES', '3.00', '0.00', NULL, NULL, NULL, NULL),
(9260, 'CCS.1162', 'DATABASE MANAGEMENT SYSTEMS', '3.00', '0.00', NULL, NULL, NULL, NULL),
(9264, 'ITP.1130', 'INTRODUCTION TO ERP', '2.00', '1.00', NULL, NULL, NULL, NULL),
(9265, 'CCS.1165', 'MULTIMEDIA SYSTEMS', '2.00', '1.00', NULL, NULL, NULL, NULL),
(9268, 'ITP.1133', 'ERP CONFIGURATION', '2.00', '1.00', NULL, NULL, NULL, NULL),
(9274, 'ICS1', 'COMPUTING FUNDAMENTALS', '2.00', '1.00', NULL, NULL, NULL, NULL),
(9275, 'ICS2', 'INTRODUCTION TO COMPUTER PROGRAMMING', '2.00', '1.00', NULL, NULL, NULL, NULL),
(9276, 'ICS3', 'OBJECT ORIENTED PROGRAMMING', '2.00', '1.00', NULL, NULL, NULL, NULL),
(9277, 'ICS4', 'DATA STRUCTURES AND ALGORITHMS', '3.00', '0.00', NULL, NULL, NULL, NULL),
(9281, 'IT 1', 'HUMAN COMPUTER INTERACTION FUNDAMENTALS', '2.00', '1.00', NULL, NULL, NULL, NULL),
(9315, 'IT 2', 'DISCRETE STRUCTURES', '3.00', '0.00', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userlogins`
--

CREATE TABLE IF NOT EXISTS `tbl_userlogins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user` bigint(20) NOT NULL,
  `username` varchar(80) DEFAULT NULL,
  `pwd` varchar(80) DEFAULT NULL,
  `retries` int(1) DEFAULT '5',
  `is_loggedin` int(1) DEFAULT '0',
  `user_type` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `tbl_userlogins`
--

INSERT INTO `tbl_userlogins` (`id`, `user`, `username`, `pwd`, `retries`, `is_loggedin`, `user_type`, `create_date`, `modify_date`, `created_by`, `modified_by`) VALUES
(1, 97, '000-300917-912', '6b7cf7853d08c65e37ad5709ddc0f59e', 5, 0, 2, '2011-05-04', NULL, NULL, NULL),
(2, 232, '000-200727-252', '98ec218be9864cfa338c8b14545887af', 5, 0, 2, '2011-09-15', NULL, NULL, NULL),
(3, 240, '000-200042-252', '0ab248f8309a7bd555d1956f640590b6', 5, 0, 2, '2011-09-15', NULL, NULL, NULL),
(4, 305, '000-201206-352', '6f88bfa499d480c1815d9bb5b640682c', 5, 0, 2, '2011-09-15', NULL, NULL, NULL),
(5, 313, '000-200143-352', '28b716d32912b5886de6c55e7f25b92d', 5, 0, 2, '2011-09-15', NULL, NULL, NULL),
(6, 347, '000-200167-352', '926f4db80b350e205ba47aa3a4c6aa42', 5, 0, 2, '2011-09-15', NULL, NULL, NULL),
(7, 357, '000-201258-352', '4ff7fd052d23ef27a791a1f48903b175', 5, 0, 2, '2011-09-15', NULL, NULL, NULL),
(8, 485, '000-201241-452', '5070f96e878571a38ec92468e1a523f2', 5, 0, 2, '2011-09-15', NULL, NULL, NULL),
(9, 541, '000-200521-552', '4d729670a90496f0fef6ba4133c9c38b', 5, 0, 2, '2011-09-15', NULL, NULL, NULL),
(10, 542, '000-201029-552', '60c91796eccb32348e2b8c8bc3b79e36', 5, 0, 2, '2011-09-15', NULL, NULL, NULL),
(11, 602, '000-201460-652', '5b9b044cb9b27efd64cfb9b8f6b3200e', 5, 0, 2, '2011-09-15', NULL, NULL, NULL),
(12, 642, '000-200793-652', 'f76fcbfb4984aec7be68866508cdaf9c', 5, 0, 2, '2011-09-15', NULL, NULL, NULL),
(13, 648, '000-201067-652', 'eac8427116050c9164e9f8fe008c6bc1', 5, 0, 2, '2011-09-15', NULL, NULL, NULL),
(14, 649, '000-200328-652', 'd5bb91a08d9349f3d6968569c91fde53', 5, 0, 2, '2011-09-15', NULL, NULL, NULL),
(15, 660, '000-201004-652', 'd4413149037c1149312b554fbdd97acc', 5, 0, 2, '2011-09-15', NULL, NULL, NULL),
(16, 685, '000-200342-652', 'fd4c2f9ec47e80b62c610e0a1279827b', 5, 0, 2, '2011-09-15', NULL, NULL, NULL),
(17, 758, '000-200385-752', '12447cb04bf2856b32bb10195242e1bd', 5, 0, 2, '2011-09-15', NULL, NULL, NULL),
(18, 75739, '000-201542-752', '80997eb694dbedc0f35113d03398818a', 5, 0, 2, '2012-06-29', NULL, NULL, NULL),
(19, 75744, '000-201547-752', '1c335d6a996b391415525614c43b1d58', 5, 0, 2, '2012-06-30', NULL, NULL, NULL),
(20, 83862, '000-201580-852', '3ca42849ec6773c8652f3845b3197d4b', 5, 0, 2, '2012-10-22', NULL, NULL, NULL),
(21, 94389, '000-201668-952', '7457308b2cf8de9213a38e4857e716b4', 5, 0, 2, '2014-06-26', NULL, NULL, NULL),
(22, 100431, '000-201719-152', '76d33670c5e3707543d9aca43b0d6dae', 5, 0, 2, '2015-09-23', NULL, NULL, NULL),
(23, 100433, '000-201716-152', '3b874a48f7dd63b7b828e31769dcffd2', 5, 0, 2, '2015-09-23', NULL, NULL, NULL),
(24, 100440, '000-201713-152', '97c1e7ce5395a904fb4080ddd1af554a', 5, 0, 2, '2015-09-23', NULL, NULL, NULL),
(25, 100442, '000-300699-152', 'e9542423a9d0347af50babe800843b15', 5, 0, 2, '2015-09-23', NULL, NULL, NULL),
(26, 100447, '000-201701-152', '754e298dd130749bbc669afff3be971e', 5, 0, 2, '2015-09-23', NULL, NULL, NULL),
(27, 14419, '12012474', '0761b065064c2c6157d24a78e52dd895', 5, 0, 3, '2011-11-02', NULL, NULL, NULL),
(28, 16958, '12012320', 'e5c576255c52fbf95a10844929ecb093', 5, 0, 3, '2011-11-02', NULL, NULL, NULL),
(29, 17088, '12022084', '8caeee63de7179faeba9e1a607f14857', 5, 0, 3, '2011-11-02', NULL, NULL, NULL),
(30, 17492, '12022917', 'f56fbbad14e291d6143c176bd8bc1dbf', 5, 0, 3, '2011-11-02', NULL, NULL, NULL),
(31, 52119, '11-0053-870', 'e7c1d0a6665c0aa71565adccc8a9923d', 5, 0, 3, '2012-01-12', NULL, NULL, NULL),
(32, 72503, '12-0038-520', '5a1e390a0de119f3fc929419c60880eb', 5, 0, 3, '2012-05-02', NULL, NULL, NULL),
(33, 72585, '12-0119-847', '3848aaba13dcf41ed72a06b02087f67a', 5, 0, 3, '2012-05-02', NULL, NULL, NULL),
(34, 72600, '12-0134-375', '0be26762a0b1cd9bcf4a5c924f264003', 5, 0, 3, '2012-05-02', NULL, NULL, NULL),
(35, 72966, '12-0500-642', '2e8c762e9431192150ac8f8449ba532b', 5, 0, 3, '2012-05-02', NULL, NULL, NULL),
(36, 73513, '12-1024-777', '787a00a9536053e80aea5a02e01f1e90', 5, 0, 3, '2012-05-09', NULL, NULL, NULL),
(37, 73752, '12-1259-238', '817574288492d230a24be95283e2f534', 5, 0, 3, '2012-05-14', NULL, NULL, NULL),
(38, 73809, '12-1315-961', '0c97148eea7deaa5929ae46b2edea466', 5, 0, 3, '2012-05-15', NULL, NULL, NULL),
(39, 84235, '12-4103-351', '99682c8d67a0310d476f074a59690d93', 5, 0, 3, '2013-01-16', NULL, NULL, NULL),
(40, 85357, '13-0962-822', '9ca7a81af77bde7c2a812732770300aa', 5, 0, 3, '2013-05-16', NULL, NULL, NULL),
(41, 86351, '13-1926-124', 'e6dae0a30368df1f47b50a97e2680916', 5, 0, 3, '2013-05-27', NULL, NULL, NULL),
(42, 87340, '13-2863-397', '84bb7c97fa23bd0e490c1c4da438e7f4', 5, 0, 3, '2013-06-03', NULL, NULL, NULL),
(43, 89924, '13-3597-842', 'eb4a33b3cbc851125100e0f9decc1a3e', 5, 0, 3, '2013-09-13', NULL, NULL, NULL),
(44, 89953, '13-3626-527', 'a0ac2d5a905fcc869ab1826f9a92a2b0', 5, 0, 3, '2013-09-14', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_number` char(20) NOT NULL,
  `lname` varchar(130) DEFAULT NULL,
  `fname` varchar(130) DEFAULT NULL,
  `mname` varchar(130) DEFAULT NULL,
  `mem_type` tinyint(1) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `modified_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_number` (`id_number`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100485 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `id_number`, `lname`, `fname`, `mname`, `mem_type`, `create_date`, `modify_date`, `created_by`, `modified_by`) VALUES
(14419, '12012474', 'GUTIERREZ', 'ALTHEA', 'RIVERA', 1, '2011-11-02', NULL, NULL, NULL),
(16958, '12012320', 'ACZON', 'SHARMAINE', 'RAMENTO', 1, '2011-11-02', NULL, NULL, NULL),
(17088, '12022084', 'CABUDOY', 'CHRISTIAN LAWRENCE', 'VINGUA', 1, '2011-11-02', NULL, NULL, NULL),
(17492, '12022917', 'PIO', 'MYNNE JAMAICA', 'ORLINO', 1, '2011-11-02', NULL, NULL, NULL),
(52119, '11-0053-870', 'DE VERA', 'MARLON', 'AMBAL', 1, '2012-01-12', NULL, NULL, NULL),
(72503, '12-0038-520', 'YDIO', 'GEOVANI', 'MOLINA', 1, '2012-05-02', NULL, NULL, NULL),
(72585, '12-0119-847', 'ESCOBAR', 'KARL LOUIE', 'GUNDRAN', 1, '2012-05-02', NULL, NULL, NULL),
(72600, '12-0134-375', 'MAPILE', 'RASEL SYMON', 'DELA CRUZ', 1, '2012-05-02', NULL, NULL, NULL),
(72966, '12-0500-642', 'ISLA', 'EDMARK', 'PEREZ', 1, '2012-05-02', NULL, NULL, NULL),
(73513, '12-1024-777', 'GUADALOPE', 'FELORD', 'WAGAYEN', 1, '2012-05-09', NULL, NULL, NULL),
(73752, '12-1259-238', 'SIBAYAN', 'ARNIE', 'GAMBOA', 1, '2012-05-14', NULL, NULL, NULL),
(73809, '12-1315-961', 'BERNALES', 'CHRISTIAN', 'MARTINEZ', 1, '2012-05-15', NULL, NULL, NULL),
(84235, '12-4103-351', 'FABROS', 'JIM CLYDE', 'VENTENILLA', 1, '2013-01-16', NULL, NULL, NULL),
(85357, '13-0962-822', 'ROLLE', 'JOHAN YASSER', 'NULL', 1, '2013-05-16', NULL, NULL, NULL),
(86351, '13-1926-124', 'PONDOYO', 'JOANNA', 'PALABAY', 1, '2013-05-27', NULL, NULL, NULL),
(87340, '13-2863-397', 'RILLERA', 'FLOYD DEREK', 'DIAZ', 1, '2013-06-03', NULL, NULL, NULL),
(89924, '13-3597-842', 'DAVID', 'DAVE VON', 'DOMINGO', 1, '2013-09-13', NULL, NULL, NULL),
(89953, '13-3626-527', 'NGAOSI', 'KENNY LOWELL', 'MANGANITO', 1, '2013-09-14', NULL, NULL, NULL),
(97, '000-300917-912', 'LECKIAS', 'JUNARD', 'BASILAN', 2, '2011-05-04', NULL, NULL, NULL),
(232, '000-200727-252', 'BAWANG', 'AZLISON', 'GUILABO', 2, '2011-09-15', NULL, NULL, NULL),
(240, '000-200042-252', 'BENINSIG', 'MELINDA', 'ABOY', 2, '2011-09-15', NULL, NULL, NULL),
(305, '000-201206-352', 'CUDLI', 'THERESA', 'CHIDAY', 2, '2011-09-15', NULL, NULL, NULL),
(313, '000-200143-352', 'CONCEPCION', 'NATIVIDAD', 'BALLESTEROS', 2, '2011-09-15', NULL, NULL, NULL),
(347, '000-200167-352', 'DELA CRUZ', 'JOSEPHINE', 'SANTIAGO', 2, '2011-09-15', NULL, NULL, NULL),
(357, '000-201258-352', 'DILAN', 'RAYMUND', 'ESPIRITU', 2, '2011-09-15', NULL, NULL, NULL),
(485, '000-201241-452', 'LAMBENICIO ', 'GREGERLIN', 'IMBAT', 2, '2011-09-15', NULL, NULL, NULL),
(541, '000-200521-552', 'MANG-USAN', 'WALTER LUIS', 'NULL', 2, '2011-09-15', NULL, NULL, NULL),
(542, '000-201029-552', 'MANUEL ', 'JAY JAY', 'FERNANDEZ', 2, '2011-09-15', NULL, NULL, NULL),
(602, '000-201460-652', 'ORTIZ', 'MARIE GRACE', 'VILLANUEVA', 2, '2011-09-15', NULL, NULL, NULL),
(642, '000-200793-652', 'PERALTA', 'JOAN', 'MEDALLA', 2, '2011-09-15', NULL, NULL, NULL),
(648, '000-201067-652', 'PIZA', 'GEOVANI', 'LAZO', 2, '2011-09-15', NULL, NULL, NULL),
(649, '000-200328-652', 'POGONGAN', 'CECILIA', 'KIKIGUE', 2, '2011-09-15', NULL, NULL, NULL),
(660, '000-201004-652', 'QUITALEG', 'ANNA RHODORA', 'MERCADO', 2, '2011-09-15', NULL, NULL, NULL),
(685, '000-200342-652', 'RUIZ', 'ELISEO', 'LUMBAG', 2, '2011-09-15', NULL, NULL, NULL),
(758, '000-200385-752', 'UMINGA', 'LOLITA', 'LABFEY', 2, '2011-09-15', NULL, NULL, NULL),
(75739, '000-201542-752', 'KWO', 'GIESELLE', 'VIERA', 2, '2012-06-29', NULL, NULL, NULL),
(75744, '000-201547-752', 'MERCADO', 'GLORIA', 'BUSLAY', 2, '2012-06-30', NULL, NULL, NULL),
(83862, '000-201580-852', 'TULIO', 'MARJORIE ', 'CARINIO', 2, '2012-10-22', NULL, NULL, NULL),
(94389, '000-201668-952', 'RAMOS', 'FLORDELIZA', 'V', 2, '2014-06-26', NULL, NULL, NULL),
(100431, '000-201719-152', 'SIBLAGAN', 'DENVER', 'MASLIYAN', 2, '2015-09-23', NULL, NULL, NULL),
(100433, '000-201716-152', 'VARGAS', 'ARTHUR CALVIN', 'KALAW', 2, '2015-09-23', NULL, NULL, NULL),
(100440, '000-201713-152', 'NARCELLES', 'BENILDA', 'ZARAGOSA', 2, '2015-09-23', NULL, NULL, NULL),
(100442, '000-300699-152', 'KEBASEN', 'CHESTER', 'BUGNAY', 2, '2015-09-23', NULL, NULL, NULL),
(100447, '000-201701-152', 'DIOQUINO', 'KARLA LOUISE', 'SOLAS', 2, '2015-09-23', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usertypes`
--

CREATE TABLE IF NOT EXISTS `tbl_usertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typecode` varchar(50) DEFAULT NULL,
  `typename` varchar(180) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `tbl_usertypes`
--

INSERT INTO `tbl_usertypes` (`id`, `typecode`, `typename`, `create_date`, `created_by`, `modify_date`, `modified_by`) VALUES
(28, 'Admin', 'System Administrator', NULL, NULL, NULL, NULL),
(29, 'User', 'System Users', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_membership`
--

CREATE TABLE IF NOT EXISTS `tbl_user_membership` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `mem_type` varchar(20) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mem_type` (`mem_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_user_membership`
--

INSERT INTO `tbl_user_membership` (`id`, `mem_type`, `create_date`, `modify_date`, `created_by`, `modified_by`) VALUES
(1, 'Student', NULL, NULL, NULL, NULL),
(2, 'Teacher', NULL, NULL, NULL, NULL),
(3, 'Admin', NULL, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
