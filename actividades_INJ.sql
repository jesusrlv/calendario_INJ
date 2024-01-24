-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-01-2024 a las 07:30:37
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `actividades_inj`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tipo` int(11) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `fecha` date NOT NULL,
  `responsable` int(11) NOT NULL,
  `tema` varchar(50) NOT NULL,
  `municipio` int(11) NOT NULL,
  `comunidad` varchar(100) NOT NULL,
  `lugar` varchar(50) NOT NULL,
  `hora_salida` varchar(10) NOT NULL,
  `hora_evento` varchar(10) NOT NULL,
  `observaciones` varchar(100) NOT NULL,
  `estatus` int(11) NOT NULL,
  `hora_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`id`, `nombre`, `tipo`, `descripcion`, `fecha`, `responsable`, `tema`, `municipio`, `comunidad`, `lugar`, `hora_salida`, `hora_evento`, `observaciones`, `estatus`, `hora_registro`) VALUES
(1, 'Prueba', 1, 'd', '2023-12-21', 1, 'dd', 1, 'd', 'd', '1', '1', 'd', 1, '2024-01-23 17:10:49'),
(2, 'Actividad de prueba', 1, 'Actividad de prueba en el sistema ', '2023-12-23', 1, 'Evento de prueba', 56, 'Zacatecas', 'COBAEZ', '9:00 am', '9:30 am', 'Automóvil listo con gasolina con un cuarto', 2, '2024-01-23 22:38:04'),
(3, 'Actividad de prueba 2', 1, 'Actividad de prueba en el sistema 2', '2023-12-24', 2, 'Evento de prueba 2', 7, 'Concha del oro', 'COBAEZ 2', '9:30 am', '10:00 am', 'Automóvil listo con gasolina con un cuarto 2', 2, '2024-01-23 22:42:13'),
(4, 'X', 1, 'X', '2023-12-21', 3, 'X', 1, 'x', 'x', '6:00', '6:30 am', 'X', 2, '2024-01-23 22:44:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `area` varchar(50) NOT NULL
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
  `actividad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `catalogo_actividad`
--

INSERT INTO `catalogo_actividad` (`id`, `actividad`) VALUES
(1, 'Evento');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Catálogo de Municipios:Estructura en la cual se guarda la información referente a los Municipios';

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
  `departamento` varchar(50) NOT NULL,
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
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `user` varchar(30) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `perfil` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `departamento` int(11) NOT NULL,
  `estatus` int(11) NOT NULL,
  `color` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombre`, `user`, `pwd`, `perfil`, `area`, `departamento`, `estatus`, `color`) VALUES
(1, 'Jesus R', 'JEsusR', '123456789', 2, 3, 3, 1, '#f42035'),
(2, 'Jesus', 'asss', '6eaba11099acccee98009cd42323e8cd', 2, 3, 3, 1, '#44c59e'),
(3, 'Jesus2', 'asss2', 'c2957c02247e150fa0fb0bd5d1249739', 2, 1, 1, 1, '#44c59e');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `catalogo_actividad`
--
ALTER TABLE `catalogo_actividad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
