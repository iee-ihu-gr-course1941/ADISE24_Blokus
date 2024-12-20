-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: blokus
-- ------------------------------------------------------
-- Server version	10.11.6-MariaDB-0+deb12u1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `cell_id` int(11) NOT NULL AUTO_INCREMENT,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `occupied_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`cell_id`),
  UNIQUE KEY `unique_position` (`x`,`y`),
  KEY `fk_board_piece` (`occupied_by`),
  CONSTRAINT `fk_board_piece` FOREIGN KEY (`occupied_by`) REFERENCES `pieces` (`piece_id`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES
(1,0,0,NULL),
(2,0,1,NULL),
(3,0,2,NULL),
(4,0,3,NULL),
(5,0,4,NULL),
(6,0,5,NULL),
(7,0,6,NULL),
(8,0,7,NULL),
(9,0,8,NULL),
(10,0,9,NULL),
(11,0,10,NULL),
(12,0,11,NULL),
(13,0,12,NULL),
(14,0,13,NULL),
(15,0,14,NULL),
(16,0,15,NULL),
(17,0,16,NULL),
(18,0,17,NULL),
(19,0,18,NULL),
(20,0,19,NULL),
(21,1,0,NULL),
(22,1,1,NULL),
(23,1,2,NULL),
(24,1,3,NULL),
(25,1,4,NULL),
(26,1,5,NULL),
(27,1,6,NULL),
(28,1,7,NULL),
(29,1,8,NULL),
(30,1,9,NULL),
(31,1,10,NULL),
(32,1,11,NULL),
(33,1,12,NULL),
(34,1,13,NULL),
(35,1,14,NULL),
(36,1,15,NULL),
(37,1,16,NULL),
(38,1,17,NULL),
(39,1,18,NULL),
(40,1,19,NULL),
(41,2,0,NULL),
(42,2,1,NULL),
(43,2,2,NULL),
(44,2,3,NULL),
(45,2,4,NULL),
(46,2,5,NULL),
(47,2,6,NULL),
(48,2,7,NULL),
(49,2,8,NULL),
(50,2,9,NULL),
(51,2,10,NULL),
(52,2,11,NULL),
(53,2,12,NULL),
(54,2,13,NULL),
(55,2,14,NULL),
(56,2,15,NULL),
(57,2,16,NULL),
(58,2,17,NULL),
(59,2,18,NULL),
(60,2,19,NULL),
(61,3,0,NULL),
(62,3,1,NULL),
(63,3,2,NULL),
(64,3,3,NULL),
(65,3,4,NULL),
(66,3,5,NULL),
(67,3,6,NULL),
(68,3,7,NULL),
(69,3,8,NULL),
(70,3,9,NULL),
(71,3,10,NULL),
(72,3,11,NULL),
(73,3,12,NULL),
(74,3,13,NULL),
(75,3,14,NULL),
(76,3,15,NULL),
(77,3,16,NULL),
(78,3,17,NULL),
(79,3,18,NULL),
(80,3,19,NULL),
(81,4,0,NULL),
(82,4,1,NULL),
(83,4,2,NULL),
(84,4,3,NULL),
(85,4,4,NULL),
(86,4,5,NULL),
(87,4,6,NULL),
(88,4,7,NULL),
(89,4,8,NULL),
(90,4,9,NULL),
(91,4,10,NULL),
(92,4,11,NULL),
(93,4,12,NULL),
(94,4,13,NULL),
(95,4,14,NULL),
(96,4,15,NULL),
(97,4,16,NULL),
(98,4,17,NULL),
(99,4,18,NULL),
(100,4,19,NULL),
(101,5,0,NULL),
(102,5,1,NULL),
(103,5,2,NULL),
(104,5,3,NULL),
(105,5,4,NULL),
(106,5,5,NULL),
(107,5,6,NULL),
(108,5,7,NULL),
(109,5,8,NULL),
(110,5,9,NULL),
(111,5,10,NULL),
(112,5,11,NULL),
(113,5,12,NULL),
(114,5,13,NULL),
(115,5,14,NULL),
(116,5,15,NULL),
(117,5,16,NULL),
(118,5,17,NULL),
(119,5,18,NULL),
(120,5,19,NULL),
(121,6,0,NULL),
(122,6,1,NULL),
(123,6,2,NULL),
(124,6,3,NULL),
(125,6,4,NULL),
(126,6,5,NULL),
(127,6,6,NULL),
(128,6,7,NULL),
(129,6,8,NULL),
(130,6,9,NULL),
(131,6,10,NULL),
(132,6,11,NULL),
(133,6,12,NULL),
(134,6,13,NULL),
(135,6,14,NULL),
(136,6,15,NULL),
(137,6,16,NULL),
(138,6,17,NULL),
(139,6,18,NULL),
(140,6,19,NULL),
(141,7,0,NULL),
(142,7,1,NULL),
(143,7,2,NULL),
(144,7,3,NULL),
(145,7,4,NULL),
(146,7,5,NULL),
(147,7,6,NULL),
(148,7,7,NULL),
(149,7,8,NULL),
(150,7,9,NULL),
(151,7,10,NULL),
(152,7,11,NULL),
(153,7,12,NULL),
(154,7,13,NULL),
(155,7,14,NULL),
(156,7,15,NULL),
(157,7,16,NULL),
(158,7,17,NULL),
(159,7,18,NULL),
(160,7,19,NULL),
(161,8,0,NULL),
(162,8,1,NULL),
(163,8,2,NULL),
(164,8,3,NULL),
(165,8,4,NULL),
(166,8,5,NULL),
(167,8,6,NULL),
(168,8,7,NULL),
(169,8,8,NULL),
(170,8,9,NULL),
(171,8,10,NULL),
(172,8,11,NULL),
(173,8,12,NULL),
(174,8,13,NULL),
(175,8,14,NULL),
(176,8,15,NULL),
(177,8,16,NULL),
(178,8,17,NULL),
(179,8,18,NULL),
(180,8,19,NULL),
(181,9,0,NULL),
(182,9,1,NULL),
(183,9,2,NULL),
(184,9,3,NULL),
(185,9,4,NULL),
(186,9,5,NULL),
(187,9,6,NULL),
(188,9,7,NULL),
(189,9,8,NULL),
(190,9,9,NULL),
(191,9,10,NULL),
(192,9,11,NULL),
(193,9,12,NULL),
(194,9,13,NULL),
(195,9,14,NULL),
(196,9,15,NULL),
(197,9,16,NULL),
(198,9,17,NULL),
(199,9,18,NULL),
(200,9,19,NULL),
(201,10,0,NULL),
(202,10,1,NULL),
(203,10,2,NULL),
(204,10,3,NULL),
(205,10,4,NULL),
(206,10,5,NULL),
(207,10,6,NULL),
(208,10,7,NULL),
(209,10,8,NULL),
(210,10,9,NULL),
(211,10,10,NULL),
(212,10,11,NULL),
(213,10,12,NULL),
(214,10,13,NULL),
(215,10,14,NULL),
(216,10,15,NULL),
(217,10,16,NULL),
(218,10,17,NULL),
(219,10,18,NULL),
(220,10,19,NULL),
(221,11,0,NULL),
(222,11,1,NULL),
(223,11,2,NULL),
(224,11,3,NULL),
(225,11,4,NULL),
(226,11,5,NULL),
(227,11,6,NULL),
(228,11,7,NULL),
(229,11,8,NULL),
(230,11,9,NULL),
(231,11,10,NULL),
(232,11,11,NULL),
(233,11,12,NULL),
(234,11,13,NULL),
(235,11,14,NULL),
(236,11,15,NULL),
(237,11,16,NULL),
(238,11,17,NULL),
(239,11,18,NULL),
(240,11,19,NULL),
(241,12,0,NULL),
(242,12,1,NULL),
(243,12,2,NULL),
(244,12,3,NULL),
(245,12,4,NULL),
(246,12,5,NULL),
(247,12,6,NULL),
(248,12,7,NULL),
(249,12,8,NULL),
(250,12,9,NULL),
(251,12,10,NULL),
(252,12,11,NULL),
(253,12,12,NULL),
(254,12,13,NULL),
(255,12,14,NULL),
(256,12,15,NULL),
(257,12,16,NULL),
(258,12,17,NULL),
(259,12,18,NULL),
(260,12,19,NULL),
(261,13,0,NULL),
(262,13,1,NULL),
(263,13,2,NULL),
(264,13,3,NULL),
(265,13,4,NULL),
(266,13,5,NULL),
(267,13,6,NULL),
(268,13,7,NULL),
(269,13,8,NULL),
(270,13,9,NULL),
(271,13,10,NULL),
(272,13,11,NULL),
(273,13,12,NULL),
(274,13,13,NULL),
(275,13,14,NULL),
(276,13,15,NULL),
(277,13,16,NULL),
(278,13,17,NULL),
(279,13,18,NULL),
(280,13,19,NULL),
(281,14,0,NULL),
(282,14,1,NULL),
(283,14,2,NULL),
(284,14,3,NULL),
(285,14,4,NULL),
(286,14,5,NULL),
(287,14,6,NULL),
(288,14,7,NULL),
(289,14,8,NULL),
(290,14,9,NULL),
(291,14,10,NULL),
(292,14,11,NULL),
(293,14,12,NULL),
(294,14,13,NULL),
(295,14,14,NULL),
(296,14,15,NULL),
(297,14,16,NULL),
(298,14,17,NULL),
(299,14,18,NULL),
(300,14,19,NULL),
(301,15,0,NULL),
(302,15,1,NULL),
(303,15,2,NULL),
(304,15,3,NULL),
(305,15,4,NULL),
(306,15,5,NULL),
(307,15,6,NULL),
(308,15,7,NULL),
(309,15,8,NULL),
(310,15,9,NULL),
(311,15,10,NULL),
(312,15,11,NULL),
(313,15,12,NULL),
(314,15,13,NULL),
(315,15,14,NULL),
(316,15,15,NULL),
(317,15,16,NULL),
(318,15,17,NULL),
(319,15,18,NULL),
(320,15,19,NULL),
(321,16,0,NULL),
(322,16,1,NULL),
(323,16,2,NULL),
(324,16,3,NULL),
(325,16,4,NULL),
(326,16,5,NULL),
(327,16,6,NULL),
(328,16,7,NULL),
(329,16,8,NULL),
(330,16,9,NULL),
(331,16,10,NULL),
(332,16,11,NULL),
(333,16,12,NULL),
(334,16,13,NULL),
(335,16,14,NULL),
(336,16,15,NULL),
(337,16,16,NULL),
(338,16,17,NULL),
(339,16,18,NULL),
(340,16,19,NULL),
(341,17,0,NULL),
(342,17,1,NULL),
(343,17,2,NULL),
(344,17,3,NULL),
(345,17,4,NULL),
(346,17,5,NULL),
(347,17,6,NULL),
(348,17,7,NULL),
(349,17,8,NULL),
(350,17,9,NULL),
(351,17,10,NULL),
(352,17,11,NULL),
(353,17,12,NULL),
(354,17,13,NULL),
(355,17,14,NULL),
(356,17,15,NULL),
(357,17,16,NULL),
(358,17,17,NULL),
(359,17,18,NULL),
(360,17,19,NULL),
(361,18,0,NULL),
(362,18,1,NULL),
(363,18,2,NULL),
(364,18,3,NULL),
(365,18,4,NULL),
(366,18,5,NULL),
(367,18,6,NULL),
(368,18,7,NULL),
(369,18,8,NULL),
(370,18,9,NULL),
(371,18,10,NULL),
(372,18,11,NULL),
(373,18,12,NULL),
(374,18,13,NULL),
(375,18,14,NULL),
(376,18,15,NULL),
(377,18,16,NULL),
(378,18,17,NULL),
(379,18,18,NULL),
(380,18,19,NULL),
(381,19,0,NULL),
(382,19,1,NULL),
(383,19,2,NULL),
(384,19,3,NULL),
(385,19,4,NULL),
(386,19,5,NULL),
(387,19,6,NULL),
(388,19,7,NULL),
(389,19,8,NULL),
(390,19,9,NULL),
(391,19,10,NULL),
(392,19,11,NULL),
(393,19,12,NULL),
(394,19,13,NULL),
(395,19,14,NULL),
(396,19,15,NULL),
(397,19,16,NULL),
(398,19,17,NULL),
(399,19,18,NULL),
(400,19,19,NULL);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_empty`
--

