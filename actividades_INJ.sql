-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 08-02-2024 a las 00:50:22
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `actividades_INJ`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` int(11) NOT NULL,
  `descripcion` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `responsable` int(11) NOT NULL,
  `tema` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `municipio` int(11) NOT NULL,
  `comunidad` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lugar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hora_salida` int(11) NOT NULL,
  `hora_evento` int(11) NOT NULL,
  `observaciones` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `estatus` int(11) NOT NULL,
  `hora_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`id`, `nombre`, `tipo`, `descripcion`, `fecha`, `responsable`, `tema`, `municipio`, `comunidad`, `lugar`, `hora_salida`, `hora_evento`, `observaciones`, `estatus`, `hora_registro`) VALUES
(1, 'Prueba', 1, 'd', '2023-12-21', 1, 'dd', 1, 'd', 'd', 1, 1, 'd', 1, '2024-01-23 17:10:49'),
(2, 'Actividad de prueba', 1, 'Actividad de prueba en el sistema ', '2023-12-23', 1, 'Evento de prueba', 56, 'Zacatecas', 'COBAEZ', 2, 3, 'Automóvil listo con gasolina con un cuarto', 2, '2024-01-23 22:38:04'),
(3, 'Actividad de prueba 2', 1, 'Actividad de prueba en el sistema 2', '2023-12-24', 2, 'Evento de prueba 2', 7, 'Concha del oro', 'COBAEZ 2', 3, 4, 'Automóvil listo con gasolina con un cuarto 2', 2, '2024-01-23 22:42:13'),
(4, 'X', 1, 'X', '2023-12-21', 3, 'X', 1, 'x', 'x', 4, 5, 'X', 2, '2024-01-23 22:44:35'),
(5, 'Actividad 22', 1, 'edd', '2024-01-23', 1, '222', 4, '22', '222', 5, 6, '22222', 2, '2024-01-24 12:22:16'),
(6, 'act 3', 3, 'eee', '2024-01-25', 1, 'ss', 2, 'sss', 'sss', 6, 3, 'ssss', 2, '2024-01-24 12:23:20'),
(7, 'act 4', 5, '444', '2024-01-30', 1, '44', 16, '4', '444', 22, 4, '4444', 2, '2024-01-24 12:23:49'),
(8, 'ddd', 3, 'cc', '2024-01-23', 2, 'dd', 8, 'd', 'dd', 11, 2, 'dd', 2, '2024-01-24 12:24:21'),
(9, 'wwww', 4, 'www', '2024-01-12', 2, 'w', 11, 'ww', 'ww', 21, 8, 'wwww', 2, '2024-01-24 12:24:46'),
(10, '4443', 4, '333', '2024-01-29', 3, '33', 7, '3', '3333', 2, 9, '333', 2, '2024-01-24 12:25:10'),
(11, '333', 5, '333', '2024-01-15', 3, '33', 3, '44', '4', 5, 4, '444', 2, '2024-01-24 12:25:31'),
(12, 'sssdsdfwf', 2, 'fdsdfs', '2024-01-29', 3, 'f', 17, 'f', 'fsd', 7, 3, 'fdfd', 2, '2024-01-24 16:15:41'),
(13, 'eeee', 2, 'eee', '2024-01-22', 3, 'eeee', 2, 'eee', 'eeee', 9, 21, 'eeeee', 2, '2024-01-24 16:17:47'),
(14, 's', 2, 's', '2024-02-18', 2, '2', 1, '2', '2', 6, 7, '222', 2, '2024-01-25 17:52:34'),
(15, 'dd', 2, 'ddd', '2024-02-29', 3, 'dddd', 3, 'd', 'dd', 14, 9, 'dd', 2, '2024-01-25 17:56:26'),
(16, 'ee', 2, 'e', '2024-01-15', 1, 'e', 2, 'e', 'e', 11, 33, 'ee', 2, '2024-01-26 10:49:14'),
(17, 'ee', 2, 'e', '2024-01-25', 1, 'e', 3, 'e', 'e', 23, 23, 'e', 2, '2024-01-26 10:49:45'),
(18, 'e', 1, 'e', '2024-01-15', 1, 'e', 5, 'e', 'e', 23, 34, 'e', 2, '2024-01-26 10:50:18'),
(19, 'Actividad de prueba', 2, 'Descripción de este evento de prueba', '2024-02-18', 1, 'Evento prueba', 7, 'c del oro', 'C del oro', 30, 22, 'Descripción de este evento de prueba', 2, '2024-02-07 12:50:39'),
(20, 'Actividad del 22', 3, 'Conferencia de prueba', '2024-02-22', 3, 'Tema de prueba', 17, 'Guadalupe', 'CECATI', 21, 4, 'Conferencia de prueba', 2, '2024-02-07 15:53:36'),
(21, 'Otra actividad', 3, 'Otra actividad', '2024-02-18', 2, 'Otra actividad', 10, 'Fresnillo', 'CEBETA', 11, 2, 'Otra actividad', 2, '2024-02-07 15:56:18'),
(22, 'Otra actividad', 5, 'Otra actividad', '2024-02-18', 1, 'Otra actividad', 10, 'Otra actividad', 'Otra actividad', 11, 1, 'Otra actividad', 2, '2024-02-07 16:53:55'),
(23, 'Actividad extra', 4, 'Actividad extra', '2024-01-29', 2, 'Actividad extra', 10, 'Actividad extra', 'Actividad extra', 28, 30, 'Actividad extra', 2, '2024-02-07 17:26:40'),
(24, 'carga de user value session', 2, 'carga de user value session', '2024-02-01', 1, 'xxxx', 1, 'xxxx', 'xxxx', 3, 4, 'carga de user value session', 2, '2024-02-07 17:43:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `area` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`id`, `area`) VALUES
(1, 'Departamento de desarrollo juvenil'),
(2, 'Departamento de asistencia juvenil'),
(3, 'Coordinación administrativa'),
(4, 'Dirección general'),
(5, 'Comunicación y diseño');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo_actividad`
--

