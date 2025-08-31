-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-08-2025 a las 07:25:29
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nutri_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exercises`
--

CREATE TABLE `exercises` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `muscle_group` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `exercises`
--

INSERT INTO `exercises` (`id`, `name`, `description`, `image_url`, `muscle_group`) VALUES
(1, 'Press de Banca con Barra', 'Acuéstese en un banco plano. Agarre la barra con las manos un poco más anchas que el ancho de los hombros. Baje la barra lentamente hasta el pecho y luego empújela hacia arriba hasta la posición inicial.', NULL, 'Pecho'),
(2, 'Sentadillas con Barra', 'Coloque una barra sobre la parte superior de la espalda. Baje las caderas como si se sentara en una silla, manteniendo la espalda recta y el pecho erguido. Vuelva a la posición inicial.', NULL, 'Piernas'),
(3, 'Peso Muerto con Barra', 'Párese con los pies al ancho de las caderas, con una barra en el suelo frente a usted. Agáchese y agarre la barra con un agarre por encima de la mano. Levante el pecho y enderece la parte baja de la espalda. Póngase de pie, levantando la barra del suelo.', NULL, 'Espalda'),
(4, 'Press Militar con Barra', 'Párese con los pies separados al ancho de los hombros y sostenga una barra a la altura de los hombros. Empuje la barra por encima de la cabeza hasta que los brazos estén completamente extendidos. Baje la barra de nuevo a los hombros.', NULL, 'Hombros'),
(5, 'Dominadas', 'Cuélguese de una barra con las palmas de las manos hacia afuera. Jale su cuerpo hacia arriba hasta que su barbilla esté por encima de la barra. Baje su cuerpo de nuevo a la posición inicial.', NULL, 'Espalda'),
(6, 'Curl de Bíceps con Mancuernas', 'Sostenga una mancuerna en cada mano con las palmas hacia adelante. Sin mover la parte superior de los brazos, doble los codos y lleve las pesas lo más cerca posible de los hombros.', NULL, 'Brazos'),
(7, 'Extensiones de Tríceps', 'Sostenga una mancuerna con ambas manos por encima de la cabeza. Baje la mancuerna detrás de la cabeza doblando los codos. Extienda los brazos para volver a la posición inicial.', NULL, 'Brazos'),
(8, 'Zancadas (Lunges)', 'Dé un paso adelante con una pierna y baje las caderas hasta que ambas rodillas estén dobladas en un ángulo de 90 grados. Empuje hacia atrás a la posición inicial y repita con la otra pierna.', NULL, 'Piernas'),
(9, 'Remo con Barra', 'Inclínese hacia adelante por las caderas, manteniendo la espalda recta. Sostenga una barra con un agarre por encima de la mano. Tire de la barra hacia la parte superior de la cintura. Baje la barra de nuevo a la posición inicial.', NULL, 'Espalda'),
(10, 'Elevaciones Laterales con Mancuernas', 'Sostenga una mancuerna en cada mano a los lados. Levante las pesas hacia los lados hasta que alcancen la altura de los hombros. Baje las pesas de nuevo a la posición inicial.', NULL, 'Hombros'),
(11, 'Plancha (Plank)', 'Comience en una posición de flexión, pero con su peso sobre los antebrazos en lugar de las manos. Mantenga su cuerpo en línea recta desde la cabeza hasta los talones durante el tiempo deseado.', NULL, 'Abdomen'),
(12, 'Crunches', 'Acuéstese boca arriba con las rodillas dobladas. Levante la cabeza y los hombros del suelo. Baje de nuevo a la posición inicial.', NULL, 'Abdomen');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foods`
--

CREATE TABLE `foods` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `calories_per_100g` decimal(10,2) NOT NULL,
  `protein_per_100g` decimal(10,2) NOT NULL,
  `carbs_per_100g` decimal(10,2) NOT NULL,
  `fats_per_100g` decimal(10,2) NOT NULL,
  `serving_size_g` decimal(10,2) DEFAULT NULL,
  `serving_unit` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `foods`
