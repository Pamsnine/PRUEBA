-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-09-2019 a las 09:39:47
-- Versión del servidor: 10.2.27-MariaDB-cll-lve
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `stkrfjsa_byron`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administracionzonal`
--

CREATE TABLE `administracionzonal` (
  `idAdministracionZonal` int(11) NOT NULL,
  `nombreAdministracionZonal` varchar(50) NOT NULL,
  `idSector` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administracionzonal`
--

INSERT INTO `administracionzonal` (`idAdministracionZonal`, `nombreAdministracionZonal`, `idSector`) VALUES
(1, 'MANUELA SAENZ', 1),
(2, 'EUGENIO ESPEJO', 2),
(3, 'QUITUMBE', 3),
(4, 'ELOY ALFARO', 3),
(5, 'MARISCAL', 2),
(6, 'TUMBACO', 4),
(7, 'CALDERON', 2),
(8, 'LOS CHILLOS', 5),
(9, 'LA DELICIA', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barrio`
--

CREATE TABLE `barrio` (
  `idBarrio` int(11) NOT NULL,
  `nombreBarrio` varchar(50) NOT NULL,
  `idParroquia` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canton`
--

CREATE TABLE `canton` (
  `idCanton` int(11) NOT NULL,
  `nombreCanton` varchar(50) NOT NULL,
  `idProvincia` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `canton`
--

INSERT INTO `canton` (`idCanton`, `nombreCanton`, `idProvincia`) VALUES
(1, 'CAYAMBE', 17),
(2, 'MEJIA', 17),
(3, 'PEDRO MONCAYO', 17),
(4, 'PEDRO VICENTE MALDONADO', 17),
(5, 'PUERTO QUITO', 17),
(6, 'QUITO', 17),
(7, 'RUMINAHUI', 17),
(8, 'SAN MIGUEL DE LOS BANCOS', 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `continente`
--

CREATE TABLE `continente` (
  `idContinente` int(11) NOT NULL,
  `nombreContinente` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `continente`
--

INSERT INTO `continente` (`idContinente`, `nombreContinente`) VALUES
(1, 'AFRICA'),
(2, 'AMERICA'),
(3, 'ANTARTIDA'),
(4, 'ASIA'),
(5, 'EUROPA'),
(6, 'OCEANIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `idDireccion` int(11) NOT NULL,
  `callePrincipal` varchar(50) DEFAULT NULL,
  `calleSecundaria` varchar(50) DEFAULT NULL,
  `numeroCasa` varchar(50) DEFAULT NULL,
  `referenciaDireccion` varchar(100) DEFAULT NULL,
  `idBarrio` int(11) DEFAULT NULL,
  `idTipoDireccion` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadocivil`
--

CREATE TABLE `estadocivil` (
  `idEstadoCivil` int(11) NOT NULL,
  `nombreEstadoCivil` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estadocivil`
--

INSERT INTO `estadocivil` (`idEstadoCivil`, `nombreEstadoCivil`) VALUES
(1, 'SOLTERO'),
(2, 'CASADO'),
(3, 'VIUDO'),
(4, 'UNION LIBRE'),
(5, 'DIVORCIADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `idGenero` int(11) NOT NULL,
  `nombreGenero` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`idGenero`, `nombreGenero`) VALUES
(1, 'MASCULINO'),
(2, 'FEMENINO'),
(3, 'LBGTI'),
(4, 'OTRO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientoservidor`
--

CREATE TABLE `movimientoservidor` (
  `idMovimiento` int(11) NOT NULL,
  `fechaDesde` datetime NOT NULL,
  `fechaHasta` datetime DEFAULT NULL,
  `identificacion` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `idPais` int(11) NOT NULL,
  `nombrePais` varchar(50) NOT NULL,
  `idContinente` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`idPais`, `nombrePais`, `idContinente`) VALUES
(56, 'ECUADOR', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parroquia`
--

CREATE TABLE `parroquia` (
  `idParroquia` int(11) NOT NULL,
  `nombreParroquia` varchar(50) NOT NULL,
  `idTipoParroquia` int(11) DEFAULT NULL,
  `idSector` int(11) DEFAULT NULL,
  `idCanton` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `identificacion` varchar(50) NOT NULL,
  `primerNombre` varchar(50) NOT NULL,
  `segundoNombre` varchar(50) DEFAULT NULL,
  `primerApellido` varchar(50) NOT NULL,
  `segundoAplledio` varchar(50) DEFAULT NULL,
  `fechaNacimiento` datetime DEFAULT NULL,
  `idEstadoCivil` int(11) DEFAULT NULL,
  `idGenero` int(11) DEFAULT NULL,
  `idTipoServidor` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`identificacion`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoAplledio`, `fechaNacimiento`, `idEstadoCivil`, `idGenero`, `idTipoServidor`) VALUES
('1803932563', 'JUAN', 'CARLOS', 'SUAREZ', 'AGUIRRE', '1990-05-20 00:00:00', 1, 1, 1),
('1', '1', '1', '1', '1', '1999-01-01 00:00:00', 1, 1, 1);

--
-- Disparadores `persona`
--
DELIMITER $$
CREATE TRIGGER `persona` AFTER INSERT ON `persona` FOR EACH ROW insert into usuario(identificador,user,passwd,idTipoUser) VALUES (new.identificacion,new.primerApellido,new.identificacion, 2)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `idProvincia` int(11) NOT NULL,
  `nombreProvincia` varchar(50) NOT NULL,
  `idRegion` int(11) NOT NULL,
  `idPais` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`idProvincia`, `nombreProvincia`, `idRegion`, `idPais`) VALUES
(1, 'AZUAY', 4, 56),
(2, 'BOLIVAR', 4, 56),
(3, 'CAÑAR', 4, 56),
(4, 'CARCHI', 4, 56),
(5, 'COTOPAXI', 4, 56),
(6, 'CHIMBORAZO', 4, 56),
(7, 'EL ORO', 1, 56),
(8, 'ESMERALDAS', 1, 56),
(9, 'GUAYAS', 1, 56),
(10, 'IMBABURA', 4, 56),
(11, 'LOJA', 4, 56),
(12, 'LOS RIOS', 1, 56),
(13, 'MANABI', 1, 56),
(14, 'MORONA SANTIAGO', 3, 56),
(15, 'NAPO', 3, 56),
(16, 'PASTAZA', 3, 56),
(17, 'PICHINCHA', 4, 56),
(18, 'TUNGURAHUA', 4, 56),
(19, 'ZAMORA CHINCHIPE', 3, 56),
(20, 'GALAPAGOS', 2, 56),
(21, 'SUCUMBIOS', 3, 56),
(22, 'ORELLANA', 3, 56),
(23, 'SANTO DOMINGO DE LOS TSACHILAS', 4, 56),
(24, 'SANTA ELENA', 1, 56);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `idRegion` int(11) NOT NULL,
  `nombreRegion` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`idRegion`, `nombreRegion`) VALUES
(1, 'COSTA'),
(2, 'INSULAR'),
(3, 'ORIENTE'),
(4, 'SIERRA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sector`
--

CREATE TABLE `sector` (
  `idSector` int(11) NOT NULL,
  `nombreSector` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sector`
--

INSERT INTO `sector` (`idSector`, `nombreSector`) VALUES
(1, 'CENTRO'),
(2, 'NORTE'),
(3, 'SUR'),
(4, 'VALLE NOR-ORIENTE'),
(5, 'VALLE SUR-ORIENTE'),
(6, 'OTRO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodireccion`
--

CREATE TABLE `tipodireccion` (
  `idTipoDireccion` int(11) NOT NULL,
  `nombreTipoDireccion` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipodireccion`
--

INSERT INTO `tipodireccion` (`idTipoDireccion`, `nombreTipoDireccion`) VALUES
(1, 'NACIMIENTO'),
(2, 'DOMICILIARIA'),
(3, 'SERVICIO'),
(4, 'OTRA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoparroquia`
--

CREATE TABLE `tipoparroquia` (
  `idTipoParroquia` int(11) NOT NULL,
  `nombreTipoParroquia` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipoparroquia`
--

INSERT INTO `tipoparroquia` (`idTipoParroquia`, `nombreTipoParroquia`) VALUES
(1, 'URBANA'),
(2, 'RURAL'),
(3, 'OTRA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposervidor`
--

CREATE TABLE `tiposervidor` (
  `idTipoServidor` int(11) NOT NULL,
  `nombreTipoServidor` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tiposervidor`
--

INSERT INTO `tiposervidor` (`idTipoServidor`, `nombreTipoServidor`) VALUES
(1, 'CARRERA'),
(2, 'CIVIL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoUsuario`
--

CREATE TABLE `tipoUsuario` (
  `idTipoUser` int(11) NOT NULL,
  `nombreTipoUsuario` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipoUsuario`
--

INSERT INTO `tipoUsuario` (`idTipoUser`, `nombreTipoUsuario`) VALUES
(1, 'Administrador'),
(2, 'Agente'),
(3, 'Aspirante'),
(4, 'Administrativo'),
(5, 'Mantenimiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `identificador` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `passwd` varchar(225) NOT NULL,
  `idTipoUser` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`identificador`, `user`, `passwd`, `idTipoUser`) VALUES
('1', '1', '1', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administracionzonal`
--
ALTER TABLE `administracionzonal`
  ADD PRIMARY KEY (`idAdministracionZonal`),
  ADD KEY `idSector` (`idSector`);

--
-- Indices de la tabla `barrio`
--
ALTER TABLE `barrio`
  ADD PRIMARY KEY (`idBarrio`),
  ADD KEY `idParroquia` (`idParroquia`);

--
-- Indices de la tabla `canton`
--
ALTER TABLE `canton`
  ADD PRIMARY KEY (`idCanton`),
  ADD KEY `idProvincia` (`idProvincia`);

--
-- Indices de la tabla `continente`
--
ALTER TABLE `continente`
  ADD PRIMARY KEY (`idContinente`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`idDireccion`),
  ADD KEY `idBarrio` (`idBarrio`),
  ADD KEY `idTipoDireccion` (`idTipoDireccion`);

--
-- Indices de la tabla `estadocivil`
--
ALTER TABLE `estadocivil`
  ADD PRIMARY KEY (`idEstadoCivil`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`idGenero`);

--
-- Indices de la tabla `movimientoservidor`
--
ALTER TABLE `movimientoservidor`
  ADD PRIMARY KEY (`idMovimiento`),
  ADD KEY `identificacion` (`identificacion`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`idPais`),
  ADD UNIQUE KEY `nombrePais` (`nombrePais`),
  ADD KEY `idContinente` (`idContinente`);

--
-- Indices de la tabla `parroquia`
--
ALTER TABLE `parroquia`
  ADD PRIMARY KEY (`idParroquia`),
  ADD KEY `idTipoParroquia` (`idTipoParroquia`),
  ADD KEY `idCanton` (`idCanton`),
  ADD KEY `idSector` (`idSector`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`identificacion`),
  ADD UNIQUE KEY `identificacion` (`identificacion`),
  ADD KEY `idTipoServidor` (`idTipoServidor`),
  ADD KEY `idEstadoCivil` (`idEstadoCivil`),
  ADD KEY `idGenero` (`idGenero`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`idProvincia`),
  ADD KEY `idRegion` (`idRegion`),
  ADD KEY `idPais` (`idPais`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`idRegion`),
  ADD UNIQUE KEY `nombreRegion` (`nombreRegion`);

--
-- Indices de la tabla `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`idSector`);

--
-- Indices de la tabla `tipodireccion`
--
ALTER TABLE `tipodireccion`
  ADD PRIMARY KEY (`idTipoDireccion`);

--
-- Indices de la tabla `tipoparroquia`
--
ALTER TABLE `tipoparroquia`
  ADD PRIMARY KEY (`idTipoParroquia`);

--
-- Indices de la tabla `tiposervidor`
--
ALTER TABLE `tiposervidor`
  ADD PRIMARY KEY (`idTipoServidor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `idDireccion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `movimientoservidor`
--
ALTER TABLE `movimientoservidor`
  MODIFY `idMovimiento` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