CREATE TABLE `catalogo_actividad` (
  `id` int(11) NOT NULL,
  `actividad` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `catalogo_actividad`
--

INSERT INTO `catalogo_actividad` (`id`, `actividad`) VALUES
(1, 'Evento'),
(2, 'Taller'),
(3, 'Conferencia'),
(4, 'Mesa informativa'),
(5, 'Cine charla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo_municipios`
--

CREATE TABLE `catalogo_municipios` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'Identificador único de cada registro. Establecen la manera más rápida posible de encontrar un registro',
  `claveMunicipio` varchar(10) NOT NULL COMMENT 'Clave del Municipio',
  `nombreMunicipio` varchar(120) NOT NULL COMMENT 'Nombre del Municipio correspondiente al Estado al cual se encuentra referenciado',
  `municipioActivo` tinyint(1) NOT NULL COMMENT 'Estatus del registro \n[0|1]\n0 => Inactivo\n1 => Activo',
  `idCatEstado` int(11) UNSIGNED NOT NULL COMMENT 'Relación con la Tabla Estados, permite identificar a cual de los Estados pertenece el Municipio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catálogo de Municipios:Estructura en la cual se guarda la información referente a los Municipios';

--
-- Volcado de datos para la tabla `catalogo_municipios`
--

INSERT INTO `catalogo_municipios` (`id`, `claveMunicipio`, `nombreMunicipio`, `municipioActivo`, `idCatEstado`) VALUES
(1, '32001', 'APOZOL', 1, 32),
(2, '32002', 'APULCO', 1, 32),
(3, '32003', 'ATOLINGA', 1, 32),
(4, '32004', 'BENITO JUÁREZ', 1, 32),
(5, '32005', 'CALERA', 1, 32),
(6, '32006', 'CAÑITAS DE FELIPE PESCADOR', 1, 32),
(7, '32007', 'CONCEPCIÓN DEL ORO', 1, 32),
(8, '32008', 'CUAUHTÉMOC', 1, 32),
(9, '32009', 'CHALCHIHUITES', 1, 32),
(10, '32010', 'FRESNILLO', 1, 32),
(11, '32011', 'TRINIDAD GARCÍA DE LA CADENA', 1, 32),
(12, '32012', 'GENARO CODINA', 1, 32),
(13, '32013', 'GENERAL ENRIQUE ESTRADA', 1, 32),
(14, '32014', 'GENERAL FRANCISCO R. MURGUÍA', 1, 32),
(15, '32015', 'EL PLATEADO DE JOAQUÍN AMARO', 1, 32),
(16, '32016', 'GENERAL PÁNFILO NATERA', 1, 32),
(17, '32017', 'GUADALUPE', 1, 32),
(18, '32018', 'HUANUSCO', 1, 32),
(19, '32019', 'JALPA', 1, 32),
(20, '32020', 'JEREZ', 1, 32),
(21, '32021', 'JIMÉNEZ DEL TEUL', 1, 32),
(22, '32022', 'JUAN ALDAMA', 1, 32),
(23, '32023', 'JUCHIPILA', 1, 32),
(24, '32024', 'LORETO', 1, 32),
(25, '32025', 'LUIS MOYA', 1, 32),
(26, '32026', 'MAZAPIL', 1, 32),
(27, '32027', 'MELCHOR OCAMPO', 1, 32),
(28, '32028', 'MEZQUITAL DEL ORO', 1, 32),
(29, '32029', 'MIGUEL AUZA', 1, 32),
(30, '32030', 'MOMAX', 1, 32),
(31, '32031', 'MONTE ESCOBEDO', 1, 32),
(32, '32032', 'MORELOS', 1, 32),
(33, '32033', 'MOYAHUA DE ESTRADA', 1, 32),
(34, '32034', 'NOCHISTLÁN DE MEJÍA', 1, 32),
(35, '32035', 'NORIA DE ÁNGELES', 1, 32),
(36, '32036', 'OJOCALIENTE', 1, 32),
(37, '32037', 'PÁNUCO', 1, 32),
(38, '32038', 'PINOS', 1, 32),
(39, '32039', 'RÍO GRANDE', 1, 32),
(40, '32040', 'SAIN ALTO', 1, 32),
(41, '32041', 'EL SALVADOR', 1, 32),
(42, '32042', 'SOMBRERETE', 1, 32),
(43, '32043', 'SUSTICACÁN', 1, 32),
(44, '32044', 'TABASCO', 1, 32),
(45, '32045', 'TEPECHITLÁN', 1, 32),
(46, '32046', 'TEPETONGO', 1, 32),
(47, '32047', 'TEÚL DE GONZÁLEZ ORTEGA', 1, 32),
(48, '32048', 'TLALTENANGO DE SÁNCHEZ ROMÁN', 1, 32),
(49, '32049', 'VALPARAÍSO', 1, 32),
(50, '32050', 'VETAGRANDE', 1, 32),
(51, '32051', 'VILLA DE COS', 1, 32),
(52, '32052', 'VILLA GARCÍA', 1, 32),
(53, '32053', 'VILLA GONZÁLEZ ORTEGA', 1, 32),
(54, '32054', 'VILLA HIDALGO', 1, 32),
(55, '32055', 'VILLANUEVA', 1, 32),
(56, '32056', 'ZACATECAS', 1, 32),
(57, '32057', 'TRANCOSO', 1, 32),
(58, 'A1', 'AGUASCALIENTES', 1, 1),
(59, 'A2', 'ASIENTOS', 1, 1),
(60, 'A3', 'CALVILLO', 1, 1),
(61, 'J1', 'HUEJUQUILLA DEL ALTO', 1, 15),
(62, 'J2', 'HUEJÚCAR', 1, 15),
(63, 'J3', 'COLOTLÁN', 1, 15),
(64, 'J4', 'NO REGISTRADO', 1, 15),
(65, 'S1', 'VILLA DE RAMOS', 1, 24),
(66, '32058', 'SANTA MARÍA DE LA PAZ', 1, 32),
(67, 'S2', 'SANTO DOMINGO', 1, 24),
(68, '69', 'SAN LUIS POTOSI', 1, 24),
(69, '70', 'SAN LUIS POTOSI', 1, 24),
(70, 'J5', 'CHIMALTITAN', 1, 15),
(71, 'J6', 'BOLAÑOS ', 1, 15),
(73, 'J7', 'TOTATICHE', 1, 15),
(74, 'D1', 'SANTA CLARA', 1, 33),
(75, 'J8', 'YAHUALICA DE GONZALEZ GALLO', 1, 15),
(76, 'J9', 'SANTA MARIA DE LOS ANGELES', 1, 15),
(77, 'J10', 'MEZQUITIC', 1, 15),
(78, 'D2', 'GENERAL SIMON BOLIVAR', 1, 33);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id` int(11) NOT NULL,
  `departamento` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `departamento`, `area`) VALUES
(1, 'Bienestar y calidad de vida', 1),
(2, 'Desarrollo juvenil', 1),
(3, 'Tecnologías de la información', 3),
(4, 'Recursos financieros', 3),
(5, 'Recursos materiales', 3),
(6, 'Diseño gráfico', 5),
(7, 'Comunicación social', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hora`
--

CREATE TABLE `hora` (
  `id` int(11) NOT NULL,
  `hora` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `hora`
--

INSERT INTO `hora` (`id`, `hora`) VALUES
(1, '6:00'),
(2, '6:30'),
(3, '7:00'),
(4, '7:30'),
(5, '8:00'),
(6, '8:30'),
(7, '9:00'),
(8, '9:30'),
(9, '10:00'),
(10, '10:30'),
(11, '11:00'),
(12, '11:30'),
(13, '12:00'),
(14, '12:30'),
(15, '13: 00'),
(16, '13:30'),
(17, '14:00'),
(18, '14:30'),
(19, '15:00'),
(20, '15:30'),
(21, '16:00'),
(22, '16:30'),
(23, '17:00'),
(24, '17:30'),
(25, '18:00'),
(26, '18:30'),
(27, '19:00'),
(28, '19:30'),
(29, '20:00'),
(30, '20:30'),
(31, '21:00'),
(32, '21:30'),
(33, '22:00'),
(34, '22:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `pwd` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `perfil` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `departamento` int(11) NOT NULL,
  `estatus` int(11) NOT NULL,
  `color` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombre`, `user`, `pwd`, `perfil`, `area`, `departamento`, `estatus`, `color`) VALUES
(1, 'Jesus R', 'JEsusR', '123456789', 2, 3, 3, 1, '#e09d12'),
(2, 'Jesus', 'asss', '6eaba11099acccee98009cd42323e8cd', 2, 5, 6, 1, '#c26ba4'),
(3, 'Jesus2', 'asss2', 'c2957c02247e150fa0fb0bd5d1249739', 2, 1, 1, 1, '#21a5c2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `catalogo_actividad`
--
ALTER TABLE `catalogo_actividad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hora`
--
ALTER TABLE `hora`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `catalogo_actividad`
--
ALTER TABLE `catalogo_actividad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `hora`
--
ALTER TABLE `hora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
