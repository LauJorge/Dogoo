-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 09, 2018 at 04:03 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dogoolau`
--

-- --------------------------------------------------------

--
-- Table structure for table `localidades`
--

CREATE TABLE `localidades` (
  `id_localidad` int(99) NOT NULL,
  `localidad` varchar(264) COLLATE utf8_spanish_ci NOT NULL,
  `id_provincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `localidades`
--

INSERT INTO `localidades` (`id_localidad`, `localidad`, `id_provincia`) VALUES
(1, 'Alejandro Petión', 1),
(2, 'Alto Los Cardales', 1),
(3, 'Arribeños (Buenos Aires)', 1),
(4, 'Ascensión (Buenos Aires)', 1),
(5, 'Cacharí', 1),
(6, 'Campos Salles', 1),
(7, 'Casbas', 1),
(8, 'Chascomús Country Club', 1),
(9, 'Chillar', 1),
(10, 'Claromecó', 1),
(11, 'Comandante Nicanor Otamendi', 1),
(12, 'Country Club Bosque Real-Barrio Morabo', 1),
(13, 'Country Los Médanos', 1),
(14, 'Darregueira', 1),
(15, 'Eduardo O\'Brien', 1),
(16, 'El Remanso (barrio parque)', 1),
(17, 'Empalme Lobos', 1),
(18, 'Estación Camet', 1),
(19, 'Ferré (Buenos Aires)', 1),
(20, 'General Mansilla', 1),
(21, 'General Rojo', 1),
(22, 'Gobernador Castro', 1),
(23, 'Henderson (Buenos Aires)', 1),
(24, 'Hilario Ascasubi (Buenos Aires)', 1),
(25, 'Hinojo (Buenos Aires)', 1),
(26, 'Huanguelén', 1),
(27, 'Jeppener', 1),
(28, 'Juan Bautista Alberdi (Buenos Aires)', 1),
(29, 'Juan Cousté (Buenos Aires)', 1),
(30, 'Juan José Paso (Buenos Aires)', 1),
(31, 'Juan Nepomuceno Fernández (Buenos Aires)', 1),
(32, 'La Dulce', 1),
(33, 'Leandro N. Alem (Buenos Aires)', 1),
(34, 'Lima (Buenos Aires)', 1),
(35, 'Loma Negra', 1),
(36, 'Los Cardales', 1),
(37, 'Luján', 1),
(38, 'Mayor Buratovich', 1),
(39, 'Moquehuá', 1),
(40, 'Nicolás Levalle (Buenos Aires)', 1),
(41, 'Norberto de la Riestra (Buenos Aires)', 1),
(42, 'Orense (Buenos Aires)', 1),
(43, 'Palemón Huergo', 1),
(44, 'Parada Robles', 1),
(45, 'Paraje Vallimanca', 1),
(46, 'Pavón (Exaltación de la Cruz)', 1),
(47, 'Pedro Luro (Argentina)', 1),
(48, 'Pérez Millán', 1),
(49, 'Piedritas', 1),
(50, 'Quequén', 1),
(51, 'Rawson (Buenos Aires)', 1),
(52, 'Roberts (Buenos Aires)', 1),
(53, 'Saavedra (ciudad)', 1),
(54, 'San José (Coronel Suárez)', 1),
(55, 'Santa Lucía (Buenos Aires)', 1),
(56, 'Santa Rosa (Buenos Aires)', 1),
(57, 'Sierra Chica (Buenos Aires)', 1),
(58, 'Sierra de la Ventana', 1),
(59, 'Sierras Bayas', 1),
(60, 'Treinta de Agosto', 1),
(61, 'Tres Algarrobos', 1),
(62, 'Urdampilleta', 1),
(63, 'Villa Arcadia', 1),
(64, 'Villa Cacique', 1),
(65, 'Villa Campi', 1),
(66, 'Villa Canto', 1),
(67, 'Villa Ramallo', 1),
(68, 'Villalonga (Buenos Aires)', 1),
(69, 'Ambato', 2),
(70, 'Ancasti', 2),
(71, 'Andalgalá', 2),
(72, 'Antofagasta de la Sierra', 2),
(73, 'Belén', 2),
(74, 'Capayán', 2),
(75, 'Capital', 2),
(76, 'El Alto', 2),
(77, 'Fray Mamerto Esquiú', 2),
(78, 'La Paz', 2),
(79, 'Paclín', 2),
(80, 'Pomán', 2),
(81, 'Santa María', 2),
(82, 'Santa Rosa', 2),
(83, 'Tinogasta', 2),
(84, 'Valle Viejo', 2),
(85, 'Almirante Brown', 3),
(86, 'Bermejo', 3),
(87, 'Chacabuco', 3),
(88, 'Comandante Fernández', 3),
(89, 'Doce de Octubre (12 de Octubre)', 3),
(90, 'Dos de Abril (2 de Abril)', 3),
(91, 'Fray Justo Santa María de Oro', 3),
(92, 'General Belgrano', 3),
(93, 'General Donovan', 3),
(94, 'General Güemes', 3),
(95, 'Independencia', 3),
(96, 'Libertad', 3),
(97, 'Libertador General San Martín', 3),
(98, 'Maipú', 3),
(99, 'Mayor Luis Jorge Fontana', 3),
(100, 'Nueve de Julio (9 de Julio)', 3),
(101, 'O\'Higgins', 3),
(102, 'Presidencia de la Plaza', 3),
(103, 'Primero de Mayo (1º de Mayo)', 3),
(104, 'Quitilipi', 3),
(105, 'San Fernando', 3),
(106, 'San Lorenzo', 3),
(107, 'Sargento Cabral', 3),
(108, 'Tapenagá', 3),
(109, 'Veinticinco de Mayo (25 de Mayo)', 3),
(110, 'Biedma', 4),
(111, 'Cushamen', 4),
(112, 'Escalante', 4),
(113, 'Florentino Ameghino', 4),
(114, 'Futaleufú', 4),
(115, 'Gaiman', 4),
(116, 'Gastre', 4),
(117, 'Languiñeo', 4),
(118, 'Mártires', 4),
(119, 'Paso de Indios', 4),
(120, 'Rawson', 4),
(121, 'Río Senguer', 4),
(122, 'Sarmiento', 4),
(123, 'Tehuelches', 4),
(124, 'Telsen', 4),
(125, 'Calamuchita', 5),
(126, 'Capital', 5),
(127, 'Colón', 5),
(128, 'Cruz del Eje', 5),
(129, 'General Roca', 5),
(130, 'General San Martín', 5),
(131, 'Ischilín', 5),
(132, 'Juárez Celman', 5),
(133, 'Marcos Juárez', 5),
(134, 'Minas', 5),
(135, 'Pocho', 5),
(136, 'Presidente Roque Sáenz Peña', 5),
(137, 'Punilla', 5),
(138, 'Río Cuarto', 5),
(139, 'Río Primero', 5),
(140, 'Río Seco', 5),
(141, 'Río Segundo', 5),
(142, 'San Alberto', 5),
(143, 'San Javier', 5),
(144, 'San Justo', 5),
(145, 'Santa María', 5),
(146, 'Sobremonte', 5),
(147, 'Tercero Arriba', 5),
(148, 'Totoral', 5),
(149, 'Tulumba', 5),
(150, 'Unión', 5),
(151, 'Bella Vista', 6),
(152, 'Berón de Astrada', 6),
(153, 'Capital', 6),
(154, 'Concepción', 6),
(155, 'Curuzú Cuatiá', 6),
(156, 'Empedrado', 6),
(157, 'Esquina', 6),
(158, 'General Alvear', 6),
(159, 'General Paz', 6),
(160, 'Goya', 6),
(161, 'Itatí', 6),
(162, 'Ituzaingó', 6),
(163, 'Lavalle', 6),
(164, 'Mburucuyá', 6),
(165, 'Mercedes', 6),
(166, 'Monte Caseros', 6),
(167, 'Paso de los Libres', 6),
(168, 'Saladas', 6),
(169, 'San Cosme', 6),
(170, 'San Luis del Palmar', 6),
(171, 'San Martín', 6),
(172, 'San Miguel', 6),
(173, 'San Roque', 6),
(174, 'Santo Tomé', 6),
(175, 'Sauce', 6),
(176, 'Colón', 7),
(177, 'Concordia', 7),
(178, 'Diamante', 7),
(179, 'Federación', 7),
(180, 'Federal', 7),
(181, 'Feliciano', 7),
(182, 'Gualeguay', 7),
(183, 'Gualeguaychú', 7),
(184, 'Islas del Ibicuy', 7),
(185, 'La Paz', 7),
(186, 'Nogoyá', 7),
(187, 'Paraná', 7),
(188, 'San Salvador', 7),
(189, 'Tala', 7),
(190, 'Uruguay', 7),
(191, 'Victoria', 7),
(192, 'Villaguay', 7),
(193, 'Bermejo', 8),
(194, 'Formosa', 8),
(195, 'Laishi', 8),
(196, 'Matacos', 8),
(197, 'Patiño', 8),
(198, 'Pilagás', 8),
(199, 'Pilcomayo', 8),
(200, 'Pirané', 8),
(201, 'Ramón Lista', 8),
(202, 'Cochinoca', 9),
(203, 'Doctor Manuel Belgrano', 9),
(204, 'El Carmen', 9),
(205, 'Humahuaca', 9),
(206, 'Ledesma', 9),
(207, 'Palpalá', 9),
(208, 'Rinconada', 9),
(209, 'San Antonio', 9),
(210, 'San Pedro', 9),
(211, 'Santa Bárbara', 9),
(212, 'Santa Catalina', 9),
(213, 'Susques', 9),
(214, 'Tilcara', 9),
(215, 'Tumbaya', 9),
(216, 'Valle Grande', 9),
(217, 'Yavi', 9),
(218, 'Atreucó', 10),
(219, 'Caleu Caleu', 10),
(220, 'Capital', 10),
(221, 'Catriló', 10),
(222, 'Chalileo', 10),
(223, 'Chapaleufú', 10),
(224, 'Chical Co', 10),
(225, 'Conhelo', 10),
(226, 'Curacó', 10),
(227, 'Guatraché', 10),
(228, 'Hucal', 10),
(229, 'Lihuel Calel', 10),
(230, 'Limay Mahuida', 10),
(231, 'Loventué', 10),
(232, 'Maracó', 10),
(233, 'Puelén', 10),
(234, 'Quemú Quemú', 10),
(235, 'Rancul', 10),
(236, 'Realicó', 10),
(237, 'Toay', 10),
(238, 'Trenel', 10),
(239, 'Utracán', 10),
(240, 'Arauco', 11),
(241, 'Capital', 11),
(242, 'Castro Barros', 11),
(243, 'Chamical', 11),
(244, 'Chilecito', 11),
(245, 'Coronel Felipe Varela', 11),
(246, 'Famatina', 11),
(247, 'General Ángel V. Peñaloza', 11),
(248, 'General Belgrano', 11),
(249, 'General Juan Facundo Quiroga', 11),
(250, 'General Lamadrid', 11),
(251, 'General Ocampo', 11),
(252, 'General San Martín', 11),
(253, 'Independencia', 11),
(254, 'Rosario Vera Peñaloza', 11),
(255, 'Sanagasta', 11),
(256, 'San Blas de los Sauces', 11),
(257, 'Vinchina', 11),
(258, 'Capital', 12),
(259, 'General Alvear', 12),
(260, 'Godoy Cruz', 12),
(261, 'Guaymallén', 12),
(262, 'Junín', 12),
(263, 'La Paz', 12),
(264, 'Las Heras', 12),
(265, 'Lavalle', 12),
(266, 'Luján de Cuyo', 12),
(267, 'Maipú', 12),
(268, 'Malargüe', 12),
(269, 'Rivadavia', 12),
(270, 'San Carlos', 12),
(271, 'San Martín', 12),
(272, 'San Rafael', 12),
(273, 'Santa Rosa', 12),
(274, 'Tunuyán', 12),
(275, 'Tupungato', 12),
(276, 'Apóstoles', 13),
(277, 'Cainguás', 13),
(278, 'Candelaria', 13),
(279, 'Capital', 13),
(280, 'Concepción', 13),
(281, 'Eldorado', 13),
(282, 'General Manuel Belgrano', 13),
(283, 'Guaraní', 13),
(284, 'Iguazú', 13),
(285, 'Leandro N. Alem', 13),
(286, 'Libertador General San Martín', 13),
(287, 'Montecarlo', 13),
(288, 'Oberá', 13),
(289, 'San Ignacio', 13),
(290, 'San Javier', 13),
(291, 'San Pedro', 13),
(292, 'Veinticinco de Mayo (25 de Mayo)', 13),
(293, 'Aluminé', 14),
(294, 'Añelo', 14),
(295, 'Catán Lil', 14),
(296, 'Chos Malal', 14),
(297, 'Collón Curá', 14),
(298, 'Confluencia', 14),
(299, 'Huiliches', 14),
(300, 'Lácar', 14),
(301, 'Loncopué', 14),
(302, 'Los Lagos', 14),
(303, 'Minas', 14),
(304, 'Ñorquín', 14),
(305, 'Pehuenches', 14),
(306, 'Picunches', 14),
(307, 'Picún Leufú', 14),
(308, 'Zapala', 14),
(309, 'Adolfo Alsina', 15),
(310, 'Avellaneda', 15),
(311, 'Bariloche', 15),
(312, 'Conesa', 15),
(313, 'El Cuy', 15),
(314, 'General Roca', 15),
(315, 'Ñorquincó', 15),
(316, 'Nueve de Julio (9 de Julio)', 15),
(317, 'Pichi Mahuida', 15),
(318, 'Pilcaniyeu', 15),
(319, 'San Antonio', 15),
(320, 'Valcheta', 15),
(321, 'Veinticinco de Mayo (25 de Mayo)', 15),
(322, 'Anta', 16),
(323, 'Cachi', 16),
(324, 'Cafayate', 16),
(325, 'Capital', 16),
(326, 'Cerrillos', 16),
(327, 'Chicoana', 16),
(328, 'General Güemes', 16),
(329, 'General José de San Martín', 16),
(330, 'Guachipas', 16),
(331, 'Iruya', 16),
(332, 'La Caldera', 16),
(333, 'La Candelaria', 16),
(334, 'La Poma', 16),
(335, 'La Viña', 16),
(336, 'Los Andes', 16),
(337, 'Metán', 16),
(338, 'Molinos', 16),
(339, 'Orán', 16),
(340, 'Rivadavia', 16),
(341, 'Rosario de la Frontera', 16),
(342, 'Rosario de Lerma', 16),
(343, 'San Carlos', 16),
(344, 'Santa Victoria', 16),
(345, 'Albardón', 17),
(346, 'Angaco', 17),
(347, 'Calingasta', 17),
(348, 'Capital', 17),
(349, 'Caucete', 17),
(350, 'Chimbas', 17),
(351, 'Iglesia', 17),
(352, 'Jáchal', 17),
(353, 'Nueve de Julio (9 de Julio)', 17),
(354, 'Pocito', 17),
(355, 'Rawson', 17),
(356, 'Rivadavia', 17),
(357, 'San Martín', 17),
(358, 'Santa Lucía', 17),
(359, 'Sarmiento', 17),
(360, 'Ullum', 17),
(361, 'Valle Fértil', 17),
(362, 'Veinticinco de Mayo (25 de Mayo)', 17),
(363, 'Zonda', 17),
(364, 'Ayacucho', 18),
(365, 'Belgrano', 18),
(366, 'Chacabuco', 18),
(367, 'Coronel Pringles', 18),
(368, 'General Pedernera', 18),
(369, 'Gobernador Dupuy', 18),
(370, 'Junín', 18),
(371, 'La Capital (Juan Martín de Pueyrredón)', 18),
(372, 'Libertador General San Martín', 18),
(373, 'Corpen Aike', 19),
(374, 'Deseado', 19),
(375, 'Güer Aike', 19),
(376, 'Lago Argentino', 19),
(377, 'Lago Buenos Aires', 19),
(378, 'Magallanes', 19),
(379, 'Río Chico', 19),
(380, 'Belgrano', 20),
(381, 'Caseros', 20),
(382, 'Castellanos', 20),
(383, 'Constitución', 20),
(384, 'Garay', 20),
(385, 'General López', 20),
(386, 'General Obligado', 20),
(387, 'Iriondo', 20),
(388, 'La Capital', 20),
(389, 'Las Colonias', 20),
(390, 'Nueve de Julio (9 de Julio)', 20),
(391, 'Rosario', 20),
(392, 'San Cristóbal', 20),
(393, 'San Javier', 20),
(394, 'San Jerónimo', 20),
(395, 'San Justo', 20),
(396, 'San Lorenzo', 20),
(397, 'San Martín', 20),
(398, 'Vera', 20),
(399, 'Aguirre', 21),
(400, 'Alberdi', 21),
(401, 'Atamisqui', 21),
(402, 'Avellaneda', 21),
(403, 'Banda', 21),
(404, 'Belgrano', 21),
(405, 'Capital', 21),
(406, 'Choya', 21),
(407, 'Copo', 21),
(408, 'Figueroa', 21),
(409, 'General Taboada', 21),
(410, 'Guasayán', 21),
(411, 'Jiménez', 21),
(412, 'Juan F. Ibarra', 21),
(413, 'Loreto', 21),
(414, 'Mitre', 21),
(415, 'Moreno', 21),
(416, 'Ojo de Agua', 21),
(417, 'Pellegrini', 21),
(418, 'Quebrachos', 21),
(419, 'Río Hondo', 21),
(420, 'Rivadavia', 21),
(421, 'Robles', 21),
(422, 'Salavina', 21),
(423, 'San Martín', 21),
(424, 'Sarmiento', 21),
(425, 'Silípica', 21),
(426, 'Antártida Argentina', 22),
(427, 'Islas del Atlántico Sur', 22),
(428, 'Río Grande', 22),
(429, 'Ushuaia', 22),
(430, 'Burruyacú', 23),
(431, 'Capital', 23),
(432, 'Chicligasta', 23),
(433, 'Cruz Alta', 23),
(434, 'Famaillá', 23),
(435, 'Graneros', 23),
(436, 'Juan Bautista Alberdi', 23),
(437, 'La Cocha', 23),
(438, 'Leales', 23),
(439, 'Lules', 23),
(440, 'Monteros', 23),
(441, 'Río Chico', 23),
(442, 'Simoca', 23),
(443, 'Tafí del Valle', 23),
(444, 'Tafí Viejo', 23),
(445, 'Trancas', 23),
(446, 'Yerba Buena', 23);

