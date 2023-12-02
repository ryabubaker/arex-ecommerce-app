-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2023 at 09:00 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arex`
--
CREATE DATABASE arex;
-- --------------------------------------------------------

--
-- Table structure for table `app_child_ctg`
--

CREATE TABLE `app_child_ctg` (
  `CHILD_CTG_ID` int(11) NOT NULL,
  `CTG_ID` int(11) NOT NULL,
  `SUB_CTG_ID` int(11) NOT NULL,
  `CHILD_NAME` varchar(255) NOT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_child_ctg`
--

INSERT INTO `app_child_ctg` (`CHILD_CTG_ID`, `CTG_ID`, `SUB_CTG_ID`, `CHILD_NAME`, `DESCRIPTION`, `CREATED_AT`, `UPDATED_AT`) VALUES
(42, 1, 1, 'Casual Dresses', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(43, 1, 1, 'Formal Dresses', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(44, 1, 1, 'Party Dresses', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(45, 1, 1, 'Maxi Dresses', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(46, 1, 1, 'Summer Dresses', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(47, 1, 2, 'T-Shirts', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(48, 1, 2, 'Blouses', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(49, 1, 2, 'Sweaters', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(50, 1, 2, 'Tank Tops', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(51, 1, 2, 'Tunics', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(52, 1, 3, 'Jeans', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(53, 1, 3, 'Pants', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(54, 1, 3, 'Skirts', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(55, 1, 3, 'Shorts', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(56, 1, 3, 'Leggings', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(57, 1, 4, 'Jackets', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(58, 1, 4, 'Coats', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(59, 1, 4, 'Blazers', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(60, 1, 4, 'Cardigans', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(61, 1, 4, 'Vests', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(62, 1, 5, 'Yoga Pants', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(63, 1, 5, 'Sports Bras', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(64, 1, 5, 'Workout Tops', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(65, 1, 5, 'Athletic Shoes', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(66, 1, 6, 'Maternity Dresses', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(67, 1, 6, 'Maternity Tops', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(68, 1, 6, 'Maternity Bottoms', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(69, 1, 6, 'Nursing Bras', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(70, 1, 7, 'Handbags', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(71, 1, 7, 'Jewelry', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(72, 1, 7, 'Scarves', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(73, 1, 7, 'Hats', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(74, 1, 7, 'Belts', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(75, 1, 8, 'Bikinis', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(76, 1, 8, 'One-Piece Swimsuits', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(77, 1, 8, 'Cover-Ups', NULL, '2023-09-18 14:19:59', '2023-09-18 14:19:59'),
(110, 2, 9, 'Dress Shirts', NULL, '2023-09-18 14:39:01', '2023-09-18 14:39:01'),
(111, 2, 9, 'Casual Shirts', NULL, '2023-09-18 14:39:01', '2023-09-18 14:39:01'),
(112, 2, 9, 'T-Shirts', NULL, '2023-09-18 14:39:01', '2023-09-18 14:39:01'),
(113, 2, 9, 'Polo Shirts', NULL, '2023-09-18 14:39:01', '2023-09-18 14:39:01'),
(114, 2, 9, 'Henleys', NULL, '2023-09-18 14:39:01', '2023-09-18 14:39:01'),
(115, 2, 10, 'Jeans', NULL, '2023-09-18 14:39:01', '2023-09-18 14:39:01'),
(116, 2, 10, 'Chinos', NULL, '2023-09-18 14:39:01', '2023-09-18 14:39:01'),
(117, 2, 10, 'Shorts', NULL, '2023-09-18 14:39:01', '2023-09-18 14:39:01'),
(118, 2, 10, 'Sweatpants', NULL, '2023-09-18 14:39:01', '2023-09-18 14:39:01'),
(119, 2, 10, 'Cargo Pants', NULL, '2023-09-18 14:39:01', '2023-09-18 14:39:01'),
(120, 2, 11, 'Suits', NULL, '2023-09-18 14:39:02', '2023-09-18 14:39:02'),
(121, 2, 11, 'Blazers', NULL, '2023-09-18 14:39:02', '2023-09-18 14:39:02'),
(122, 2, 11, 'Suit Separates', NULL, '2023-09-18 14:39:02', '2023-09-18 14:39:02'),
(123, 2, 12, 'Jackets', NULL, '2023-09-18 14:39:02', '2023-09-18 14:39:02'),
(124, 2, 12, 'Coats', NULL, '2023-09-18 14:39:02', '2023-09-18 14:39:02'),
(125, 2, 12, 'Windbreakers', NULL, '2023-09-18 14:39:02', '2023-09-18 14:39:02'),
(126, 2, 12, 'Bomber Jackets', NULL, '2023-09-18 14:39:02', '2023-09-18 14:39:02'),
(127, 2, 12, 'Leather Jackets', NULL, '2023-09-18 14:39:02', '2023-09-18 14:39:02'),
(128, 2, 13, 'Athletic Shorts', NULL, '2023-09-18 14:39:03', '2023-09-18 14:39:03'),
(129, 2, 13, 'Workout Tops', NULL, '2023-09-18 14:39:03', '2023-09-18 14:39:03'),
(130, 2, 13, 'Sportswear', NULL, '2023-09-18 14:39:03', '2023-09-18 14:39:03'),
(131, 2, 13, 'Running Shoes', NULL, '2023-09-18 14:39:03', '2023-09-18 14:39:03'),
(132, 2, 14, 'Boxer Briefs', NULL, '2023-09-18 14:39:03', '2023-09-18 14:39:03'),
(133, 2, 14, 'Briefs', NULL, '2023-09-18 14:39:03', '2023-09-18 14:39:03'),
(134, 2, 14, 'Boxers', NULL, '2023-09-18 14:39:03', '2023-09-18 14:39:03'),
(135, 2, 14, 'Undershirts', NULL, '2023-09-18 14:39:03', '2023-09-18 14:39:03'),
(136, 2, 14, 'Socks', NULL, '2023-09-18 14:39:03', '2023-09-18 14:39:03'),
(137, 2, 15, 'Ties', NULL, '2023-09-18 14:39:03', '2023-09-18 14:39:03'),
(138, 2, 15, 'Belts', NULL, '2023-09-18 14:39:03', '2023-09-18 14:39:03'),
(139, 2, 15, 'Cufflinks', NULL, '2023-09-18 14:39:03', '2023-09-18 14:39:03'),
(140, 2, 15, 'Hats', NULL, '2023-09-18 14:39:03', '2023-09-18 14:39:03'),
(141, 2, 15, 'Wallets', NULL, '2023-09-18 14:39:03', '2023-09-18 14:39:03'),
(142, 3, 16, 'Tops', NULL, '2023-09-18 15:19:24', '2023-09-18 15:19:24'),
(143, 3, 16, 'Bottoms', NULL, '2023-09-18 15:19:24', '2023-09-18 15:19:24'),
(144, 3, 16, 'Outerwear', NULL, '2023-09-18 15:19:24', '2023-09-18 15:19:24'),
(145, 3, 16, 'Sleepwear', NULL, '2023-09-18 15:19:24', '2023-09-18 15:19:24'),
(146, 3, 16, 'Accessories', NULL, '2023-09-18 15:19:24', '2023-09-18 15:19:24'),
(147, 3, 17, 'Dresses', NULL, '2023-09-18 15:19:25', '2023-09-18 15:19:25'),
(148, 3, 17, 'Tops', NULL, '2023-09-18 15:19:25', '2023-09-18 15:19:25'),
(149, 3, 17, 'Bottoms', NULL, '2023-09-18 15:19:25', '2023-09-18 15:19:25'),
(150, 3, 17, 'Outerwear', NULL, '2023-09-18 15:19:25', '2023-09-18 15:19:25'),
(151, 3, 17, 'Sleepwear', NULL, '2023-09-18 15:19:25', '2023-09-18 15:19:25'),
(152, 3, 17, 'Accessories', NULL, '2023-09-18 15:19:25', '2023-09-18 15:19:25'),
(153, 3, 18, 'Onesies', NULL, '2023-09-18 15:19:25', '2023-09-18 15:19:25'),
(154, 3, 18, 'Baby Sets', NULL, '2023-09-18 15:19:25', '2023-09-18 15:19:25'),
(155, 3, 18, 'Baby Sleepers', NULL, '2023-09-18 15:19:25', '2023-09-18 15:19:25'),
(156, 3, 18, 'Baby Outerwear', NULL, '2023-09-18 15:19:25', '2023-09-18 15:19:25'),
(157, 3, 18, 'Baby Accessories', NULL, '2023-09-18 15:19:25', '2023-09-18 15:19:25');

-- --------------------------------------------------------

--
-- Table structure for table `app_ctg`
--

CREATE TABLE `app_ctg` (
  `CTG_ID` int(11) NOT NULL,
  `CTG_NAME` varchar(255) NOT NULL,
  `IMG` longblob NOT NULL,
  `STATUS` tinyint(1) NOT NULL DEFAULT 1,
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_ctg`
--

INSERT INTO `app_ctg` (`CTG_ID`, `CTG_NAME`, `IMG`, `STATUS`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'Women\'s Clothing', '', 1, '2023-09-18 13:58:38', '2023-09-18 13:58:38'),
(2, 'Men\'s Clothing', '', 1, '2023-09-18 13:58:38', '2023-09-18 13:58:38'),
(3, 'Children\'s Clothing', '', 1, '2023-09-18 13:58:38', '2023-09-18 13:58:38'),
(4, 'Footwear', '', 1, '2023-09-18 13:58:38', '2023-09-18 13:58:38');

-- --------------------------------------------------------

--
-- Table structure for table `app_eventlog`
--

CREATE TABLE `app_eventlog` (
  `EVL_ID` int(11) NOT NULL,
  `EVL_EVTCODE` varchar(20) NOT NULL,
  `EVL_USERID` int(11) NOT NULL,
  `EVL_FULLNAME` varchar(200) DEFAULT NULL,
  `EVL_ACTIVITIES` text NOT NULL,
  `EVL_IP` varchar(40) DEFAULT NULL,
  `EVL_SESSION_ID` varchar(100) DEFAULT NULL,
  `EVL_BROWSER` varchar(255) DEFAULT NULL,
  `EVL_RAW` text DEFAULT NULL,
  `EVL_INPUTEDDATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `EVL_COMPCODE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_init`
--

CREATE TABLE `app_init` (
  `INIT_ID` int(11) NOT NULL,
  `INIT_USRCODE` varchar(255) DEFAULT NULL,
  `INIT_APIKEY` varchar(255) DEFAULT NULL,
  `INIT_CIPHER` varchar(20) NOT NULL,
  `INIT_DATE_ADDED` datetime DEFAULT NULL,
  `INIT_STATUS` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '0 IS DELETED, 1 IS NOT REGISTERED, 2 IS REGISTERED'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_init`
--

INSERT INTO `app_init` (`INIT_ID`, `INIT_USRCODE`, `INIT_APIKEY`, `INIT_CIPHER`, `INIT_DATE_ADDED`, `INIT_STATUS`) VALUES
(1, 'INIT65086ab220d5a', '4476433361527a6a594f5577474954685a4237664e6b4c57583967317956717041756e6f736d644b504d4a363574306278657263536c3451383245484669', '', '2023-09-18 15:18:09', '1'),
(2, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EH19Nxb3WRmWc', '2023-09-18 15:13:09', '2'),
(3, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', '', '2023-09-18 20:57:09', '2'),
(4, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EHmL/msjI9uqE', '2023-09-18 20:46:09', '2'),
(5, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', '', '2023-09-18 20:49:09', '2'),
(6, 'INIT65097610a5bb9', '435276593878487a56506a44307554724f66476c6731416e394e64464b6533367374683470586b495163354d454a61627755324c6f7942376d715369575a', '', '2023-09-19 10:04:09', '1'),
(7, 'INIT65097621890ee', '72415a6977436b6f4f4b647046526358514455616e75787434507345304d3168594e574767363842715339324948794c666a6d56624a356c3754657a7633', '', '2023-09-19 10:21:09', '1'),
(8, 'INIT6509773ce763f', '4430516d574a4575433765663853776e557a3662644b54566849527473504e6a313533415863715a345978696f3948464d4267703247764f72616c6b794c', '', '2023-09-19 10:04:09', '1'),
(9, 'INIT650977b7c6eae', '4a7a666e5a595269324570654b6f434d495741394f58364e54784c79376b503031615577746a736356486c6d673534446238535146476876714275647233', '', '2023-09-19 10:07:09', '1'),
(10, 'INIT650977de65fab', '337157734e4766516750536f38644f437a786c445848564d757276694b364a37776854623135616a414c6d553979704645494259525a656e6b7434633230', '', '2023-09-19 10:46:09', '1'),
(11, 'INIT650977e633f09', '4a6f6664686c6b764251674b577552305873493874314e727150417a4d535661366e54484455776362785a37474f3270463343656a355945396d6979344c', '', '2023-09-19 10:54:09', '1'),
(12, 'COL0000000003', '486c6a6f374935774d3166586954364c535672716d683343705a4f554e305741477432736362345067614659754b3865646e765178794a7a4452456b3942', 'EHa5FlKycXagc', '2023-09-19 10:25:09', '2'),
(13, 'COL0000000005', '575a6c3163356d643441524e4f6256794342547a6e394a5044536667304671653237746a4b387048596f5836773368697275784745766b5155734d4c6149', '', '2023-09-19 10:41:09', '2'),
(14, 'INIT650978efa8a36', '4e6d684d504931784867436e5a534a35734b33476a36574f6f446930614676744537516658527955547a6b63324c56727542703964597738656c41347162', '', '2023-09-19 10:19:09', '1'),
(15, 'COL0000000003', '486c6a6f374935774d3166586954364c535672716d683343705a4f554e305741477432736362345067614659754b3865646e765178794a7a4452456b3942', 'EHdnJJ94kK8NY', '2023-09-19 10:09:09', '2'),
(16, 'INIT65097d2118b06', '6d4b6a354f4e645236636670614a455547425478506e3873566932673365306c6f4c515a77686b3753487662577944343174464d417a7243394975597158', '', '2023-09-19 10:13:09', '1'),
(17, 'COL0000000003', '486c6a6f374935774d3166586954364c535672716d683343705a4f554e305741477432736362345067614659754b3865646e765178794a7a4452456b3942', 'EH1d/m65yBDTw', '2023-09-19 16:06:09', '2'),
(18, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EHn2vCFSWE4zo', '2023-09-21 23:46:09', '2'),
(19, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EHvVPdY3cL7ic', '2023-09-22 10:11:09', '2'),
(20, 'INIT650db4701ecb2', '74584c64553641544f34753357464a79517337563177673245786a615a76304738526f6c4e6569447a6d39436e484970726668424d6b625935535063714b', '', '2023-09-22 15:16:09', '1'),
(21, 'INIT650db496a43e4', '687662533071476459494b755265356e5a4a584f56347a746a3944417938506b5748316c42547345777237364d6146697066516d4e4c7867436f32553363', '', '2023-09-22 15:54:09', '1'),
(22, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EHOCCx4z3Zahk', '2023-09-22 15:28:09', '2'),
(23, 'INIT650f79814d030', '39774d306f6c52614e515769546b6d7246757a414b48344f49504342637436626e7053313337786a65586766355a564771444a64684c7345553859327976', '', '2023-09-23 23:21:09', '1'),
(24, 'INIT650f799add3ed', '634371746a314244355673476f6e556477376169586d507278594a335245665162757057394f32686b53497a4e3034385a544b6c46654d48793667414c76', '', '2023-09-23 23:46:09', '1'),
(25, 'INIT650f79c12e089', '354e6a4c7a454d745030716f5a5247704a72316b5163733342416d434662554f3777695853327659655748547561386c493978445667346e364b64686679', '', '2023-09-23 23:25:09', '1'),
(26, 'INIT650f7a1a66416', '70344d454e3732315433756b3055464a6d507672676677535149617179646336585269784b5944576248684f4235567a6f43734c7441396538476c6e5a6a', '', '2023-09-23 23:54:09', '1'),
(27, 'INIT650f7a7ae94e7', '46686c547670746e4752447a5657316a62454f73787159674a694b337749304837796d39366b4e435a7550653555324d42387241515834666153646f634c', '', '2023-09-23 23:30:09', '1'),
(28, 'INIT650f7ab20b59b', '6f497279636e356d3934445657744a704d61766b464b71433165776a5566483073334e52425a59697a755367323878516c644c58684f4136546237474550', '', '2023-09-23 23:26:09', '1'),
(29, 'COL0000000003', '486c6a6f374935774d3166586954364c535672716d683343705a4f554e305741477432736362345067614659754b3865646e765178794a7a4452456b3942', 'EHtda8HBaPH72', '2023-09-23 23:41:09', '2'),
(30, 'INIT650f7f26cb43b', '4537304e644139474346686c3270767331626d6b4233367954715557526963344f494d664a514c4b67386f774850725a7a53584435787559746e65566a61', '', '2023-09-24 00:26:09', '1'),
(31, 'INIT650f7f875fd18', '7a5039614c317537724b637642517955696f416e52744633455930734847364d70586c65545a32536a6b62576635787168434f3877344e44674a4956646d', '', '2023-09-24 00:03:09', '1'),
(32, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EHtEDR7VmXY3s', '2023-09-24 00:44:09', '2'),
(33, 'INIT65114f30a53ce', '7352367248516f394367375949765041335a69306c686b566a35424a4b32545553664431644d6547587145617478634e706d5779344c774f7a6e75463862', '', '2023-09-25 09:20:09', '1'),
(34, 'INIT65130aa7a9bae', '726838466139774b544845556e47584a6f6962365974347873354f33314164565a537a426b4e4c6a6d4d44766671525075493243376c7065673063577951', '', '2023-09-26 16:27:09', '1'),
(35, 'INIT65130c55bb25a', '7a6a4c326c447453316752337956596d756e4b4d586b384a6278543757716365423447726155704e495a687330354569484336517766396f46764f416450', '', '2023-09-26 16:37:09', '1'),
(36, 'COL0000000003', '486c6a6f374935774d3166586954364c535672716d683343705a4f554e305741477432736362345067614659754b3865646e765178794a7a4452456b3942', 'EHwQu1bpjWdRY', '2023-09-26 16:45:09', '2'),
(37, 'INIT65130d9c2bd8a', '704c4d6f337537676c74565a3864474a6d396a58623431655371796b50414f4873527846683644696149427a4e3045637743513572575476596e4b556632', '', '2023-09-26 16:04:09', '1'),
(38, 'INIT65130f2193c5e', '477636624469786a6f7a67516b667546436d725649347959456c5865506e74384c42687331374a4b3330483555533261774f4d41644e39637057715a5254', '', '2023-09-26 17:33:09', '1'),
(39, 'INIT65131182815e6', '5856444e45336e7551646c5534594f3972764652367a5766537065626d716a3073415a54316f35383761504b437748744d6742684a476b794c4969327863', '', '2023-09-26 17:42:09', '1'),
(40, 'COL0000000021', '6771435168787a395a6a446c4d7570576942566b77616f313465374e4b45475554386e30743562416658734a634f3259766433464c485049536d36527279', '', '2023-09-26 17:49:09', '2'),
(41, 'INIT65131196162e8', '787a496c546e6a3541684f70337658797550645a46435174666f623163476b77524b654d3659327369306155563467484e3957534a384c7271456d443742', '', '2023-09-26 17:02:09', '1'),
(42, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EH2Tzcnsl54Hc', '2023-09-26 17:13:09', '2'),
(43, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EHwbou7Zln9HE', '2023-09-26 17:54:09', '2'),
(44, 'INIT651313d178d3a', '486c54385834696e49316b51734d595764654678615674395552436f4450625345766d36424f4133727a7732685a4b793071673775664a704e6a4c476335', '', '2023-09-26 17:33:09', '1'),
(45, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EHD.P8h3yrX5k', '2023-09-27 12:42:09', '2'),
(46, 'INIT65155110c8db3', '35787a32625773646668586e594a516a72414c336936454f7631556d4b677047753746654d543877536f614439527442634934507956485a4e6c6b433071', '', '2023-09-28 10:24:09', '1'),
(47, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EHV2mdY6MjawA', '2023-09-28 10:38:09', '2'),
(48, 'INIT6515608f35a0a', '784f5579504872376f5176744e4532446b3066677a38364370587354536263565a6e68594a354d526446414b696d3149713442656c3377755761394c476a', '', '2023-09-28 11:31:09', '1'),
(49, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EHeOtiQV2M0jE', '2023-09-28 11:14:09', '2'),
(50, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EH6w5yRiiCDvg', '2023-09-28 11:04:09', '2'),
(51, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EHpbXBqG8lTYk', '2023-09-28 11:18:09', '2'),
(52, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EHAF4hItN8RiM', '2023-09-28 11:46:09', '2'),
(53, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EHOSQ/DzgOd2s', '2023-09-28 11:55:09', '2'),
(54, 'INIT65156e38e9059', '516368756a59425562576f664c6b6e37476c6d41704d4971734b78746776655054433248335244647735303161394638724a69564e5a794f347a58534536', '', '2023-09-28 12:48:09', '1'),
(55, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EH1ll4.eLhVS6', '2023-09-28 12:09:09', '2'),
(56, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EHTsFt89v3Ay6', '2023-09-28 12:57:09', '2'),
(57, 'INIT651570b242e08', '77643055314d78756f5744517a6a4756496e6638376c45364a6d5a62714b70797658325235593446734c65697254336343397450684e61424841536b4f67', '', '2023-09-28 12:22:09', '1'),
(58, 'INIT651571686460f', '654d556653687538433967564e36704f526a4163594861776951506447356f454c4272496e327633785746447a746d4a544b793730736b345a58716c3162', '', '2023-09-28 12:24:09', '1'),
(59, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EHwGNq5nSn7yE', '2023-09-28 13:02:09', '2'),
(60, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EHh7idzdRr7n2', '2023-09-28 13:17:09', '2'),
(61, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EHdV9pVff7QxI', '2023-09-28 13:46:09', '2'),
(62, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EHBXWqAVgnWkk', '2023-09-28 14:16:09', '2'),
(63, 'INIT6515cae3af138', '4d614675737643324e794a594b38505770726633447739636a37744147486e7856524f545845674c5130626434556b355336686c317a495a6971426f656d', '', '2023-09-28 18:11:09', '1'),
(64, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EHBm3rDLOv53.', '2023-09-28 18:13:09', '2'),
(65, 'INIT6515cccf7c540', '725835554d4f38416f61314a636b78393667457a66645048494e7556476c4251703468597952656d33765774713077373269466e446a62545a4c4b534373', '', '2023-09-28 18:23:09', '1'),
(66, 'INIT6515cd67d7267', '79654f66307a33646f456e324358344750685a355648317441677076365563526c446a38594b776978724c6d495175397137534257734d465462614e6b4a', '', '2023-09-28 19:55:09', '1'),
(67, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EHVb0BSvJt9Yc', '2023-10-02 11:12:10', '2'),
(68, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EHZUye0DNtYBc', '2023-10-02 19:00:10', '2'),
(69, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EHokPMO/tfTuo', '2023-10-02 19:18:10', '2'),
(70, 'COL00000000001', '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', 'EH.7EqyhcEIqM', '2023-11-08 10:07:11', '2');

-- --------------------------------------------------------

--
-- Table structure for table `app_products`
--

CREATE TABLE `app_products` (
  `PROD_ID` int(11) NOT NULL,
  `CTG_ID` int(11) NOT NULL,
  `SUB_CTG_ID` int(11) NOT NULL,
  `CHILD_CTG_ID` int(11) NOT NULL,
  `PROD_BARCODE` varchar(100) DEFAULT NULL,
  `PROD_NAME` varchar(255) NOT NULL,
  `PROD_DISCRIPTION` text DEFAULT NULL,
  `PROD_SHORT_DISC` varchar(255) DEFAULT NULL,
  `PROD_IMAGE` text DEFAULT NULL,
  `PROD_COST` double(25,2) NOT NULL DEFAULT 0.00,
  `PROD_FINAL_AMOUNT` double(25,2) NOT NULL DEFAULT 0.00,
  `PROD_DISCOUNT` double(25,0) DEFAULT 0,
  `PROD_TOGGLE` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 is NOTLIKED and 1 is LIKED',
  `PROD_LIKE_COUNT` double(25,0) DEFAULT 0,
  `PROD_VIEW_COUNT` double(255,0) DEFAULT 0,
  `PROD_STOCK_QUANTITY` varchar(255) DEFAULT NULL,
  `PROD_STOCK_SOLD` int(11) DEFAULT 0,
  `PROD_LOW_STOCK_THRESHOLD` varchar(255) DEFAULT NULL,
  `PROD_WEIGHT` varchar(20) DEFAULT NULL,
  `PROD_TAX_STATUS` int(11) DEFAULT NULL,
  `PROD_WRITTEN_BY` varchar(100) NOT NULL,
  `PROD_META_TAGS` varchar(255) DEFAULT NULL,
  `PROD_DATE_ADDED` datetime DEFAULT NULL,
  `PROD_INPUTED_DATE` timestamp NULL DEFAULT current_timestamp(),
  `PROD_STATUS` enum('0','1','2','3') DEFAULT '1' COMMENT '0 IS DELETED, 1 IS ONSALE, 2 IS OUT OF STOCK'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_products`
--

INSERT INTO `app_products` (`PROD_ID`, `CTG_ID`, `SUB_CTG_ID`, `CHILD_CTG_ID`, `PROD_BARCODE`, `PROD_NAME`, `PROD_DISCRIPTION`, `PROD_SHORT_DISC`, `PROD_IMAGE`, `PROD_COST`, `PROD_FINAL_AMOUNT`, `PROD_DISCOUNT`, `PROD_TOGGLE`, `PROD_LIKE_COUNT`, `PROD_VIEW_COUNT`, `PROD_STOCK_QUANTITY`, `PROD_STOCK_SOLD`, `PROD_LOW_STOCK_THRESHOLD`, `PROD_WEIGHT`, `PROD_TAX_STATUS`, `PROD_WRITTEN_BY`, `PROD_META_TAGS`, `PROD_DATE_ADDED`, `PROD_INPUTED_DATE`, `PROD_STATUS`) VALUES
(19, 1, 1, 42, '1234567890', 'Product 1', 'Product 1 Description', 'Short Desc 1', 'image1.jpg', 20.00, 15.99, 25, 1, 30, 127, '50', 50, '10', '1 lb', 1, 'John Doe', 'tag1, tag2', '2023-09-20 00:00:00', '2023-09-22 08:55:23', '1'),
(20, 1, 1, 42, '2345678901', 'Product 2', 'Product 2 Description', 'Short Desc 2', 'image2.jpg', 25.00, 19.99, 10, 0, 17, 280, '75', 125, '15', '2 lbs', 1, 'Jane Smith', 'tag2, tag3', '2023-09-20 00:00:00', '2023-09-22 08:55:23', '1'),
(21, 1, 1, 42, '3456789012', 'Product 3', 'Product 3 Description', 'Short Desc 3', 'image3.jpg', 30.00, 24.99, 0, 0, 5, 51, '25', 25, '5', '0.5 lb', 1, 'Mike Johnson', 'tag3, tag4', '2023-09-20 00:00:00', '2023-09-22 08:55:23', '1'),
(22, 1, 1, 42, '4567890123', 'Product 4', 'Product 4 Description', 'Short Desc 4', 'image4.jpg', 15.00, 12.99, 0, 0, 17, 155, '100', 50, '20', '0.8 lb', 1, 'Emily Brown', 'tag4, tag5', '2023-09-20 00:00:00', '2023-09-22 08:55:23', '1'),
(23, 1, 1, 42, '5678901234', 'Product 5', 'Product 5 Description', 'Short Desc 5', 'image5.jpg', 40.00, 34.99, 0, 0, 8, 81, '40', 40, '10', '1 lb', 1, 'David Wilson', 'tag5, tag6', '2023-09-20 00:00:00', '2023-09-22 08:55:23', '1'),
(24, 1, 1, 42, '6789012345', 'Product 6', 'Product 6 Description', 'Short Desc 6', 'image6.jpg', 22.00, 18.99, 0, 0, 12, 120, '60', 60, '15', '0.7 lb', 1, 'Sarah Lee', 'tag6, tag7', '2023-09-20 00:00:00', '2023-09-22 08:55:23', '1'),
(25, 1, 1, 42, '7890123456', 'Product 7', 'Product 7 Description', 'Short Desc 7', 'image7.jpg', 28.00, 22.99, 0, 0, 6, 60, '30', 30, '10', '0.6 lb', 1, 'Michael Smith', 'tag7, tag8', '2023-09-20 00:00:00', '2023-09-22 08:55:23', '1'),
(26, 1, 1, 42, '8901234567', 'Product 8', 'Product 8 Description', 'Short Desc 8', 'image8.jpg', 35.00, 29.99, 0, 0, 20, 192, '90', 90, '25', '1 lb', 1, 'Linda Johnson', 'tag8, tag9', '2023-09-20 00:00:00', '2023-09-22 08:55:23', '1'),
(27, 1, 1, 42, '9012345678', 'Product 9', 'Product 9 Description', 'Short Desc 9', 'image9.jpg', 19.00, 15.99, 0, 0, 14, 141, '70', 70, '15', '0.9 lb', 1, 'Robert Brown', 'tag9, tag10', '2023-09-20 00:00:00', '2023-09-22 08:55:23', '1');

-- --------------------------------------------------------

--
-- Table structure for table `app_sub_ctg`
--

CREATE TABLE `app_sub_ctg` (
  `SUB_CTG_ID` int(11) NOT NULL,
  `CTG_ID` int(11) DEFAULT NULL,
  `SUB_CTG_NAME` varchar(255) NOT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `STATUS` tinyint(1) NOT NULL DEFAULT 1,
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_sub_ctg`
--

INSERT INTO `app_sub_ctg` (`SUB_CTG_ID`, `CTG_ID`, `SUB_CTG_NAME`, `DESCRIPTION`, `STATUS`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'Dresses', NULL, 1, '2023-09-18 14:01:26', '2023-09-18 14:01:26'),
(2, 1, 'Tops', NULL, 1, '2023-09-18 14:01:26', '2023-09-18 14:01:26'),
(3, 1, 'Bottoms', NULL, 1, '2023-09-18 14:01:26', '2023-09-18 14:01:26'),
(4, 1, 'Outerwear', NULL, 1, '2023-09-18 14:01:26', '2023-09-18 14:01:26'),
(5, 1, 'Activewear', NULL, 1, '2023-09-18 14:01:26', '2023-09-18 14:01:26'),
(6, 1, 'Maternity Clothing', NULL, 1, '2023-09-18 14:01:26', '2023-09-18 14:01:26'),
(7, 1, 'Accessories', NULL, 1, '2023-09-18 14:01:26', '2023-09-18 14:01:26'),
(8, 1, 'Swimwear', NULL, 1, '2023-09-18 14:01:26', '2023-09-18 14:01:26'),
(9, 2, 'Shirts', NULL, 1, '2023-09-18 14:03:38', '2023-09-18 14:03:38'),
(10, 2, 'Bottoms', NULL, 1, '2023-09-18 14:03:38', '2023-09-18 14:03:38'),
(11, 2, 'Suits and Blazers', NULL, 1, '2023-09-18 14:03:38', '2023-09-18 14:03:38'),
(12, 2, 'Outerwear', NULL, 1, '2023-09-18 14:03:38', '2023-09-18 14:03:38'),
(13, 2, 'Activewear', NULL, 1, '2023-09-18 14:03:38', '2023-09-18 14:03:38'),
(14, 2, 'Underwear', NULL, 1, '2023-09-18 14:03:38', '2023-09-18 14:03:38'),
(15, 2, 'Accessories', NULL, 1, '2023-09-18 14:03:38', '2023-09-18 14:03:38'),
(16, 2, 'Swimwear', NULL, 1, '2023-09-18 14:03:38', '2023-09-18 14:03:38'),
(17, 3, 'Boys\' Clothing', NULL, 1, '2023-09-18 14:05:26', '2023-09-18 14:05:26'),
(18, 3, 'Girls\' Clothing', NULL, 1, '2023-09-18 14:05:26', '2023-09-18 14:05:26'),
(19, 3, 'Baby Clothing', NULL, 1, '2023-09-18 14:05:26', '2023-09-18 14:05:26'),
(20, 4, 'Women\'s Shoes', NULL, 1, '2023-09-18 14:07:19', '2023-09-18 14:07:19'),
(21, 4, 'Men\'s Shoes', NULL, 1, '2023-09-18 14:07:19', '2023-09-18 14:07:19'),
(22, 4, 'Children\'s Shoes', NULL, 1, '2023-09-18 14:07:19', '2023-09-18 14:07:19'),
(23, 4, 'Sports and Athletic Shoes', NULL, 1, '2023-09-18 14:07:19', '2023-09-18 14:07:19');

-- --------------------------------------------------------

--
-- Table structure for table `app_users`
--

CREATE TABLE `app_users` (
  `USR_ID` int(11) NOT NULL,
  `USR_CODE` varchar(25) DEFAULT NULL,
  `USR_FB_CODE` varchar(100) NOT NULL,
  `USR_FIRSTNAME` varchar(255) DEFAULT NULL,
  `USR_OTHERNAME` varchar(255) DEFAULT NULL,
  `USR_USERNAME` varchar(255) NOT NULL,
  `USR_PASSWORD` varchar(255) NOT NULL,
  `USR_EMAIL` varchar(255) NOT NULL,
  `USR_LOGIN_STATUS` enum('0','1','2','3') NOT NULL DEFAULT '1',
  `USR_LASTLOGIN_DATE` varchar(255) DEFAULT NULL,
  `USR_STATUS` enum('1','0') NOT NULL DEFAULT '1' COMMENT '0 IS INACTIVE, 1 IS ACTIVE',
  `USR_PHOTO` varchar(255) DEFAULT NULL,
  `USR_APIKEY` varchar(255) DEFAULT NULL,
  `USR_PHONE_NUMBER` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_users`
--

INSERT INTO `app_users` (`USR_ID`, `USR_CODE`, `USR_FB_CODE`, `USR_FIRSTNAME`, `USR_OTHERNAME`, `USR_USERNAME`, `USR_PASSWORD`, `USR_EMAIL`, `USR_LOGIN_STATUS`, `USR_LASTLOGIN_DATE`, `USR_STATUS`, `USR_PHOTO`, `USR_APIKEY`, `USR_PHONE_NUMBER`) VALUES
(1, 'COL00000000001', '', NULL, NULL, 'ryabubaker@gmail.com', 'a5235e70e4a07646d37bed2a2650db86f620d65385041df7f233656575411e96', 'ryabubaker@gmail.com', '0', 'Wed, 08 Nov 2023 10:07:07 GMT', '1', NULL, '367a56306c6271457765484a4b746d4159695776317066386a6f637355474d4c5a78376b394e53324349797535334f5034725451466e4461646858675242', NULL),
(3, 'COL0000000003', '', NULL, NULL, 'ema@gmail.com', '958fe335ff454bcc5c67b36a12e5357f03b8ad98460bc952da43f5a03cc9fd0b', 'ema@gmail.com', '1', NULL, '1', NULL, '486c6a6f374935774d3166586954364c535672716d683343705a4f554e305741477432736362345067614659754b3865646e765178794a7a4452456b3942', NULL),
(4, 'COL0000000004', '', NULL, NULL, 'yehia1500@gmail.com', '251b30b6f838ae37adfff89d8adb0b41f03b791ddc7471d9dac2ab7ee0bb7ae2', 'yehia1500@gmail.com', '1', NULL, '1', NULL, '4743547a41575936566158646e70314b4e66764a346f4d7172385049777875485a6c677339333562537469655232794f374546444c63306a686d556b4251', NULL),
(5, 'COL0000000005', '', NULL, NULL, 'ema@gmail.com', '958fe335ff454bcc5c67b36a12e5357f03b8ad98460bc952da43f5a03cc9fd0b', 'ema@gmail.com', '1', NULL, '1', NULL, '575a6c3163356d643441524e4f6256794342547a6e394a5044536667304671653237746a4b387048596f5836773368697275784745766b5155734d4c6149', NULL),
(6, 'COL0000000006', '', NULL, NULL, 'ema2@gmail.com', '1de6368a2840e32efcb236d71c26c34f3e029fa43ebcc60af8d96c5de0daf897', 'ema2@gmail.com', '1', NULL, '1', NULL, '694552383354734234326b39316d4e624d655355596a444666417a5836496f3776634f4c6135566e50673051784375717064484b744757686c795a774a72', NULL),
(22, 'COL0000000022', '', NULL, NULL, 'sam2@gmail.com', 'f13185ace1d1861b21bdcd624d383c9de90ab3aa5f2613817dabee18bd24a7c3', 'sam2@gmail.com', '1', NULL, '1', NULL, '39516f373363483834756658573643324e746d6a4b41534f47504c6c6970795444714952675a784665354a4d7356777642314555687a6e726b6259643061', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app_wishlist`
--

CREATE TABLE `app_wishlist` (
  `WHISHLIST_ID` int(11) NOT NULL,
  `USR_CODE` varchar(25) DEFAULT NULL,
  `PROD_ID` int(11) DEFAULT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_wishlist`
--

INSERT INTO `app_wishlist` (`WHISHLIST_ID`, `USR_CODE`, `PROD_ID`, `added_at`) VALUES
(78, 'COL0000000003', 20, '2023-09-28 10:09:49'),
(79, 'COL0000000003', 26, '2023-09-28 10:09:54'),
(80, 'COL0000000003', 26, '2023-09-28 10:09:57'),
(81, 'COL0000000003', 19, '2023-09-28 10:14:39'),
(98, 'COL00000000001', 20, '2023-11-08 09:57:08'),
(99, NULL, NULL, '2023-11-28 18:59:38'),
(103, NULL, 19, '2023-11-28 19:00:39'),
(104, 'COL00000000001', 19, '2023-11-28 19:01:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_child_ctg`
--
ALTER TABLE `app_child_ctg`
  ADD PRIMARY KEY (`CHILD_CTG_ID`),
  ADD KEY `CTG_ID` (`CTG_ID`),
  ADD KEY `SUB_CTG_ID` (`SUB_CTG_ID`);

--
-- Indexes for table `app_ctg`
--
ALTER TABLE `app_ctg`
  ADD PRIMARY KEY (`CTG_ID`);

--
-- Indexes for table `app_eventlog`
--
ALTER TABLE `app_eventlog`
  ADD PRIMARY KEY (`EVL_ID`);

--
-- Indexes for table `app_init`
--
ALTER TABLE `app_init`
  ADD PRIMARY KEY (`INIT_ID`);

--
-- Indexes for table `app_products`
--
ALTER TABLE `app_products`
  ADD PRIMARY KEY (`PROD_ID`) USING BTREE,
  ADD KEY `CTG_ID` (`CTG_ID`),
  ADD KEY `SUB_CTG_ID` (`SUB_CTG_ID`),
  ADD KEY `CHILD_CTG_ID` (`CHILD_CTG_ID`);

--
-- Indexes for table `app_sub_ctg`
--
ALTER TABLE `app_sub_ctg`
  ADD PRIMARY KEY (`SUB_CTG_ID`),
  ADD KEY `CTG_ID` (`CTG_ID`);

--
-- Indexes for table `app_users`
--
ALTER TABLE `app_users`
  ADD PRIMARY KEY (`USR_ID`),
  ADD KEY `USR_CODE` (`USR_CODE`);

--
-- Indexes for table `app_wishlist`
--
ALTER TABLE `app_wishlist`
  ADD PRIMARY KEY (`WHISHLIST_ID`),
  ADD KEY `PROD_ID` (`PROD_ID`),
  ADD KEY `USR_CODE` (`USR_CODE`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_child_ctg`
--
ALTER TABLE `app_child_ctg`
  MODIFY `CHILD_CTG_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `app_ctg`
--
ALTER TABLE `app_ctg`
  MODIFY `CTG_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app_eventlog`
--
ALTER TABLE `app_eventlog`
  MODIFY `EVL_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_init`
--
ALTER TABLE `app_init`
  MODIFY `INIT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `app_products`
--
ALTER TABLE `app_products`
  MODIFY `PROD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `app_sub_ctg`
--
ALTER TABLE `app_sub_ctg`
  MODIFY `SUB_CTG_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `app_users`
--
ALTER TABLE `app_users`
  MODIFY `USR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `app_wishlist`
--
ALTER TABLE `app_wishlist`
  MODIFY `WHISHLIST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_child_ctg`
--
ALTER TABLE `app_child_ctg`
  ADD CONSTRAINT `app_child_ctg_ibfk_1` FOREIGN KEY (`CTG_ID`) REFERENCES `app_ctg` (`CTG_ID`),
  ADD CONSTRAINT `app_child_ctg_ibfk_2` FOREIGN KEY (`SUB_CTG_ID`) REFERENCES `app_sub_ctg` (`SUB_CTG_ID`);

--
-- Constraints for table `app_products`
--
ALTER TABLE `app_products`
  ADD CONSTRAINT `app_products_ibfk_1` FOREIGN KEY (`CTG_ID`) REFERENCES `app_ctg` (`CTG_ID`),
  ADD CONSTRAINT `app_products_ibfk_2` FOREIGN KEY (`SUB_CTG_ID`) REFERENCES `app_sub_ctg` (`SUB_CTG_ID`),
  ADD CONSTRAINT `app_products_ibfk_3` FOREIGN KEY (`CHILD_CTG_ID`) REFERENCES `app_child_ctg` (`CHILD_CTG_ID`);

--
-- Constraints for table `app_sub_ctg`
--
ALTER TABLE `app_sub_ctg`
  ADD CONSTRAINT `app_sub_ctg_ibfk_1` FOREIGN KEY (`CTG_ID`) REFERENCES `app_ctg` (`CTG_ID`);

--
-- Constraints for table `app_wishlist`
--
ALTER TABLE `app_wishlist`
  ADD CONSTRAINT `app_wishlist_ibfk_2` FOREIGN KEY (`PROD_ID`) REFERENCES `app_products` (`PROD_ID`),
  ADD CONSTRAINT `app_wishlist_ibfk_3` FOREIGN KEY (`USR_CODE`) REFERENCES `app_users` (`USR_CODE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
