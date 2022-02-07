-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-07-2021 a las 00:49:30
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdpost`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tleccionescribir`
--

CREATE TABLE `tleccionescribir` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `aciertos` int(11) NOT NULL,
  `desaciertos` int(11) NOT NULL,
  `intentos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tleccionescribir`
--

INSERT INTO `tleccionescribir` (`id`, `id_usuario`, `aciertos`, `desaciertos`, `intentos`) VALUES
(1, 1, 2, 1, 10),
(2, 2, 5, 1, 10),
(3, 2, 1, 1, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario`
--

CREATE TABLE `tusuario` (
  `id` int(11) NOT NULL,
  `identificacion` varchar(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `contrasena` varchar(80) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tusuario`
--

INSERT INTO `tusuario` (`id`, `identificacion`, `nombre`, `apellido`, `username`, `contrasena`, `img`) VALUES
(1, '009', 'Carlos', 'Duran', 'kalel', '123', 'images/icons/1.png'),
(2, '29', 'juan', 'yeisy', 'juany', '12', 'images/icons/1.png'),
(3, '03', 'y', 'v', 'yv', '11', 'images/icons/1.png'),
(4, '00', 'aldair', 'jorge', 'aldairyjorge', '11', 'images/icons/1.png'),
(5, '111', 'Namuel', 'Solorzano', 'Namu', '123', 'images/icons/1.png'),
(6, '00', 'juan', 'hernandez', 'jher', '12', 'images/icons/1.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tleccionescribir`
--
ALTER TABLE `tleccionescribir`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tleccionescribir`
--
ALTER TABLE `tleccionescribir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tleccionescribir`
--
ALTER TABLE `tleccionescribir`
  ADD CONSTRAINT `tleccionescribir_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `tusuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
