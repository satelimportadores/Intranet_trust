/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : satelimp_trust

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-08-09 11:06:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `intranet_bancos`
-- ----------------------------
DROP TABLE IF EXISTS `intranet_bancos`;
CREATE TABLE `intranet_bancos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_banco` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of intranet_bancos
-- ----------------------------
INSERT INTO `intranet_bancos` VALUES ('1', 'Bancamía');
INSERT INTO `intranet_bancos` VALUES ('2', 'Banco Agrario');
INSERT INTO `intranet_bancos` VALUES ('3', 'Banco AV Villas');
INSERT INTO `intranet_bancos` VALUES ('4', 'Banco Caja Social');
INSERT INTO `intranet_bancos` VALUES ('5', 'Banco Colpatria');
INSERT INTO `intranet_bancos` VALUES ('6', 'Banco Coomeva');
INSERT INTO `intranet_bancos` VALUES ('7', 'Banco Corpbanca');
INSERT INTO `intranet_bancos` VALUES ('8', 'Banco de Bogotá');
INSERT INTO `intranet_bancos` VALUES ('9', 'Banco de Occidente');
INSERT INTO `intranet_bancos` VALUES ('10', 'Banco Falabella');
INSERT INTO `intranet_bancos` VALUES ('11', 'Banco Finandina');
INSERT INTO `intranet_bancos` VALUES ('12', 'Banco GNB Sudameris');
INSERT INTO `intranet_bancos` VALUES ('13', 'Banco Pichincha');
INSERT INTO `intranet_bancos` VALUES ('14', 'Banco Popular');
INSERT INTO `intranet_bancos` VALUES ('15', 'Banco Procrédito');
INSERT INTO `intranet_bancos` VALUES ('16', 'Banco WWB');
INSERT INTO `intranet_bancos` VALUES ('17', 'Bancolombia');
INSERT INTO `intranet_bancos` VALUES ('18', 'BBVA');
INSERT INTO `intranet_bancos` VALUES ('19', 'Citibank');
INSERT INTO `intranet_bancos` VALUES ('20', 'Davivienda');
INSERT INTO `intranet_bancos` VALUES ('21', 'Helm Bank');
INSERT INTO `intranet_bancos` VALUES ('22', 'HSBC Colombia');
INSERT INTO `intranet_bancos` VALUES ('23', 'Scotiabank');

-- ----------------------------
-- Table structure for `intranet_cheques_info`
-- ----------------------------
DROP TABLE IF EXISTS `intranet_cheques_info`;
CREATE TABLE `intranet_cheques_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `banco_emisor` int(11) DEFAULT NULL,
  `numero_cheque` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beneficiario` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monto` double(17,2) DEFAULT NULL,
  `fecha_cheque` date DEFAULT NULL,
  `endoso` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interes` double(3,3) DEFAULT NULL,
  `dias` int(11) DEFAULT NULL,
  `valor_interes` double(17,2) DEFAULT NULL,
  `valor_girar` double(17,2) DEFAULT NULL,
  `estado` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjunto` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsable` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `banco` (`banco_emisor`),
  CONSTRAINT `intranet_cheques_info_ibfk_1` FOREIGN KEY (`banco_emisor`) REFERENCES `intranet_bancos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of intranet_cheques_info
-- ----------------------------
INSERT INTO `intranet_cheques_info` VALUES ('1', '2017-07-21', '7', 'JUAN ROMERO', 'ABC123', '111222.00', '2017-07-21', 'ABC123', '0.060', '30', '6660.00', '104562.00', 'por_consig', 'JUAN ROMERO-ABC123-2017-07-21.png', 'Alejandro Téllez');
INSERT INTO `intranet_cheques_info` VALUES ('2', '2017-07-21', '7', 'JUAN ROMERO', 'ABC123', '111222.00', '2017-07-21', 'ABC123', '0.060', '30', '6660.00', '104562.00', 'por_consig', 'JUAN ROMERO-ABC123-2017-07-21.png', 'Alejandro Téllez');
INSERT INTO `intranet_cheques_info` VALUES ('3', '2017-07-21', '7', 'JUAN ROMERO', 'ABC123', '111222.00', '2017-07-21', 'ABC123', '0.060', '30', '6660.00', '104562.00', 'por_consig', 'JUAN ROMERO-ABC123-2017-07-21.png', 'Alejandro Téllez');
INSERT INTO `intranet_cheques_info` VALUES ('4', '2017-07-21', '7', 'JUAN ROMERO', 'ABC123', '111222.00', '2017-07-21', 'ABC123', '0.060', '30', '6660.00', '104562.00', 'por_consig', 'JUAN ROMERO-ABC123-2017-07-21.png', 'Alejandro Téllez');
INSERT INTO `intranet_cheques_info` VALUES ('5', '2017-07-21', '6', 'ABC123', 'JUAN ROMERO', '111222.00', '2017-07-21', 'JUAN ROMERO', '0.060', '30', '6660.00', '104562.00', 'por_consig', 'ABC123-JUAN ROMERO-2017-07-21.png', 'Alejandro Téllez');

-- ----------------------------
-- Table structure for `intranet_porcentajes`
-- ----------------------------
DROP TABLE IF EXISTS `intranet_porcentajes`;
CREATE TABLE `intranet_porcentajes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `porcentaje` float(10,3) DEFAULT NULL,
  `nom_porcentaje` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of intranet_porcentajes
