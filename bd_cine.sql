-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:33065
-- Tiempo de generación: 26-06-2024 a las 02:01:27
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_cine`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asientos_reserva`
--

CREATE TABLE `asientos_reserva` (
  `id_asiento` int(10) NOT NULL,
  `nombre_asiento` varchar(7) DEFAULT NULL,
  `posicion_fila` int(5) DEFAULT NULL,
  `posicion_columna` int(5) DEFAULT NULL,
  `id_funcion` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asientos_reserva`
--

INSERT INTO `asientos_reserva` (`id_asiento`, `nombre_asiento`, `posicion_fila`, `posicion_columna`, `id_funcion`) VALUES
(1, 'A-4', 1, 4, 1),
(2, 'A-5', 1, 5, 1),
(3, 'A-6', 1, 6, 1),
(4, 'A-7', 1, 7, 1),
(5, 'A-8', 1, 8, 1),
(6, 'A-9', 1, 9, 1),
(7, 'A-9', 8, 22, 1),
(8, '', 1, 10, 1),
(9, '', 2, 4, 1),
(10, '', 2, 5, 1),
(11, '', 2, 6, 1),
(12, '', 2, 7, 1),
(13, '', 2, 11, 1),
(14, '', 8, 2, 1),
(15, '', 4, 4, 1),
(16, '', 5, 5, 1),
(17, '', 4, 19, 1),
(18, '', 8, 18, 1),
(19, '', 1, 11, 1),
(20, '', 6, 10, 1),
(21, '', 5, 7, 1),
(22, '', 5, 9, 1),
(23, '', 6, 8, 1),
(24, '', 6, 6, 1),
(25, '', 6, 4, 1),
(26, '', 5, 11, 1),
(27, '', 2, 9, 1),
(28, '', 3, 9, 1),
(29, '', 3, 8, 1),
(30, '', 2, 8, 1),
(31, '', 2, 10, 1),
(32, '', 3, 10, 1),
(33, '', 2, 14, 1),
(34, '', 2, 15, 1),
(35, '', 3, 14, 1),
(36, '', 3, 15, 1),
(37, '', 4, 15, 1),
(38, '', 1, 12, 1),
(39, '', 1, 19, 1),
(40, '', 8, 12, 1),
(41, '', 8, 19, 1),
(42, 'A-4', 1, 4, 17),
(43, 'A-5', 1, 5, 17),
(44, 'A-6', 1, 6, 17),
(45, 'A-7', 1, 7, 17),
(46, 'A-8', 1, 8, 17),
(47, 'A-9', 1, 9, 17),
(48, '', 1, 4, 1),
(49, '', 1, 5, 1),
(50, '', 1, 6, 1),
(51, '', 2, 4, 1),
(52, '', 2, 5, 1),
(53, '', 2, 6, 1),
(54, '', 1, 4, 1),
(55, '', 1, 5, 1),
(56, '', 1, 4, 1),
(57, '', 1, 5, 1),
(58, 'A-4', 1, 4, 37),
(59, '', 1, 4, NULL),
(60, '', 1, 5, NULL),
(61, '', 2, 4, NULL),
(62, '', 2, 5, NULL),
(63, '', 1, 4, 27),
(64, '', 1, 5, 27),
(65, '', 2, 4, 27),
(66, '', 2, 5, 27),
(67, '', 3, 6, 27),
(68, '', 3, 7, 27),
(69, '', 2, 5, 37),
(70, '', 3, 6, 37),
(71, '', 4, 7, 37),
(72, '', 5, 8, 37),
(73, '', 6, 9, 37),
(74, '', 7, 10, 37),
(75, '', 8, 11, 37),
(76, '', 7, 10, 37),
(77, '', 8, 11, 37),
(78, '', 7, 10, 37),
(79, '', 8, 11, 37),
(80, '', 7, 10, 37),
(81, '', 8, 11, 37),
(82, '', 7, 10, 37),
(83, '', 8, 11, 37),
(84, '', 7, 10, 37),
(85, '', 8, 11, 37),
(86, '', 7, 10, 37),
(87, '', 8, 11, 37),
(88, '', 7, 10, 37),
(89, '', 8, 11, 37),
(90, '', 7, 10, 37),
(91, '', 8, 11, 37),
(92, '', 7, 10, 37),
(93, '', 8, 11, 37),
(94, '', 7, 10, 37),
(95, '', 8, 11, 37),
(96, '', 7, 10, 37),
(97, '', 8, 11, 37),
(98, '', 7, 10, 37),
(99, '', 8, 11, 37),
(100, '', 7, 10, 37),
(101, '', 8, 11, 37),
(102, '', 7, 10, 37),
(103, '', 8, 11, 37),
(104, '', 7, 10, 37),
(105, '', 8, 11, 37),
(106, '', 7, 10, 37),
(107, '', 8, 11, 37),
(108, '', 7, 10, 37),
(109, '', 8, 11, 37),
(110, '', 7, 10, 37),
(111, '', 8, 11, 37),
(112, '', 7, 10, 37),
(113, '', 8, 11, 37),
(114, '', 7, 10, 37),
(115, '', 8, 11, 37),
(116, '', 7, 10, 37),
(117, '', 8, 11, 37),
(118, '', 7, 10, 37),
(119, '', 8, 11, 37),
(120, '', 7, 10, 37),
(121, '', 8, 11, 37),
(122, '', 7, 10, 37),
(123, '', 8, 11, 37),
(124, '', 7, 10, 37),
(125, '', 8, 11, 37),
(126, '', 7, 10, 37),
(127, '', 8, 11, 37),
(128, '', 7, 10, 37),
(129, '', 8, 11, 37),
(130, '', 7, 10, 37),
(131, '', 8, 11, 37),
(132, '', 7, 10, 37),
(133, '', 8, 11, 37),
(134, '', 7, 10, 37),
(135, '', 8, 11, 37),
(136, '', 7, 10, 37),
(137, '', 8, 11, 37),
(138, '', 7, 10, 37),
(139, '', 8, 11, 37),
(140, '', 7, 10, 37),
(141, '', 8, 11, 37),
(142, '', 7, 10, 37),
(143, '', 8, 11, 37),
(144, '', 7, 10, 37),
(145, '', 8, 11, 37),
(146, '', 7, 10, 37),
(147, '', 8, 11, 37),
(148, '', 7, 10, 37),
(149, '', 8, 11, 37),
(150, '', 7, 10, 37),
(151, '', 8, 11, 37),
(152, '', 7, 10, 37),
(153, '', 8, 11, 37),
(154, '', 7, 10, 37),
(155, '', 8, 11, 37),
(156, '', 7, 10, 37),
(157, '', 8, 11, 37),
(158, '', 7, 10, 37),
(159, '', 8, 11, 37),
(160, '', 7, 10, 37),
(161, '', 8, 11, 37),
(162, '', 7, 10, 37),
(163, '', 8, 11, 37),
(164, '', 7, 10, 37),
(165, '', 8, 11, 37),
(166, '', 7, 10, 37),
(167, '', 8, 11, 37),
(168, '', 7, 10, 37),
(169, '', 8, 11, 37),
(170, '', 7, 10, 37),
(171, '', 8, 11, 37),
(172, '', 7, 10, 37),
(173, '', 8, 11, 37),
(174, '', 7, 10, 37),
(175, '', 8, 11, 37),
(176, '', 7, 10, 37),
(177, '', 8, 11, 37),
(178, '', 7, 10, 37),
(179, '', 8, 11, 37),
(180, '', 7, 10, 37),
(181, '', 8, 11, 37),
(182, '', 7, 10, 37),
(183, '', 8, 11, 37),
(184, '', 7, 10, 37),
(185, '', 8, 11, 37),
(186, '', 7, 10, 37),
(187, '', 8, 11, 37),
(188, '', 7, 10, 37),
(189, '', 8, 11, 37),
(190, '', 7, 10, 37),
(191, '', 8, 11, 37),
(192, '', 7, 10, 37),
(193, '', 8, 11, 37),
(194, '', 7, 10, 37),
(195, '', 8, 11, 37),
(196, '', 7, 10, 37),
(197, '', 8, 11, 37),
(198, '', 7, 10, 37),
(199, '', 8, 11, 37),
(200, '', 7, 10, 37),
(201, '', 8, 11, 37),
(202, '', 7, 10, 37),
(203, '', 8, 11, 37),
(204, '', 7, 10, 37),
(205, '', 8, 11, 37),
(206, '', 7, 10, 37),
(207, '', 8, 11, 37),
(208, '', 7, 10, 37),
(209, '', 8, 11, 37),
(210, '', 7, 10, 37),
(211, '', 8, 11, 37),
(212, '', 7, 10, 37),
(213, '', 8, 11, 37),
(214, '', 7, 10, 37),
(215, '', 8, 11, 37),
(216, '', 7, 10, 37),
(217, '', 8, 11, 37),
(218, '', 7, 10, 37),
(219, '', 8, 11, 37),
(220, '', 7, 10, 37),
(221, '', 8, 11, 37),
(222, '', 7, 10, 37),
(223, '', 7, 10, 37),
(224, '', 8, 11, 37),
(225, '', 7, 10, 37),
(226, '', 8, 11, 37),
(227, '', 7, 10, 37),
(228, '', 8, 11, 37),
(229, '', 7, 10, 37),
(230, '', 8, 11, 37),
(231, '', 7, 10, 37),
(232, '', 8, 11, 37),
(233, '', 7, 10, 37),
(234, '', 8, 11, 37),
(235, '', 7, 10, 37),
(236, '', 8, 11, 37),
(237, '', 7, 10, 37),
(238, '', 8, 11, 37),
(239, '', 7, 10, 37),
(240, '', 8, 11, 37),
(241, '', 7, 10, 37),
(242, '', 8, 11, 37),
(243, '', 7, 10, 37),
(244, '', 8, 11, 37),
(245, '', 7, 10, 37),
(246, '', 8, 11, 37),
(247, '', 7, 10, 37),
(248, '', 8, 11, 37),
(249, '', 7, 10, 37),
(250, '', 8, 11, 37),
(251, '', 7, 10, 37),
(252, '', 8, 11, 37),
(253, '', 7, 10, 37),
(254, '', 8, 11, 37),
(255, '', 7, 10, 37),
(256, '', 8, 11, 37),
(257, '', 7, 10, 37),
(258, '', 8, 11, 37),
(259, '', 7, 10, 37),
(260, '', 8, 11, 37),
(261, '', 7, 10, 37),
(262, '', 8, 11, 37),
(263, '', 7, 10, 37),
(264, '', 8, 11, 37),
(265, '', 7, 10, 37),
(266, '', 8, 11, 37),
(267, '', 7, 10, 37),
(268, '', 8, 11, 37),
(269, '', 7, 10, 37),
(270, '', 8, 11, 37),
(271, '', 7, 10, 37),
(272, '', 8, 11, 37),
(273, '', 7, 10, 37),
(274, '', 8, 11, 37),
(275, '', 7, 10, 37),
(276, '', 8, 11, 37),
(277, '', 7, 10, 37),
(278, '', 8, 11, 37),
(279, '', 7, 10, 37),
(280, '', 8, 11, 37),
(281, '', 7, 10, 37),
(282, '', 8, 11, 37),
(283, '', 7, 10, 37),
(284, '', 8, 11, 37),
(285, '', 7, 10, 37),
(286, '', 8, 11, 37),
(287, '', 7, 10, 37),
(288, '', 8, 11, 37),
(289, '', 7, 10, 37),
(290, '', 8, 11, 37),
(291, '', 7, 10, 37),
(292, '', 8, 11, 37),
(293, '', 7, 10, 37),
(294, '', 8, 11, 37),
(295, '', 7, 10, 37),
(296, '', 8, 11, 37),
(297, '', 7, 10, 37),
(298, '', 8, 11, 37),
(299, '', 7, 10, 37),
(300, '', 8, 11, 37),
(301, '', 7, 10, 37),
(302, '', 8, 11, 37),
(303, '', 7, 10, 37),
(304, '', 8, 11, 37),
(305, '', 7, 10, 37),
(306, '', 8, 11, 37),
(307, '', 7, 10, 37),
(308, '', 8, 11, 37),
(309, '', 7, 10, 37),
(310, '', 8, 11, 37),
(311, '', 7, 10, 37),
(312, '', 8, 11, 37),
(313, '', 7, 10, 37),
(314, '', 8, 11, 37),
(315, '', 7, 10, 37),
(316, '', 8, 11, 37),
(317, '', 7, 10, 37),
(318, '', 8, 11, 37),
(319, '', 7, 10, 37),
(320, '', 8, 11, 37),
(321, '', 7, 10, 37),
(322, '', 8, 11, 37),
(323, '', 7, 10, 37),
(324, '', 8, 11, 37),
(325, '', 7, 10, 37),
(326, '', 8, 11, 37),
(327, '', 7, 10, 37),
(328, '', 8, 11, 37),
(329, '', 7, 10, 37),
(330, '', 8, 11, 37),
(331, '', 7, 10, 37),
(332, '', 8, 11, 37),
(333, '', 7, 10, 37),
(334, '', 8, 11, 37),
(335, '', 7, 10, 37),
(336, '', 8, 11, 37),
(337, '', 7, 10, 37),
(338, '', 8, 11, 37),
(339, '', 7, 10, 37),
(340, '', 8, 11, 37),
(341, '', 7, 10, 37),
(342, '', 8, 11, 37),
(343, '', 7, 10, 37),
(344, '', 8, 11, 37),
(345, '', 7, 10, 37),
(346, '', 8, 11, 37),
(347, '', 7, 10, 37),
(348, '', 8, 11, 37),
(349, '', 7, 10, 37),
(350, '', 8, 11, 37),
(351, '', 7, 10, 37),
(352, '', 8, 11, 37),
(353, '', 7, 10, 37),
(354, '', 8, 11, 37),
(355, '', 7, 10, 37),
(356, '', 8, 11, 37),
(357, '', 7, 10, 37),
(358, '', 8, 11, 37),
(359, '', 7, 10, 37),
(360, '', 8, 11, 37),
(361, '', 7, 10, 37),
(362, '', 8, 11, 37),
(363, '', 7, 10, 37),
(364, '', 8, 11, 37),
(365, '', 7, 10, 37),
(366, '', 8, 11, 37),
(367, '', 7, 10, 37),
(368, '', 8, 11, 37),
(369, '', 7, 10, 37),
(370, '', 8, 11, 37),
(371, '', 7, 10, 37),
(372, '', 8, 11, 37),
(373, '', 7, 10, 37),
(374, '', 8, 11, 37),
(375, '', 7, 10, 37),
(376, '', 8, 11, 37),
(377, '', 7, 10, 37),
(378, '', 8, 11, 37),
(379, '', 7, 10, 37),
(380, '', 8, 11, 37),
(381, '', 7, 10, 37),
(382, '', 8, 11, 37),
(383, '', 7, 10, 37),
(384, '', 8, 11, 37),
(385, '', 7, 10, 37),
(386, '', 8, 11, 37),
(387, '', 7, 10, 37),
(388, '', 8, 11, 37),
(389, '', 7, 10, 37),
(390, '', 8, 11, 37),
(391, '', 7, 10, 37),
(392, '', 8, 11, 37),
(393, '', 7, 10, 37),
(394, '', 8, 11, 37),
(395, '', 7, 10, 37),
(396, '', 8, 11, 37),
(397, '', 7, 10, 37),
(398, '', 8, 11, 37),
(399, '', 7, 10, 37),
(400, '', 8, 11, 37),
(401, '', 7, 10, 37),
(402, '', 8, 11, 37),
(403, '', 7, 10, 37),
(404, '', 8, 11, 37),
(405, '', 7, 10, 37),
(406, '', 8, 11, 37),
(407, '', 7, 10, 37),
(408, '', 8, 11, 37),
(409, '', 7, 10, 37),
(410, '', 8, 11, 37),
(411, '', 7, 10, 37),
(412, '', 8, 11, 37),
(413, '', 7, 10, 37),
(414, '', 8, 11, 37),
(415, '', 7, 10, 37),
(416, '', 8, 11, 37),
(417, '', 7, 10, 37),
(418, '', 8, 11, 37),
(419, '', 7, 10, 37),
(420, '', 8, 11, 37),
(421, '', 7, 10, 37),
(422, '', 8, 11, 37),
(423, '', 7, 10, 37),
(424, '', 8, 11, 37),
(425, '', 7, 10, 37),
(426, '', 8, 11, 37),
(427, '', 7, 10, 37),
(428, '', 8, 11, 37),
(429, '', 7, 10, 37),
(430, '', 8, 11, 37),
(431, '', 7, 10, 37),
(432, '', 8, 11, 37),
(433, '', 7, 10, 37),
(434, '', 8, 11, 37),
(435, '', 7, 10, 37),
(436, '', 8, 11, 37),
(437, '', 7, 10, 37),
(438, '', 8, 11, 37),
(439, '', 7, 10, 37),
(440, '', 8, 11, 37),
(441, '', 7, 10, 37),
(442, '', 8, 11, 37),
(443, '', 7, 10, 37),
(444, '', 8, 11, 37),
(445, '', 7, 10, 37),
(446, '', 8, 11, 37),
(447, '', 7, 10, 37),
(448, '', 8, 11, 37),
(449, '', 7, 10, 37),
(450, '', 8, 11, 37),
(451, '', 7, 10, 37),
(452, '', 8, 11, 37),
(453, '', 7, 10, 37),
(454, '', 8, 11, 37),
(455, '', 7, 10, 37),
(456, '', 8, 11, 37),
(457, '', 7, 10, 37),
(458, '', 8, 11, 37),
(459, '', 7, 10, 37),
(460, '', 8, 11, 37),
(461, '', 7, 10, 37),
(462, '', 8, 11, 37),
(463, '', 7, 10, 37),
(464, '', 8, 11, 37),
(465, '', 7, 10, 37),
(466, '', 8, 11, 37),
(467, '', 7, 10, 37),
(468, '', 8, 11, 37),
(469, '', 7, 10, 37),
(470, '', 8, 11, 37),
(471, '', 7, 10, 37),
(472, '', 8, 11, 37),
(473, '', 7, 10, 37),
(474, '', 8, 11, 37),
(475, '', 7, 10, 37),
(476, '', 8, 11, 37),
(477, '', 7, 10, 37),
(478, '', 8, 11, 37),
(479, '', 7, 10, 37),
(480, '', 8, 11, 37),
(481, '', 7, 10, 37),
(482, '', 8, 11, 37),
(483, '', 7, 10, 37),
(484, '', 8, 11, 37),
(485, '', 7, 10, 37),
(486, '', 8, 11, 37),
(487, '', 7, 10, 37),
(488, '', 8, 11, 37),
(489, '', 7, 10, 37),
(490, '', 8, 11, 37),
(491, '', 7, 10, 37),
(492, '', 8, 11, 37),
(493, '', 7, 10, 37),
(494, '', 8, 11, 37),
(495, '', 7, 10, 37),
(496, '', 8, 11, 37),
(497, '', 7, 10, 37),
(498, '', 8, 11, 37),
(499, '', 7, 10, 37),
(500, '', 8, 11, 37),
(501, '', 7, 10, 37),
(502, '', 8, 11, 37),
(503, '', 8, 11, 37),
(504, '', 8, 11, 37),
(505, '', 8, 11, 37),
(506, '', 8, 11, 37),
(507, '', 7, 12, 37),
(508, '', 1, 4, 51),
(509, '', 1, 5, 51),
(510, '', 2, 4, 17),
(511, '', 3, 5, 17),
(512, '', 1, 4, 22),
(513, '', 1, 5, 32),
(514, '', 8, 19, 32),
(515, '', 8, 11, 37),
(516, '', 8, 4, 22),
(517, '', 8, 11, 22),
(518, '', 8, 11, 27),
(519, '', 8, 11, 32),
(520, '', 3, 17, 24),
(521, '', 8, 4, 17),
(522, '', 8, 19, 22),
(523, '', 8, 21, 17),
(524, '', 8, 22, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `id_calificacion` int(20) NOT NULL,
  `id_pelicula` int(20) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `calificacion` decimal(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`id_calificacion`, `id_pelicula`, `id_usuario`, `calificacion`) VALUES
(1, 1, 1, 2.5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `id_pelicula` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id_estado`, `tipo`, `id_pelicula`) VALUES
(1, 'cartelera', 1),
(2, 'estreno', 4),
(3, 'cartelera', 1),
(4, 'estreno', 12),
(5, 'cartelera', 1),
(6, 'cartelera', 12),
(7, 'cartelera', 4),
(8, 'cartelera', 7),
(9, 'cartelera', 8),
(10, 'cartelera', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcion`
--

CREATE TABLE `funcion` (
  `id_funcion` int(10) NOT NULL,
  `id_pelicula` int(20) DEFAULT NULL,
  `id_sala` int(5) DEFAULT NULL,
  `fecha_funcion` date DEFAULT NULL,
  `hora_funcion` varchar(5) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `funcion`
--

INSERT INTO `funcion` (`id_funcion`, `id_pelicula`, `id_sala`, `fecha_funcion`, `hora_funcion`, `tipo`) VALUES
(1, 1, 1, '2000-12-12', '13:00', '2D'),
(2, 1, 1, '2024-06-22', '10:00', '2D'),
(3, 1, 1, '2024-06-22', '12:30', '2D'),
(4, 1, 1, '2024-06-22', '14:30', '2D'),
(5, 1, 1, '2024-06-22', '16:30', '2D'),
(6, 1, 1, '2024-06-22', '18:00', '2D'),
(7, 1, 1, '2024-06-23', '10:00', '2D'),
(8, 1, 1, '2024-06-23', '12:30', '2D'),
(9, 1, 1, '2024-06-23', '14:30', '2D'),
(10, 1, 1, '2024-06-23', '16:30', '2D'),
(11, 1, 1, '2024-06-23', '18:00', '2D'),
(12, 1, 1, '2024-06-24', '10:00', '2D'),
(13, 1, 1, '2024-06-24', '12:30', '2D'),
(14, 1, 1, '2024-06-24', '14:30', '2D'),
(15, 1, 1, '2024-06-24', '16:30', '2D'),
(16, 1, 1, '2024-06-24', '18:00', '2D'),
(17, 1, 1, '2024-06-25', '10:00', '2D'),
(18, 1, 1, '2024-06-25', '12:30', '2D'),
(19, 1, 1, '2024-06-25', '14:30', '2D'),
(20, 1, 1, '2024-06-25', '16:30', '2D'),
(21, 1, 1, '2024-06-25', '18:00', '2D'),
(22, 1, 1, '2024-06-26', '10:00', '2D'),
(23, 1, 1, '2024-06-26', '12:30', '2D'),
(24, 1, 1, '2024-06-26', '14:30', '2D'),
(25, 1, 1, '2024-06-26', '16:30', '2D'),
(26, 1, 1, '2024-06-26', '18:00', '2D'),
(27, 1, 1, '2024-06-27', '10:00', '2D'),
(28, 1, 1, '2024-06-27', '12:30', '2D'),
(29, 1, 1, '2024-06-27', '14:30', '2D'),
(30, 1, 1, '2024-06-27', '16:30', '2D'),
(31, 1, 1, '2024-06-27', '18:00', '2D'),
(32, 1, 1, '2024-06-28', '10:00', '2D'),
(33, 1, 1, '2024-06-28', '12:30', '2D'),
(34, 1, 1, '2024-06-28', '14:30', '2D'),
(35, 1, 1, '2024-06-28', '16:30', '2D'),
(36, 1, 1, '2024-06-28', '18:00', '2D'),
(37, 1, 1, '2024-06-29', '10:00', '2D'),
(38, 1, 1, '2024-06-29', '12:30', '2D'),
(39, 1, 1, '2024-06-29', '14:30', '2D'),
(40, 1, 1, '2024-06-29', '16:30', '2D'),
(41, 1, 1, '2024-06-29', '18:00', '2D'),
(42, 4, 1, '2024-06-29', '10:00', '2D'),
(43, 4, 1, '2024-06-29', '12:30', '2D'),
(44, 4, 1, '2024-06-29', '14:30', '2D'),
(45, 4, 1, '2024-06-29', '16:30', '2D'),
(46, 4, 1, '2024-06-29', '18:00', '2D'),
(47, 12, 1, '2024-06-30', '10:00', '2D'),
(48, 7, 1, '2024-06-30', '12:30', '2D'),
(49, 8, 1, '2024-06-30', '16:30', '2D'),
(50, 11, 1, '2024-06-30', '18:00', '2D'),
(51, 1, 1, '2024-06-30', '10:00', '2D'),
(52, 1, 1, '2024-07-01', '10:00', '2D'),
(53, 1, 1, '2024-06-30', '12:30', '2D'),
(54, 1, 1, '2024-06-30', '14:30', '2D'),
(55, 1, 1, '2024-06-30', '16:30', '2D'),
(56, 1, 1, '2024-06-30', '18:00', '2D'),
(57, 1, 1, '2024-07-01', '12:30', '2D'),
(58, 1, 1, '2024-07-01', '14:30', '2D'),
(59, 1, 1, '2024-07-01', '16:30', '2D'),
(60, 1, 1, '2024-07-01', '18:00', '2D'),
(61, 10, 1, '2024-07-02', '18:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `id_pelicula` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `sinopsis` text DEFAULT NULL,
  `duracion` int(20) DEFAULT NULL,
  `genero` varchar(30) DEFAULT NULL,
  `fecha_estreno` date DEFAULT NULL,
  `calificacion_total` decimal(2,1) DEFAULT NULL,
  `cantidad_vistas` int(20) DEFAULT NULL,
  `poster_ruta` varchar(50) DEFAULT NULL,
  `portada_ruta` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`id_pelicula`, `nombre`, `sinopsis`, `duracion`, `genero`, `fecha_estreno`, `calificacion_total`, `cantidad_vistas`, `poster_ruta`, `portada_ruta`) VALUES
(1, 'Pokemon Detective Pikachu', 'Un joven une fuerzas con el detective Pikachu\npara desentrañar el misterio detrás de la\ndesaparición de su padre. El dúo dinámico\ndescubre una trama tortuosa que representa\nuna amenaza para el universo Pokémon.', 104, 'Accion', '2003-02-13', NULL, NULL, 'posters/pokemonP.jpg', 'portadas/pokemonportada.jpg'),
(4, 'Your Name', 'Mitsuha es una adolescente que detesta su vida rural en el campo. Por otro lado, Taki es un chico que vive en Tokio y sueña con ser un artista o un arquitecto. Los destinos de estos a veces se entrelazan la noche en que dos estrellas caen del cielo', 107, 'Romance', '2024-06-02', NULL, NULL, 'posters/ynPoster.png', 'portadas/ynPortada.jpg'),
(7, 'Intensamente 2', '\"Del Revés 2 (Inside out 2)\", de Disney y Pixar, regresa a la mente de una Riley recién entrada en la adolescencia justo en el momento en que el Cuartel General está sufriendo una repentina reforma para hacerle hueco a algo totalmente inesperado', 180, 'Aventura', '2024-05-31', NULL, NULL, 'posters/intesamente2.jpg', 'portadas/im2Portada.png'),
(8, 'Joker', 'Arthur Fleck adora hacer rei­r a la gente, pero su carrera como comediante es un fracaso. El repudio social, la marginaciÃ³n y una serie de tragicos acontecimientos lo conducen por el sendero de la locura y, finalmente, cae en el mundo del crimen.', 122, 'Comedia', '2024-06-13', NULL, NULL, 'posters/jokkerPoster.jpg', 'portadas/jokerPortada.jpg'),
(9, 'Iron man 3', 'El descarado y brillante Tony Stark, tras ver destruido todo su universo personal, debe encontrar y enfrentarse a un enemigo cuyo poder no conoce lÃ­mites. Este viaje pondrÃ¡ a prueba su entereza una y otra vez, y le obligarÃ¡ a confiar en su ingenio.', 130, 'Accion', '2024-05-30', NULL, NULL, 'posters\\ironman3.jpg', 'portadas/ironman3Portada.jpg'),
(10, 'Capitana Marvel', 'Una guerrera extraterrestre de la civilizaciÃ³n Kree se encuentra atrapada en medio de una batalla. Con la ayuda de Nick Fury trata de descubrir los secretos de su pasado mientras aprovecha sus poderes para terminar la guerra.', 124, 'Accion', '2024-06-24', NULL, NULL, 'posters/captainP.jpg', 'portadas/captainMarvel.jpg'),
(11, 'Garfield: Fuera de casa', 'El mimado gato casero Garfield se reencuentra con su padre, el gato callejero Vic, de quien hace mucho que no sabÃ­a nada. Vic arrastra a su hijo y a Odie, el perrito que vive con Garfield, a una trepidante aventura lejos de casa.', 101, 'Comedia', '2024-06-25', NULL, NULL, 'posters/garfield.png', 'portadas/gPort.png'),
(12, 'Interestelar', 'Gracias a un descubrimiento, un grupo de cientÃ­ficos y exploradores, encabezados por Cooper, se embarcan en un viaje espacial para encontrar un lugar con las condiciones necesarias para reemplazar a la Tierra y comenzar una nueva vida allÃ­.', 169, 'Cienciafic', '2024-06-25', NULL, NULL, 'posters/interestlarP.jpg', 'portadas/interestelarportada.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sala`
--

CREATE TABLE `sala` (
  `id_sala` int(5) NOT NULL,
  `nombre_sala` varchar(20) DEFAULT NULL,
  `capacidad` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sala`
--

INSERT INTO `sala` (`id_sala`, `nombre_sala`, `capacidad`) VALUES
(1, 'A1', 200),
(2, 'A2', 200),
(3, 'A3', 200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `paterno` varchar(30) DEFAULT NULL,
  `materno` varchar(30) DEFAULT NULL,
  `celular` int(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `contraseña` varchar(70) DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `paterno`, `materno`, `celular`, `email`, `contraseña`, `fecha_registro`) VALUES
(1, 'Juan', 'Mamani', 'Mamani', 78976562, 'juandy@gmail.com', 'juandediosmamanimamani', '2024-05-24 20:51:51'),
(2, 'Javier', 'Apaza', 'Mamani', 74847290, 'admin@mail.com', NULL, '2024-05-28 23:46:17'),
(3, 'Katherine Santos', 'Santos', 'QuiÃ±ones', 69965522, 'katy@gmail.com', NULL, '2024-05-28 23:47:26'),
(4, 'Jacob', 'Quiroga', 'Sanchez', 60662578, 'jacibi5566@gmail.com', 'jacobo556677', '2024-06-03 15:32:25'),
(5, 'Melody', 'Tapia', 'Ramos', 60662577, 'melody@gmail.com', 'melody556677', '2024-06-14 19:29:11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asientos_reserva`
--
ALTER TABLE `asientos_reserva`
  ADD PRIMARY KEY (`id_asiento`),
  ADD KEY `id_funcion` (`id_funcion`);

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`id_calificacion`),
  ADD KEY `id_pelicula` (`id_pelicula`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_estado`),
  ADD KEY `id_pelicula` (`id_pelicula`);

--
-- Indices de la tabla `funcion`
--
ALTER TABLE `funcion`
  ADD PRIMARY KEY (`id_funcion`),
  ADD KEY `id_pelicula` (`id_pelicula`),
  ADD KEY `id_sala` (`id_sala`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`id_pelicula`);

--
-- Indices de la tabla `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`id_sala`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asientos_reserva`
--
ALTER TABLE `asientos_reserva`
  MODIFY `id_asiento` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=525;

--
-- AUTO_INCREMENT de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  MODIFY `id_calificacion` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `funcion`
--
ALTER TABLE `funcion`
  MODIFY `id_funcion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `id_pelicula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `sala`
--
ALTER TABLE `sala`
  MODIFY `id_sala` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asientos_reserva`
--
ALTER TABLE `asientos_reserva`
  ADD CONSTRAINT `asientos_reserva_ibfk_1` FOREIGN KEY (`id_funcion`) REFERENCES `funcion` (`id_funcion`);

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `calificaciones_ibfk_1` FOREIGN KEY (`id_pelicula`) REFERENCES `pelicula` (`id_pelicula`),
  ADD CONSTRAINT `calificaciones_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `estado`
--
ALTER TABLE `estado`
  ADD CONSTRAINT `estado_ibfk_1` FOREIGN KEY (`id_pelicula`) REFERENCES `pelicula` (`id_pelicula`);

--
-- Filtros para la tabla `funcion`
--
ALTER TABLE `funcion`
  ADD CONSTRAINT `funcion_ibfk_1` FOREIGN KEY (`id_pelicula`) REFERENCES `pelicula` (`id_pelicula`),
  ADD CONSTRAINT `funcion_ibfk_2` FOREIGN KEY (`id_sala`) REFERENCES `sala` (`id_sala`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
