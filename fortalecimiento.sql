-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2017 a las 16:44:05
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fortalecimiento`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componente`
--

CREATE TABLE `componente` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `solicitante` varchar(100) DEFAULT NULL,
  `actividadPrincipal` varchar(100) DEFAULT NULL,
  `componente1` tinyint(1) DEFAULT NULL,
  `ferias` varchar(50) NOT NULL,
  `feriaMontoVenta` varchar(100) DEFAULT NULL,
  `montoFeria` int(10) DEFAULT NULL,
  `ventaConsolidada` int(10) DEFAULT NULL,
  `intencionVenta` int(10) DEFAULT NULL,
  `finFeriaFecha` date NOT NULL,
  `relacionesComerciales` varchar(50) NOT NULL,
  `finRelaComerFecha` date NOT NULL,
  `promoVentasProdu` varchar(50) NOT NULL,
  `finPromoVentasFecha` date NOT NULL,
  `componente2` tinyint(1) DEFAULT NULL,
  `tallerEducativoFinaciero` varchar(100) DEFAULT NULL,
  `fechaConclucionTaller` date DEFAULT NULL,
  `informacionCrediticia` varchar(100) DEFAULT NULL,
  `fechaConclucionInforma` date DEFAULT NULL,
  `asesoramientoSeguimiento` varchar(100) DEFAULT NULL,
  `fechaConclucionAsesor` date DEFAULT NULL,
  `monto` int(10) DEFAULT NULL,
  `entidadFinanciera` varchar(100) DEFAULT NULL,
  `observaciones` varchar(100) DEFAULT NULL,
  `componente3` tinyint(1) DEFAULT NULL,
  `formacionAcademica` varchar(100) DEFAULT NULL,
  `cantidadCursosRealizados` int(10) DEFAULT NULL,
  `costos` varchar(100) DEFAULT NULL,
  `marketing` varchar(100) DEFAULT NULL,
  `administracion` varchar(100) DEFAULT NULL,
  `planNegocios` varchar(100) DEFAULT NULL,
  `certificados` varchar(100) DEFAULT NULL,
  `excel` varchar(100) DEFAULT NULL,
  `word` varchar(100) DEFAULT NULL,
  `powerPoint` varchar(100) DEFAULT NULL,
  `otros` varchar(100) DEFAULT NULL,
  `serigrafia` tinyint(1) DEFAULT NULL,
  `patronaje` tinyint(1) DEFAULT NULL,
  `bordado` tinyint(1) DEFAULT NULL,
  `acabadoMuebles` tinyint(1) DEFAULT NULL,
  `inocuidadAlimenticia` tinyint(1) DEFAULT NULL,
  `seguridadIndustrial` tinyint(1) DEFAULT NULL,
  `saludOcupacional` tinyint(1) DEFAULT NULL,
  `SolicitudCursos` varchar(100) DEFAULT NULL,
  `fechaRealizada` date DEFAULT NULL,
  `fundaempresa` tinyint(1) DEFAULT NULL,
  `licenciaAlcaldia` tinyint(1) DEFAULT NULL,
  `senasag` tinyint(1) DEFAULT NULL,
  `afp` tinyint(1) DEFAULT NULL,
  `cajaSalud` tinyint(1) DEFAULT NULL,
  `nit` tinyint(1) DEFAULT NULL,
  `senapi` tinyint(1) DEFAULT NULL,
  `ministerioTrabajo` tinyint(1) DEFAULT NULL,
  `personeriaJuridica` tinyint(1) DEFAULT NULL,
  `nombreEmpresa` varchar(100) DEFAULT NULL,
  `municipio` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `componente`
--

