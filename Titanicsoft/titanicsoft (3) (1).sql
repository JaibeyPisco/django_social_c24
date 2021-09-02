-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-04-2021 a las 18:47:30
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `titanicsoft`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `tipo` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `whatssApp` int(11) NOT NULL,
  `dni` int(8) NOT NULL,
  `direccion` varchar(256) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contraseña` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `whatssApp`, `dni`, `direccion`, `email`, `contraseña`) VALUES
(1, 943626943, 72402432, 'teofiloCastillo', 'aimaroribevigo@gmail.com', '1234'),
(2, 943626943, 72402432, 'teofiloCastillo', 'aimaroribevigo@gmail.com', '1234'),
(3, 141414, 1245, 'teofiloCastillo', 'leidioribevigo@hotmail.com', '12345'),
(4, 789456, 123, 'teofiloCastillo', 'curriculumvitae.now@hotmail.com', '123'),
(5, 1010, 1010, 'teofiloCastillo', 'aimaroribevigo@gmail.com', '123'),
(6, 999339880, 545687, 'teofiloCastillo', 'glover@gmail.com', '12345'),
(7, 999999, 888888, 'teofiloCastillo', 'kira@gmail.com', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `idempresa` int(11) NOT NULL,
  `whatssApp` int(11) NOT NULL,
  `ruc` varchar(50) NOT NULL,
  `razonSocial` varchar(70) NOT NULL,
  `nombreComercial` varchar(70) NOT NULL,
  `personaContacto` varchar(30) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contraseña` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`idempresa`, `whatssApp`, `ruc`, `razonSocial`, `nombreComercial`, `personaContacto`, `email`, `contraseña`) VALUES
(1, 11111, '1414', 'empresa', 'empresa1', 'jaibey', 'jaibey@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envio`
--

CREATE TABLE `envio` (
  `idenvio` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idPaquete` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `canPaquetes` int(11) NOT NULL,
  `origen` varchar(255) NOT NULL,
  `destino` varchar(255) NOT NULL,
  `recojo` tinyint(1) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `fechaPublicacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquete`
--

CREATE TABLE `paquete` (
  `idpaquete` int(60) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `descripcion` varchar(256) DEFAULT NULL,
  `precio` double NOT NULL,
  `ancho` decimal(25,0) NOT NULL,
  `alto` decimal(25,0) NOT NULL,
  `grosor` decimal(25,0) NOT NULL,
  `peso` decimal(25,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`),
  ADD KEY `idcontacto` (`whatssApp`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idempresa`),
  ADD KEY `idcontacto` (`whatssApp`);

--
-- Indices de la tabla `envio`
--
ALTER TABLE `envio`
  ADD PRIMARY KEY (`idenvio`),
  ADD KEY `idCliente` (`idCliente`),
  ADD KEY `idPaquete` (`idPaquete`),
  ADD KEY `idCategoria` (`idCategoria`);

--
-- Indices de la tabla `paquete`
--
ALTER TABLE `paquete`
  ADD PRIMARY KEY (`idpaquete`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `idempresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `envio`
--
ALTER TABLE `envio`
  MODIFY `idenvio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paquete`
--
ALTER TABLE `paquete`
  MODIFY `idpaquete` int(60) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