-- --------------------------------------------------------

--
-- Table structure for table `perros`
--

CREATE TABLE `perros` (
  `id_perro` int(200) NOT NULL,
  `perro` varchar(264) COLLATE utf8_spanish_ci NOT NULL,
  `id_raza` int(99) NOT NULL,
  `id_sexo` int(99) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `edad` int(99) NOT NULL,
  `foto` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `para_regalar` tinyint(1) NOT NULL,
  `id_tipoTransa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `perros`
--

INSERT INTO `perros` (`id_perro`, `perro`, `id_raza`, `id_sexo`, `descripcion`, `edad`, `foto`, `precio`, `para_regalar`, `id_tipoTransa`) VALUES
(1, 'pipo', 4, 2, 'buen perro', 3, 'ulr.com', 20, 1, 4),
(2, 'pepo', 14, 2, 'bla perro bla', 3, 'ulr.com', 20, 1, 3),
(3, 'papo', 24, 2, 'buen perro', 8, 'ulr.com', 20, 1, 2),
(4, 'pipo1', 4, 2, 're buen perro', 3, 'ulr.com', 20, 1, 4),
(5, 'pipo2', 4, 2, 'muy buen perro', 3, 'ulr.com', 20, 1, 4),
(6, 'pipo3', 4, 2, 'tan buen perro', 3, 'ulr.com', 20, 1, 4),
(7, 'lau', 0, 0, '', 0, '', 0, 1, 0),
(8, 'lau', 0, 2, '', 0, '', 0, 1, 4),
(9, 'lau3', 4, 2, 'perro', 3, 'lau.png', 22, 1, 4),
(10, 'lau3', 110, 2, 'perro', 3, 'lau.png', 22, 1, 4),
(11, 'pepita', 110, 2, 'perro', 3, 'lau.png', 9, 1, 4),
(12, 'lau', 106, 2, 'k ', 0, 'khj', 0, 1, 4),
(13, 'lau', 106, 2, 'k ', 2, 'khj', 4, 1, 4),
(14, 'lau', 104, 2, 'k ', 2, 'khj', 4, 1, 4),
(15, 'lau', 0, 2, 'k ', 2, 'khj', 4, 1, 4),
(16, 'laum', 139, 2, 'k ', 2, 'khj', 4, 1, 4),
(17, 'lauj', 0, 2, 'k ', 2, 'khj', 4, 1, 4),
(18, 'lauj', 0, 2, 'usuario a perro', 2, 'uap', 4, 1, 4),
(19, 'lauj', 0, 2, 'usuario a perro', 2, 'uap', 4, 1, 4),
(20, 'lauj', 0, 2, 'usuario a perro', 2, 'uap', 4, 1, 4),
(21, 'lauj', 0, 2, 'usuario a perro', 2, 'uap', 4, 1, 4),
(22, 'lauj', 0, 2, 'usuario a perro', 2, 'uap', 4, 1, 4),
(23, 'lauj', 0, 2, 'usuario a perro', 2, 'uap', 4, 1, 4),
(24, 'lauj', 0, 2, 'usuario a perro', 2, 'uap', 4, 1, 4),
(25, 'lauj', 0, 2, 'usuario a perro', 2, 'uap', 4, 1, 4),
(26, 'lauj', 0, 2, 'usuario a perro', 2, 'uap', 4, 1, 4),
(27, 'lauj', 0, 2, 'usuario a perro', 2, 'uap', 4, 1, 4),
(28, 'lauj', 0, 2, 'usuario a perro', 2, 'uap', 4, 1, 4),
(29, 'lau.u', 2, 2, 'usuario a perro', 2, 'uap', 4, 1, 4),
(30, 'lau.u', 0, 2, 'usuario a perro', 2, 'uap', 4, 1, 4),
(31, 'lau.u', 0, 2, 'usuario a perro', 2, 'uap', 4, 1, 4),
(32, 'lau.u', 0, 2, 'usuario a perro', 2, 'uap', 4, 1, 4),
(33, 'lau.u', 0, 2, 'usuario a perro', 2, 'uap', 4, 1, 4),
(34, 'lau.uu', 0, 2, 'usuario a perro', 2, 'uap', 4, 1, 4),
(35, 'perro', 0, 2, '', 0, '', 0, 1, 4),
(36, 'lau', 0, 2, 'perro', 1, 'lau', 22, 1, 4),
(37, 'lau', 0, 2, 'perro', 1, 'lau', 22, 1, 4),
(38, 'lau1', 0, 2, 'perro', 1, 'lau', 22, 1, 4),
(39, 'lau2', 0, 2, 'perro', 1, 'lau', 22, 1, 4),
(40, 'lau2', 0, 2, 'id transa', 1, 'lau', 22, 1, 4),
(41, 'lau3', 0, 2, 'id transa', 1, 'lau', 22, 1, 4),
(42, 'lau4', 0, 2, 'id transa', 1, 'lau', 22, 1, 4),
(43, 'perro', 3, 2, 'perro', 1, '', 3, 1, 4),
(44, 'laubnm', 133, 2, '', 17, '', 1, 1, 4),
(45, 'Laura', 3, 2, 're lau re', 1, 'as', 2, 1, 4),
(46, 'Laura', 0, 2, '', 0, '', 23, 0, 4),
(47, 'asd', 17, 2, 'asd', 3, '', 5, 1, 4),
(48, 'asd', 17, 2, 'asd', 3, '', 5, 1, 4),
(49, 'asd', 17, 2, 'asd', 3, '', 5, 1, 4),
(50, 'asd', 17, 2, 'asd', 3, '', 5, 1, 4),
(51, 'asd', 17, 2, 'asd', 3, '', 5, 1, 4),
(52, 'asd', 17, 2, 'asd', 3, 'as', 5, 1, 4),
(53, 'asdasd', 0, 2, '', 0, '', 0, 1, 4),
(54, 'lau', 3, 2, 'asd', 33, 'asd', 23, 1, 4),
(55, '', 0, 2, '', 0, '', 0, 1, 4),
(56, '', 0, 2, '', 0, '', 0, 1, 4),
(57, 'as', 8, 2, 'as', 23, 'as', 0, 1, 4),
(58, '', 0, 2, '', 0, '', 0, 1, 4),
(59, '', 0, 2, '', 0, '', 0, 1, 4),
(60, 'Laura', 15, 2, 'asd', 0, '', 0, 1, 4),
(61, '', 0, 2, '', 0, '', 0, 1, 4),
(62, 'lau', 9, 2, '', 0, '', 0, 1, 4),
(63, 'Laura Jorge', 7, 2, 'asd', 3, '3', 234, 1, 4),
(64, '', 0, 2, '', 0, '', 0, 1, 4),
(65, 'lau', 1, 2, 'asd', 12, '12', 12, 1, 4),
(66, 'Laura', 8, 2, 'asd', 234, '12', 123, 1, 4),
(67, 'juancho', 0, 2, '', 0, '', 0, 1, 4),
(68, '', 0, 0, '', 0, '', 0, 0, 0),
(69, '', 0, 0, '', 0, '', 0, 0, 0),
(70, 'asd', 0, 2, '', 0, '', 0, 1, 4),
(71, 'Laura Jorge', 0, 2, '', 0, '', 0, 1, 4),
(72, 'qwe', 0, 2, '', 0, '', 0, 1, 4),
(73, '', 0, 0, '', 0, '', 0, 0, 0),
(74, '', 0, 0, '', 0, '', 0, 0, 0),
(75, 'Laura Jorge', 9, 2, 'asd', 3, 'df', 3, 1, 4),
(76, 'asd', 0, 2, '', 0, '', 0, 1, 4),
(77, '', 0, 2, '', 0, '', 0, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `provincias`
--

CREATE TABLE `provincias` (
  `id_provincia` int(90) NOT NULL,
  `provincia` varchar(99) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `provincias`
--

INSERT INTO `provincias` (`id_provincia`, `provincia`) VALUES
(1, 'Buenos Aires'),
(2, 'Catamarca'),
(3, 'Chaco'),
(4, 'Chubut'),
(5, 'Córdoba'),
(6, 'Corrientes'),
(7, 'Entre Ríos'),
(8, 'Formosa'),
(9, 'Jujuy'),
(10, 'La Pampa'),
(11, 'La Rioja'),
(12, 'Mendoza'),
(13, 'Misiones'),
(14, 'Neuquén'),
(15, 'Río Negro'),
(16, 'Salta'),
(17, 'San Juan'),
(18, 'San Luis'),
(19, 'Santa Cruz'),
(20, 'Santa Fe'),
(21, 'Santiago del Estero'),
(22, 'Tierra del Fuego'),
(23, 'Tucumán');

-- --------------------------------------------------------

--
-- Table structure for table `razas`
--

CREATE TABLE `razas` (
  `id_raza` int(99) NOT NULL,
  `raza` varchar(244) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `razas`
--

INSERT INTO `razas` (`id_raza`, `raza`) VALUES
(1, 'Affenpinscher'),
(2, 'Airedale terrier'),
(3, 'Aïdi'),
(4, 'Akita Inu'),
(5, 'Akita Americano'),
(6, 'Alano español'),
(7, 'Alaskan malamute'),
(8, 'Alaskan Klee Kai'),
(9, 'American Hairless terrier'),
(10, 'American Staffordshire Terrier'),
(11, 'Antiguo Perro Pastor Inglés'),
(12, 'Appenzeller'),
(13, 'Australian Cattle Dog'),
(14, 'Australian terrier'),
(15, 'Australian Silky Terrier'),
(16, 'Azawakh'),
(17, 'Bardino (Perro majorero)'),
(18, 'Basenji'),
(19, 'Basset azul de Gascuña'),
(20, 'Basset hound'),
(21, 'Beagle'),
(22, 'Beauceron'),
(23, 'Bedlington terrier'),
(24, 'Bergamasco'),
(25, 'Bichon frisé'),
(26, 'Bichón maltés'),
(27, 'Bichón habanero'),
(28, 'Bobtail'),
(29, 'Bloodhound'),
(30, 'Border collie'),
(31, 'Borzoi'),
(32, 'Boston terrier'),
(33, 'Bóxer'),
(34, 'Boyero de Berna'),
(35, 'Boyero de Flandes'),
(36, 'Braco alemán de pelo corto'),
(37, 'Braco alemán de pelo duro'),
(38, 'Braco de Auvernia'),
(39, 'Braco francés'),
(40, 'Braco húngaro'),
(41, 'Braco italiano'),
(42, 'Braco tirolés'),
(43, 'Braco de Saint Germain'),
(44, 'Braco de Weimar'),
(45, 'Bull Terrier'),
(46, 'Bulldog americano'),
(47, 'Bulldog francés'),
(48, 'Bulldog inglés'),
(49, 'Bullmastiff'),
(50, 'Buhund noruego'),
(51, 'Can de palleiro'),
(52, 'Caniche'),
(53, 'Cão da Serra da Estrela'),
(54, 'Cão da Serra de Aires'),
(55, 'Cão de Agua Português'),
(56, 'Cão de Castro Laboreiro'),
(57, 'Cão de Fila de São Miguel'),
(58, 'Cavalier King Charles Spaniel'),
(59, 'Cazador de alces noruego'),
(60, 'Chesapeake Bay Retriever'),
(61, 'Chihuahueño'),
(62, 'Crestado Chino'),
(63, 'Cimarrón Uruguayo'),
(64, 'Cirneco del Etna'),
(65, 'Chow chow'),
(66, 'Clumber spaniel'),
(67, 'Cobrador de pelo liso'),
(68, 'Cocker spaniel americano'),
(69, 'Cocker spaniel inglés'),
(70, 'Collie de pelo corto'),
(71, 'Collie de pelo largo'),
(72, 'Bearded collie'),
(73, 'Corgi galés de Cardigan'),
(74, 'Dachshund'),
(75, 'Dálmata'),
(76, 'Dandie Dinmont Terrier'),
(77, 'Deerhound'),
(78, 'Dobermann'),
(79, 'Dogo alemán'),
(80, 'Dogo argentino'),
(81, 'Dogo de burdeos'),
(82, 'Dogo del Tíbet'),
(83, 'Dogo guatemalteco'),
(84, 'English springer spaniel'),
(85, 'Entlebucher'),
(86, 'Épagneul bretón'),
(87, 'Épagneul français'),
(88, 'Epagneul papillón'),
(89, 'Eurasier'),
(90, 'Fila Brasileiro'),
(91, 'Flat-Coated Retriever'),
(92, 'Fox Terrier'),
(93, 'Foxhound americano'),
(94, 'Galgo español'),
(95, 'Galgo húngaro'),
(96, 'Galgo inglés'),
(97, 'Galgo italiano'),
(98, 'Golden retriever'),
(99, 'Glen of Imaal Terrier'),
(100, 'Gran danés'),
(101, 'Gegar colombiano'),
(102, 'Greyhound'),
(103, 'Grifón belga'),
(104, 'Hovawart'),
(105, 'Husky siberiano'),
(106, 'Jack Russell Terrier'),
(107, 'Keeshond'),
(108, 'Kerry blue terrier'),
(109, 'Komondor'),
(110, 'Kuvasz'),
(111, 'Labrador'),
(112, 'Lakeland Terrier'),
(113, 'Laekenois'),
(114, 'Landseer'),
(115, 'Lebrel afgano'),
(116, 'Lebrel polaco'),
(117, 'Leonberger'),
(118, 'Lobero irlandés'),
(119, 'Lundehund'),
(120, 'Perro lobo de Saarloos'),
(121, 'Lhasa apso'),
(122, 'Löwchen'),
(123, 'Maltés'),
(124, 'Malinois'),
(125, 'Manchester terrier'),
(126, 'Mastín afgano'),
(127, 'Mastín del Pirineo'),
(128, 'Mastín español'),
(129, 'Mastín inglés'),
(130, 'Mastín italiano'),
(131, 'Mastín napolitano'),
(132, 'Mastín tibetano'),
(133, 'Mucuchies'),
(134, 'Mudi'),
(135, 'Münsterländer grande'),
(136, 'Münsterländer pequeño'),
(137, 'Nova Scotia Duck Tolling Retriever'),
(138, 'Ovejero magallánico'),
(139, 'Pastor alemán'),
(140, 'Pastor belga'),
(141, 'Pastor blanco suizo'),
(142, 'Pastor catalán'),
(143, 'Pastor croata'),
(144, 'Pastor garafiano'),
(145, 'Pastor holandés'),
(146, 'Pastor peruano Chiribaya'),
(147, 'Pastor de Brie'),
(148, 'Pastor de los Pirineos'),
(149, 'Pastor leonés'),
(150, 'Pastor mallorquín'),
(151, 'Pastor maremmano-abrucés'),
(152, 'Pastor de Valée'),
(153, 'Pastor vasco'),
(154, 'Pekinés'),
(155, 'Pembroke Welsh Corgi'),
(156, 'Pequeño Lebrel Italiano'),
(157, 'Perdiguero francés'),
(158, 'Perdiguero portugués'),
(159, 'Perro cimarrón uruguayo'),
(160, 'Perro de agua americano'),
(161, 'Perro de agua español'),
(162, 'Perro de agua irlandés'),
(163, 'Perro de agua portugués'),
(164, 'Perro de Groenlandia'),
(165, 'Perro de osos de Carelia'),
(166, 'Perro dogo mallorquín'),
(167, 'Perro esquimal canadiense'),
(168, 'Perro de Montaña de los Pirineos'),
(169, 'Perro fino colombiano'),
(170, 'Perro pastor de las islas Shetland'),
(171, 'Perro peruano sin pelo'),
(172, 'Phalène'),
(173, 'Pinscher alemán'),
(174, 'Pinscher miniatura'),
(175, 'Pitbull'),
(176, 'Podenco canario'),
(177, 'Podenco ibicenco'),
(178, 'Podenco portugués'),
(179, 'Pointer'),
(180, 'Pomerania'),
(181, 'Presa canario'),
(182, 'Pudelpointer'),
(183, 'Pug'),
(184, 'Puli'),
(185, 'Pumi'),
(186, 'Rafeiro do Alentejo'),
(187, 'Ratonero bodeguero andaluz'),
(188, 'Ratonero mallorquín'),
(189, 'Ratonero valenciano'),
(190, 'Rhodesian Ridgeback'),
(191, 'Rottweiler'),
(192, 'Saluki'),
(193, 'Samoyedo'),
(194, 'San Bernardo'),
(195, 'Schapendoes'),
(196, 'Schnauzer estándar'),
(197, 'Schnauzer gigante'),
(198, 'Schnauzer miniatura'),
(199, 'Staffordshire Bull Terrier'),
(200, 'Sabueso bosnio'),
(201, 'Schipperke'),
(202, 'Sealyham terrier'),
(203, 'Setter inglés'),
(204, 'Setter irlandés'),
(205, 'Shar Pei'),
(206, 'Shiba Inu'),
(207, 'Shih Tzu'),
(208, 'Shikoku Inu'),
(209, 'Siberian husky'),
(210, 'Skye terrier'),
(211, 'Spaniel japonés'),
(212, 'Spaniel tibetano'),
(213, 'Spitz enano'),
(214, 'Spitz grande'),
(215, 'Spitz mediano'),
(216, 'Spitz japonés'),
(217, 'Sussex spaniel'),
(218, 'Teckel'),
(219, 'Terranova'),
(220, 'Terrier alemán'),
(221, 'Terrier brasileño'),
(222, 'Terrier checo'),
(223, 'Terrier chileno'),
(224, 'Terrier de Norfolk'),
(225, 'Terrier de Norwich'),
(226, 'Terrier escocés'),
(227, 'Terrier galés'),
(228, 'Terrier irlandés'),
(229, 'Terrier ruso negro'),
(230, 'Terrier tibetano'),
(231, 'Toy spaniel inglés'),
(232, 'Tervueren'),
(233, 'Vallhund sueco'),
(234, 'Volpino italiano'),
(235, 'Weimaraner'),
(236, 'West Highland White Terrier'),
(237, 'Whippet'),
(238, 'Wolfsspitz'),
(239, 'Xoloitzcuintle'),
(240, 'Yorkshire terrier');

-- --------------------------------------------------------

--
-- Table structure for table `sexos`
--

CREATE TABLE `sexos` (
  `id_sexo` int(99) NOT NULL,
  `sexo` varchar(99) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `sexos`
--

INSERT INTO `sexos` (`id_sexo`, `sexo`) VALUES
(2, 'Macho'),
(3, 'Hembra');

-- --------------------------------------------------------

--
-- Table structure for table `tipoTransaccion`
--

CREATE TABLE `tipoTransaccion` (
  `id_tipoTransa` int(99) NOT NULL,
  `tipoTransaccion` varchar(244) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `tipoTransaccion`
--

INSERT INTO `tipoTransaccion` (`id_tipoTransa`, `tipoTransaccion`) VALUES
(2, 'Matchear'),
(3, 'Adoptar'),
(4, 'Comprar'),
(5, 'Regalar'),
(6, 'Vender');

-- --------------------------------------------------------

--
-- Table structure for table `transacciones`
--

CREATE TABLE `transacciones` (
  `id_transacciones` int(99) NOT NULL,
  `id_perro` int(99) NOT NULL,
  `id_usuario` int(99) NOT NULL,
  `id_tipoTransa` int(11) NOT NULL,
  `precio` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `transacciones`
--

INSERT INTO `transacciones` (`id_transacciones`, `id_perro`, `id_usuario`, `id_tipoTransa`, `precio`) VALUES
(44, 3, 4, 4, '34'),
(47, 3, 4, 4, '34'),
(48, 3, 4, 2, '34'),
(49, 0, 4, 3, '34'),
(50, 0, 4, 4, '34'),
(51, 0, 4, 2, '34'),
(52, 0, 4, 3, '0'),
(53, 0, 4, 2, '0'),
(54, 0, 4, 2, '0'),
(55, 0, 4, 4, '0'),
(56, 0, 4, 4, '0'),
(57, 0, 4, 4, '0'),
(58, 0, 4, 3, '0'),
(59, 0, 4, 3, '0'),
(60, 0, 4, 4, '0'),
(61, 0, 4, 4, '0'),
(62, 0, 4, 2, '0'),
(63, 0, 4, 4, '0'),
(64, 0, 4, 3, '0'),
(65, 0, 4, 4, '0'),
(66, 0, 4, 2, '0'),
(67, 0, 4, 3, '0'),
(68, 0, 4, 2, '0'),
(69, 0, 4, 3, '0');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(88) NOT NULL,
  `nombre` varchar(99) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(99) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(99) COLLATE utf8_spanish_ci NOT NULL,
  `id_localidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `email`, `password`, `id_localidad`) VALUES
