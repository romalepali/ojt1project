-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2018 at 04:34 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tesoro`
--

-- --------------------------------------------------------

--
-- Table structure for table `copies_units`
--

CREATE TABLE `copies_units` (
  `id` int(11) NOT NULL,
  `unit` text NOT NULL,
  `added_by` int(11) NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `copies_units`
--

INSERT INTO `copies_units` (`id`, `unit`, `added_by`, `date_modified`) VALUES
(1, 'book/s', 1, '2018-07-20 08:41:25'),
(2, 'box/s', 1, '2018-07-20 08:41:25'),
(3, 'pad/s', 3, '2018-07-28 02:55:03'),
(4, 'pcs', 3, '2018-07-28 02:55:33'),
(5, 'Not Specified', 1, '2018-07-28 09:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `jobbings`
--

CREATE TABLE `jobbings` (
  `id` int(11) NOT NULL,
  `job_no` int(11) NOT NULL,
  `job_kind` int(11) NOT NULL,
  `description` text NOT NULL,
  `date_received` date NOT NULL,
  `due_date` date NOT NULL,
  `agent` text NOT NULL,
  `customer` text NOT NULL,
  `artist` text NOT NULL,
  `current_status` int(11) NOT NULL,
  `current_note` text NOT NULL,
  `status_date` date NOT NULL,
  `added_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `cover` text NOT NULL,
  `pages` text NOT NULL,
  `initial_copies` int(11) NOT NULL,
  `copies_unit` int(11) NOT NULL,
  `color` int(11) NOT NULL,
  `materials` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `printing` int(11) NOT NULL,
  `payment` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `job_status` set('New','Old') NOT NULL DEFAULT 'New',
  `view_status` set('Read','Unread') NOT NULL DEFAULT 'Unread'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobbings`
--

INSERT INTO `jobbings` (`id`, `job_no`, `job_kind`, `description`, `date_received`, `due_date`, `agent`, `customer`, `artist`, `current_status`, `current_note`, `status_date`, `added_by`, `updated_by`, `cover`, `pages`, `initial_copies`, `copies_unit`, `color`, `materials`, `size`, `printing`, `payment`, `date_added`, `job_status`, `view_status`) VALUES
(1, 2204292, 1, 'Column 2017', '2018-04-01', '0000-00-00', 'Mildred', 'Negros Oriental High School', 'Louie', 5, 'Proof 01/08/18 for printing na', '2018-07-28', 4, 4, 'Louie', '160', 20, 1, 0, 0, 0, 0, 1, '2018-07-28 16:34:01', 'New', 'Unread'),
(2, 209350, 1, 'Aurium 2012', '2018-01-27', '0000-00-00', 'Office', 'UM-Tagum', 'Banny', 5, 'Final Proof done 2/3/18 then out in the computer 2nd week of Feb', '2018-07-28', 4, 4, 'Banny', '476', 1233, 1, 0, 0, 0, 0, 2, '2018-07-28 16:42:49', 'New', 'Unread'),
(3, 220457, 1, 'The Fishers 2016', '2018-12-18', '0000-00-00', 'Marta', 'Lupon School of Fisheries', 'Banny', 5, 'Go for print na out sa computer 2nd week of febuary 2018', '2018-07-28', 4, 4, 'Banny', '80', 100, 1, 0, 0, 0, 0, 1, '2018-07-28 16:46:30', 'New', 'Unread'),
(4, 220575, 1, 'Ang Sinag 2017', '2018-01-28', '0000-00-00', 'Office', 'Nabunturan National Comprehensive', 'Carla', 5, 'Received 2nd and 3rd proof/go for print na 1/26/18', '2018-07-28', 6, 6, 'Carla', '200', 625, 1, 0, 0, 0, 0, 1, '2018-07-28 17:18:59', 'New', 'Unread'),
(5, 220499, 1, '', '2018-02-07', '0000-00-00', 'Tony', 'Surigao Del Sur Sta. Ana Univ - Tagbina ', 'Tine', 8, 'First Proof to customer 4/23/2018', '2018-07-28', 4, 4, 'Tine', '130', 230, 1, 0, 0, 0, 0, 2, '2018-07-28 17:22:54', 'New', 'Unread'),
(6, 220498, 1, 'Agustinian 2017', '2018-01-14', '0000-00-00', 'Mildred', 'San Agustin Institute of Technology', 'Luz', 5, 'for corrections 2nd proof ret. 1/23/18 for printing na', '2018-07-28', 6, 6, 'Luz', '138', 310, 1, 0, 0, 0, 0, 1, '2018-07-28 17:23:23', 'New', 'Unread'),
(7, 220466, 1, 'The Vinta 2016', '2018-03-17', '0000-00-00', 'Mildred', 'Holy Cross of Hagonoy', 'Girly', 5, 'final go for print na feb first week 2018', '2018-07-28', 6, 6, 'Girly', '94', 83, 1, 0, 0, 0, 0, 1, '2018-07-28 17:25:49', 'New', 'Unread'),
(8, 224172, 1, '', '2018-02-07', '0000-00-00', 'Leonela', 'UM PeÃ±aplata College', 'Mae', 9, '2nd Proof corrections', '2018-07-28', 4, 4, 'Mae', '80', 64, 1, 0, 0, 0, 0, 2, '2018-07-28 17:26:59', 'New', 'Unread'),
(9, 220497, 1, 'Footprints 2017', '2018-03-28', '0000-00-00', 'Mildred', 'St. Vincent De Paul College', 'Carla', 5, 'For first run for final proof 2/15/18 go for print na', '2018-07-28', 6, 6, 'Carla', '80', 110, 1, 0, 0, 0, 0, 1, '2018-07-28 17:28:00', 'New', 'Unread'),
(10, 172775, 1, 'Memento 2009', '2018-03-08', '0000-00-00', 'April', 'Brokenshire College Gensan', 'Banny', 5, 'for impose 1/24/18', '2018-07-28', 6, 6, 'Banny', '300', 105, 1, 0, 0, 0, 0, 1, '2018-07-28 17:29:45', 'New', 'Unread'),
(11, 224179, 1, 'The Eternal Spring 2018', '2018-05-17', '0000-00-00', 'Mildred', 'Jose T. Quiboloy NHS', 'Luz', 8, '', '2018-07-28', 4, 4, 'Luz', '40', 33, 1, 0, 0, 0, 0, 2, '2018-07-28 17:31:38', 'New', 'Unread'),
(12, 220466, 1, 'a', '2018-03-29', '0000-00-00', 'Mildred', 'Holy Cross of Davao College Basic Ed Dept ', 'Luz', 5, 'na out na siya march last week 2018 tent. Out na  4/13/18', '2018-07-28', 6, 6, 'Luz', '434', 700, 1, 0, 0, 0, 0, 1, '2018-07-28 17:33:06', 'New', 'Unread'),
(13, 224200, 1, 'CATALYST 2018', '2018-06-02', '0000-00-00', 'Mildred', 'North Davao College', 'Francis', 2, '', '2018-07-28', 4, 4, 'Francis', '120', 190, 1, 0, 0, 0, 0, 2, '2018-07-28 17:34:00', 'New', 'Unread'),
(14, 217089, 1, 'Memoirs 2015', '2018-03-13', '0000-00-00', 'Ben', 'AR Pacheco College', 'Tine', 5, 'For final editing sa final proof 2/15/18 go for print na', '2018-07-28', 6, 6, 'Tine', '110', 160, 1, 0, 0, 0, 0, 1, '2018-07-28 17:36:22', 'New', 'Unread'),
(15, 227851, 1, 'HSCIANS 2016', '2018-06-02', '0000-00-00', 'Marta', 'Hinatuan Southern College', 'Mae', 2, '', '2018-07-28', 4, 4, 'Mae', '100', 65, 1, 0, 0, 0, 0, 2, '2018-07-28 17:36:46', 'New', 'Unread'),
(16, 225017, 23, 'Acknowledgement', '2017-12-04', '0000-00-00', 'Lanie', 'Millennium -Aparri', 'Luz', 5, '', '2018-07-28', 5, 5, '', '2ply', 5, 2, 50, 1, 2, 1, 1, '2018-07-28 17:39:03', 'New', 'Unread'),
(17, 227842, 16, '', '2018-06-29', '2018-08-19', 'LCT', 'BRAC PHIL', 'Edrian', 2, '', '2018-07-28', 4, 4, 'Edrian', '25', 25, 1, 0, 0, 0, 0, 2, '2018-07-28 17:42:43', 'New', 'Unread'),
(18, 209335, 1, 'Doves Quill 2015', '2018-03-10', '0000-00-00', 'Office', 'Holy Trinity 2015', 'Mark', 5, 'For final proof reading go for print 2/26/18', '2018-07-28', 6, 6, 'Mark', '400', 780, 1, 0, 0, 0, 0, 1, '2018-07-28 17:44:15', 'New', 'Unread'),
(19, 225014, 23, 'Official', '2017-12-04', '0000-00-00', 'Lanie', 'Millennium -Toril', 'Luz', 5, '', '2018-07-28', 5, 5, '', '2ply', 5, 2, 50, 1, 2, 1, 1, '2018-07-28 17:45:04', 'New', 'Unread'),
(20, 227826, 22, '', '2018-06-26', '2018-08-10', 'LCT', 'Davao City Water District', 'Peejay', 2, '', '2018-07-28', 4, 4, 'Peejay', '1 Side print', 220000, 4, 0, 0, 0, 0, 2, '2018-07-28 17:46:35', 'New', 'Unread'),
(21, 209345, 1, 'Darangen 2014', '2018-03-23', '0000-00-00', 'Marta', 'Mindanao State University', 'Mark', 5, 'for print na 3/6/18', '2018-07-28', 6, 6, 'Mark', '400', 2900, 1, 0, 0, 0, 0, 1, '2018-07-28 17:46:44', 'New', 'Unread'),
(22, 220461, 1, 'The Potter 2012', '2018-03-01', '0000-00-00', 'April', 'Immanuel School of Davao', 'Tine', 5, 'for final corrections w/ go for print approval 3/5/18', '2018-07-28', 6, 6, '220461', '50', 83, 1, 0, 0, 0, 0, 1, '2018-07-28 17:50:18', 'New', 'Unread'),
(23, 227662, 4, '', '2018-06-26', '0000-00-00', '', 'HIJOS DE DAVAO', '', 7, '', '2018-07-28', 4, 4, '', '48', 140, 1, 0, 0, 0, 0, 2, '2018-07-28 17:52:10', 'New', 'Unread'),
(24, 220476, 1, 'Pacesetter 2013', '2018-03-04', '0000-00-00', 'Tony', 'Surigao del Sur State University-Tandag', 'PJ', 5, 'go for print 2/23/18', '2018-07-28', 6, 6, 'PJ', '220', 675, 1, 0, 0, 0, 0, 1, '2018-07-28 17:53:49', 'New', 'Unread'),
(25, 226741, 13, '', '2018-05-03', '0000-00-00', 'Mildred', 'ComVal', 'Edrian', 8, 'Return 1st proof', '2018-07-28', 4, 4, 'Edrian', '20', 2500, 0, 0, 0, 0, 0, 2, '2018-07-28 17:56:23', 'New', 'Unread'),
(26, 192096, 1, 'The Crown 2012', '2018-03-01', '0000-00-00', 'Lanie', 'Maryknoll Academy of Cateel', 'Banny', 5, 'final with go for print ap. 4/18/18', '2018-07-28', 6, 6, 'Banny', '150', 130, 1, 0, 0, 0, 0, 1, '2018-07-28 18:05:05', 'New', 'Unread'),
(27, 224152, 1, 'The Key 2017', '2018-03-18', '0000-00-00', 'Lanie', 'St. Benedict College of Cotabato 2017', 'Carla', 5, 'final go for print na 4/6/18 for proof', '2018-07-28', 6, 6, 'Carla', '150', 154, 1, 0, 0, 0, 0, 1, '2018-07-28 18:07:49', 'New', 'Unread'),
(28, 220473, 1, 'VOX IBED 2017', '2018-03-07', '0000-00-00', 'Office', 'NDDU-IBED', 'Banny', 5, 'Final w/ go for print ap. 4/6/18', '2018-07-28', 6, 6, 'Banny', '330', 499, 1, 0, 0, 0, 0, 1, '2018-07-28 18:09:59', 'New', 'Unread'),
(29, 209341, 1, 'The Pages 2015', '2018-03-09', '0000-00-00', 'April', 'Xavier University Grade School', 'Edrian ', 5, 'plate na for print na jud 5/12/18', '2018-07-28', 6, 6, 'Edrian', '320', 630, 1, 0, 0, 0, 0, 1, '2018-07-28 18:12:01', 'New', 'Unread'),
(30, 202908, 1, 'The Torch 2017', '2018-03-03', '0000-00-00', 'Office', 'Central Mindanao Colleges ', 'Louie', 5, 'approved for printing 5/15/18', '2018-07-28', 6, 6, 'Louie', '184', 320, 1, 0, 0, 0, 0, 1, '2018-07-28 18:14:08', 'New', 'Unread'),
(31, 204428, 1, 'Metamorphosis 2012', '2018-03-15', '0000-00-00', 'Mildred', 'Holy Child College of Davao', 'Banny', 5, 'Go for print na siya 5/23/18', '2018-07-28', 6, 6, 'Banny', '74', 110, 1, 0, 0, 0, 0, 1, '2018-07-28 18:15:59', 'New', 'Unread'),
(32, 155691, 1, 'The Lamp 2007', '2007-12-20', '0000-00-00', 'Office', 'Sultan Kudarat Educ. Ins. ', 'Banny', 3, 'Proof to customer/ No communication', '2018-07-28', 6, 6, 'Banny', '100', 70, 1, 0, 0, 0, 0, 2, '2018-07-28 18:22:05', 'New', 'Unread'),
(33, 128465, 1, '2003', '2007-06-20', '2018-08-01', 'Cebu', 'Cebu Doctors College', 'Randel', 3, 'No communication to customer', '2018-07-28', 6, 6, 'Randel', '120', 105, 1, 0, 0, 0, 0, 2, '2018-07-28 18:25:55', 'New', 'Unread');

-- --------------------------------------------------------

--
-- Table structure for table `jobbings_kinds`
--

CREATE TABLE `jobbings_kinds` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `kind_of_job` text NOT NULL,
  `added_by` int(11) NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobbings_kinds`