-- ----------------------------
INSERT INTO `intranet_porcentajes` VALUES ('1', '0.060', '6.0 ');
INSERT INTO `intranet_porcentajes` VALUES ('2', '0.059', '5.9');
INSERT INTO `intranet_porcentajes` VALUES ('3', '0.058', '5.8');
INSERT INTO `intranet_porcentajes` VALUES ('4', '0.057', '5.7');
INSERT INTO `intranet_porcentajes` VALUES ('5', '0.056', '5.6');
INSERT INTO `intranet_porcentajes` VALUES ('6', '0.055', '5.5');
INSERT INTO `intranet_porcentajes` VALUES ('7', '0.054', '5.4');
INSERT INTO `intranet_porcentajes` VALUES ('8', '0.053', '5.3');
INSERT INTO `intranet_porcentajes` VALUES ('9', '0.052', '5.2');
INSERT INTO `intranet_porcentajes` VALUES ('10', '0.051', '5.1');
INSERT INTO `intranet_porcentajes` VALUES ('11', '0.050', '5.0');
INSERT INTO `intranet_porcentajes` VALUES ('12', '0.049', '4.9');
INSERT INTO `intranet_porcentajes` VALUES ('13', '0.048', '4.8');
INSERT INTO `intranet_porcentajes` VALUES ('14', '0.047', '4.7');
INSERT INTO `intranet_porcentajes` VALUES ('15', '0.046', '4.6');
INSERT INTO `intranet_porcentajes` VALUES ('16', '0.045', '4.5');
INSERT INTO `intranet_porcentajes` VALUES ('17', '0.044', '4.4');
INSERT INTO `intranet_porcentajes` VALUES ('18', '0.043', '4.3');
INSERT INTO `intranet_porcentajes` VALUES ('19', '0.042', '4.2');
INSERT INTO `intranet_porcentajes` VALUES ('20', '0.041', '4.1');
INSERT INTO `intranet_porcentajes` VALUES ('21', '0.040', '4.0');
INSERT INTO `intranet_porcentajes` VALUES ('22', '0.039', '3.9');
INSERT INTO `intranet_porcentajes` VALUES ('23', '0.038', '3.8');
INSERT INTO `intranet_porcentajes` VALUES ('24', '0.037', '3.7');
INSERT INTO `intranet_porcentajes` VALUES ('25', '0.036', '3.6');
INSERT INTO `intranet_porcentajes` VALUES ('26', '0.035', '3.5');
INSERT INTO `intranet_porcentajes` VALUES ('27', '0.034', '3.4');
INSERT INTO `intranet_porcentajes` VALUES ('28', '0.033', '3.3');
INSERT INTO `intranet_porcentajes` VALUES ('29', '0.032', '3.2');
INSERT INTO `intranet_porcentajes` VALUES ('30', '0.031', '3.1');
INSERT INTO `intranet_porcentajes` VALUES ('31', '0.030', '3.0');
INSERT INTO `intranet_porcentajes` VALUES ('32', '0.029', '2.9');
INSERT INTO `intranet_porcentajes` VALUES ('33', '0.028', '2.8');
INSERT INTO `intranet_porcentajes` VALUES ('34', '0.027', '2.7');
INSERT INTO `intranet_porcentajes` VALUES ('35', '0.026', '2.6');
INSERT INTO `intranet_porcentajes` VALUES ('36', '0.025', '2.5');
INSERT INTO `intranet_porcentajes` VALUES ('37', '0.024', '2.4');
INSERT INTO `intranet_porcentajes` VALUES ('38', '0.023', '2.3');
INSERT INTO `intranet_porcentajes` VALUES ('39', '0.022', '2.2');
INSERT INTO `intranet_porcentajes` VALUES ('40', '0.021', '2.1');
INSERT INTO `intranet_porcentajes` VALUES ('41', '0.020', '2.0');

