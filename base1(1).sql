-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-09-2016 a las 22:37:21
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `IdCarrera` int(11) NOT NULL,
  `IdUniversidad` int(11) NOT NULL,
  `NombreCarrera` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `NivelCarrera` enum('Tecnico','Tecnologo','Pregado','Posgrado') COLLATE utf8mb4_spanish_ci NOT NULL,
  `Modalidad` enum('Presencial','Virtual') COLLATE utf8mb4_spanish_ci NOT NULL,
  `Jornada` enum('Diurna','Nocturna') COLLATE utf8mb4_spanish_ci NOT NULL,
  `Costo` int(11) NOT NULL,
  `Puntuacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`IdCarrera`, `IdUniversidad`, `NombreCarrera`, `NivelCarrera`, `Modalidad`, `Jornada`, `Costo`, `Puntuacion`) VALUES
(7, 1, 'Medicina', 'Pregado', 'Presencial', 'Diurna', 6000000, 0),
(8, 1, 'Sistemas', 'Pregado', 'Presencial', 'Diurna', 6000000, 0),
(10, 1, 'Matematicas', 'Pregado', 'Presencial', 'Diurna', 7000000, 0),
(16, 2, 'Porgramacion de Software', 'Posgrado', 'Virtual', 'Diurna', 10000000, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `universidades`
--

CREATE TABLE `universidades` (
  `IdUniversidad` int(11) NOT NULL,
  `NombreUniversidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `universidades`
--

INSERT INTO `universidades` (`IdUniversidad`, `NombreUniversidad`) VALUES
(1, 'Universidad Javeriana'),
(2, 'Universidad Del Valle'),
(3, 'Universidad Nacional De Colombia'),
(4, 'Universidad De Los Andes Colombia'),
(5, 'Universidad Distrital Francisco Jose De Caldas'),
(6, 'Universidad La Gran Colombia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `IdUsuario` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `NombreUsuario` varchar(30) DEFAULT '',
  `ApellidoUsuario` varchar(30) DEFAULT '',
  `EmailUsuario` varchar(40) DEFAULT '',
  `PasswordUsuario` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`IdUsuario`, `Username`, `NombreUsuario`, `ApellidoUsuario`, `EmailUsuario`, `PasswordUsuario`) VALUES
(1, 'daniel1', 'aaaa', 'aaaa', 'aaaa', 'aaaa'),
(3, 'daniel2', 'prueba', 'unoi', 'ssss', '0000');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`IdCarrera`),
  ADD KEY `IdCarrera` (`IdCarrera`);

--
-- Indices de la tabla `universidades`
--
ALTER TABLE `universidades`
  ADD PRIMARY KEY (`IdUniversidad`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`IdUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `IdCarrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `universidades`
--
ALTER TABLE `universidades`
  MODIFY `IdUniversidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `IdUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