--

INSERT INTO `jobbings_kinds` (`id`, `type`, `kind_of_job`, `added_by`, `date_modified`) VALUES
(1, 1, 'Yearbook', 2, '2018-07-27 23:23:56'),
(2, 3, 'Yearbook Repair', 2, '2018-07-27 23:26:29'),
(3, 3, 'Newletter', 2, '2018-07-27 23:26:41'),
(4, 3, 'Souvenir Program', 2, '2018-07-27 23:27:08'),
(5, 3, 'Book', 2, '2018-07-27 23:32:40'),
(6, 3, 'Employees Handbook', 2, '2018-07-27 23:28:01'),
(7, 3, 'Masonic Directories', 2, '2018-07-27 23:28:22'),
(8, 3, 'Handbook', 2, '2018-07-27 23:28:37'),
(9, 3, 'Company Manual', 2, '2018-07-27 23:29:00'),
(10, 3, 'Booklet', 2, '2018-07-27 23:29:11'),
(11, 3, 'Tabloid', 2, '2018-07-27 23:30:14'),
(12, 3, 'Bulletin', 2, '2018-07-27 23:30:26'),
(13, 3, 'Magazine', 2, '2018-07-27 23:30:39'),
(14, 3, 'Poster', 2, '2018-07-27 23:30:57'),
(15, 3, 'Planner', 2, '2018-07-27 23:31:18'),
(16, 3, 'Annual Report', 2, '2018-07-27 23:31:49'),
(18, 3, 'Notebook', 2, '2018-07-28 01:08:52'),
(20, 3, 'Journal', 2, '2018-07-27 23:35:20'),
(21, 3, 'Manual', 2, '2018-07-27 23:35:47'),
(22, 3, 'Flyers', 2, '2018-07-27 23:36:24'),
(23, 2, 'Receipt', 3, '2018-07-28 02:50:51'),
(25, 2, 'Sticker', 3, '2018-07-28 02:36:12'),
(26, 2, 'Calendar', 3, '2018-07-28 02:22:08'),
(28, 2, 'Planner (Small)', 3, '2018-07-27 23:40:07'),
(31, 2, 'Soli', 3, '2018-07-27 23:41:08'),
(41, 2, 'Stampita', 3, '2018-07-27 23:48:32'),
(42, 2, 'Tarpulin', 3, '2018-07-27 23:48:57'),
(43, 2, 'Foot Model Guides', 3, '2018-07-27 23:49:11'),
(44, 2, 'Invoice', 3, '2018-07-28 01:22:05'),
(45, 2, 'Memo Pad', 3, '2018-07-27 23:49:37'),
(46, 2, 'Map', 3, '2018-07-27 23:49:58'),
(47, 2, 'Brochure', 3, '2018-07-27 23:50:12'),
(49, 2, 'Letter Head', 3, '2018-07-27 23:50:43'),
(51, 2, 'Stamping', 3, '2018-07-28 02:09:38'),
(52, 2, 'Ticket', 3, '2018-07-27 23:52:16'),
(53, 2, 'Poster', 3, '2018-07-27 23:52:31'),
(55, 2, 'Log Book', 3, '2018-07-27 23:53:22'),
(56, 2, 'Certificate Document', 3, '2018-07-28 01:59:55'),
(60, 2, 'Labels', 3, '2018-07-27 23:54:57'),
(61, 2, 'Tariff', 3, '2018-07-27 23:55:37'),
(63, 2, 'Diploma', 3, '2018-07-27 23:56:06'),
(64, 2, 'Envelope', 3, '2018-07-27 23:56:23'),
(65, 2, 'Bookmarks', 3, '2018-07-27 23:58:47'),
(66, 2, 'Flyers', 3, '2018-07-27 23:59:03'),
(67, 2, 'Coupon', 3, '2018-07-27 23:59:17'),
(68, 2, 'Agreement Document', 3, '2018-07-28 02:40:57'),
(71, 2, 'Invitation', 3, '2018-07-28 00:00:29'),
(72, 2, 'Sample Number', 3, '2018-07-28 00:00:43'),
(74, 2, 'T.O.R', 3, '2018-07-28 00:01:13'),
(75, 2, 'Notepad', 3, '2018-07-28 00:01:33'),
(76, 2, 'Gift Certificate', 3, '2018-07-28 00:01:49'),
(77, 2, 'Voucher', 3, '2018-07-28 02:51:04'),
(78, 2, 'Profile Cover', 3, '2018-07-28 00:02:39'),
(80, 2, 'Application Document', 3, '2018-07-28 01:58:59'),
(81, 2, 'Deposit Profile', 3, '2018-07-28 00:04:20'),
(82, 2, 'Form', 3, '2018-07-28 02:50:30'),
(90, 2, 'Checklist', 3, '2018-07-28 00:08:35'),
(91, 2, 'Notice Documents', 3, '2018-07-28 02:18:42'),
(92, 2, 'Catalogue', 3, '2018-07-28 00:09:50'),
(94, 2, 'Leaflets', 3, '2018-07-28 00:10:20'),
(95, 2, 'Programme', 3, '2018-07-28 00:10:35'),
(96, 2, 'Wrapper', 3, '2018-07-28 00:10:53'),
(97, 2, 'Stub', 3, '2018-07-28 01:25:29'),
(100, 2, 'Resolution of Condolence', 3, '2018-07-28 00:13:18'),
(101, 2, 'Notebook', 3, '2018-07-28 00:15:57'),
(104, 2, 'Authorization Document', 3, '2018-07-28 02:40:13'),
(106, 2, 'Kilometer Reading', 3, '2018-07-28 00:17:18'),
(108, 2, 'Job Order', 3, '2018-07-28 00:18:11'),
(110, 2, 'Ballot', 3, '2018-07-28 02:32:29'),
(112, 2, 'Card ', 3, '2018-07-28 00:19:38'),
(114, 2, 'User Guide', 3, '2018-07-28 00:20:05'),
(115, 2, 'Cover Printing', 3, '2018-07-28 00:20:20'),
(118, 2, 'Case', 3, '2018-07-28 00:22:15'),
(122, 2, 'Statement Document', 3, '2018-07-28 02:06:21'),
(127, 2, 'Contract Document', 3, '2018-07-28 02:00:32'),
(128, 2, 'Set Letter', 3, '2018-07-28 00:25:29'),
(130, 2, 'Passbook', 3, '2018-07-28 00:26:04'),
(131, 2, 'Sample Print', 3, '2018-07-28 00:26:16'),
(132, 2, 'Kraft Paper', 3, '2018-07-28 00:26:29'),
(133, 2, 'Casing', 3, '2018-07-28 01:09:43'),
(136, 2, 'Thumbnails', 3, '2018-07-28 00:27:35'),
(140, 2, 'Pad', 3, '2018-07-28 00:28:40'),
(141, 2, 'Holder', 3, '2018-07-28 00:28:52'),
(142, 2, 'Medical Case Review', 3, '2018-07-28 00:29:11'),
(143, 2, 'List', 3, '2018-07-28 00:29:22'),
(144, 2, 'Food Order', 3, '2018-07-28 00:29:54'),
(145, 2, 'Bulletin', 3, '2018-07-28 00:30:43'),
(146, 2, 'Investment Portfolio', 3, '2018-07-28 00:31:02'),
(148, 2, 'Hardbound', 3, '2018-07-28 00:31:35'),
(149, 2, 'Primer', 3, '2018-07-28 00:32:22'),
(150, 2, 'Yearbook Repair (Small)', 3, '2018-07-28 00:32:49'),
(151, 2, 'Sign', 3, '2018-07-28 00:33:02'),
(152, 2, 'Picture Scanning', 3, '2018-07-28 00:33:23'),
(153, 2, 'Kit', 3, '2018-07-28 00:33:45'),
(154, 2, 'Fund Replenishment', 3, '2018-07-28 00:34:25'),
(155, 2, 'Bill', 3, '2018-07-28 00:35:05'),
(156, 2, 'S.O.A', 3, '2018-07-28 00:35:18'),
(157, 2, 'Diecutting', 3, '2018-07-28 00:35:31'),
(159, 2, 'Slip', 3, '2018-07-28 01:25:46'),
(160, 2, 'Flag', 3, '2018-07-28 00:36:33'),
(161, 2, 'Printing', 3, '2018-07-28 00:36:44'),
(162, 2, 'Shirt Prints', 3, '2018-07-28 00:37:00'),
(163, 2, 'Charts', 3, '2018-07-28 00:37:12'),
(164, 2, 'Template', 3, '2018-07-28 00:37:24'),
(167, 2, 'Cheque', 3, '2018-07-28 00:38:48'),
(168, 2, 'Box', 3, '2018-07-28 00:43:55'),
(170, 2, 'Workbook', 3, '2018-07-28 00:44:25'),
(171, 2, 'Boards', 3, '2018-07-28 00:44:47'),
(176, 2, 'Bookbinding', 3, '2018-07-28 00:46:04'),
(179, 2, 'Loose Leaf', 3, '2018-07-28 00:47:10'),
(181, 2, 'Sheet', 3, '2018-07-28 02:13:52'),
(182, 2, 'Folder', 3, '2018-07-28 00:47:58'),
(183, 2, 'Standie', 3, '2018-07-28 00:48:08'),
(184, 2, 'Menu', 3, '2018-07-28 00:48:22'),
(185, 2, 'Bib Insert', 3, '2018-07-28 00:48:48'),
(186, 2, 'Pass', 3, '2018-07-28 01:26:53'),
(190, 2, 'Report', 3, '2018-07-28 01:23:00'),
(192, 2, 'Record', 3, '2018-07-28 01:55:14'),
(193, 2, 'Awards', 3, '2018-07-28 00:55:12'),
(195, 2, 'Memo', 3, '2018-07-28 00:55:37'),
(196, 2, 'Deed Document', 3, '2018-07-28 02:01:02'),
(201, 2, 'Tag', 3, '2018-07-28 00:57:54'),
(203, 2, 'Infographics', 3, '2018-07-28 00:58:27'),
(204, 2, 'Pocket Book', 3, '2018-07-28 00:58:44'),
(205, 2, 'Manual', 3, '2018-07-28 00:59:04'),
(208, 2, 'Paper Bag', 3, '2018-07-28 01:01:49'),
(209, 2, 'ATP', 3, '2018-07-28 01:20:56'),
(210, 2, 'Handbills', 2, '2018-07-28 02:35:25'),
(211, 2, 'I.D.', 3, '2018-07-28 02:39:45'),
(212, 2, 'Hat Fan', 3, '2018-07-28 02:48:43'),
(213, 2, 'Bantings', 3, '2018-07-28 02:48:53'),
(215, 1, '(Others- Please specify on the description)', 3, '2018-07-28 03:07:45'),
(216, 3, '(Others- Please specify on the description)', 3, '2018-07-28 03:08:05'),
(217, 2, '(Others- Please specify on the description)', 3, '2018-07-28 03:07:56');