--

INSERT INTO `foods` (`id`, `name`, `calories_per_100g`, `protein_per_100g`, `carbs_per_100g`, `fats_per_100g`, `serving_size_g`, `serving_unit`, `user_id`) VALUES
(1, 'Huevo de Gallina', 155.00, 13.00, 1.10, 11.00, 50.00, 'unidad mediana', NULL),
(2, 'Pechuga de Pollo (cruda)', 165.00, 31.00, 0.00, 3.60, 150.00, 'filete mediano', NULL),
(3, 'Arroz Blanco (cocido)', 130.00, 2.70, 28.00, 0.30, 180.00, 'taza', NULL),
(4, 'Frijoles Negros (cocidos)', 132.00, 8.90, 24.00, 0.50, 180.00, 'taza', NULL),
(5, 'Salmón (crudo)', 208.00, 20.00, 0.00, 13.00, 170.00, 'filete', NULL),
(6, 'Plátano', 89.00, 1.10, 23.00, 0.30, 120.00, 'unidad mediana', NULL),
(7, 'Manzana', 52.00, 0.30, 14.00, 0.20, 180.00, 'unidad mediana', NULL),
(8, 'Aguacate', 160.00, 2.00, 9.00, 15.00, 70.00, 'media pieza', NULL),
(9, 'Tortilla de Maíz', 218.00, 5.70, 45.00, 2.80, 30.00, 'unidad', NULL),
(10, 'Pan de Trigo Integral', 247.00, 13.00, 41.00, 3.40, 35.00, 'rebanada', NULL),
(11, 'Aceite de Oliva', 884.00, 0.00, 0.00, 100.00, 15.00, 'cucharada', NULL),
(12, 'Leche Entera', 61.00, 3.30, 4.80, 3.30, 240.00, 'taza', NULL),
(13, 'Queso Panela', 208.00, 17.00, 4.00, 14.00, 30.00, 'rebanada', NULL),
(14, 'Carne de Res Molida 90/10 (cruda)', 199.00, 19.00, 0.00, 13.00, 100.00, 'porción', NULL),
(15, 'Brócoli (crudo)', 34.00, 2.80, 7.00, 0.40, 90.00, 'taza', NULL),
(16, 'toyo', 200.00, 23.00, 13.00, 9.00, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_log`
--

CREATE TABLE `food_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `quantity_grams` decimal(10,2) NOT NULL,
  `meal_type` enum('Desayuno','Almuerzo','Cena','Snack') NOT NULL,
  `log_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `food_log`
--

INSERT INTO `food_log` (`id`, `user_id`, `food_id`, `quantity_grams`, `meal_type`, `log_date`, `created_at`) VALUES
(4, 1, 2, 100.00, 'Desayuno', '2025-08-30', '2025-08-31 01:07:47'),
(5, 1, 2, 100.00, '', '2025-08-30', '2025-08-31 02:02:06'),
(6, 1, 16, 100.00, '', '2025-08-30', '2025-08-31 02:02:28'),
(7, 1, 16, 100.00, '', '2025-08-30', '2025-08-31 02:02:40'),
(8, 1, 3, 100.00, '', '2025-08-30', '2025-08-31 02:03:00'),
(9, 1, 2, 100.00, '', '2025-08-30', '2025-08-31 02:05:24'),
(10, 1, 2, 100.00, 'Desayuno', '2025-08-30', '2025-08-31 02:08:06'),
(11, 1, 2, 100.00, 'Desayuno', '2025-08-30', '2025-08-31 02:08:17'),
(12, 1, 2, 100.00, 'Desayuno', '2025-08-30', '2025-08-31 02:08:25'),
(13, 1, 3, 100.00, 'Desayuno', '2025-08-30', '2025-08-31 02:08:39'),
(14, 1, 2, 100.00, 'Desayuno', '2025-08-31', '2025-08-31 02:13:58'),
(15, 1, 3, 100.00, 'Desayuno', '2025-08-29', '2025-08-31 02:14:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `routines`
--

CREATE TABLE `routines` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `frequency` int(11) NOT NULL,
  `duration_type` enum('semanal','mensual') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `routines`
--

INSERT INTO `routines` (`id`, `user_id`, `name`, `frequency`, `duration_type`) VALUES
(3, 1, 'j', 2, 'semanal'),
(4, 1, 't', 2, 'semanal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `routine_exercises`
--

CREATE TABLE `routine_exercises` (
  `id` int(11) NOT NULL,
  `routine_id` int(11) NOT NULL,
  `exercise_id` int(11) NOT NULL,
  `day_number` int(11) NOT NULL,
  `sets` varchar(20) DEFAULT NULL,
  `reps` varchar(20) DEFAULT NULL,
  `rest_seconds` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `routine_exercises`
--

INSERT INTO `routine_exercises` (`id`, `routine_id`, `exercise_id`, `day_number`, `sets`, `reps`, `rest_seconds`) VALUES
(4, 3, 4, 1, '3', '10', 60),
(5, 4, 1, 1, '3', '10', 60);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `daily_calories_goal` int(11) DEFAULT 2000,
  `daily_protein_goal` int(11) DEFAULT 150,
  `daily_carbs_goal` int(11) DEFAULT 200,
  `daily_fats_goal` int(11) DEFAULT 60
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`, `daily_calories_goal`, `daily_protein_goal`, `daily_carbs_goal`, `daily_fats_goal`) VALUES
(1, 'Danieldrg', 'danieldrg007@gmail.com', '$2y$10$Ujx/2Pxbqvny8d8ICH/3R.7KLl.FqmC423y.Nr5nTC9bLxiI5Mmx.', '2025-08-30 23:52:15', 2000, 150, 200, 60),
(2, 'corolla', 'flaz_19@hotmail.com', '$2y$10$uZhckOmIi6/Do8vDHEZOSeMLhkmDshkxpPsRHEd2RQ0AAOk/05u6u', '2025-08-30 23:53:32', 2000, 150, 200, 60);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `workout_schedule`
--