DROP TABLE IF EXISTS `board_empty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_empty` (
  `cell_id` int(11) NOT NULL AUTO_INCREMENT,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `occupied_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`cell_id`) USING BTREE,
  UNIQUE KEY `unique_position` (`x`,`y`) USING BTREE,
  KEY `FK_board_empty_pieces` (`occupied_by`),
  CONSTRAINT `FK_board_empty_pieces` FOREIGN KEY (`occupied_by`) REFERENCES `pieces` (`piece_id`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_empty`
--

LOCK TABLES `board_empty` WRITE;
/*!40000 ALTER TABLE `board_empty` DISABLE KEYS */;
INSERT INTO `board_empty` VALUES
(1,0,0,NULL),
(2,0,1,NULL),
(3,0,2,NULL),
(4,0,3,NULL),
(5,0,4,NULL),
(6,0,5,NULL),
(7,0,6,NULL),
(8,0,7,NULL),
(9,0,8,NULL),
(10,0,9,NULL),
(11,0,10,NULL),
(12,0,11,NULL),
(13,0,12,NULL),
(14,0,13,NULL),
(15,0,14,NULL),
(16,0,15,NULL),
(17,0,16,NULL),
(18,0,17,NULL),
(19,0,18,NULL),
(20,0,19,NULL),
(21,1,0,NULL),
(22,1,1,NULL),
(23,1,2,NULL),
(24,1,3,NULL),
(25,1,4,NULL),
(26,1,5,NULL),
(27,1,6,NULL),
(28,1,7,NULL),
(29,1,8,NULL),
(30,1,9,NULL),
(31,1,10,NULL),
(32,1,11,NULL),
(33,1,12,NULL),
(34,1,13,NULL),
(35,1,14,NULL),
(36,1,15,NULL),
(37,1,16,NULL),
(38,1,17,NULL),
(39,1,18,NULL),
(40,1,19,NULL),
(41,2,0,NULL),
(42,2,1,NULL),
(43,2,2,NULL),
(44,2,3,NULL),
(45,2,4,NULL),
(46,2,5,NULL),
(47,2,6,NULL),
(48,2,7,NULL),
(49,2,8,NULL),
(50,2,9,NULL),
(51,2,10,NULL),
(52,2,11,NULL),
(53,2,12,NULL),
(54,2,13,NULL),
(55,2,14,NULL),
(56,2,15,NULL),
(57,2,16,NULL),
(58,2,17,NULL),
(59,2,18,NULL),
(60,2,19,NULL),
(61,3,0,NULL),
(62,3,1,NULL),
(63,3,2,NULL),
(64,3,3,NULL),
(65,3,4,NULL),
(66,3,5,NULL),
(67,3,6,NULL),
(68,3,7,NULL),
(69,3,8,NULL),
(70,3,9,NULL),
(71,3,10,NULL),
(72,3,11,NULL),
(73,3,12,NULL),
(74,3,13,NULL),
(75,3,14,NULL),
(76,3,15,NULL),
(77,3,16,NULL),
(78,3,17,NULL),
(79,3,18,NULL),
(80,3,19,NULL),
(81,4,0,NULL),
(82,4,1,NULL),
(83,4,2,NULL),
(84,4,3,NULL),
(85,4,4,NULL),
(86,4,5,NULL),
(87,4,6,NULL),
(88,4,7,NULL),
(89,4,8,NULL),
(90,4,9,NULL),
(91,4,10,NULL),
(92,4,11,NULL),
(93,4,12,NULL),
(94,4,13,NULL),
(95,4,14,NULL),
(96,4,15,NULL),
(97,4,16,NULL),
(98,4,17,NULL),
(99,4,18,NULL),
(100,4,19,NULL),
(101,5,0,NULL),
(102,5,1,NULL),
(103,5,2,NULL),
(104,5,3,NULL),
(105,5,4,NULL),
(106,5,5,NULL),
(107,5,6,NULL),
(108,5,7,NULL),
(109,5,8,NULL),
(110,5,9,NULL),
(111,5,10,NULL),
(112,5,11,NULL),
(113,5,12,NULL),
(114,5,13,NULL),
(115,5,14,NULL),
(116,5,15,NULL),
(117,5,16,NULL),
(118,5,17,NULL),
(119,5,18,NULL),
(120,5,19,NULL),
(121,6,0,NULL),
(122,6,1,NULL),
(123,6,2,NULL),
(124,6,3,NULL),
(125,6,4,NULL),
(126,6,5,NULL),
(127,6,6,NULL),
(128,6,7,NULL),
(129,6,8,NULL),
(130,6,9,NULL),
(131,6,10,NULL),
(132,6,11,NULL),
(133,6,12,NULL),
(134,6,13,NULL),
(135,6,14,NULL),
(136,6,15,NULL),
(137,6,16,NULL),
(138,6,17,NULL),
(139,6,18,NULL),
(140,6,19,NULL),
(141,7,0,NULL),
(142,7,1,NULL),
(143,7,2,NULL),
(144,7,3,NULL),
(145,7,4,NULL),
(146,7,5,NULL),
(147,7,6,NULL),
(148,7,7,NULL),
(149,7,8,NULL),
(150,7,9,NULL),
(151,7,10,NULL),
(152,7,11,NULL),
(153,7,12,NULL),
(154,7,13,NULL),
(155,7,14,NULL),
(156,7,15,NULL),
(157,7,16,NULL),
(158,7,17,NULL),
(159,7,18,NULL),
(160,7,19,NULL),
(161,8,0,NULL),
(162,8,1,NULL),
(163,8,2,NULL),
(164,8,3,NULL),
(165,8,4,NULL),
(166,8,5,NULL),
(167,8,6,NULL),
(168,8,7,NULL),
(169,8,8,NULL),
(170,8,9,NULL),
(171,8,10,NULL),
(172,8,11,NULL),
(173,8,12,NULL),
(174,8,13,NULL),
(175,8,14,NULL),
(176,8,15,NULL),
(177,8,16,NULL),
(178,8,17,NULL),
(179,8,18,NULL),
(180,8,19,NULL),
(181,9,0,NULL),
(182,9,1,NULL),
(183,9,2,NULL),
(184,9,3,NULL),
(185,9,4,NULL),
(186,9,5,NULL),
(187,9,6,NULL),
(188,9,7,NULL),
(189,9,8,NULL),
(190,9,9,NULL),
(191,9,10,NULL),
(192,9,11,NULL),
(193,9,12,NULL),
(194,9,13,NULL),
(195,9,14,NULL),
(196,9,15,NULL),
(197,9,16,NULL),
(198,9,17,NULL),
(199,9,18,NULL),
(200,9,19,NULL),
(201,10,0,NULL),
(202,10,1,NULL),
(203,10,2,NULL),
(204,10,3,NULL),
(205,10,4,NULL),
(206,10,5,NULL),
(207,10,6,NULL),
(208,10,7,NULL),
(209,10,8,NULL),
(210,10,9,NULL),
(211,10,10,NULL),
(212,10,11,NULL),
(213,10,12,NULL),
(214,10,13,NULL),
(215,10,14,NULL),
(216,10,15,NULL),
(217,10,16,NULL),
(218,10,17,NULL),
(219,10,18,NULL),
(220,10,19,NULL),
(221,11,0,NULL),
(222,11,1,NULL),
(223,11,2,NULL),
(224,11,3,NULL),
(225,11,4,NULL),
(226,11,5,NULL),
(227,11,6,NULL),
(228,11,7,NULL),
(229,11,8,NULL),
(230,11,9,NULL),
(231,11,10,NULL),
(232,11,11,NULL),
(233,11,12,NULL),
(234,11,13,NULL),
(235,11,14,NULL),
(236,11,15,NULL),
(237,11,16,NULL),
(238,11,17,NULL),
(239,11,18,NULL),
(240,11,19,NULL),
(241,12,0,NULL),
(242,12,1,NULL),
(243,12,2,NULL),
(244,12,3,NULL),
(245,12,4,NULL),
(246,12,5,NULL),
(247,12,6,NULL),
(248,12,7,NULL),
(249,12,8,NULL),
(250,12,9,NULL),
(251,12,10,NULL),
(252,12,11,NULL),
(253,12,12,NULL),
(254,12,13,NULL),
(255,12,14,NULL),
(256,12,15,NULL),
(257,12,16,NULL),
(258,12,17,NULL),
(259,12,18,NULL),
(260,12,19,NULL),
(261,13,0,NULL),
(262,13,1,NULL),
(263,13,2,NULL),
(264,13,3,NULL),
(265,13,4,NULL),
(266,13,5,NULL),
(267,13,6,NULL),
(268,13,7,NULL),
(269,13,8,NULL),
(270,13,9,NULL),
(271,13,10,NULL),
(272,13,11,NULL),
(273,13,12,NULL),
(274,13,13,NULL),
(275,13,14,NULL),
(276,13,15,NULL),
(277,13,16,NULL),
(278,13,17,NULL),
(279,13,18,NULL),
(280,13,19,NULL),
(281,14,0,NULL),
(282,14,1,NULL),
(283,14,2,NULL),
(284,14,3,NULL),
(285,14,4,NULL),
(286,14,5,NULL),
(287,14,6,NULL),
(288,14,7,NULL),
(289,14,8,NULL),
(290,14,9,NULL),
(291,14,10,NULL),
(292,14,11,NULL),
(293,14,12,NULL),
(294,14,13,NULL),
(295,14,14,NULL),
(296,14,15,NULL),
(297,14,16,NULL),
(298,14,17,NULL),
(299,14,18,NULL),
(300,14,19,NULL),
(301,15,0,NULL),
(302,15,1,NULL),
(303,15,2,NULL),
(304,15,3,NULL),
(305,15,4,NULL),
(306,15,5,NULL),
(307,15,6,NULL),
(308,15,7,NULL),
(309,15,8,NULL),
(310,15,9,NULL),
(311,15,10,NULL),
(312,15,11,NULL),
(313,15,12,NULL),
(314,15,13,NULL),
(315,15,14,NULL),
(316,15,15,NULL),
(317,15,16,NULL),
(318,15,17,NULL),
(319,15,18,NULL),
(320,15,19,NULL),
(321,16,0,NULL),
(322,16,1,NULL),
(323,16,2,NULL),
(324,16,3,NULL),
(325,16,4,NULL),
(326,16,5,NULL),
(327,16,6,NULL),
(328,16,7,NULL),
(329,16,8,NULL),
(330,16,9,NULL),
(331,16,10,NULL),
(332,16,11,NULL),
(333,16,12,NULL),
(334,16,13,NULL),
(335,16,14,NULL),
(336,16,15,NULL),
(337,16,16,NULL),
(338,16,17,NULL),
(339,16,18,NULL),
(340,16,19,NULL),
(341,17,0,NULL),
(342,17,1,NULL),
(343,17,2,NULL),
(344,17,3,NULL),
(345,17,4,NULL),
(346,17,5,NULL),
(347,17,6,NULL),
(348,17,7,NULL),
(349,17,8,NULL),
(350,17,9,NULL),
(351,17,10,NULL),
(352,17,11,NULL),
(353,17,12,NULL),
(354,17,13,NULL),
(355,17,14,NULL),
(356,17,15,NULL),
(357,17,16,NULL),
(358,17,17,NULL),
(359,17,18,NULL),
(360,17,19,NULL),
(361,18,0,NULL),
(362,18,1,NULL),
(363,18,2,NULL),
(364,18,3,NULL),
(365,18,4,NULL),
(366,18,5,NULL),
(367,18,6,NULL),
(368,18,7,NULL),
(369,18,8,NULL),
(370,18,9,NULL),
(371,18,10,NULL),
(372,18,11,NULL),
(373,18,12,NULL),
(374,18,13,NULL),
(375,18,14,NULL),
(376,18,15,NULL),
(377,18,16,NULL),
(378,18,17,NULL),
(379,18,18,NULL),
(380,18,19,NULL),
(381,19,0,NULL),
(382,19,1,NULL),
(383,19,2,NULL),
(384,19,3,NULL),
(385,19,4,NULL),
(386,19,5,NULL),
(387,19,6,NULL),
(388,19,7,NULL),
(389,19,8,NULL),
(390,19,9,NULL),
(391,19,10,NULL),
(392,19,11,NULL),
(393,19,12,NULL),
(394,19,13,NULL),
(395,19,14,NULL),
(396,19,15,NULL),
(397,19,16,NULL),
(398,19,17,NULL),
(399,19,18,NULL),
(400,19,19,NULL);
/*!40000 ALTER TABLE `board_empty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamehistory`
--

DROP TABLE IF EXISTS `gamehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamehistory` (
  `game_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL,
  `winner_id` int(11) DEFAULT NULL,
  `game_duration` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`game_history_id`),
  KEY `game_id` (`game_id`),
  KEY `winner_id` (`winner_id`),
  CONSTRAINT `gamehistory_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `gamestatus` (`game_id`),
  CONSTRAINT `gamehistory_ibfk_2` FOREIGN KEY (`winner_id`) REFERENCES `players` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamehistory`
--

LOCK TABLES `gamehistory` WRITE;
/*!40000 ALTER TABLE `gamehistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `gamehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamestatus`
--

DROP TABLE IF EXISTS `gamestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamestatus` (
  `game_id` int(11) NOT NULL AUTO_INCREMENT,
  `current_player_id` int(11) DEFAULT NULL,
  `game_state` enum('not active','initialized','started','ended','aborded') NOT NULL DEFAULT 'not active',
  `winner_id` int(11) DEFAULT NULL,
  `lastchange` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`game_id`),
  KEY `current_player_id` (`current_player_id`),
  KEY `winner_id` (`winner_id`),
  CONSTRAINT `gamestatus_ibfk_1` FOREIGN KEY (`current_player_id`) REFERENCES `players` (`player_id`),
  CONSTRAINT `gamestatus_ibfk_2` FOREIGN KEY (`winner_id`) REFERENCES `players` (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamestatus`
--

LOCK TABLES `gamestatus` WRITE;
/*!40000 ALTER TABLE `gamestatus` DISABLE KEYS */;
INSERT INTO `gamestatus` VALUES
(1,1,'not active',NULL,'2024-11-14 13:12:28');
/*!40000 ALTER TABLE `gamestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moves`
--

DROP TABLE IF EXISTS `moves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moves` (
  `move_id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `piece_id` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `rotation` enum('0','90','180','270') NOT NULL,
  `flipped` tinyint(1) NOT NULL DEFAULT 0,
  `move_time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`move_id`),
  KEY `player_id` (`player_id`),
  KEY `piece_id` (`piece_id`),
  CONSTRAINT `moves_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`),
  CONSTRAINT `moves_ibfk_2` FOREIGN KEY (`piece_id`) REFERENCES `pieces` (`piece_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moves`
--

LOCK TABLES `moves` WRITE;
/*!40000 ALTER TABLE `moves` DISABLE KEYS */;
/*!40000 ALTER TABLE `moves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pieces`
--

DROP TABLE IF EXISTS `pieces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pieces` (
  `piece_id` int(11) NOT NULL AUTO_INCREMENT,
  `shape` varchar(10) NOT NULL,
  `size` int(11) NOT NULL,
  `player_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`piece_id`),
  KEY `player_id` (`player_id`),
  CONSTRAINT `pieces_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pieces`
--

LOCK TABLES `pieces` WRITE;
/*!40000 ALTER TABLE `pieces` DISABLE KEYS */;
INSERT INTO `pieces` VALUES
(1,'Monomino',1,1),
(2,'Domino',2,1),
(3,'Tromino I',3,1),
(4,'Tromino L',3,1),
(5,'Tetromino ',4,1),
(6,'Tetromino ',4,1),
(7,'Tetromino ',4,1),
(8,'Tetromino ',4,1),
(9,'Tetromino ',4,1),
(10,'Pentomino ',5,1),
(11,'Pentomino ',5,1),
(12,'Pentomino ',5,1),
(13,'Pentomino ',5,1),
(14,'Pentomino ',5,1),
(15,'Pentomino ',5,1),
(16,'Pentomino ',5,1),
(17,'Pentomino ',5,1),
(18,'Pentomino ',5,1),
(19,'Pentomino ',5,1),
(20,'Pentomino ',5,1),
(21,'Pentomino ',5,1),
(22,'Monomino',1,2),
(23,'Domino',2,2),
(24,'Tromino I',3,2),
(25,'Tromino L',3,2),
(26,'Tetromino ',4,2),
(27,'Tetromino ',4,2),
(28,'Tetromino ',4,2),
(29,'Tetromino ',4,2),
(30,'Tetromino ',4,2),
(31,'Pentomino ',5,2),
(32,'Pentomino ',5,2),
(33,'Pentomino ',5,2),
(34,'Pentomino ',5,2),
(35,'Pentomino ',5,2),
(36,'Pentomino ',5,2),
(37,'Pentomino ',5,2),
(38,'Pentomino ',5,2),
(39,'Pentomino ',5,2),
(40,'Pentomino ',5,2),
(41,'Pentomino ',5,2),
(42,'Pentomino ',5,2);
/*!40000 ALTER TABLE `pieces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playerpieces`
--

DROP TABLE IF EXISTS `playerpieces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playerpieces` (
  `player_piece_id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `piece_id` int(11) NOT NULL,
  `is_used` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`player_piece_id`),
  KEY `player_id` (`player_id`),
  KEY `piece_id` (`piece_id`),
  CONSTRAINT `playerpieces_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`),
  CONSTRAINT `playerpieces_ibfk_2` FOREIGN KEY (`piece_id`) REFERENCES `pieces` (`piece_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playerpieces`
--

LOCK TABLES `playerpieces` WRITE;
/*!40000 ALTER TABLE `playerpieces` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerpieces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `player_id` int(11) NOT NULL AUTO_INCREMENT,
  `player_name` varchar(50) DEFAULT NULL,
  `color` enum('Κόκκινο','Μπλε') NOT NULL,
  PRIMARY KEY (`color`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES
(1,NULL,'Κόκκινο'),
(2,NULL,'Μπλε');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scores`
--

DROP TABLE IF EXISTS `scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scores` (
  `score_id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`score_id`),
  KEY `game_id` (`game_id`),
  KEY `player_id` (`player_id`),
  CONSTRAINT `scores_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `gamestatus` (`game_id`),
  CONSTRAINT `scores_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scores`
--

LOCK TABLES `scores` WRITE;
/*!40000 ALTER TABLE `scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'blokus'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `clean_board` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`iee2020177`@`localhost` PROCEDURE `clean_board`()
BEGIN
     REPLACE INTO board SELECT * FROM board_empty;
     UPDATE players SET player_name=NULL;
     UPDATE game_status SET status='not active', current_player=NULL, result=NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FillBoard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`iee2020177`@`localhost` PROCEDURE `FillBoard`()
BEGIN
    DECLARE x INT DEFAULT 0;
    DECLARE y INT DEFAULT 0;

   
    WHILE x < 20 DO
        SET y = 0;
        WHILE y < 20 DO
            INSERT INTO Board (x, y) VALUES (x, y);
            SET y = y + 1;
        END WHILE;
        SET x = x + 1;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-15 12:49:01
