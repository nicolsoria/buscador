-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-03-2026 a las 02:43:09
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `buscador_personas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `ci` varchar(20) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombre`, `apellido`, `ci`, `celular`, `direccion`, `foto`) VALUES
(1, 'Juan', 'Perez', '1234567', '76543210', 'La Paz', 'persona1.jpg'),
(2, 'Maria', 'Lopez', '2345678', '71234567', 'El Alto', 'persona2.jpg'),
(3, 'Carlos', 'Rojas', '3456789', '70123456', 'Cochabamba', 'persona3.jpg'),
(4, 'Ana', 'Gomez', '4567891', '78965412', 'Santa Cruz', 'persona4.jpg'),
(5, 'Luis', 'Fernandez', '5678912', '76549871', 'Oruro', 'persona5.jpg'),
(6, 'Sofia', 'Martinez', '6789123', '75412369', 'Potosi', 'persona6.jpg'),
(7, 'Pedro', 'Ramirez', '7891234', '71236985', 'Sucre', 'persona7.jpg'),
(8, 'Laura', 'Torrez', '8912345', '79874521', 'Tarija', 'persona8.jpg'),
(9, 'Miguel', 'Vargas', '9123456', '74561239', 'Beni', 'persona9.jpg'),
(10, 'Lucia', 'Castro', '1023456', '70125698', 'Pando', 'persona10.jpg'),
(11, 'Jorge', 'Mendoza', '1122334', '76512398', 'La Paz', 'persona11.jpg'),
(12, 'Valeria', 'Rios', '2233445', '78932145', 'El Alto', 'persona12.jpg'),
(13, 'Ricardo', 'Flores', '3344556', '75489632', 'Cochabamba', 'persona13.jpg'),
(14, 'Daniela', 'Soto', '4455667', '70123654', 'Santa Cruz', 'persona14.jpg'),
(15, 'Andres', 'Salazar', '5566778', '71234589', 'Oruro', 'persona15.jpg'),
(16, 'Gabriela', 'Paredes', '6677889', '79845612', 'Potosi', 'persona16.jpg'),
(17, 'Fernando', 'Ortiz', '7788991', '76543298', 'Sucre', 'persona17.jpg'),
(18, 'Natalia', 'Silva', '8899112', '70125478', 'Tarija', 'persona18.jpg'),
(19, 'Diego', 'Arce', '9911223', '78945612', 'Beni', 'persona19.jpg'),
(20, 'Paola', 'Delgado', '1010101', '75412387', 'Pando', 'persona20.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
