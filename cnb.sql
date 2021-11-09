-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-09-2021 a las 21:21:20
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cnb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'CUSTOMER'),
(2, 'MECHANIC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add customer', 7, 'add_customer'),
(26, 'Can change customer', 7, 'change_customer'),
(27, 'Can delete customer', 7, 'delete_customer'),
(28, 'Can view customer', 7, 'view_customer'),
(29, 'Can add feedback', 8, 'add_feedback'),
(30, 'Can change feedback', 8, 'change_feedback'),
(31, 'Can delete feedback', 8, 'delete_feedback'),
(32, 'Can view feedback', 8, 'view_feedback'),
(33, 'Can add mechanic', 9, 'add_mechanic'),
(34, 'Can change mechanic', 9, 'change_mechanic'),
(35, 'Can delete mechanic', 9, 'delete_mechanic'),
(36, 'Can view mechanic', 9, 'view_mechanic'),
(37, 'Can add request', 10, 'add_request'),
(38, 'Can change request', 10, 'change_request'),
(39, 'Can delete request', 10, 'delete_request'),
(40, 'Can view request', 10, 'view_request'),
(41, 'Can add attendance', 11, 'add_attendance'),
(42, 'Can change attendance', 11, 'change_attendance'),
(43, 'Can delete attendance', 11, 'delete_attendance'),
(44, 'Can view attendance', 11, 'view_attendance');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$QBlUf2SYOxbps3gvw0ypg6$cYinmffXNWKLG8FpQWLOgy1U6bHizJvhPU01ibR/tqE=', '2021-09-08 01:39:45.277430', 1, 'jorge', '', '', 'jorgemercado212@gmail.com', 1, 1, '2021-09-07 20:47:50.331065'),
(2, 'pbkdf2_sha256$260000$Slb5kff8e8OU05CbHCkbyL$6rz6xkqhiTqNlzkwZB3PIt07+wYSRlYI2CupSpSdvxM=', '2021-09-08 01:34:53.998622', 0, 'henrry', 'Henrry Humberto', 'Lozada Carpio', '', 0, 1, '2021-09-08 01:34:41.657794'),
(3, 'pbkdf2_sha256$260000$xsDpdxldNLFKIeMRPhPdNW$fGDtLHb1i/vrescV6DPP17Ge5LBNu8dr9KfWM+YreTM=', '2021-09-08 01:41:06.569693', 0, 'gringo', '2004 A', '2000', '', 0, 1, '2021-09-08 01:38:24.497560');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 1),
(2, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegio_cnb_attendance`
--

CREATE TABLE `colegio_cnb_attendance` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `present_status` varchar(10) NOT NULL,
  `mechanic_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegio_cnb_customer`
--

CREATE TABLE `colegio_cnb_customer` (
  `id` bigint(20) NOT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `address` varchar(40) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `colegio_cnb_customer`
--

INSERT INTO `colegio_cnb_customer` (`id`, `profile_pic`, `address`, `mobile`, `user_id`) VALUES
(1, 'profile_pic/CustomerProfilePic/2.jpeg', '2004 A', '76158941', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegio_cnb_feedback`
--

CREATE TABLE `colegio_cnb_feedback` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `by` varchar(40) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `colegio_cnb_feedback`
--

INSERT INTO `colegio_cnb_feedback` (`id`, `date`, `by`, `message`) VALUES
(1, '2021-09-07', 'henrry', 'gracias por la pagina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegio_cnb_mechanic`
--

CREATE TABLE `colegio_cnb_mechanic` (
  `id` bigint(20) NOT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `address` varchar(40) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `skill` varchar(500) DEFAULT NULL,
  `salary` int(10) UNSIGNED DEFAULT NULL CHECK (`salary` >= 0),
  `status` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `colegio_cnb_mechanic`
--

INSERT INTO `colegio_cnb_mechanic` (`id`, `profile_pic`, `address`, `mobile`, `skill`, `salary`, `status`, `user_id`) VALUES
(1, 'profile_pic/MechanicProfilePic/5.jpeg', 'Vladimir Apaza', '72828282', 'voleibol', 200, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegio_cnb_request`
--

CREATE TABLE `colegio_cnb_request` (
  `id` bigint(20) NOT NULL,
  `category` varchar(50) NOT NULL,
  `vehicle_no` int(10) UNSIGNED NOT NULL CHECK (`vehicle_no` >= 0),
  `vehicle_name` varchar(40) NOT NULL,
  `vehicle_model` varchar(40) NOT NULL,
  `vehicle_brand` varchar(40) NOT NULL,
  `problem_description` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `cost` int(10) UNSIGNED DEFAULT NULL CHECK (`cost` >= 0),
  `status` varchar(50) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `mechanic_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `colegio_cnb_request`
--

INSERT INTO `colegio_cnb_request` (`id`, `category`, `vehicle_no`, `vehicle_name`, `vehicle_model`, `vehicle_brand`, `problem_description`, `date`, `cost`, `status`, `customer_id`, `mechanic_id`) VALUES
(1, 'Voleibol', 17, '2004 A', 'Henrry', '2000', 'gracias', '2021-09-07', NULL, 'Pendiente', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(11, 'colegio_cnb', 'attendance'),
(7, 'colegio_cnb', 'customer'),
(8, 'colegio_cnb', 'feedback'),
(9, 'colegio_cnb', 'mechanic'),
(10, 'colegio_cnb', 'request'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-09-07 20:46:57.328636'),
(2, 'auth', '0001_initial', '2021-09-07 20:47:09.922038'),
(3, 'admin', '0001_initial', '2021-09-07 20:47:12.406295'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-09-07 20:47:12.437545'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-09-07 20:47:12.687546'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-09-07 20:47:13.531269'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-09-07 20:47:14.187487'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-09-07 20:47:14.343745'),
(9, 'auth', '0004_alter_user_username_opts', '2021-09-07 20:47:14.374986'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-09-07 20:47:14.968727'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-09-07 20:47:14.984381'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-09-07 20:47:15.031223'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-09-07 20:47:15.156218'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-09-07 20:47:15.343705'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-09-07 20:47:15.484335'),
(16, 'auth', '0011_update_proxy_permissions', '2021-09-07 20:47:15.640582'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-09-07 20:47:15.843689'),
(18, 'colegio_cnb', '0001_initial', '2021-09-07 20:47:22.702894'),
(19, 'colegio_cnb', '0002_alter_request_category', '2021-09-07 20:47:22.796611'),
(20, 'colegio_cnb', '0003_alter_request_status', '2021-09-07 20:47:22.874727'),
(21, 'sessions', '0001_initial', '2021-09-07 20:47:24.081884');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `colegio_cnb_attendance`
--
ALTER TABLE `colegio_cnb_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `colegio_cnb_attendan_mechanic_id_cfd5c18e_fk_colegio_c` (`mechanic_id`);

--
-- Indices de la tabla `colegio_cnb_customer`
--
ALTER TABLE `colegio_cnb_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `colegio_cnb_feedback`
--
ALTER TABLE `colegio_cnb_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `colegio_cnb_mechanic`
--
ALTER TABLE `colegio_cnb_mechanic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `colegio_cnb_request`
--
ALTER TABLE `colegio_cnb_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `colegio_cnb_request_customer_id_e9293e17_fk_colegio_c` (`customer_id`),
  ADD KEY `colegio_cnb_request_mechanic_id_c9e78163_fk_colegio_c` (`mechanic_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `colegio_cnb_attendance`
--
ALTER TABLE `colegio_cnb_attendance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `colegio_cnb_customer`
--
ALTER TABLE `colegio_cnb_customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `colegio_cnb_feedback`
--
ALTER TABLE `colegio_cnb_feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `colegio_cnb_mechanic`
--
ALTER TABLE `colegio_cnb_mechanic`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `colegio_cnb_request`
--
ALTER TABLE `colegio_cnb_request`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `colegio_cnb_attendance`
--
ALTER TABLE `colegio_cnb_attendance`
  ADD CONSTRAINT `colegio_cnb_attendan_mechanic_id_cfd5c18e_fk_colegio_c` FOREIGN KEY (`mechanic_id`) REFERENCES `colegio_cnb_mechanic` (`id`);

--
-- Filtros para la tabla `colegio_cnb_customer`
--
ALTER TABLE `colegio_cnb_customer`
  ADD CONSTRAINT `colegio_cnb_customer_user_id_c0aa2dd3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `colegio_cnb_mechanic`
--
ALTER TABLE `colegio_cnb_mechanic`
  ADD CONSTRAINT `colegio_cnb_mechanic_user_id_5fdeffc9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `colegio_cnb_request`
--
ALTER TABLE `colegio_cnb_request`
  ADD CONSTRAINT `colegio_cnb_request_customer_id_e9293e17_fk_colegio_c` FOREIGN KEY (`customer_id`) REFERENCES `colegio_cnb_customer` (`id`),
  ADD CONSTRAINT `colegio_cnb_request_mechanic_id_c9e78163_fk_colegio_c` FOREIGN KEY (`mechanic_id`) REFERENCES `colegio_cnb_mechanic` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
