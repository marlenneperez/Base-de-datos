-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-08-2024 a las 03:30:26
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `taller`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `herramientas`
--

CREATE TABLE `herramientas` (
  `cantidad` int(100) NOT NULL,
  `numero_de_serie` int(145) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `herramientas`
--

INSERT INTO `herramientas` (`cantidad`, `numero_de_serie`, `nombre`, `descripcion`) VALUES
(10, 245, 'pinza de precision', 'pinza tamaño estandar color negro'),
(25, 1478, 'martillo', 'Martillo tamaño estandar color rojo'),
(25, 7895, 'desarmador plano ', 'desarmador plano de 1/4'),
(25, 14789, 'pinzas de punta', 'Pinza Punta Larga Cortante 5\" color rojo'),
(50, 1456, 'juego de llaves españolas', 'juego de 10 llaves españolas marca pretul'),
(45, 1478, 'sierra circular', 'sierra circular para madera'),
(120, 126, 'clavos para yeso', 'clavos de  30 x 2,42 mm para yeso'),
(200, 156, 'clavos galvanizados', 'clavo galvanizado calibre 9 largo 1\" (25 mm)'),
(90, 178, 'clavos de acero inoxidable ', 'clavo de 45 mm de acero inoxidable'),
(200, 131, 'cinta de aislar', 'cinta negra marca Truper 12501 19 mm x 9 m.'),
(20, 145, 'alicate o pinza alicate', 'Tenaza pequeña de acero '),
(25, 126, 'cinta doble cara', 'cinta doble cara marca janel'),
(25, 126, 'cinta doble cara', 'cinta doble cara marca janel'),
(7, 124, 'juego de matracas', 'juego de 3 matracas de trinquete'),
(150, 165, 'baleros', 'baleros de 220 mm'),
(70, 166, 'baleros', 'baleros de 1500mm'),
(55, 14789, 'juego de pinceles', 'paquete con 5 pinceles color rojo'),
(90, 148, 'juego de pinceles', 'paquete con 5 pinceles color rojo'),
(12, 1469, 'compresor de aire', 'compresor de aire marca husky'),
(7, 1267, 'embudos', 'embudo de plastico de 35mm de diametro'),
(5, 187, 'bomba de aire', 'bomba de aire manual marca pretul'),
(190, 178, 'cable de bocina', 'cable de bocina calibre 18'),
(8, 1269, 'silicon de poliuretano', 'silicón de poliuretano negro marca comex'),
(8, 1269, 'silicon de poliuretano', 'silicón de poliuretano negro marca comex'),
(13, 1699, 'llave de cruz', 'llave de cruz tamaño estandar'),
(21, 1891, 'patin hidraulico', 'patin hidraulico tamaño estandar'),
(6, 1999, 'torquimetro', 'torquimetro estandar negro '),
(6, 1999, 'torquimetro', 'torquimetro estandar negro '),
(16, 1959, 'caja de herramientas', 'caja de herramientas organizadoras color amarillo'),
(55, 1989, 'tornillos para madera', 'tornillos para madera numero 9'),
(30, 19, 'tornillos mariposa', 'tornillos mariposa tamaño estandar');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
