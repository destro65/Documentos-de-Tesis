-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-03-2024 a las 19:36:07
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reporta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carros`
--

CREATE TABLE `carros` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `placa` varchar(255) NOT NULL,
  `registro` varchar(255) NOT NULL,
  `propietario` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carros`
--

INSERT INTO `carros` (`id`, `placa`, `registro`, `propietario`, `created_at`, `updated_at`) VALUES
(1, 'TBC1080', '2099', 'Raul Sotomayor', '2023-11-21 02:29:44', '2023-11-21 02:29:44'),
(2, 'TBB5555', '2137', 'Paul Cadena', '2023-11-21 02:32:12', '2023-11-21 02:32:12'),
(3, 'TBB1000', '2169', 'Prueba', '2023-12-26 22:34:38', '2023-12-26 22:34:38'),
(4, 'prueba', 'prueba', 'prueba', '2023-12-26 23:02:14', '2023-12-26 23:02:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dias`
--

CREATE TABLE `dias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hora` time NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `serie35` bigint(6) NOT NULL,
  `serie17` bigint(6) NOT NULL,
  `serie10` bigint(6) NOT NULL,
  `vendidos` smallint(6) DEFAULT NULL,
  `estimado_id` bigint(20) UNSIGNED DEFAULT NULL,
  `registro_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `dias`
--

INSERT INTO `dias` (`id`, `hora`, `created_at`, `updated_at`, `serie35`, `serie17`, `serie10`, `vendidos`, `estimado_id`, `registro_id`) VALUES
(1, '16:30:55', '2023-11-21 02:30:55', '2023-11-21 02:30:55', 17053566, 12056999, 15499964, NULL, NULL, 1),
(2, '16:33:41', '2023-11-21 02:33:41', '2023-11-21 02:33:41', 17053577, 12056955, 15499964, NULL, NULL, 1),
(3, '12:16:05', '2023-12-26 22:16:05', '2023-12-26 22:16:05', 12312321321, 45645645654, 789789789789, NULL, NULL, 4),
(4, '12:16:13', '2023-12-26 22:16:13', '2023-12-26 22:16:13', 213123, 456456, 78978978, NULL, NULL, 4),
(5, '20:17:55', '2024-01-13 06:17:55', '2024-01-13 06:17:55', 17053577, 12056955, 15499964, NULL, NULL, 17),
(6, '08:26:19', '2024-02-02 18:26:19', '2024-02-02 18:26:19', 12312321321, 12056999, 15499964, NULL, NULL, 1),
(7, '08:30:47', '2024-02-02 18:30:47', '2024-02-02 18:30:47', 17053577, 12056999, 15499964, NULL, NULL, 20),
(8, '08:31:43', '2024-02-02 18:31:43', '2024-02-02 18:31:43', 17053577, 12056955, 15499964, NULL, NULL, 20),
(10, '08:47:57', '2024-02-06 18:47:57', '2024-02-06 18:47:57', 1232131321, 456546456456, 7896789789789, NULL, NULL, 22),
(11, '08:51:13', '2024-02-06 18:51:13', '2024-02-06 18:51:13', 45452454, 24524524525, 4252452454252, NULL, NULL, 22),
(12, '08:46:46', '2024-02-07 18:46:46', '2024-02-07 18:46:46', 1232131231231, 12312312312321, 4564564564564, NULL, NULL, 24),
(13, '08:46:54', '2024-02-07 18:46:54', '2024-02-07 18:46:54', 456456456464, 7897897897897, 456456456456, NULL, NULL, 24),
(14, '08:47:17', '2024-02-07 18:47:17', '2024-02-07 18:47:17', 9789789789, 7456456456, 78978987978, NULL, NULL, 25),
(15, '12:08:19', '2024-02-22 22:08:19', '2024-02-22 22:08:19', 45645654, 45645645, 4564564564, NULL, NULL, 27),
(16, '12:08:26', '2024-02-22 22:08:26', '2024-02-22 22:08:26', 789789789, 78987978, 78978978978, NULL, NULL, 27),
(17, '08:57:58', '2024-02-24 18:57:58', '2024-02-24 18:57:58', 789879789, 456464445, 789789789, NULL, NULL, 28),
(18, '08:58:05', '2024-02-24 18:58:05', '2024-02-24 18:58:05', 7897978, 87978978, 64565464, NULL, NULL, 28),
(19, '08:58:26', '2024-02-24 18:58:26', '2024-02-24 18:58:26', 8798799789, 1235468998, 456456546, NULL, NULL, 29),
(20, '09:33:25', '2024-02-24 19:33:25', '2024-02-24 19:33:25', 789789789, 456456456, 78978978987, NULL, NULL, 30),
(21, '10:27:30', '2024-03-05 20:27:30', '2024-03-05 20:27:30', 147428528, 414717422, 758758766, NULL, NULL, 33);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estimados`
--

CREATE TABLE `estimados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vuelta` smallint(6) NOT NULL,
  `estimado` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ruta_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(41, '2014_10_12_000000_create_users_table', 1),
(42, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(43, '2019_08_19_000000_create_failed_jobs_table', 1),
(44, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(45, '2023_11_08_000002_create_carros_table', 1),
(46, '2023_11_08_000003_create_rutas_table', 1),
(47, '2023_11_08_000004_create_estimados_table', 1),
(48, '2023_11_08_000006_create_multas_table', 1),
(49, '2023_11_08_000007_create_registros_table', 1),
(50, '2023_11_08_000008_create_dias_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multas`
--

CREATE TABLE `multas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Hora` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `carro_id` bigint(20) UNSIGNED NOT NULL,
  `ruta_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `multas`
--

INSERT INTO `multas` (`id`, `Hora`, `created_at`, `updated_at`, `carro_id`, `ruta_id`) VALUES
(27, NULL, '2024-02-06 21:16:37', '2024-02-06 21:16:37', 2, 4),
(28, '05:17:38', '2024-02-06 22:17:38', NULL, 3, 2),
(29, '05:17:58', '2024-02-06 22:17:58', NULL, 4, 2),
(30, '05:18:28', '2024-02-06 22:18:28', NULL, 1, 1),
(31, '05:19:30', '2024-02-06 22:19:30', NULL, 4, 6),
(32, '06:44:45', '2024-02-06 23:44:45', NULL, 4, 5),
(33, '10:48:17', '2024-02-29 03:48:17', NULL, 3, 6),
(34, '10:52:25', '2024-02-29 03:52:25', NULL, 3, 2),
(35, '10:53:39', '2024-02-29 03:53:39', NULL, 4, 5),
(36, '10:54:53', '2024-02-29 03:54:53', NULL, 4, 5),
(37, '02:11:45', '2024-03-05 19:11:45', NULL, 3, 4),
(38, '02:19:02', '2024-03-05 19:19:02', NULL, 3, 3),
(39, '02:20:51', '2024-03-05 19:20:51', NULL, 1, 1),
(40, '02:28:14', '2024-03-05 19:28:14', NULL, 2, 3),
(41, '02:30:15', '2024-03-05 19:30:15', NULL, 3, 3),
(42, '02:31:36', '2024-03-05 19:31:36', NULL, 3, 3),
(43, '02:33:05', '2024-03-05 19:33:05', NULL, 2, 1),
(44, '02:34:52', '2024-03-05 19:34:52', NULL, 2, 2),
(45, '02:38:50', '2024-03-05 19:38:50', NULL, 3, 2),
(46, '02:40:09', '2024-03-05 19:40:09', NULL, 3, 6),
(47, '02:42:44', '2024-03-05 19:42:44', NULL, 1, 2),
(48, '02:43:57', '2024-03-05 19:43:57', NULL, 1, 2),
(49, '02:44:44', '2024-03-05 19:44:44', NULL, 3, 4),
(51, '02:45:52', '2024-03-05 19:45:52', NULL, 1, 3),
(52, '02:48:35', '2024-03-05 19:48:35', NULL, 2, 2),
(53, '02:53:18', '2024-03-05 19:53:18', NULL, 2, 3),
(54, '02:56:28', '2024-03-05 19:56:28', NULL, 1, 2),
(55, '02:57:22', '2024-03-05 19:57:22', NULL, 4, 5),
(56, '02:58:18', '2024-03-05 19:58:18', NULL, 3, 1),
(57, NULL, '2024-03-05 20:28:43', '2024-03-05 20:28:43', 3, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('harol.lady@hotmail.com', '$2y$12$t.8JJx279FlKv6YJ0GXZSO0fu3MMa1rOXQ4JMP6/uHd7uMmybnjfC', '2024-01-14 02:17:42'),
('vicente@hotmail.com', '$2y$12$cMFsWeL2sbzC4/GvMOlVxeLICSdXO6s2xByDkRYbQ1F2NK0WTh9n6', '2024-01-14 01:47:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `carro_id` bigint(20) UNSIGNED NOT NULL,
  `ruta_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`id`, `fecha`, `created_at`, `updated_at`, `user_id`, `carro_id`, `ruta_id`) VALUES
(1, '2023-11-20', '2023-11-21 02:29:49', '2023-11-21 02:29:49', NULL, 1, 1),
(2, '2023-11-20', '2023-11-21 02:32:14', '2023-11-21 02:32:14', NULL, 2, 3),
(3, '2023-11-20', '2023-11-21 02:47:57', '2023-11-21 02:47:57', NULL, 1, 2),
(4, '2023-12-26', '2023-12-26 22:05:19', '2023-12-26 22:05:19', NULL, 1, 3),
(5, '2023-12-26', '2023-12-26 22:30:48', '2023-12-26 22:30:48', NULL, 1, 1),
(6, '2023-12-26', '2023-12-26 22:32:23', '2023-12-26 22:32:23', NULL, 2, 2),
(7, '2023-12-26', '2023-12-26 22:34:40', '2023-12-26 22:34:40', NULL, 3, 4),
(8, '2023-12-26', '2023-12-26 22:35:54', '2023-12-26 22:35:54', NULL, 1, 4),
(9, '2023-12-26', '2023-12-26 22:52:11', '2023-12-26 22:52:11', NULL, 2, 4),
(10, '2023-12-26', '2023-12-26 22:56:59', '2023-12-26 22:56:59', NULL, 3, 3),
(12, '2023-12-27', '2023-12-27 19:29:31', '2023-12-27 19:29:31', NULL, 2, 5),
(13, '2024-01-07', '2024-01-08 05:54:39', '2024-01-08 05:54:39', NULL, 1, 5),
(14, '2024-01-07', '2024-01-08 06:22:51', '2024-01-08 06:22:51', NULL, 2, 1),
(15, '2024-01-09', '2024-01-10 07:51:16', '2024-01-10 07:51:16', NULL, 3, 2),
(16, '2024-01-09', '2024-01-10 07:55:29', '2024-01-10 07:55:29', NULL, 1, 2),
(17, '2024-01-12', '2024-01-13 06:17:32', '2024-01-13 06:17:32', NULL, 2, 6),
(18, '2024-01-21', '2024-01-21 19:37:56', '2024-01-21 19:37:56', NULL, 4, 5),
(19, '2024-01-29', '2024-01-29 20:29:31', '2024-01-29 20:29:31', NULL, 2, 2),
(20, '2024-02-02', '2024-02-02 18:29:18', '2024-02-02 18:29:18', NULL, 1, 6),
(22, '2024-02-06', '2024-02-06 18:45:17', '2024-02-06 18:45:17', NULL, 2, 4),
(23, '2024-02-06', '2024-02-06 23:43:24', '2024-02-06 23:43:24', NULL, 2, 1),
(24, '2024-02-07', '2024-02-07 18:46:31', '2024-02-07 18:46:31', NULL, 4, 5),
(25, '2024-02-07', '2024-02-07 18:47:08', '2024-02-07 18:47:08', NULL, 1, 1),
(26, '2024-02-22', '2024-02-22 22:07:53', '2024-02-22 22:07:53', NULL, 2, 1),
(27, '2024-02-22', '2024-02-22 22:08:10', '2024-02-22 22:08:10', NULL, 2, 4),
(28, '2024-02-24', '2024-02-24 18:57:44', '2024-02-24 18:57:44', NULL, 2, 3),
(29, '2024-02-24', '2024-02-24 18:58:17', '2024-02-24 18:58:17', NULL, 4, 2),
(30, '2024-02-24', '2024-02-24 19:33:05', '2024-02-24 19:33:05', NULL, 2, 5),
(31, '2024-02-24', '2024-02-24 19:33:43', '2024-02-24 19:33:43', NULL, 1, 6),
(32, '2024-03-05', '2024-03-05 20:19:06', '2024-03-05 20:19:06', NULL, 3, 1),
(33, '2024-03-05', '2024-03-05 20:27:15', '2024-03-05 20:27:15', NULL, 2, 4),
(34, '2024-03-05', '2024-03-05 20:29:04', '2024-03-05 20:29:04', NULL, 2, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE `rutas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rutas`
--

INSERT INTO `rutas` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'La Venecia', '2023-11-21 02:29:35', '2023-11-21 02:29:35'),
(2, 'Paquisha', '2023-11-21 02:31:55', '2023-11-21 02:31:55'),
(3, 'Cutuglagua', '2023-11-21 02:31:59', '2023-11-21 02:31:59'),
(4, 'Santo Tomas', '2023-12-26 22:34:20', '2023-12-26 22:34:20'),
(5, 'prueba', '2023-12-26 23:02:04', '2023-12-26 23:02:04'),
(6, 'Turubamba', '2024-01-13 06:17:13', '2024-01-13 06:17:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Harold Martinez', 'harol.lady@hotmail.com', NULL, '$2y$12$6CBQo40exgzcdPNDFPtvXuYvY/l9dtSLKcedonRoqG0PM2om2ptB6', NULL, '2023-11-21 02:20:58', '2024-01-29 20:52:55'),
(2, 'prueba', 'prueba@hotmail.com', NULL, '$2y$12$6chkHUv.zJX8vTnV6R.7wOsbNOIGVVefK5rStW5c8WaZSDXjjpsra', 'M3aAPae2XGTz78Nf8et9ZiUPABvdGx2XmUuyFwH1bNBQrqgmOelLOzWuPhOW', NULL, '2024-02-02 20:18:34'),
(3, 'Jose Martinez', 'jose@hotmail.com', NULL, 'jose', NULL, NULL, NULL),
(4, 'Administrador', 'admin@hotmail.com', NULL, '$2y$12$EYhyzLRtrI0MGakJxQGYoegCIDpjLEoZb51GIHYKPrG4eeFnQfcLa', 'YAiIuIXzjRz0d4zuCTmOHpZFDS3jxtY5bQ4Ix0rXluLlof1jxq8O2AFMfmfO', '2023-12-26 22:03:54', '2024-01-20 05:21:29'),
(6, 'Vicente Tualombo', 'vicente@hotmail.com', NULL, '$2y$12$VOUBrITz87ZeLBEedgLAyOeBICGLrIKbRMsrr/wMKQFQZVxfzunKy', 'P6Iwfjlp2LmzhBtHM8tywBjNF4CknXizXVsjWqyvwFFQ2DdEnMuiIz9PCBEE', '2024-01-08 03:47:09', '2024-01-08 03:47:09');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_registro`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_registro` (
`id` bigint(20) unsigned
,`hora` time
,`serie35` bigint(6)
,`serie17` bigint(6)
,`serie10` bigint(6)
,`vendidos` smallint(6)
,`estimado` smallint(6)
,`registro_id` bigint(20) unsigned
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_registro`
--
DROP TABLE IF EXISTS `vista_registro`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_registro`  AS SELECT `dias`.`id` AS `id`, `dias`.`hora` AS `hora`, `dias`.`serie35` AS `serie35`, `dias`.`serie17` AS `serie17`, `dias`.`serie10` AS `serie10`, `dias`.`vendidos` AS `vendidos`, `estimados`.`estimado` AS `estimado`, `dias`.`registro_id` AS `registro_id` FROM (`dias` left join `estimados` on(`dias`.`id` = `estimados`.`id`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carros`
--
ALTER TABLE `carros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dias`
--
ALTER TABLE `dias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dias_estimado_id_foreign` (`estimado_id`),
  ADD KEY `dias_registro_id_foreign` (`registro_id`);

--
-- Indices de la tabla `estimados`
--
ALTER TABLE `estimados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estimados_ruta_id_foreign` (`ruta_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `multas`
--
ALTER TABLE `multas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `multas_carro_id_foreign` (`carro_id`),
  ADD KEY `multas_ruta_id_foreign` (`ruta_id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registros_user_id_foreign` (`user_id`),
  ADD KEY `registros_carro_id_foreign` (`carro_id`),
  ADD KEY `registros_ruta_id_foreign` (`ruta_id`);

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carros`
--
ALTER TABLE `carros`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `dias`
--
ALTER TABLE `dias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `estimados`
--
ALTER TABLE `estimados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `multas`
--
ALTER TABLE `multas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `rutas`
--
ALTER TABLE `rutas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `dias`
--
ALTER TABLE `dias`
  ADD CONSTRAINT `dias_estimado_id_foreign` FOREIGN KEY (`estimado_id`) REFERENCES `estimados` (`id`),
  ADD CONSTRAINT `dias_registro_id_foreign` FOREIGN KEY (`registro_id`) REFERENCES `registros` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `estimados`
--
ALTER TABLE `estimados`
  ADD CONSTRAINT `estimados_ruta_id_foreign` FOREIGN KEY (`ruta_id`) REFERENCES `rutas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `multas`
--
ALTER TABLE `multas`
  ADD CONSTRAINT `multas_carro_id_foreign` FOREIGN KEY (`carro_id`) REFERENCES `carros` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `multas_ruta_id_foreign` FOREIGN KEY (`ruta_id`) REFERENCES `rutas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `registros`
--
ALTER TABLE `registros`
  ADD CONSTRAINT `registros_carro_id_foreign` FOREIGN KEY (`carro_id`) REFERENCES `carros` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `registros_ruta_id_foreign` FOREIGN KEY (`ruta_id`) REFERENCES `rutas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `registros_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
