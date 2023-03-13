-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-03-2023 a las 20:35:08
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'ACTION'),
(2, 'MINIGAMES'),
(3, 'METROIDVANIA'),
(4, 'FIRST PERSON SHOOTER'),
(5, 'ADVENTURE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) NOT NULL,
  `nombre` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `comentario` varchar(300) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellidos`, `email`, `telefono`, `comentario`) VALUES
(1, 'Cristian', 'Jimenez', 'cristian.robles1858@gmail.com', '3111234567', 'compra'),
(2, 'cristian', 'jimenez', 'cristian.prueba@gmail.com', '3113113111', 'compra'),
(3, 'cristian', 'jimenez', 'cristian.vanced1858@gmail.com', '3111293299', 'blbalbadsl'),
(4, 'cristian', 'jimenez', 'cristian.vanced1858@gmail.com', '3111293299', 'AFSAFADDF');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `id` int(11) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `pelicula_id` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_pedidos`
--

INSERT INTO `detalle_pedidos` (`id`, `pedido_id`, `pelicula_id`, `precio`, `cantidad`, `estado`) VALUES
(1, 1, 1, '1399.00', 1, 1),
(2, 1, 13, '1499.00', 1, 1),
(3, 1, 12, '999.00', 1, 1),
(4, 1, 10, '499.00', 1, 1),
(5, 1, 8, '1100.00', 1, 1),
(6, 1, 2, '799.00', 1, 1),
(7, 1, 4, '1199.00', 1, 1),
(8, 2, 1, '1399.00', 1, 1),
(9, 2, 11, '899.00', 1, 1),
(10, 2, 8, '1100.00', 1, 1),
(11, 3, 4, '1199.00', 1, 1),
(12, 3, 13, '1499.00', 1, 1),
(13, 3, 12, '999.00', 1, 1),
(14, 3, 11, '899.00', 1, 1),
(15, 3, 10, '499.00', 1, 1),
(16, 3, 6, '799.00', 1, 1),
(17, 3, 7, '1199.00', 1, 1),
(18, 4, 13, '1499.00', 1, 1),
(19, 4, 12, '999.00', 10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(10) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `fecha` date NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `cliente_id`, `total`, `fecha`, `estado`) VALUES
(1, 1, '7494.00', '2023-02-19', 1),
(2, 2, '3398.00', '2023-02-19', 1),
(3, 3, '7093.00', '2023-02-20', 1),
(4, 4, '11489.00', '2023-02-20', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `categoria_id` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `titulo`, `descripcion`, `foto`, `precio`, `categoria_id`, `fecha`, `estado`) VALUES
(1, 'ZELDA TEARS OF THE KINGDOM', 'RPG ACTION GAME', 'tearsof.png', '1399.00', 1, '2023-05-12', 1),
(2, 'METROID PRIME REMASTERED', 'METROIDVANIA', 'mpr.png', '799.00', 5, '2023-02-08', 1),
(4, 'MARIO PARTY SUPERSTARS', 'MINIGAMES', 'mps.png', '1199.00', 1, '2017-09-03', 1),
(5, 'NIER AUTOMATA', 'FULL ACTION', 'nier.png', '699.00', 3, '2017-02-23', 1),
(6, 'FAR CRY 6', 'FULL ACTION', 'far6.png', '799.00', 1, '2021-09-03', 1),
(7, 'THE LAST OF US PART I', 'ACTION', 'tlou1.png', '1199.00', 5, '2022-09-03', 1),
(8, 'HORIZON FORBIDDEN WEST', 'ACCION', 'horr.png', '1100.00', 1, '2012-02-03', 1),
(10, 'MINECRAFT', 'CREATING', 'mine.png', '499.00', 4, '2009-09-03', 1),
(11, 'COD MODERN WARFARE II', 'FIRST PERSON SHOOTER', 'modern.png', '899.00', 2, '2022-09-03', 1),
(12, 'ELDEN RING', 'SOULS', 'elden.png', '999.00', 1, '2022-09-01', 1),
(13, 'HOGWARTS LEGACY', 'ACTION GAME', 'hog3.png', '1499.00', 1, '2023-02-06', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
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
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
