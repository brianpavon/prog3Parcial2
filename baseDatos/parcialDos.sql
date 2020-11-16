-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2020 a las 00:55:26
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parcial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos_materias`
--

CREATE TABLE `alumnos_materias` (
  `id_alumno` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `nota` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `alumnos_materias`
--

INSERT INTO `alumnos_materias` (`id_alumno`, `id_materia`, `nota`, `created_at`, `updated_at`) VALUES
(2, 4, 0, '2020-11-17 03:01:09', '2020-11-17 03:01:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `materia` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `cuatrimestre` int(11) NOT NULL,
  `cupos` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `materia`, `cuatrimestre`, `cupos`, `created_at`, `updated_at`) VALUES
(1, 'P3', 3, 20, '2020-11-17 02:41:05', '2020-11-17 02:41:05'),
(2, 'P2', 2, 20, '2020-11-17 02:46:37', '2020-11-17 02:46:37'),
(3, 'P1', 1, 20, '2020-11-17 02:46:44', '2020-11-17 02:46:44'),
(4, 'SPD', 1, 19, '2020-11-17 02:47:02', '2020-11-17 03:01:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `clave` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `tipo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `nombre`, `clave`, `tipo`, `created_at`, `updated_at`) VALUES
(2, 'PEPE@MAIL.COM', 'PEPE', '123456', 'ALUMNO', '2020-11-17 02:22:49', '2020-11-17 02:22:49'),
(3, 'ADMIN@MAIL.COM', 'ADMIN', '12345', 'ADMIN', '2020-11-17 02:28:41', '2020-11-17 02:28:41'),
(4, 'BRIAN@MAIL.COM', 'BRIAN', '1234567', 'ALUMNO', '2020-11-17 03:03:52', '2020-11-17 03:03:52'),
(5, 'PROFESOR@MAIL.COM', 'PROFESOR', '1234567', 'PROFESOR', '2020-11-17 03:05:20', '2020-11-17 03:05:20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