-- ----------------------------
-- Table structure for `intranet_trust_clientes`
-- ----------------------------
DROP TABLE IF EXISTS `intranet_trust_clientes`;
CREATE TABLE `intranet_trust_clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardcode` varchar(50) NOT NULL,
  `cardname` varchar(80) NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `paginaweb` varchar(50) DEFAULT NULL,
  `sector` varchar(50) DEFAULT NULL,
  `forma_pago` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intranet_trust_clientes
-- ----------------------------
INSERT INTO `intranet_trust_clientes` VALUES ('1', 'C10022124', 'MENDEZ MONTANO EDGAR EFREEN', 'CALLE 13 # 26 - 57', '63331193', 'www.satelimportadores.com', 'CLIENTES COM GENERAL', 'Efectivo', 'Bogotá Distrito Capital', 'ventas@satelimportadores.com', '1');
INSERT INTO `intranet_trust_clientes` VALUES ('2', 'C10028771', 'MAQUIMADERAS AGUDELO Y O JUAN ', null, '3289524', null, null, null, 'Bogotá Distrito Capital', 'maquimaderasycompresoresagudelo@hotmail.com', '1');
INSERT INTO `intranet_trust_clientes` VALUES ('3', 'C10090545', 'JIMENEZ OYOLA GUILLERMO ENRIQU', 'TEST CALLA', '3355344', 'www.satelimportadores.com', 'CLIENTES COM GENERAL', null, 'Bogotá Distrito Capital', null, '1');
INSERT INTO `intranet_trust_clientes` VALUES ('4', 'C1010168220', 'ARDILA EDWIN Y O BOBINADOS Y C', 'CALLE TEST', '6699977', 'www.satelimportadores.com', 'CLIENTES COM GENERAL', null, 'Bogotá Distrito Capital', 'ventas@satelimportadores.com', '1');
INSERT INTO `intranet_trust_clientes` VALUES ('5', 'C10135535', 'DIAZ ARIAS ALEXANDER', null, '3361024', null, 'CLIENTES COM GENERAL', null, 'Bogotá Distrito Capital', null, '1');
INSERT INTO `intranet_trust_clientes` VALUES ('6', 'C1013588851', 'SUAVITA PEREZ YURANY', null, '3713988', null, 'CLIENTES COM GENERAL', 'Efectivo', null, 'metalicasp@gmail.com', '1');
INSERT INTO `intranet_trust_clientes` VALUES ('7', 'C1013590018', 'ALARCON LEON MIGUEL ANGEL', null, '2372497', null, 'CLIENTES COM GENERAL', null, 'Bogotá Distrito Capital', null, '1');
INSERT INTO `intranet_trust_clientes` VALUES ('8', 'C1013593077', 'PAJOY ROJAS CAMILO ANDRES', null, '2865201', null, 'CLIENTES COM GENERAL', 'Efectivo', null, null, '1');
INSERT INTO `intranet_trust_clientes` VALUES ('9', 'C1013618235', 'DUARTE ANGULO WILMER', null, '7632060', null, 'CLIENTES COM GENERAL', null, 'Bogotá Distrito Capital', null, '1');
INSERT INTO `intranet_trust_clientes` VALUES ('10', 'C10142231', 'HERRERA ALVAREZ JAIROO HERNAN', 'CR 12 12 61', '3240783', null, 'CLIENTES COM GENERAL', null, 'Bogotá Distrito Capital', 'gerencia@hidroneumaticajh.com', '1');
INSERT INTO `intranet_trust_clientes` VALUES ('11', 'C1015434252', 'SUAREZ RIVERA SHANON MARLEN', null, '2578810', null, 'CLIENTES COM GENERAL', 'Efectivo', null, null, '1');
INSERT INTO `intranet_trust_clientes` VALUES ('12', 'C1016007202', 'PINILLA ALMANZA DIEGO CAMILO', null, '2504956', null, 'CLIENTES COM GENERAL', 'Efectivo', null, null, '1');
INSERT INTO `intranet_trust_clientes` VALUES ('13', 'C10162766', 'PAEZ ALDAÑA HUGO ALBERTO', null, '4946212', null, 'CLIENTES COM GENERAL', 'Efectivo', null, null, '1');
INSERT INTO `intranet_trust_clientes` VALUES ('14', 'C1017122130', 'CADAVID PERDOMO LEONARDO', 'CL 11 6 35 BRR SOLEDAD', '8572034', 'WWW.SATELIMPORTADORES.COM', 'CLIENTES COM GENERAL', '15 días', 'Bogotá Distrito Capital', 'cadavid.leonardo@gmail.com', '1');
INSERT INTO `intranet_trust_clientes` VALUES ('15', 'C10172880', 'RAMIREZ JHON JAIRO Y O MANTYSU', null, '8398881', null, 'CLIENTES COM GENERAL', 'Efectivo', null, null, '1');
INSERT INTO `intranet_trust_clientes` VALUES ('16', 'C1018415459', 'ROA CASTAÑEDA HERNAN DARIO', null, '2147483647', null, 'CLIENTES COM GENERAL', 'Efectivo', null, null, '1');
INSERT INTO `intranet_trust_clientes` VALUES ('17', 'C1019008953', 'OSPINA MURILLO MILTON ANDRES', null, '2811980', null, 'CLIENTES COM GENERAL', 'Efectivo', null, null, '1');
INSERT INTO `intranet_trust_clientes` VALUES ('18', 'C1019022920', 'BURGOS MEDINA MARIA DE LOS ANG', 'CR 57 94 B 65', '2365098', 'WWW.SATELIMPORTADORES.COM', 'CLIENTES COM GENERAL', 'Cheque 30 días', 'Bogotá Distrito Capital', 'ventas@satelimportadores.com', '1');
INSERT INTO `intranet_trust_clientes` VALUES ('19', 'C1022387311', 'PERILLA GARCIA JORGE LEONARDO', null, '5608443', null, 'CLIENTES COM GENERAL', 'Efectivo', null, null, '1');
INSERT INTO `intranet_trust_clientes` VALUES ('20', 'C1022941135', 'PORRAS GAONA FABIAN', 'CL 8 A 19 38 LC 312', '3712237', null, 'CLIENTES COM GENERAL', 'Efectivo', 'BOGOTá DISTRITO CAPITAL', 'ferreporras@outlook.com', '1');
INSERT INTO `intranet_trust_clientes` VALUES ('21', 'C10229831', 'RESTREPO GOMEZ GERMAN DARIO', null, '3217524', null, 'CLIENTES COM GENERAL', 'Efectivo', null, null, '1');
INSERT INTO `intranet_trust_clientes` VALUES ('22', 'C1023871548', 'REY JUAN CARLOS', null, '7788756', null, 'CLIENTES COM GENERAL', 'Efectivo', null, null, '1');
INSERT INTO `intranet_trust_clientes` VALUES ('23', 'C1024489178', 'AVILA PEREZ GUSTAVO ADOLFO', 'CR 49 G  68 D 47 SUR BRR CANDE', '7312811', null, 'CLIENTES COM GENERAL', null, 'Bogotá Distrito Capital', 'iluminacionycalefaccion@gmail.com', '1');
INSERT INTO `intranet_trust_clientes` VALUES ('24', 'C10249266', 'VALLEJO BERRIO CARLOS ARTURO', null, '8134443', null, 'CLIENTES COM GENERAL', 'Efectivo', null, null, '1');
INSERT INTO `intranet_trust_clientes` VALUES ('25', 'C10289244', 'JOSUE RENE LATORRE JARAMILLO', null, '8835112', null, 'CLIENTES COM GENERAL', null, 'Bogotá Distrito Capital', null, '1');
INSERT INTO `intranet_trust_clientes` VALUES ('26', 'C1030533142', 'PENAGOS MARIA ANGELICA Y O COM', null, '2656528', null, 'CLIENTES COM GENERAL', 'Efectivo', null, null, '1');
INSERT INTO `intranet_trust_clientes` VALUES ('27', 'C1030540479', 'CHACON OICATA FREDY ALEXANDER', null, '4520736', null, 'CLIENTES COM GENERAL', null, 'Bogotá Distrito Capital', null, '1');
INSERT INTO `intranet_trust_clientes` VALUES ('28', 'C1030561731', 'LARA GODOY SERGIO ANDRES', null, '2147483647', null, 'CLIENTES COM GENERAL', null, 'Bogotá Distrito Capital', null, '1');
INSERT INTO `intranet_trust_clientes` VALUES ('29', 'C1033710276', 'LOPEZ PEDRAZA LUZ NIDIAN', 'CLL 9 SUR 24B 07', '4183037', 'kvenitez@abwautomatizacion.com', 'CLIENTES COM GENERAL', 'Efectivo', 'BOGOTá DISTRITO CAPITAL', 'nidia1033@yahoo.com.co', '1');
INSERT INTO `intranet_trust_clientes` VALUES ('30', 'C1033736831', 'RODRIGUEZ RUSINQUE ANGIE ISADO', null, '2147483647', null, 'CLIENTES COM GENERAL', 'Efectivo', null, null, '1');