CREATE TABLE `workout_schedule` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `workout_date` date NOT NULL,
  `routine_exercise_id` int(11) DEFAULT NULL,
  `is_completed` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_food` (`user_id`);

--
-- Indices de la tabla `food_log`
--
ALTER TABLE `food_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `food_id` (`food_id`);

--
-- Indices de la tabla `routines`
--
ALTER TABLE `routines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `routine_exercises`
--
ALTER TABLE `routine_exercises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `routine_id` (`routine_id`),
  ADD KEY `exercise_id` (`exercise_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `workout_schedule`
--
ALTER TABLE `workout_schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `exercises`
--
ALTER TABLE `exercises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `food_log`
--
ALTER TABLE `food_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `routines`
--
ALTER TABLE `routines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `routine_exercises`
--
ALTER TABLE `routine_exercises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `workout_schedule`
--
ALTER TABLE `workout_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `foods`
--
ALTER TABLE `foods`
  ADD CONSTRAINT `fk_user_food` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `food_log`
--
ALTER TABLE `food_log`
  ADD CONSTRAINT `food_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `food_log_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `routines`
--
ALTER TABLE `routines`
  ADD CONSTRAINT `routines_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `routine_exercises`
--
ALTER TABLE `routine_exercises`
  ADD CONSTRAINT `routine_exercises_ibfk_1` FOREIGN KEY (`routine_id`) REFERENCES `routines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `routine_exercises_ibfk_2` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`);

--
-- Filtros para la tabla `workout_schedule`
--
ALTER TABLE `workout_schedule`
  ADD CONSTRAINT `workout_schedule_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