-- --------------------------------------------------------

--
-- Table structure for table `jobbings_payment`
--

CREATE TABLE `jobbings_payment` (
  `id` int(11) NOT NULL,
  `payment` text NOT NULL,
  `added_by` int(11) NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobbings_payment`
--

INSERT INTO `jobbings_payment` (`id`, `payment`, `added_by`, `date_modified`) VALUES
(1, 'Full', 1, '2018-07-20 07:54:39'),
(2, 'Partial', 1, '2018-07-20 07:54:39');

-- --------------------------------------------------------

--
-- Table structure for table `jobbings_status`
--

CREATE TABLE `jobbings_status` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `copies` int(11) NOT NULL,
  `units` int(11) NOT NULL,
  `payment` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `status_date` date NOT NULL,
  `due_date` date NOT NULL,
  `updated_by` int(11) NOT NULL,
  `notes` text NOT NULL,
  `raw_file` text NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobbings_status`
--

INSERT INTO `jobbings_status` (`id`, `job_id`, `copies`, `units`, `payment`, `status`, `status_date`, `due_date`, `updated_by`, `notes`, `raw_file`, `date_added`) VALUES
(1, 33, 105, 1, 2, 3, '2018-07-28', '0000-00-00', 0, 'No communication to customer', '', '2018-07-31 05:31:56'),
(2, 17, 25, 1, 2, 2, '2018-07-28', '0000-00-00', 0, '', '', '2018-07-31 05:32:42'),
(3, 17, 25, 1, 2, 2, '2018-07-28', '2018-08-21', 0, '', '', '2018-07-31 05:33:38'),
(4, 20, 220000, 4, 2, 2, '2018-07-28', '0000-00-00', 0, '', '', '2018-07-31 05:34:39'),
(5, 23, 140, 1, 2, 2, '2018-07-28', '0000-00-00', 0, '', '', '2018-07-31 05:35:12');

-- --------------------------------------------------------

--
-- Table structure for table `jobbings_statuses`
--

CREATE TABLE `jobbings_statuses` (
  `id` int(11) NOT NULL,
  `status_name` text NOT NULL,
  `added_by` int(11) NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobbings_statuses`
--

INSERT INTO `jobbings_statuses` (`id`, `status_name`, `added_by`, `date_modified`) VALUES
(1, 'No Files Yet', 1, '2018-07-20 08:22:51'),
(2, 'Layout', 1, '2018-07-20 08:22:51'),
(3, 'Pending', 1, '2018-07-20 08:22:52'),
(4, 'Go For Print', 1, '2018-07-20 08:22:52'),
(5, 'Out', 1, '2018-07-20 08:22:52'),
(6, 'Impose', 1, '2018-07-20 08:22:52'),
(7, 'Cancelled', 1, '2018-07-20 23:17:30'),
(8, '1st', 1, '2018-07-20 08:22:52'),
(9, '2nd', 1, '2018-07-20 08:22:52'),
(10, 'Final', 1, '2018-07-20 08:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `jobbings_type`
--

CREATE TABLE `jobbings_type` (
  `id` int(11) NOT NULL,
  `job_type` text NOT NULL,
  `added_by` int(11) NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobbings_type`
--

INSERT INTO `jobbings_type` (`id`, `job_type`, `added_by`, `date_modified`) VALUES
(1, 'Big', 1, '2018-07-20 06:32:50'),
(2, 'Small', 1, '2018-07-20 06:32:51'),
(3, 'Big Job (Small)', 1, '2018-07-23 04:46:38');

-- --------------------------------------------------------

--
-- Table structure for table `printing`
--

CREATE TABLE `printing` (
  `id` int(11) NOT NULL,
  `printing` text NOT NULL,
  `added_by` int(11) NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `printing`
--

INSERT INTO `printing` (`id`, `printing`, `added_by`, `date_modified`) VALUES
(1, 'CF', 1, '2018-07-20 08:09:07'),
(2, 'INEO', 3, '2018-07-28 02:43:33'),
(3, 'OFFSET', 3, '2018-07-28 02:43:43'),
(4, 'RISO', 3, '2018-07-28 02:43:51');

-- --------------------------------------------------------

--
-- Table structure for table `printing_colors`
--

CREATE TABLE `printing_colors` (
  `id` int(11) NOT NULL,
  `color` text NOT NULL,
  `added_by` int(11) NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `printing_colors`
--

INSERT INTO `printing_colors` (`id`, `color`, `added_by`, `date_modified`) VALUES
(1, 'Full color', 1, '2018-07-27 23:56:34'),
(2, 'Red/Black', 2, '2018-07-27 23:38:29'),
(3, '4 Colors', 2, '2018-07-27 23:39:26'),
(4, 'Green/Black', 2, '2018-07-27 23:39:15'),
(5, 'Red.Blue/Black', 2, '2018-07-27 23:40:52'),
(6, 'Blue/Cover4', 2, '2018-07-27 23:41:23'),
(7, 'Blue,Red,Black', 2, '2018-07-27 23:41:54'),
(8, 'Dark Blue', 2, '2018-07-27 23:42:11'),
(9, '4 colors front, 1 color back', 2, '2018-07-27 23:43:20'),
(10, 'Blue', 2, '2018-07-27 23:43:35'),
(11, '4 colors front, black color back', 2, '2018-07-27 23:45:21'),
(12, 'Orange', 2, '2018-07-28 00:02:10'),
(13, 'Black, Green, Yellow', 2, '2018-07-27 23:56:46'),
(14, 'Colored', 2, '2018-07-27 23:47:41'),
(15, 'Blue, Green', 2, '2018-07-27 23:48:08'),
(16, '3 colors', 2, '2018-07-27 23:48:39'),
(17, 'Blue, Dark blue,Black', 2, '2018-07-27 23:49:20'),
(18, 'Maroon', 2, '2018-07-27 23:50:10'),
(19, '5 colors', 2, '2018-07-27 23:50:36'),
(20, 'Green & Blue', 2, '2018-07-27 23:51:38'),
(21, 'Black/4', 2, '2018-07-27 23:52:19'),
(22, 'Mochabrown', 2, '2018-07-27 23:52:37'),
(23, 'White background', 2, '2018-07-27 23:53:12'),
(24, 'Golden Yellow background', 2, '2018-07-27 23:53:38'),
(25, 'Brown', 2, '2018-07-27 23:54:01'),
(26, 'F-4/Ins-black', 2, '2018-07-27 23:54:30'),
(27, '4 colors w/slide', 2, '2018-07-27 23:57:30'),
(28, 'Magenta,Green', 2, '2018-07-27 23:57:54'),
(29, 'Magenta,Green,Black', 2, '2018-07-27 23:58:29'),
(30, 'Black, Yellow', 2, '2018-07-27 23:58:51'),
(31, 'F-4colors/B-Black', 2, '2018-07-27 23:59:19'),
(32, 'Maroon, Grey', 2, '2018-07-28 00:00:51'),
(33, 'Cyan, Black', 2, '2018-07-28 00:01:09'),
(34, 'Blue/Black', 2, '2018-07-28 00:01:34'),
(35, 'Black, Yellow, Orange', 2, '2018-07-28 00:01:51'),
(36, 'Green', 2, '2018-07-28 00:02:24'),
(37, 'Gold Stamp', 2, '2018-07-28 00:03:35'),
(38, 'Purple', 2, '2018-07-28 00:03:54'),
(39, 'Red & Black', 2, '2018-07-28 00:05:05'),
(40, 'Gold', 2, '2018-07-28 00:05:29'),
(41, 'F-red,blue/B-blue', 2, '2018-07-28 00:05:54'),
(42, 'Gold,Green', 2, '2018-07-28 00:06:52'),
(43, 'Black,Gold,Yellow', 2, '2018-07-28 00:08:02'),
(44, 'Violet', 2, '2018-07-28 00:08:16'),
(45, 'Black,Cyan', 2, '2018-07-28 00:08:52'),
(46, 'Black,Orange,Yellow', 2, '2018-07-28 01:00:53'),
(47, 'Black,  Orange,Yellow,Green', 2, '2018-07-28 01:02:18'),
(48, 'Red,Yellow,Blue', 2, '2018-07-28 01:04:04'),
(49, 'Yellow, Blue', 2, '2018-07-28 01:09:51'),
(50, 'Black', 1, '2018-07-28 08:49:55');

-- --------------------------------------------------------

--
-- Table structure for table `printing_materials`
--

CREATE TABLE `printing_materials` (
  `id` int(11) NOT NULL,
  `materials` text NOT NULL,
  `added_by` int(11) NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `printing_materials`
--

INSERT INTO `printing_materials` (`id`, `materials`, `added_by`, `date_modified`) VALUES
(1, 'Carbonless White', 1, '2018-07-20 06:58:31'),
(2, 'c2s 140', 2, '2018-07-28 01:12:32'),
(3, 'Satin', 2, '2018-07-28 01:13:22'),
(4, 'FC15/ with UV', 2, '2018-07-28 01:13:57'),
(5, 'Conq. Becket', 2, '2018-07-28 01:53:03'),
(6, 'Hardbound w/ Stamping paper cloth-back', 2, '2018-07-28 01:53:54'),
(7, 'Bw,Bp,Bg', 2, '2018-07-28 01:54:14'),
(8, 'Bw,Bp,By', 2, '2018-07-28 01:54:46'),
(9, 'Bw,Bp,Bp', 2, '2018-07-28 01:55:01'),
(10, 'Black,Y,O', 2, '2018-07-28 01:55:18'),
(11, 'Bw,Bb', 2, '2018-07-28 01:55:29'),
(12, 'c2s 220', 2, '2018-07-28 01:56:09'),
(13, 'Kk 198/cs280', 2, '2018-07-28 01:56:24'),
(14, 'Bw, Osy,Osb,Osp', 2, '2018-07-28 01:56:41'),
(15, 'c2s80', 2, '2018-07-28 01:57:09'),
(16, 'c2s 120', 2, '2018-07-28 01:57:27'),
(17, 'Bw,Bg,By', 2, '2018-07-28 01:57:52'),
(18, 'Newsprint', 2, '2018-07-28 02:25:57'),
(19, 'FC15/UV coated pasting diecut', 2, '2018-07-28 01:58:39'),
(20, 'Tarp', 2, '2018-07-28 01:59:35'),
(21, 'KK189', 2, '2018-07-28 01:59:51'),
(22, 'Matt80', 2, '2018-07-28 02:00:02'),
(23, 'Bw,By,Bb', 2, '2018-07-28 02:00:40'),
(24, 'Bk 50', 2, '2018-07-28 02:00:55'),
(25, 'c2s 170', 2, '2018-07-28 02:01:15'),
(26, 'Bk 60', 2, '2018-07-28 02:02:00'),
(27, 'c2s 200', 2, '2018-07-28 02:04:11'),
(28, 'Bw,Bb,By', 2, '2018-07-28 02:05:07'),
(29, 'Retaso', 2, '2018-07-28 02:05:24'),
(30, 'Bk50/Hardbound Green', 2, '2018-07-28 02:06:03'),
(31, 'Parchment', 2, '2018-07-28 02:06:13'),
(32, 'c2s60', 2, '2018-07-28 02:06:34'),
(33, 'cbw,cfby,cfp', 2, '2018-07-28 02:07:03'),
(34, 'Bw, Osy, Osg, Osb', 2, '2018-07-28 02:07:29'),
(35, 'Bk 80', 2, '2018-07-28 02:07:44'),
(36, '3xxx', 2, '2018-07-28 02:07:53'),
(37, 'cbw,cfby,cfb', 2, '2018-07-28 02:08:11'),
(38, 'cbw, cfbg, cfp', 2, '2018-07-28 02:08:34'),
(39, 'Vellum 100', 2, '2018-07-28 02:09:18'),
(40, 'cbw,cfy', 2, '2018-07-28 02:09:38'),
(41, 'cbw,cfbb,cfb', 2, '2018-07-28 02:10:03'),
(42, 'ice berg 216', 2, '2018-07-28 02:10:15'),
(43, 'Bk 50 w/Gold Stamp', 2, '2018-07-28 02:10:33'),
(44, 'Npw,Npy', 2, '2018-07-28 02:10:58'),
(45, 'Nivea', 2, '2018-07-28 02:11:12'),
(46, 'bw,osy', 2, '2018-07-28 02:11:33'),
(47, 'Digital Nivea', 2, '2018-07-28 02:12:03'),
(48, 'Thermal', 2, '2018-07-28 02:12:11'),
(49, 'Bw,Tdy', 2, '2018-07-28 02:12:22'),
(50, 'Becket expression candle light', 2, '2018-07-28 02:12:42'),
(51, 'Bk papersub 20', 2, '2018-07-28 02:12:58'),
(52, 'Greaseless paper', 2, '2018-07-28 02:13:09'),
(53, 'Conq. cx22 cream', 2, '2018-07-28 02:13:26'),
(54, 'Cartolina Cherry', 2, '2018-07-28 02:13:46'),
(55, 'Vellum 120', 2, '2018-07-28 02:13:57'),
(56, 'Conq. smoothwoveultrawhite', 2, '2018-07-28 02:14:29'),
(57, 'candlelight', 2, '2018-07-28 02:14:46'),
(58, 'Fc12/Bk50', 2, '2018-07-28 02:15:02'),
(59, 'Cartolina, Npw', 2, '2018-07-28 02:15:18'),
(60, 'Conq. cx22', 2, '2018-07-28 02:15:51'),
(61, 'with Ribbon', 2, '2018-07-28 02:16:01'),
(62, 'Cartolina Pink', 2, '2018-07-28 02:17:24'),
(63, 'Scratch', 2, '2018-07-28 02:17:37'),
(64, 'Carbonless', 2, '2018-07-28 02:18:01'),
(65, 'Carbonless w,p,y', 2, '2018-07-28 02:18:25'),
(66, 'Outdoor', 2, '2018-07-28 02:18:35'),
(67, 'with Jacket', 2, '2018-07-28 02:19:13'),
(68, 'Cover with gold stamp/Bk50 with Ribbon', 2, '2018-07-28 02:19:48'),
(69, 'Cartolina Yellow', 2, '2018-07-28 02:20:28'),
(70, 'Npb, Npb', 2, '2018-07-28 02:20:45'),
(71, 'Conq. smoothcx22cream', 2, '2018-07-28 02:21:15'),
(72, 'Conq. smoothwove', 2, '2018-07-28 02:21:30'),
(73, 'Conq.wove', 2, '2018-07-28 02:22:26'),
(74, 'W/ gold stamping, w/ printing, w/ ribbon,/w/personalised stamping of names', 2, '2018-07-28 02:23:37'),
(75, 'Np white', 2, '2018-07-28 02:25:36'),
(76, 'Bond White', 2, '2018-07-28 02:26:28'),
(77, 'Newsprint w/ padding', 2, '2018-07-28 02:26:44'),
(78, 'w/ control number, w/ uv', 2, '2018-07-28 02:27:01'),
(79, 'Bk 50, bp', 2, '2018-07-28 02:27:15'),
(80, 'Bk 50, by', 2, '2018-07-28 02:27:26'),
(81, 'tagboard', 2, '2018-07-28 02:27:37'),
(82, 'bw,os,os', 2, '2018-07-28 02:28:00'),
(83, '100gsm', 2, '2018-07-28 02:29:13'),
(84, '70gsm', 2, '2018-07-28 02:29:29'),
(85, 'cover fc 10', 2, '2018-07-28 02:29:52'),
(86, 'canon laid power blue 85', 2, '2018-07-28 02:30:12'),
(87, 'Carbonless w,p', 2, '2018-07-28 02:30:25'),
(88, 'Hardbound / Bk80', 2, '2018-07-28 02:30:46'),
(89, 'Special Paper available', 2, '2018-07-28 02:31:12'),
(90, 'Nivea Digital 250', 2, '2018-07-28 02:31:37'),
(91, '(Others- Please specify on the description)', 3, '2018-07-28 03:07:32');

-- --------------------------------------------------------

--
-- Table structure for table `printing_paper_size`
--

CREATE TABLE `printing_paper_size` (
  `id` int(11) NOT NULL,
  `size` text NOT NULL,
  `added_by` int(11) NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `printing_paper_size`
--

INSERT INTO `printing_paper_size` (`id`, `size`, `added_by`, `date_modified`) VALUES
(1, '4x6', 1, '2018-07-20 07:20:43'),
(2, '11x9.5', 1, '2018-07-20 07:20:43'),
(3, '8.5 x 11', 2, '2018-07-28 02:55:38'),
(4, '8.5 x 5.5', 2, '2018-07-28 02:55:49'),
(5, '5.5 x 8.5', 2, '2018-07-28 02:56:04'),
(6, '6 x 9', 2, '2018-07-28 02:57:46'),
(7, '4.375 x 5.5', 2, '2018-07-28 02:58:07'),
(8, '4 x 6', 2, '2018-07-28 02:58:26'),
(9, '12 x 18', 2, '2018-07-28 02:58:33'),
(10, '9 x 12', 2, '2018-07-28 02:58:41'),
(11, '20 x 30', 2, '2018-07-28 02:58:49'),
(12, '8.75 x 11.75', 2, '2018-07-28 02:59:11'),
(13, '8.5 x 12', 2, '2018-07-28 02:59:36'),
(14, '6 x 8.5', 2, '2018-07-28 02:59:59'),
(15, '6 1/2 x 8 1/2', 2, '2018-07-28 03:00:37'),
(16, '(Others- Please specify on the description)', 3, '2018-07-28 03:08:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `status` set('Active','Inactive') NOT NULL DEFAULT 'Inactive',
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `middlename` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `birthdate` date NOT NULL,
  `gender` set('Female','Male') NOT NULL,
  `picture` text NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type`, `status`, `username`, `password`, `email`, `firstname`, `middlename`, `lastname`, `birthdate`, `gender`, `picture`, `date_added`) VALUES
(1, 1, 'Active', 'romalepali', '928387fb61f387cc597b41d0e74e43d5', 'rolleenao07@gmail.com', 'Rolly', 'Lee', 'Linao', '1998-02-25', 'Male', '6815', '2018-07-25 03:09:57'),
(2, 1, 'Active', 'avergara', '2e9867ccf3194aa7192cf63ae15435f2', 'aprilgnvergara@gmail.com', 'April', 'Nalzaro', 'Vergara', '1998-04-19', 'Female', '551417', '2018-07-28 03:02:43'),
(3, 1, 'Active', 'rcagape', '24744d21434ae6550125cee2663d971a', 'rainecagape@gmail.com', 'Raine', 'Gibalay', 'Cagape', '1997-11-16', 'Female', '669855', '2018-07-27 23:33:36'),
(4, 5, 'Active', 'brar2018', 'b5f0ef228098e6c7ffdf7e4c5e2dc1e9', 'brar2018@gmail.com', 'Reyna', 'April', 'Rolly', '2018-06-15', 'Male', 'default', '2018-07-28 03:24:29'),
(5, 4, 'Active', 'srar2018', 'b5f0ef228098e6c7ffdf7e4c5e2dc1e9', 'srar2018@gmail.com', 'Rolly', 'April', 'Reyna', '2018-07-28', 'Female', 'default', '2018-07-28 03:21:43'),
(6, 2, 'Active', 'admin', '5682843dc2bd6beba16a0017ed308d47', 'admin@gmail.com', 'Admin', 'Admin', 'Admin', '2011-11-11', 'Male', 'default', '2018-07-28 04:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `users_privileges`
--

CREATE TABLE `users_privileges` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_privileges`
--

INSERT INTO `users_privileges` (`id`, `name`, `description`, `date_added`) VALUES
(1, 'Support', 'For system support', '2018-07-13 01:30:42'),
(2, 'Administrator', 'For system administration', '2018-07-13 01:30:42'),
(3, 'End User (Default)', 'For low level users', '2018-07-13 01:30:42'),
(4, 'End User (Small)', 'For small jobbing administration', '2018-07-13 01:30:42'),
(5, 'End User (Big)', 'For big jobbing administration', '2018-07-13 01:30:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `copies_units`
--
ALTER TABLE `copies_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobbings`
--
ALTER TABLE `jobbings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobbings_kinds`
--
ALTER TABLE `jobbings_kinds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobbings_payment`
--
ALTER TABLE `jobbings_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobbings_status`
--
ALTER TABLE `jobbings_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobbings_statuses`
--
ALTER TABLE `jobbings_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobbings_type`
--
ALTER TABLE `jobbings_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `printing`
--
ALTER TABLE `printing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `printing_colors`
--
ALTER TABLE `printing_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `printing_materials`
--
ALTER TABLE `printing_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `printing_paper_size`
--
ALTER TABLE `printing_paper_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_privileges`
--
ALTER TABLE `users_privileges`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `copies_units`
--
ALTER TABLE `copies_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobbings`
--
ALTER TABLE `jobbings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `jobbings_kinds`
--
ALTER TABLE `jobbings_kinds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `jobbings_payment`
--
ALTER TABLE `jobbings_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobbings_status`
--
ALTER TABLE `jobbings_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobbings_statuses`
--
ALTER TABLE `jobbings_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobbings_type`
--
ALTER TABLE `jobbings_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `printing`
--
ALTER TABLE `printing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `printing_colors`
--
ALTER TABLE `printing_colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `printing_materials`
--
ALTER TABLE `printing_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `printing_paper_size`
--
ALTER TABLE `printing_paper_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users_privileges`
--
ALTER TABLE `users_privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