-- ----------------------------
-- Table structure for `intranet_trust_clientes_comentarios`
-- ----------------------------
DROP TABLE IF EXISTS `intranet_trust_clientes_comentarios`;
CREATE TABLE `intranet_trust_clientes_comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardcode` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comentarios` text,
  `fecha` date DEFAULT NULL,
  `n_adjunto` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intranet_trust_clientes_comentarios
-- ----------------------------
INSERT INTO `intranet_trust_clientes_comentarios` VALUES ('1', 'C1013590018', '1', 'juan carlos romero', '2017-08-09', null);
INSERT INTO `intranet_trust_clientes_comentarios` VALUES ('2', 'C1013590018', '1', 'Sui la bandera de argentina', '2017-08-09', 'ARGENTINA.png');

-- ----------------------------
-- Table structure for `intranet_trust_clientes_contactos`
-- ----------------------------
DROP TABLE IF EXISTS `intranet_trust_clientes_contactos`;
CREATE TABLE `intranet_trust_clientes_contactos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardcode` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` datetime DEFAULT NULL,
  `tipo_documento` varchar(50) DEFAULT NULL,
  `numero_documento` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `movil` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intranet_trust_clientes_contactos
-- ----------------------------

-- ----------------------------
-- Table structure for `trust_users`
-- ----------------------------
DROP TABLE IF EXISTS `trust_users`;
CREATE TABLE `trust_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `nivel_permisos` int(11) DEFAULT NULL,
  `apellido` varchar(80) DEFAULT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trust_users
-- ----------------------------
INSERT INTO `trust_users` VALUES ('1', 'juan', 'juan@satelimportadores.com', 'a94652aa97c7211ba8954dd15a3cf838', '1', 'Romero', 'Juan', '1');