(1, 'lau', 'lau@lau', 'bnm', 264),
(2, 'juan', 'juan@lau', 'bnm', 3),
(3, 'mamon', 'mamon@lau', 'bnm', 17),
(4, 'lau', 'lau1@lau', 'bnm', 268),
(5, 'lau', 'pepe@lau', 'pepe', 79),
(6, 'lau', 'lau@lau1', 'bnm', 249),
(8, 'lau11', 'lau1@lau', 'asd', 8),
(9, 'Laura Jorge', 'lau@lau.com', 'lau', 258),
(10, 'lau@lau.com', 'asd', 'asd', 0),
(11, '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `usuarioAperro`
--

CREATE TABLE `usuarioAperro` (
  `id_usuarioAperro` int(99) NOT NULL,
  `id_perro` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `usuarioAperro`
--

INSERT INTO `usuarioAperro` (`id_usuarioAperro`, `id_perro`, `id_usuario`) VALUES
(1, 1, 1),
(2, 2, 3),
(3, 3, 2),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 45, 1),
(8, 0, 0),
(9, 0, 0),
(10, 0, 0),
(11, 0, 0),
(12, 0, 0),
(13, 0, 0),
(14, 0, 0),
(15, 0, 0),
(16, 0, 0),
(17, 0, 0),
(18, 0, 0),
(19, 0, 0),
(20, 0, 0),
(21, 0, 0),
(22, 0, 0),
(23, 0, 0),
(24, 0, 0),
(25, 0, 0),
(26, 0, 0),
(27, 0, 0),
(28, 0, 0),
(29, 0, 0),
(30, 0, 0),
(31, 0, 0),
(32, 0, 0),
(33, 0, 0),
(34, 52, 6),
(35, 0, 6),
(36, 0, 6),
(37, 0, 6),
(38, 0, 6),
(39, 0, 6),
(40, 0, 6),
(41, 0, 6),
(42, 0, 6),
(43, 0, 6),
(44, 0, 6),
(45, 0, 6),
(46, 0, 6),
(47, 0, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`id_localidad`),
  ADD KEY `idProvincia` (`id_provincia`);

--
-- Indexes for table `perros`
--
ALTER TABLE `perros`
  ADD UNIQUE KEY `id` (`id_perro`),
  ADD KEY `idRaza` (`id_raza`,`id_sexo`),
  ADD KEY `idSexo` (`id_sexo`),
  ADD KEY `id_tipoTransa` (`id_tipoTransa`);

--
-- Indexes for table `provincias`
--
ALTER TABLE `provincias`
  ADD UNIQUE KEY `id` (`id_provincia`),
  ADD KEY `id_2` (`id_provincia`),
  ADD KEY `id_3` (`id_provincia`);

--
-- Indexes for table `razas`
--
ALTER TABLE `razas`
  ADD PRIMARY KEY (`id_raza`),
  ADD KEY `id` (`id_raza`);

--
-- Indexes for table `sexos`
--
ALTER TABLE `sexos`
  ADD UNIQUE KEY `id` (`id_sexo`),
  ADD KEY `id_2` (`id_sexo`);

--
-- Indexes for table `tipoTransaccion`
--
ALTER TABLE `tipoTransaccion`
  ADD UNIQUE KEY `id` (`id_tipoTransa`);

--
-- Indexes for table `transacciones`
--
ALTER TABLE `transacciones`
  ADD PRIMARY KEY (`id_transacciones`),
  ADD KEY `idPerro` (`id_perro`,`id_usuario`),
  ADD KEY `idTipoTransaccion` (`id_tipoTransa`),
  ADD KEY `idUsuario` (`id_usuario`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD UNIQUE KEY `id` (`id_usuario`),
  ADD KEY `idProvincia` (`id_localidad`);

--
-- Indexes for table `usuarioAperro`
--
ALTER TABLE `usuarioAperro`
  ADD UNIQUE KEY `id` (`id_usuarioAperro`),
  ADD KEY `idPerro` (`id_perro`),
  ADD KEY `idUsuario` (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `localidades`
--
ALTER TABLE `localidades`
  MODIFY `id_localidad` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=447;

--
-- AUTO_INCREMENT for table `perros`
--
ALTER TABLE `perros`
  MODIFY `id_perro` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `provincias`
--
ALTER TABLE `provincias`
  MODIFY `id_provincia` int(90) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `razas`
--
ALTER TABLE `razas`
  MODIFY `id_raza` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `sexos`
--
ALTER TABLE `sexos`
  MODIFY `id_sexo` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tipoTransaccion`
--
ALTER TABLE `tipoTransaccion`
  MODIFY `id_tipoTransa` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transacciones`
--
ALTER TABLE `transacciones`
  MODIFY `id_transacciones` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(88) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `usuarioAperro`
--
ALTER TABLE `usuarioAperro`
  MODIFY `id_usuarioAperro` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
