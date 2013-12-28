-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-12-2013 a las 17:33:27
-- Versión del servidor: 5.5.34
-- Versión de PHP: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `eswimmers_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `ID_Producto` int(11) NOT NULL AUTO_INCREMENT,
  `Presentacion` varchar(75) NOT NULL,
  `Imagen` varchar(300) DEFAULT NULL,
  `Precio_Unitario` decimal(10,2) DEFAULT '0.00',
  `Disponible` tinyint(1) DEFAULT '1',
  `Existencias` int(11) DEFAULT '0',
  `Tipo_Producto` int(11) NOT NULL,
  PRIMARY KEY (`ID_Producto`),
  KEY `fk_tipo_producto` (`Tipo_Producto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`ID_Producto`, `Presentacion`, `Imagen`, `Precio_Unitario`, `Disponible`, `Existencias`, `Tipo_Producto`) VALUES
(1, 'Gorro impermeable', 'imagenes/gorro.jpg', '350.00', 1, 5, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_producto`
--

CREATE TABLE IF NOT EXISTS `tipo_producto` (
  `ID_Tipo_Producto` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(200) DEFAULT NULL,
  `Aplicacion` varchar(200) DEFAULT NULL,
  `Ventajas` varchar(200) DEFAULT NULL,
  `Disponible` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`ID_Tipo_Producto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tipo_producto`
--

INSERT INTO `tipo_producto` (`ID_Tipo_Producto`, `Descripcion`, `Aplicacion`, `Ventajas`, `Disponible`) VALUES
(1, 'Accesorios de entrenamiento', '--', '--', 1),
(2, 'Trajes de competencia', '--', '--', 1),
(3, 'Trajes de entrenamiento', '--', '--', 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_tipo_producto` FOREIGN KEY (`Tipo_Producto`) REFERENCES `tipo_producto` (`ID_Tipo_Producto`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