INSERT INTO `componente` (`id`, `codigo`, `solicitante`, `actividadPrincipal`, `componente1`, `ferias`, `feriaMontoVenta`, `montoFeria`, `ventaConsolidada`, `intencionVenta`, `finFeriaFecha`, `relacionesComerciales`, `finRelaComerFecha`, `promoVentasProdu`, `finPromoVentasFecha`, `componente2`, `tallerEducativoFinaciero`, `fechaConclucionTaller`, `informacionCrediticia`, `fechaConclucionInforma`, `asesoramientoSeguimiento`, `fechaConclucionAsesor`, `monto`, `entidadFinanciera`, `observaciones`, `componente3`, `formacionAcademica`, `cantidadCursosRealizados`, `costos`, `marketing`, `administracion`, `planNegocios`, `certificados`, `excel`, `word`, `powerPoint`, `otros`, `serigrafia`, `patronaje`, `bordado`, `acabadoMuebles`, `inocuidadAlimenticia`, `seguridadIndustrial`, `saludOcupacional`, `SolicitudCursos`, `fechaRealizada`, `fundaempresa`, `licenciaAlcaldia`, `senasag`, `afp`, `cajaSalud`, `nit`, `senapi`, `ministerioTrabajo`, `personeriaJuridica`, `nombreEmpresa`, `municipio`) VALUES
(5, 'cp004', 'Juan b', 'textil', 1, 'no', 'no', NULL, NULL, NULL, '0000-00-00', 'no', '0000-00-00', 'si', '0000-00-00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DECO', NULL),
(6, 'cp005', 'Juan', 'textil', 1, 'no', 'no', NULL, NULL, NULL, '0000-00-00', 'no', '0000-00-00', 'si', '0000-00-00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DECO', NULL),
(7, 'cp006', 'Alejando', NULL, NULL, '', NULL, NULL, NULL, NULL, '0000-00-00', '', '0000-00-00', '', '0000-00-00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2016-5', 'Mario', 'madera', 1, 'si', NULL, NULL, NULL, NULL, '0000-00-00', 'no', '0000-00-00', 'si', '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNO', 'Cochabamba'),
(9, '2015-12', 'Mercedes  Palma', 'cuero', NULL, 'no realizado', NULL, NULL, NULL, NULL, '2017-11-15', 'no realizado', '2017-11-15', 'no realizado', '2017-11-15', 1, 'no', '2017-11-15', 'no', '2017-11-15', 'no', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2015-13', 'Marco ', NULL, NULL, 'no realizado', NULL, 0, 0, 0, '2015-08-03', 'no realizado', '2015-08-03', 'no realizado', '2015-08-03', 1, 'si', '2015-07-24', 'no', '2015-08-03', 'si', '0000-00-00', 1000, '', 'aprovado', 1, 'secundaria', 3, '1', '', '', NULL, 'xxxx', NULL, '1', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cursos de administracion', '2017-10-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'None', 'Vinto'),
(11, '2015-14', 'Ulivares Edson', 'cuero', 1, 'no realizado', 'no', 0, 0, 0, '2017-11-28', 'no realizado', '2017-11-28', 'no realizado', '2017-11-28', NULL, 'no', '2017-11-28', 'no', '2017-11-28', 'no', '0000-00-00', 0, '', '', NULL, '', 0, 'no', 'no', 'no', 'no', '', 'no', 'no', 'no', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2017-11-28', NULL, 1, 1, NULL, NULL, NULL, NULL, 1, NULL, 'INCA', 'Sacaba'),
(12, '2018-18', 'Ivan Pardo', 'cuero', 1, 'no realizado', 'no', 0, 0, 0, '2017-12-18', 'no realizado', '2017-12-18', 'no realizado', '2017-12-18', 1, 'no', '2017-12-18', 'no', '2017-12-18', 'no', '0000-00-00', 0, '', '', 1, '', 0, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2017-12-18', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'INDA', 'Cochabamba'),
(13, '2015-19', 'Alberto soliz', 'madera', 1, 'no realizado', 'no', 0, 0, 0, '2017-12-18', 'no realizado', '2017-12-18', 'no realizado', '2017-12-18', 1, 'no', '2017-12-18', 'no', '2017-12-18', 'no', '0000-00-00', 0, '', '', 1, '', 0, '0', '0', 'no', 'no', '', 'no', 'no', 'no', '', 1, 1, NULL, NULL, 1, 1, NULL, '', '2017-12-18', 1, NULL, 1, 1, 1, NULL, 1, 0, NULL, 'UDE', 'Tiquipaya');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion`
--

CREATE TABLE `inscripcion` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `solicitante` varchar(100) DEFAULT NULL,
  `ci` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `zona` varchar(500) DEFAULT NULL,
  `municipio` varchar(100) DEFAULT NULL,
  `celular` int(11) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `fax` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nombreEmpresa` varchar(100) DEFAULT NULL,
  `sociedad` varchar(200) DEFAULT NULL,
  `nombreSociedad` varchar(200) DEFAULT NULL,
  `direccionEmpresa` varchar(100) DEFAULT NULL,
  `zonaEmpresa` varchar(100) DEFAULT NULL,
  `municipioEmpresa` varchar(100) DEFAULT NULL,
  `antiguedad` varchar(100) DEFAULT NULL,
  `numOperadores` int(11) DEFAULT NULL,
  `varones` int(11) DEFAULT NULL,
  `mujeres` int(11) DEFAULT NULL,
  `actividadPrincipal` varchar(100) DEFAULT NULL,
  `descripcionActividad` varchar(200) DEFAULT NULL,
  `cantidadProducida` varchar(50) DEFAULT NULL,
  `fechaInscripcion` date DEFAULT NULL,
  `licenciaAlcaldia` tinyint(1) DEFAULT NULL,
  `senasag` tinyint(1) DEFAULT NULL,
  `afp` tinyint(1) DEFAULT NULL,
  `cajaSalud` tinyint(1) DEFAULT NULL,
  `nit` tinyint(1) DEFAULT NULL,
  `senapi` tinyint(1) DEFAULT NULL,
  `ninguno` tinyint(1) DEFAULT NULL,
  `fundaempresa` tinyint(1) DEFAULT NULL,
  `otros` varchar(100) DEFAULT NULL,
  `norma` varchar(10) DEFAULT NULL,
  `detalleNorma` varchar(200) DEFAULT NULL,
  `aperturaMercado` tinyint(1) DEFAULT NULL,
  `apolloServFinanciero` tinyint(1) DEFAULT NULL,
  `capaciAsistenciaTecni` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inscripcion`
--

INSERT INTO `inscripcion` (`id`, `codigo`, `solicitante`, `ci`, `direccion`, `zona`, `municipio`, `celular`, `telefono`, `fax`, `email`, `nombreEmpresa`, `sociedad`, `nombreSociedad`, `direccionEmpresa`, `zonaEmpresa`, `municipioEmpresa`, `antiguedad`, `numOperadores`, `varones`, `mujeres`, `actividadPrincipal`, `descripcionActividad`, `cantidadProducida`, `fechaInscripcion`, `licenciaAlcaldia`, `senasag`, `afp`, `cajaSalud`, `nit`, `senapi`, `ninguno`, `fundaempresa`, `otros`, `norma`, `detalleNorma`, `aperturaMercado`, `apolloServFinanciero`, `capaciAsistenciaTecni`) VALUES
(18, '2015-1', 'Carmen Rosa Rodriguez Ovando', NULL, 'Toco', NULL, NULL, 69548550, NULL, NULL, NULL, 'Org. de mujeres tejido textiil', NULL, NULL, NULL, NULL, NULL, '1 año', NULL, NULL, NULL, 'textil', 'tejido', NULL, '2015-08-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, 1, NULL, NULL),
(19, '2015-2', 'Oscar Cruz Jaita', '3704177', 'thomas montes gutierres 92', 'villa rosario,zona arco', NULL, 72248112, NULL, NULL, NULL, 'calzados nadia', NULL, NULL, NULL, NULL, NULL, '9', NULL, 3, 2, 'textil', 'producción de calzados textiles y aguayos', NULL, '2015-12-19', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'no', NULL, 1, NULL, NULL),
(20, '2015-3', 'Sra. Felicia Terrazas Arevalo', '5933095', NULL, NULL, NULL, 71413030, 71477372, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3 años', 25, 10, 15, 'textil', 'Costura de ropa, polleras,etc,', NULL, '2015-12-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'no', NULL, 1, 1, 1),
(21, '2015-4', 'Amparo Toco', '3544106', 'Ladislao Cabrera entre san martin y lanza', NULL, 'Cochabamba', NULL, NULL, NULL, 'a_amparo1@hotmail.com', 'Funny Chocolates', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 'alimentos', 'fabricacion de chocolates', NULL, '2015-10-07', 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 'Codigo de barra', 'no', NULL, 1, NULL, 1),
(22, '2015-5', 'Juan Huanca Colque', NULL, 'Av. blanco galindo km 8 1/5', NULL, 'Colcapirhua', 72278933, NULL, NULL, NULL, 'Asociación APRO-ANDINO', NULL, NULL, NULL, NULL, NULL, NULL, 15, 9, 6, 'alimentos', 'Harina de maca', NULL, '2015-08-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, 1, 1, 1),
(25, '2015-6', 'Giovani Santiago Guno', '12712450', 'Javinto Avaya 1842 3 cuadras aranjues sobre la av circunvalacion', 'tupuraya', NULL, 67407451, 4483131, NULL, 'elmanobolivia@hotmail.com', 'Laboratorio El Mana', NULL, NULL, NULL, NULL, NULL, '10 aÃ±o', 5, 1, 4, 'alimentos', 'Elaboracion de cereales', NULL, '2015-10-25', 1, 1, 1, 1, 1, NULL, NULL, 1, NULL, 'no', NULL, 1, NULL, 1),
(26, '2015-7', 'Fredy Espinoza', '3794447', 'Arquimides esq. Pavon', 'Chimba', NULL, 70726950, 4447046, NULL, 'taquelita_ortuno@gmail.com', 'YUCATA', NULL, NULL, NULL, NULL, NULL, '2 meses', 1, 1, NULL, 'madera', 'carpinteria', NULL, '2015-12-23', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'no', NULL, 1, NULL, 1),
(27, '2015-8', 'Guida Jasquez de la Barra de Colque', '666217', 'Av. simon lopez entre av. colquiri #284', 'norte', 'Cochabamba', NULL, 4287037, NULL, NULL, 'AYNI-WARMIS', NULL, NULL, NULL, NULL, NULL, '5 anos', 4, 1, 3, 'textil', 'tejido con lana de alpaca 100%', NULL, '2015-10-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cadepia', 'no', NULL, 1, NULL, 1),
(35, 'cp004', 'Juan b', '5280036', NULL, NULL, 'Entre Rios', NULL, NULL, NULL, NULL, 'DECO', 'Unipersonal', NULL, NULL, NULL, 'Villarroel', NULL, NULL, NULL, NULL, 'textil', NULL, NULL, '2017-11-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1),
(36, 'cp005', 'Juan', '5280036', NULL, NULL, 'Entre Rios', NULL, NULL, NULL, NULL, 'DECO', 'Unipersonal', NULL, NULL, NULL, 'Villarroel', NULL, NULL, NULL, NULL, 'textil', NULL, NULL, '2017-11-27', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1),
(37, 'cp006', 'Alejando', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(38, '2015-12', 'Mercedes  Palma', '528806', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colcapirhua', NULL, NULL, NULL, NULL, 'cuero', NULL, NULL, '2017-11-15', NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(39, '2015-13', 'Marco ', NULL, NULL, NULL, 'Vinto', NULL, NULL, NULL, NULL, 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-08-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(40, '2015-14', 'Ulivares Edson', '5280036', 'pacata', NULL, 'Sacaba', NULL, NULL, NULL, NULL, 'INCA', 'Asoc. Productiva', '1 de noviembre', NULL, NULL, 'Cochabamba', '2', NULL, 2, NULL, 'cuero', 'secado de cuero', NULL, '2017-11-29', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, 1, NULL, NULL),
(41, '2015-18', 'Luis alverto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, 1, 1),
(42, '2015-18', 'Amparo', '354871', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vinto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-19', 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1),
(43, '2018-18', 'Ivan Pardo', '5212345', NULL, NULL, 'Cochabamba', NULL, NULL, NULL, NULL, 'INDA', NULL, NULL, NULL, NULL, 'Totora', NULL, NULL, NULL, NULL, 'cuero', NULL, NULL, '2017-12-18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1),
(44, '2015-19', 'Alberto soliz', '5645654', NULL, NULL, 'Tiquipaya', NULL, NULL, NULL, NULL, 'UDE', NULL, NULL, NULL, NULL, 'Cochabamba', NULL, NULL, NULL, NULL, 'madera', NULL, NULL, '2017-12-15', NULL, 1, 1, 1, NULL, 1, NULL, 1, NULL, NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `contrasenia` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `usuario`, `contrasenia`) VALUES
(1, 'admin1', 'admin1'),
(2, 'admin2', 'admin2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `componente`
--
ALTER TABLE `componente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `componente`
--
ALTER TABLE `componente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
