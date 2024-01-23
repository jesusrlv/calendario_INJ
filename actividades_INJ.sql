-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 24-01-2024 a las 00:11:32
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
  `hora_salida` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hora_evento` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `observaciones` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `estatus` int(11) NOT NULL,
  `hora_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`id`, `nombre`, `tipo`, `descripcion`, `fecha`, `responsable`, `tema`, `municipio`, `comunidad`, `lugar`, `hora_salida`, `hora_evento`, `observaciones`, `estatus`, `hora_registro`) VALUES
(1, 'Prueba', 1, 'd', '2023-12-21', 1, 'dd', 1, 'd', 'd', '1', '1', 'd', 1, '2024-01-23 17:10:49');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
