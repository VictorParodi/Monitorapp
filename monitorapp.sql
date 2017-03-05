-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 05-03-2017 a las 20:51:22
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `monitorapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monitores`
--

CREATE TABLE `monitores` (
  `monitorId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `semester` int(12) NOT NULL,
  `dni` bigint(255) NOT NULL,
  `phoneNumber` bigint(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `monitores`
--

INSERT INTO `monitores` (`monitorId`, `name`, `lastName`, `course`, `semester`, `dni`, `phoneNumber`, `email`) VALUES
(1, 'Victor', 'Parodi', 'Electrónica', 10, 1118000111, 3002223344, 'victor@mail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monitorias`
--

CREATE TABLE `monitorias` (
  `courseId` int(11) NOT NULL,
  `course` varchar(100) NOT NULL,
  `monitor` varchar(150) NOT NULL,
  `date` datetime NOT NULL,
  `classroom` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `monitorias`
--

INSERT INTO `monitorias` (`courseId`, `course`, `monitor`, `date`, `classroom`) VALUES
(3, 'Sistemas embebidos', 'John Doe', '2017-03-10 15:30:00', 'Bloque 7 salón 301');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `monitores`
--
ALTER TABLE `monitores`
  ADD PRIMARY KEY (`monitorId`);

--
-- Indices de la tabla `monitorias`
--
ALTER TABLE `monitorias`
  ADD PRIMARY KEY (`courseId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `monitores`
--
ALTER TABLE `monitores`
  MODIFY `monitorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `monitorias`
--
ALTER TABLE `monitorias`
  MODIFY `courseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
