-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-08-2018 a las 21:43:09
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `concurso_1k`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patrocinante`
--

CREATE TABLE `patrocinante` (
  `Id_patroc` int(11) NOT NULL,
  `Rif` varchar(15) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Correo` varchar(30) NOT NULL,
  `Id_premio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `premio`
--

CREATE TABLE `premio` (
  `Id_premio` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Descripcion` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rrss`
--

CREATE TABLE `rrss` (
  `Id_rrss` int(11) NOT NULL,
  `Instagram` varchar(30) NOT NULL,
  `Id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_user` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Correo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_premio`
--

CREATE TABLE `usuario_premio` (
  `Id_up` int(11) NOT NULL,
  `Id_usuario` int(11) NOT NULL,
  `Id_premio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `patrocinante`
--
ALTER TABLE `patrocinante`
  ADD PRIMARY KEY (`Id_patroc`),
  ADD KEY `premio_patrocinante` (`Id_premio`);

--
-- Indices de la tabla `premio`
--
ALTER TABLE `premio`
  ADD PRIMARY KEY (`Id_premio`);

--
-- Indices de la tabla `rrss`
--
ALTER TABLE `rrss`
  ADD PRIMARY KEY (`Id_rrss`),
  ADD KEY `rrss_usuario` (`Id_user`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_user`),
  ADD UNIQUE KEY `Correo` (`Correo`);

--
-- Indices de la tabla `usuario_premio`
--
ALTER TABLE `usuario_premio`
  ADD PRIMARY KEY (`Id_usuario`,`Id_premio`),
  ADD KEY `premiouser` (`Id_premio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `rrss`
--
ALTER TABLE `rrss`
  MODIFY `Id_rrss` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `patrocinante`
--
ALTER TABLE `patrocinante`
  ADD CONSTRAINT `premio_patrocinante` FOREIGN KEY (`Id_premio`) REFERENCES `premio` (`Id_premio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `rrss`
--
ALTER TABLE `rrss`
  ADD CONSTRAINT `rrss_usuario` FOREIGN KEY (`Id_user`) REFERENCES `usuario` (`Id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario_premio`
--
ALTER TABLE `usuario_premio`
  ADD CONSTRAINT `premiouser` FOREIGN KEY (`Id_premio`) REFERENCES `usuario` (`Id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userpremio` FOREIGN KEY (`Id_usuario`) REFERENCES `premio` (`Id_premio`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
