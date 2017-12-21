/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : satelimp_trust

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-12-21 11:39:59
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
-- Table structure for `intranet_bancos_trust`
-- ----------------------------
DROP TABLE IF EXISTS `intranet_bancos_trust`;
CREATE TABLE `intranet_bancos_trust` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_banco` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cuenta_banco` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `propietario` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of intranet_bancos_trust
-- ----------------------------
INSERT INTO `intranet_bancos_trust` VALUES ('1', 'Banco de Bogotá', '015060650', 'Alejandro Téllez', '1');
INSERT INTO `intranet_bancos_trust` VALUES ('2', 'Bancolombia', '22737259424', 'Marina Santamaria', '1');
INSERT INTO `intranet_bancos_trust` VALUES ('3', 'Bancolombia', '22771952486', 'Hipolito Téllez', '1');
INSERT INTO `intranet_bancos_trust` VALUES ('4', 'Bancolombia', '22737261486', 'Jaison Téllez', '1');

-- ----------------------------
-- Table structure for `intranet_cheques_estado`
-- ----------------------------
DROP TABLE IF EXISTS `intranet_cheques_estado`;
CREATE TABLE `intranet_cheques_estado` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `cod_categoria` int(11) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `subcategoria` varchar(50) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  `paso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intranet_cheques_estado
-- ----------------------------
INSERT INTO `intranet_cheques_estado` VALUES ('1', '1', 'Devuelto', 'Fondos Insuficientes', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('2', '1', 'Devuelto', 'Pago parcial', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('3', '2', 'Aplazar', '', '1', '1');
INSERT INTO `intranet_cheques_estado` VALUES ('5', '3', 'Efectivo', 'Efectivo', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('6', '4', 'Consignacion', '', '1', '1');
INSERT INTO `intranet_cheques_estado` VALUES ('7', '1', 'Devuelto', 'Librado en chequera ajena', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('8', '1', 'Devuelto', 'Cuenta cancelada', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('9', '1', 'Devuelto', 'Cuenta saldada', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('10', '1', 'Devuelto', 'Saldo embargado', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('11', '1', 'Devuelto', 'Hay orden de no pago', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('12', '1', 'Devuelto', 'Presentacion del cheque 6 meses despues de librado', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('13', '1', 'Devuelto', 'Quiebra, liquidacion, o concurso del girador', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('14', '1', 'Devuelto', 'Instrumento aparentemente falsificado', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('15', '1', 'Devuelto', 'Firma no registrada', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('16', '1', 'Devuelto', 'Faltan firmas', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('17', '1', 'Devuelto', 'Falta protector registrado', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('18', '1', 'Devuelto', 'Falta sello ante firma registrado', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('19', '1', 'Devuelto', 'Falta endoso', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('20', '1', 'Devuelto', 'Falta continuidad de endoso', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('21', '1', 'Devuelto', 'Cheque enmendado', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('22', '1', 'Devuelto', 'Faltan cantidad de numeros y/o letras', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('23', '1', 'Devuelto', 'Falta sello de canje', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('24', '1', 'Devuelto', 'Mal remitido no es a nuestro cargo', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('25', '1', 'Devuelto', 'Presentese a nuestra oficina de giros', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('26', '1', 'Devuelto', 'Falta Certificar A B C - llamar oficina', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('27', '1', 'Devuelto', 'Valor inconsistente entre el registro y el cheque', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('28', '1', 'Devuelto', 'Registro electronico sin documento fisico', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('29', '1', 'Devuelto', 'Cuenta errada', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('30', '1', 'Devuelto', 'Numero de cheque errado', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('31', '1', 'Devuelto', 'Codigo de ruta errado o de otra plaza', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('32', '1', 'Devuelto', 'Codigo de transito errado o de otro banco', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('33', '1', 'Devuelto', 'Consignacion del cheque en cuenta del primer benef', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('34', '1', 'Devuelto', 'Abono en cuenta designada', '1', '2');
INSERT INTO `intranet_cheques_estado` VALUES ('35', '1', 'Devuelto', 'Falta confirmacion del juzgado o entidad', '1', '2');

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
  `fecha_cheque` date DEFAULT NULL,
  `endoso` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjunto` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsable` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banco_gira` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cuenta_gira` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_fondos` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tasa_usura` double(11,2) DEFAULT NULL,
  `id_recibo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `banco` (`banco_emisor`),
  CONSTRAINT `intranet_cheques_info_ibfk_1` FOREIGN KEY (`banco_emisor`) REFERENCES `intranet_bancos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of intranet_cheques_info
-- ----------------------------
INSERT INTO `intranet_cheques_info` VALUES ('1', '2017-12-21', '6', '5AS4D', '3182357', '2017-12-21', 'JUAN ENDOSO', 'por_consig', '5AS4D-JUAN ENDOSO-2017-12-21.png', 'Mery Ibáñez', '', '', 'efectivo', '1.96', '1');
INSERT INTO `intranet_cheques_info` VALUES ('2', '2017-12-21', '7', '6SDF45', '3250453', '2017-12-21', '', 'por_consig', '6SDF45--2017-12-21.png', 'Mery Ibáñez', 'Banco de Bogotá', '1', 'cheque', '1.96', '2');

-- ----------------------------
-- Table structure for `intranet_cheques_info_detalle`
-- ----------------------------
DROP TABLE IF EXISTS `intranet_cheques_info_detalle`;
CREATE TABLE `intranet_cheques_info_detalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cheque` int(11) DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `valor_girar` double DEFAULT NULL,
  `fecha_cheque` date DEFAULT NULL,
  `interes` double(3,3) DEFAULT NULL,
  `dias` int(11) DEFAULT NULL,
  `valor_interes` double(17,0) DEFAULT NULL,
  `forma_pago_interes` varchar(50) DEFAULT NULL,
  `devolucion` int(11) DEFAULT NULL,
  `id_devolucion` int(11) DEFAULT NULL,
  `fecha_devolucion` date DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  `forma_pago_interes_cuenta` int(11) DEFAULT NULL,
  `tipo_fondos` varchar(20) DEFAULT NULL,
  `fecha_efectivo` date DEFAULT NULL,
  `consig_forma_pago` varchar(40) DEFAULT NULL,
  `consig_cuenta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intranet_cheques_info_detalle
-- ----------------------------
INSERT INTO `intranet_cheques_info_detalle` VALUES ('1', '1', '1111111', '1106700', '2017-12-21', '0.060', '2', '4444', null, null, null, null, '1', null, 'efectivo', null, null, null);
INSERT INTO `intranet_cheques_info_detalle` VALUES ('2', '2', '2222222', '2213300', '2017-12-21', '0.060', '2', '8888', null, null, null, null, '1', null, 'cheque', null, null, null);

-- ----------------------------
-- Table structure for `intranet_cheques_recibos`
-- ----------------------------
DROP TABLE IF EXISTS `intranet_cheques_recibos`;
CREATE TABLE `intranet_cheques_recibos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cheque_id` int(11) DEFAULT NULL,
  `fecha_recibo` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intranet_cheques_recibos
-- ----------------------------
INSERT INTO `intranet_cheques_recibos` VALUES ('1', '1', '2017-12-21');
INSERT INTO `intranet_cheques_recibos` VALUES ('2', '2', '2017-12-21');

-- ----------------------------
-- Table structure for `intranet_colombia_ciudades`
-- ----------------------------
DROP TABLE IF EXISTS `intranet_colombia_ciudades`;
CREATE TABLE `intranet_colombia_ciudades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departamento_cod` int(11) DEFAULT NULL,
  `departamento_nom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `municipio_cod` int(11) DEFAULT NULL,
  `municipio_nom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1124 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of intranet_colombia_ciudades
-- ----------------------------
INSERT INTO `intranet_colombia_ciudades` VALUES ('1', null, '', null, '');
INSERT INTO `intranet_colombia_ciudades` VALUES ('2', null, '', null, '');
INSERT INTO `intranet_colombia_ciudades` VALUES ('3', null, '', null, '');
INSERT INTO `intranet_colombia_ciudades` VALUES ('4', '5', 'ANTIOQUIA', '1', 'MEDELLIN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('5', '5', 'ANTIOQUIA', '2', 'ABEJORRAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('6', '5', 'ANTIOQUIA', '4', 'ABRIAQUI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('7', '5', 'ANTIOQUIA', '21', 'ALEJANDRIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('8', '5', 'ANTIOQUIA', '30', 'AMAGA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('9', '5', 'ANTIOQUIA', '31', 'AMALFI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('10', '5', 'ANTIOQUIA', '34', 'ANDES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('11', '5', 'ANTIOQUIA', '36', 'ANGELOPOLIS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('12', '5', 'ANTIOQUIA', '38', 'ANGOSTURA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('13', '5', 'ANTIOQUIA', '40', 'ANORI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('14', '5', 'ANTIOQUIA', '42', 'SANTAFE DE ANTIOQUIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('15', '5', 'ANTIOQUIA', '44', 'ANZA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('16', '5', 'ANTIOQUIA', '45', 'APARTADO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('17', '5', 'ANTIOQUIA', '51', 'ARBOLETES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('18', '5', 'ANTIOQUIA', '55', 'ARGELIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('19', '5', 'ANTIOQUIA', '59', 'ARMENIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('20', '5', 'ANTIOQUIA', '79', 'BARBOSA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('21', '5', 'ANTIOQUIA', '86', 'BELMIRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('22', '5', 'ANTIOQUIA', '88', 'BELLO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('23', '5', 'ANTIOQUIA', '91', 'BETANIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('24', '5', 'ANTIOQUIA', '93', 'BETULIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('25', '5', 'ANTIOQUIA', '101', 'CIUDAD BOLIVAR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('26', '5', 'ANTIOQUIA', '107', 'BRICEÑO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('27', '5', 'ANTIOQUIA', '113', 'BURITICA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('28', '5', 'ANTIOQUIA', '120', 'CACERES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('29', '5', 'ANTIOQUIA', '125', 'CAICEDO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('30', '5', 'ANTIOQUIA', '129', 'CALDAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('31', '5', 'ANTIOQUIA', '134', 'CAMPAMENTO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('32', '5', 'ANTIOQUIA', '138', 'CAÑASGORDAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('33', '5', 'ANTIOQUIA', '142', 'CARACOLI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('34', '5', 'ANTIOQUIA', '145', 'CARAMANTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('35', '5', 'ANTIOQUIA', '147', 'CAREPA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('36', '5', 'ANTIOQUIA', '148', 'EL CARMEN DE VIBORAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('37', '5', 'ANTIOQUIA', '150', 'CAROLINA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('38', '5', 'ANTIOQUIA', '154', 'CAUCASIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('39', '5', 'ANTIOQUIA', '172', 'CHIGORODO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('40', '5', 'ANTIOQUIA', '190', 'CISNEROS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('41', '5', 'ANTIOQUIA', '197', 'COCORNA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('42', '5', 'ANTIOQUIA', '206', 'CONCEPCION');
INSERT INTO `intranet_colombia_ciudades` VALUES ('43', '5', 'ANTIOQUIA', '209', 'CONCORDIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('44', '5', 'ANTIOQUIA', '212', 'COPACABANA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('45', '5', 'ANTIOQUIA', '234', 'DABEIBA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('46', '5', 'ANTIOQUIA', '237', 'DON MATIAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('47', '5', 'ANTIOQUIA', '240', 'EBEJICO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('48', '5', 'ANTIOQUIA', '250', 'EL BAGRE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('49', '5', 'ANTIOQUIA', '264', 'ENTRERRIOS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('50', '5', 'ANTIOQUIA', '266', 'ENVIGADO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('51', '5', 'ANTIOQUIA', '282', 'FREDONIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('52', '5', 'ANTIOQUIA', '284', 'FRONTINO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('53', '5', 'ANTIOQUIA', '306', 'GIRALDO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('54', '5', 'ANTIOQUIA', '308', 'GIRARDOTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('55', '5', 'ANTIOQUIA', '310', 'GOMEZ PLATA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('56', '5', 'ANTIOQUIA', '313', 'GRANADA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('57', '5', 'ANTIOQUIA', '315', 'GUADALUPE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('58', '5', 'ANTIOQUIA', '318', 'GUARNE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('59', '5', 'ANTIOQUIA', '321', 'GUATAPE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('60', '5', 'ANTIOQUIA', '347', 'HELICONIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('61', '5', 'ANTIOQUIA', '353', 'HISPANIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('62', '5', 'ANTIOQUIA', '360', 'ITAGUI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('63', '5', 'ANTIOQUIA', '361', 'ITUANGO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('64', '5', 'ANTIOQUIA', '364', 'JARDIN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('65', '5', 'ANTIOQUIA', '368', 'JERICO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('66', '5', 'ANTIOQUIA', '376', 'LA CEJA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('67', '5', 'ANTIOQUIA', '380', 'LA ESTRELLA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('68', '5', 'ANTIOQUIA', '390', 'LA PINTADA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('69', '5', 'ANTIOQUIA', '400', 'LA UNION');
INSERT INTO `intranet_colombia_ciudades` VALUES ('70', '5', 'ANTIOQUIA', '411', 'LIBORINA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('71', '5', 'ANTIOQUIA', '425', 'MACEO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('72', '5', 'ANTIOQUIA', '440', 'MARINILLA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('73', '5', 'ANTIOQUIA', '467', 'MONTEBELLO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('74', '5', 'ANTIOQUIA', '475', 'MURINDO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('75', '5', 'ANTIOQUIA', '480', 'MUTATA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('76', '5', 'ANTIOQUIA', '483', 'NARIÑO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('77', '5', 'ANTIOQUIA', '490', 'NECOCLI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('78', '5', 'ANTIOQUIA', '495', 'NECHI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('79', '5', 'ANTIOQUIA', '501', 'OLAYA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('80', '5', 'ANTIOQUIA', '541', 'PEÐOL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('81', '5', 'ANTIOQUIA', '543', 'PEQUE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('82', '5', 'ANTIOQUIA', '576', 'PUEBLORRICO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('83', '5', 'ANTIOQUIA', '579', 'PUERTO BERRIO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('84', '5', 'ANTIOQUIA', '585', 'PUERTO NARE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('85', '5', 'ANTIOQUIA', '591', 'PUERTO TRIUNFO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('86', '5', 'ANTIOQUIA', '604', 'REMEDIOS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('87', '5', 'ANTIOQUIA', '607', 'RETIRO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('88', '5', 'ANTIOQUIA', '615', 'RIONEGRO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('89', '5', 'ANTIOQUIA', '628', 'SABANALARGA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('90', '5', 'ANTIOQUIA', '631', 'SABANETA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('91', '5', 'ANTIOQUIA', '642', 'SALGAR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('92', '5', 'ANTIOQUIA', '647', 'SAN ANDRES DE CUERQUIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('93', '5', 'ANTIOQUIA', '649', 'SAN CARLOS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('94', '5', 'ANTIOQUIA', '652', 'SAN FRANCISCO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('95', '5', 'ANTIOQUIA', '656', 'SAN JERONIMO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('96', '5', 'ANTIOQUIA', '658', 'SAN JOSE DE LA MONTAÑA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('97', '5', 'ANTIOQUIA', '659', 'SAN JUAN DE URABA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('98', '5', 'ANTIOQUIA', '660', 'SAN LUIS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('99', '5', 'ANTIOQUIA', '664', 'SAN PEDRO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('100', '5', 'ANTIOQUIA', '665', 'SAN PEDRO DE URABA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('101', '5', 'ANTIOQUIA', '667', 'SAN RAFAEL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('102', '5', 'ANTIOQUIA', '670', 'SAN ROQUE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('103', '5', 'ANTIOQUIA', '674', 'SAN VICENTE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('104', '5', 'ANTIOQUIA', '679', 'SANTA BARBARA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('105', '5', 'ANTIOQUIA', '686', 'SANTA ROSA DE OSOS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('106', '5', 'ANTIOQUIA', '690', 'SANTO DOMINGO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('107', '5', 'ANTIOQUIA', '697', 'EL SANTUARIO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('108', '5', 'ANTIOQUIA', '736', 'SEGOVIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('109', '5', 'ANTIOQUIA', '756', 'SONSON');
INSERT INTO `intranet_colombia_ciudades` VALUES ('110', '5', 'ANTIOQUIA', '761', 'SOPETRAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('111', '5', 'ANTIOQUIA', '789', 'TAMESIS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('112', '5', 'ANTIOQUIA', '790', 'TARAZA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('113', '5', 'ANTIOQUIA', '792', 'TARSO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('114', '5', 'ANTIOQUIA', '809', 'TITIRIBI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('115', '5', 'ANTIOQUIA', '819', 'TOLEDO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('116', '5', 'ANTIOQUIA', '837', 'TURBO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('117', '5', 'ANTIOQUIA', '842', 'URAMITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('118', '5', 'ANTIOQUIA', '847', 'URRAO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('119', '5', 'ANTIOQUIA', '854', 'VALDIVIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('120', '5', 'ANTIOQUIA', '856', 'VALPARAISO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('121', '5', 'ANTIOQUIA', '858', 'VEGACHI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('122', '5', 'ANTIOQUIA', '861', 'VENECIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('123', '5', 'ANTIOQUIA', '873', 'VIGIA DEL FUERTE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('124', '5', 'ANTIOQUIA', '885', 'YALI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('125', '5', 'ANTIOQUIA', '887', 'YARUMAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('126', '5', 'ANTIOQUIA', '890', 'YOLOMBO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('127', '5', 'ANTIOQUIA', '893', 'YONDO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('128', '5', 'ANTIOQUIA', '895', 'ZARAGOZA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('129', '8', 'ATLANTICO', '1', 'BARRANQUILLA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('130', '8', 'ATLANTICO', '78', 'BARANOA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('131', '8', 'ATLANTICO', '137', 'CAMPO DE LA CRUZ');
INSERT INTO `intranet_colombia_ciudades` VALUES ('132', '8', 'ATLANTICO', '141', 'CANDELARIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('133', '8', 'ATLANTICO', '296', 'GALAPA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('134', '8', 'ATLANTICO', '372', 'JUAN DE ACOSTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('135', '8', 'ATLANTICO', '421', 'LURUACO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('136', '8', 'ATLANTICO', '433', 'MALAMBO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('137', '8', 'ATLANTICO', '436', 'MANATI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('138', '8', 'ATLANTICO', '520', 'PALMAR DE VARELA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('139', '8', 'ATLANTICO', '549', 'PIOJO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('140', '8', 'ATLANTICO', '558', 'POLONUEVO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('141', '8', 'ATLANTICO', '560', 'PONEDERA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('142', '8', 'ATLANTICO', '573', 'PUERTO COLOMBIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('143', '8', 'ATLANTICO', '606', 'REPELON');
INSERT INTO `intranet_colombia_ciudades` VALUES ('144', '8', 'ATLANTICO', '634', 'SABANAGRANDE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('145', '8', 'ATLANTICO', '638', 'SABANALARGA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('146', '8', 'ATLANTICO', '675', 'SANTA LUCIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('147', '8', 'ATLANTICO', '685', 'SANTO TOMAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('148', '8', 'ATLANTICO', '758', 'SOLEDAD');
INSERT INTO `intranet_colombia_ciudades` VALUES ('149', '8', 'ATLANTICO', '770', 'SUAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('150', '8', 'ATLANTICO', '832', 'TUBARA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('151', '8', 'ATLANTICO', '849', 'USIACURI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('152', '11', 'BOGOTA', '1', 'BOGOTA, D.C.');
INSERT INTO `intranet_colombia_ciudades` VALUES ('153', '13', 'BOLIVAR', '1', 'CARTAGENA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('154', '13', 'BOLIVAR', '6', 'ACHI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('155', '13', 'BOLIVAR', '30', 'ALTOS DEL ROSARIO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('156', '13', 'BOLIVAR', '42', 'ARENAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('157', '13', 'BOLIVAR', '52', 'ARJONA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('158', '13', 'BOLIVAR', '62', 'ARROYOHONDO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('159', '13', 'BOLIVAR', '74', 'BARRANCO DE LOBA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('160', '13', 'BOLIVAR', '140', 'CALAMAR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('161', '13', 'BOLIVAR', '160', 'CANTAGALLO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('162', '13', 'BOLIVAR', '188', 'CICUCO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('163', '13', 'BOLIVAR', '212', 'CORDOBA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('164', '13', 'BOLIVAR', '222', 'CLEMENCIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('165', '13', 'BOLIVAR', '244', 'EL CARMEN DE BOLIVAR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('166', '13', 'BOLIVAR', '248', 'EL GUAMO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('167', '13', 'BOLIVAR', '268', 'EL PEÑON');
INSERT INTO `intranet_colombia_ciudades` VALUES ('168', '13', 'BOLIVAR', '300', 'HATILLO DE LOBA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('169', '13', 'BOLIVAR', '430', 'MAGANGUE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('170', '13', 'BOLIVAR', '433', 'MAHATES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('171', '13', 'BOLIVAR', '440', 'MARGARITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('172', '13', 'BOLIVAR', '442', 'MARIA LA BAJA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('173', '13', 'BOLIVAR', '458', 'MONTECRISTO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('174', '13', 'BOLIVAR', '468', 'MOMPOS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('175', '13', 'BOLIVAR', '490', 'NOROSI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('176', '13', 'BOLIVAR', '473', 'MORALES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('177', '13', 'BOLIVAR', '549', 'PINILLOS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('178', '13', 'BOLIVAR', '580', 'REGIDOR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('179', '13', 'BOLIVAR', '600', 'RIO VIEJO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('180', '13', 'BOLIVAR', '620', 'SAN CRISTOBAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('181', '13', 'BOLIVAR', '647', 'SAN ESTANISLAO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('182', '13', 'BOLIVAR', '650', 'SAN FERNANDO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('183', '13', 'BOLIVAR', '654', 'SAN JACINTO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('184', '13', 'BOLIVAR', '655', 'SAN JACINTO DEL CAUCA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('185', '13', 'BOLIVAR', '657', 'SAN JUAN NEPOMUCENO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('186', '13', 'BOLIVAR', '667', 'SAN MARTIN DE LOBA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('187', '13', 'BOLIVAR', '670', 'SAN PABLO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('188', '13', 'BOLIVAR', '673', 'SANTA CATALINA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('189', '13', 'BOLIVAR', '683', 'SANTA ROSA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('190', '13', 'BOLIVAR', '688', 'SANTA ROSA DEL SUR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('191', '13', 'BOLIVAR', '744', 'SIMITI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('192', '13', 'BOLIVAR', '760', 'SOPLAVIENTO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('193', '13', 'BOLIVAR', '780', 'TALAIGUA NUEVO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('194', '13', 'BOLIVAR', '810', 'TIQUISIO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('195', '13', 'BOLIVAR', '836', 'TURBACO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('196', '13', 'BOLIVAR', '838', 'TURBANA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('197', '13', 'BOLIVAR', '873', 'VILLANUEVA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('198', '13', 'BOLIVAR', '894', 'ZAMBRANO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('199', '15', 'BOYACA', '1', 'TUNJA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('200', '15', 'BOYACA', '22', 'ALMEIDA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('201', '15', 'BOYACA', '47', 'AQUITANIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('202', '15', 'BOYACA', '51', 'ARCABUCO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('203', '15', 'BOYACA', '87', 'BELEN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('204', '15', 'BOYACA', '90', 'BERBEO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('205', '15', 'BOYACA', '92', 'BETEITIVA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('206', '15', 'BOYACA', '97', 'BOAVITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('207', '15', 'BOYACA', '104', 'BOYACA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('208', '15', 'BOYACA', '106', 'BRICEÑO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('209', '15', 'BOYACA', '109', 'BUENAVISTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('210', '15', 'BOYACA', '114', 'BUSBANZA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('211', '15', 'BOYACA', '131', 'CALDAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('212', '15', 'BOYACA', '135', 'CAMPOHERMOSO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('213', '15', 'BOYACA', '162', 'CERINZA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('214', '15', 'BOYACA', '172', 'CHINAVITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('215', '15', 'BOYACA', '176', 'CHIQUINQUIRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('216', '15', 'BOYACA', '180', 'CHISCAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('217', '15', 'BOYACA', '183', 'CHITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('218', '15', 'BOYACA', '185', 'CHITARAQUE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('219', '15', 'BOYACA', '187', 'CHIVATA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('220', '15', 'BOYACA', '189', 'CIENEGA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('221', '15', 'BOYACA', '204', 'COMBITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('222', '15', 'BOYACA', '212', 'COPER');
INSERT INTO `intranet_colombia_ciudades` VALUES ('223', '15', 'BOYACA', '215', 'CORRALES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('224', '15', 'BOYACA', '218', 'COVARACHIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('225', '15', 'BOYACA', '223', 'CUBARA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('226', '15', 'BOYACA', '224', 'CUCAITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('227', '15', 'BOYACA', '226', 'CUITIVA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('228', '15', 'BOYACA', '232', 'CHIQUIZA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('229', '15', 'BOYACA', '236', 'CHIVOR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('230', '15', 'BOYACA', '238', 'DUITAMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('231', '15', 'BOYACA', '244', 'EL COCUY');
INSERT INTO `intranet_colombia_ciudades` VALUES ('232', '15', 'BOYACA', '248', 'EL ESPINO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('233', '15', 'BOYACA', '272', 'FIRAVITOBA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('234', '15', 'BOYACA', '276', 'FLORESTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('235', '15', 'BOYACA', '293', 'GACHANTIVA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('236', '15', 'BOYACA', '296', 'GAMEZA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('237', '15', 'BOYACA', '299', 'GARAGOA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('238', '15', 'BOYACA', '317', 'GUACAMAYAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('239', '15', 'BOYACA', '322', 'GUATEQUE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('240', '15', 'BOYACA', '325', 'GUAYATA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('241', '15', 'BOYACA', '332', 'GsICAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('242', '15', 'BOYACA', '362', 'IZA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('243', '15', 'BOYACA', '367', 'JENESANO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('244', '15', 'BOYACA', '368', 'JERICO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('245', '15', 'BOYACA', '377', 'LABRANZAGRANDE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('246', '15', 'BOYACA', '380', 'LA CAPILLA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('247', '15', 'BOYACA', '401', 'LA VICTORIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('248', '15', 'BOYACA', '403', 'LA UVITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('249', '15', 'BOYACA', '407', 'VILLA DE LEYVA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('250', '15', 'BOYACA', '425', 'MACANAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('251', '15', 'BOYACA', '442', 'MARIPI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('252', '15', 'BOYACA', '455', 'MIRAFLORES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('253', '15', 'BOYACA', '464', 'MONGUA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('254', '15', 'BOYACA', '466', 'MONGUI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('255', '15', 'BOYACA', '469', 'MONIQUIRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('256', '15', 'BOYACA', '476', 'MOTAVITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('257', '15', 'BOYACA', '480', 'MUZO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('258', '15', 'BOYACA', '491', 'NOBSA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('259', '15', 'BOYACA', '494', 'NUEVO COLON');
INSERT INTO `intranet_colombia_ciudades` VALUES ('260', '15', 'BOYACA', '500', 'OICATA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('261', '15', 'BOYACA', '507', 'OTANCHE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('262', '15', 'BOYACA', '511', 'PACHAVITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('263', '15', 'BOYACA', '514', 'PAEZ');
INSERT INTO `intranet_colombia_ciudades` VALUES ('264', '15', 'BOYACA', '516', 'PAIPA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('265', '15', 'BOYACA', '518', 'PAJARITO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('266', '15', 'BOYACA', '522', 'PANQUEBA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('267', '15', 'BOYACA', '531', 'PAUNA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('268', '15', 'BOYACA', '533', 'PAYA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('269', '15', 'BOYACA', '537', 'PAZ DE RIO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('270', '15', 'BOYACA', '542', 'PESCA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('271', '15', 'BOYACA', '550', 'PISBA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('272', '15', 'BOYACA', '572', 'PUERTO BOYACA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('273', '15', 'BOYACA', '580', 'QUIPAMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('274', '15', 'BOYACA', '599', 'RAMIRIQUI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('275', '15', 'BOYACA', '600', 'RAQUIRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('276', '15', 'BOYACA', '621', 'RONDON');
INSERT INTO `intranet_colombia_ciudades` VALUES ('277', '15', 'BOYACA', '632', 'SABOYA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('278', '15', 'BOYACA', '638', 'SACHICA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('279', '15', 'BOYACA', '646', 'SAMACA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('280', '15', 'BOYACA', '660', 'SAN EDUARDO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('281', '15', 'BOYACA', '664', 'SAN JOSE DE PARE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('282', '15', 'BOYACA', '667', 'SAN LUIS DE GACENO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('283', '15', 'BOYACA', '673', 'SAN MATEO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('284', '15', 'BOYACA', '676', 'SAN MIGUEL DE SEMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('285', '15', 'BOYACA', '681', 'SAN PABLO DE BORBUR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('286', '15', 'BOYACA', '686', 'SANTANA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('287', '15', 'BOYACA', '690', 'SANTA MARIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('288', '15', 'BOYACA', '693', 'SANTA ROSA DE VITERBO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('289', '15', 'BOYACA', '696', 'SANTA SOFIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('290', '15', 'BOYACA', '720', 'SATIVANORTE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('291', '15', 'BOYACA', '723', 'SATIVASUR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('292', '15', 'BOYACA', '740', 'SIACHOQUE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('293', '15', 'BOYACA', '753', 'SOATA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('294', '15', 'BOYACA', '755', 'SOCOTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('295', '15', 'BOYACA', '757', 'SOCHA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('296', '15', 'BOYACA', '759', 'SOGAMOSO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('297', '15', 'BOYACA', '761', 'SOMONDOCO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('298', '15', 'BOYACA', '762', 'SORA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('299', '15', 'BOYACA', '763', 'SOTAQUIRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('300', '15', 'BOYACA', '764', 'SORACA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('301', '15', 'BOYACA', '774', 'SUSACON');
INSERT INTO `intranet_colombia_ciudades` VALUES ('302', '15', 'BOYACA', '776', 'SUTAMARCHAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('303', '15', 'BOYACA', '778', 'SUTATENZA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('304', '15', 'BOYACA', '790', 'TASCO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('305', '15', 'BOYACA', '798', 'TENZA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('306', '15', 'BOYACA', '804', 'TIBANA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('307', '15', 'BOYACA', '806', 'TIBASOSA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('308', '15', 'BOYACA', '808', 'TINJACA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('309', '15', 'BOYACA', '810', 'TIPACOQUE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('310', '15', 'BOYACA', '814', 'TOCA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('311', '15', 'BOYACA', '816', 'TOGsI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('312', '15', 'BOYACA', '820', 'TOPAGA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('313', '15', 'BOYACA', '822', 'TOTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('314', '15', 'BOYACA', '832', 'TUNUNGUA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('315', '15', 'BOYACA', '835', 'TURMEQUE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('316', '15', 'BOYACA', '837', 'TUTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('317', '15', 'BOYACA', '839', 'TUTAZA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('318', '15', 'BOYACA', '842', 'UMBITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('319', '15', 'BOYACA', '861', 'VENTAQUEMADA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('320', '15', 'BOYACA', '879', 'VIRACACHA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('321', '15', 'BOYACA', '897', 'ZETAQUIRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('322', '17', 'CALDAS', '1', 'MANIZALES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('323', '17', 'CALDAS', '13', 'AGUADAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('324', '17', 'CALDAS', '42', 'ANSERMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('325', '17', 'CALDAS', '50', 'ARANZAZU');
INSERT INTO `intranet_colombia_ciudades` VALUES ('326', '17', 'CALDAS', '88', 'BELALCAZAR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('327', '17', 'CALDAS', '174', 'CHINCHINA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('328', '17', 'CALDAS', '272', 'FILADELFIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('329', '17', 'CALDAS', '380', 'LA DORADA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('330', '17', 'CALDAS', '388', 'LA MERCED');
INSERT INTO `intranet_colombia_ciudades` VALUES ('331', '17', 'CALDAS', '433', 'MANZANARES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('332', '17', 'CALDAS', '442', 'MARMATO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('333', '17', 'CALDAS', '444', 'MARQUETALIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('334', '17', 'CALDAS', '446', 'MARULANDA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('335', '17', 'CALDAS', '486', 'NEIRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('336', '17', 'CALDAS', '495', 'NORCASIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('337', '17', 'CALDAS', '513', 'PACORA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('338', '17', 'CALDAS', '524', 'PALESTINA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('339', '17', 'CALDAS', '541', 'PENSILVANIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('340', '17', 'CALDAS', '614', 'RIOSUCIO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('341', '17', 'CALDAS', '616', 'RISARALDA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('342', '17', 'CALDAS', '653', 'SALAMINA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('343', '17', 'CALDAS', '662', 'SAMANA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('344', '17', 'CALDAS', '665', 'SAN JOSE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('345', '17', 'CALDAS', '777', 'SUPIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('346', '17', 'CALDAS', '867', 'VICTORIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('347', '17', 'CALDAS', '873', 'VILLAMARIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('348', '17', 'CALDAS', '877', 'VITERBO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('349', '18', 'CAQUETA', '1', 'FLORENCIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('350', '18', 'CAQUETA', '29', 'ALBANIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('351', '18', 'CAQUETA', '94', 'BELEN DE LOS ANDAQUIES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('352', '18', 'CAQUETA', '150', 'CARTAGENA DEL CHAIRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('353', '18', 'CAQUETA', '205', 'CURILLO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('354', '18', 'CAQUETA', '247', 'EL DONCELLO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('355', '18', 'CAQUETA', '256', 'EL PAUJIL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('356', '18', 'CAQUETA', '410', 'LA MONTAÑITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('357', '18', 'CAQUETA', '460', 'MILAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('358', '18', 'CAQUETA', '479', 'MORELIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('359', '18', 'CAQUETA', '592', 'PUERTO RICO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('360', '18', 'CAQUETA', '610', 'SAN JOSE DEL FRAGUA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('361', '18', 'CAQUETA', '753', 'SAN VICENTE DEL CAGUAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('362', '18', 'CAQUETA', '756', 'SOLANO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('363', '18', 'CAQUETA', '785', 'SOLITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('364', '18', 'CAQUETA', '860', 'VALPARAISO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('365', '19', 'CAUCA', '1', 'POPAYAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('366', '19', 'CAUCA', '22', 'ALMAGUER');
INSERT INTO `intranet_colombia_ciudades` VALUES ('367', '19', 'CAUCA', '50', 'ARGELIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('368', '19', 'CAUCA', '75', 'BALBOA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('369', '19', 'CAUCA', '100', 'BOLIVAR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('370', '19', 'CAUCA', '110', 'BUENOS AIRES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('371', '19', 'CAUCA', '130', 'CAJIBIO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('372', '19', 'CAUCA', '137', 'CALDONO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('373', '19', 'CAUCA', '142', 'CALOTO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('374', '19', 'CAUCA', '212', 'CORINTO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('375', '19', 'CAUCA', '256', 'EL TAMBO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('376', '19', 'CAUCA', '290', 'FLORENCIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('377', '19', 'CAUCA', '300', 'GUACHENE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('378', '19', 'CAUCA', '318', 'GUAPI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('379', '19', 'CAUCA', '355', 'INZA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('380', '19', 'CAUCA', '364', 'JAMBALO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('381', '19', 'CAUCA', '392', 'LA SIERRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('382', '19', 'CAUCA', '397', 'LA VEGA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('383', '19', 'CAUCA', '418', 'LOPEZ');
INSERT INTO `intranet_colombia_ciudades` VALUES ('384', '19', 'CAUCA', '450', 'MERCADERES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('385', '19', 'CAUCA', '455', 'MIRANDA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('386', '19', 'CAUCA', '473', 'MORALES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('387', '19', 'CAUCA', '513', 'PADILLA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('388', '19', 'CAUCA', '517', 'PAEZ');
INSERT INTO `intranet_colombia_ciudades` VALUES ('389', '19', 'CAUCA', '532', 'PATIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('390', '19', 'CAUCA', '533', 'PIAMONTE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('391', '19', 'CAUCA', '548', 'PIENDAMO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('392', '19', 'CAUCA', '573', 'PUERTO TEJADA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('393', '19', 'CAUCA', '585', 'PURACE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('394', '19', 'CAUCA', '622', 'ROSAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('395', '19', 'CAUCA', '693', 'SAN SEBASTIAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('396', '19', 'CAUCA', '698', 'SANTANDER DE QUILICHAO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('397', '19', 'CAUCA', '701', 'SANTA ROSA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('398', '19', 'CAUCA', '743', 'SILVIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('399', '19', 'CAUCA', '760', 'SOTARA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('400', '19', 'CAUCA', '780', 'SUAREZ');
INSERT INTO `intranet_colombia_ciudades` VALUES ('401', '19', 'CAUCA', '785', 'SUCRE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('402', '19', 'CAUCA', '807', 'TIMBIO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('403', '19', 'CAUCA', '809', 'TIMBIQUI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('404', '19', 'CAUCA', '821', 'TORIBIO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('405', '19', 'CAUCA', '824', 'TOTORO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('406', '19', 'CAUCA', '845', 'VILLA RICA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('407', '20', 'CESAR', '1', 'VALLEDUPAR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('408', '20', 'CESAR', '11', 'AGUACHICA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('409', '20', 'CESAR', '13', 'AGUSTIN CODAZZI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('410', '20', 'CESAR', '32', 'ASTREA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('411', '20', 'CESAR', '45', 'BECERRIL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('412', '20', 'CESAR', '60', 'BOSCONIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('413', '20', 'CESAR', '175', 'CHIMICHAGUA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('414', '20', 'CESAR', '178', 'CHIRIGUANA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('415', '20', 'CESAR', '228', 'CURUMANI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('416', '20', 'CESAR', '238', 'EL COPEY');
INSERT INTO `intranet_colombia_ciudades` VALUES ('417', '20', 'CESAR', '250', 'EL PASO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('418', '20', 'CESAR', '295', 'GAMARRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('419', '20', 'CESAR', '310', 'GONZALEZ');
INSERT INTO `intranet_colombia_ciudades` VALUES ('420', '20', 'CESAR', '383', 'LA GLORIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('421', '20', 'CESAR', '400', 'LA JAGUA DE IBIRICO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('422', '20', 'CESAR', '443', 'MANAURE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('423', '20', 'CESAR', '517', 'PAILITAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('424', '20', 'CESAR', '550', 'PELAYA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('425', '20', 'CESAR', '570', 'PUEBLO BELLO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('426', '20', 'CESAR', '614', 'RIO DE ORO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('427', '20', 'CESAR', '621', 'LA PAZ');
INSERT INTO `intranet_colombia_ciudades` VALUES ('428', '20', 'CESAR', '710', 'SAN ALBERTO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('429', '20', 'CESAR', '750', 'SAN DIEGO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('430', '20', 'CESAR', '770', 'SAN MARTIN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('431', '20', 'CESAR', '787', 'TAMALAMEQUE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('432', '23', 'CORDOBA', '1', 'MONTERIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('433', '23', 'CORDOBA', '68', 'AYAPEL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('434', '23', 'CORDOBA', '79', 'BUENAVISTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('435', '23', 'CORDOBA', '90', 'CANALETE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('436', '23', 'CORDOBA', '162', 'CERETE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('437', '23', 'CORDOBA', '168', 'CHIMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('438', '23', 'CORDOBA', '182', 'CHINU');
INSERT INTO `intranet_colombia_ciudades` VALUES ('439', '23', 'CORDOBA', '189', 'CIENAGA DE ORO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('440', '23', 'CORDOBA', '300', 'COTORRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('441', '23', 'CORDOBA', '350', 'LA APARTADA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('442', '23', 'CORDOBA', '417', 'LORICA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('443', '23', 'CORDOBA', '419', 'LOS CORDOBAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('444', '23', 'CORDOBA', '464', 'MOMIL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('445', '23', 'CORDOBA', '466', 'MONTELIBANO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('446', '23', 'CORDOBA', '500', 'MOÑITOS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('447', '23', 'CORDOBA', '555', 'PLANETA RICA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('448', '23', 'CORDOBA', '570', 'PUEBLO NUEVO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('449', '23', 'CORDOBA', '574', 'PUERTO ESCONDIDO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('450', '23', 'CORDOBA', '580', 'PUERTO LIBERTADOR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('451', '23', 'CORDOBA', '586', 'PURISIMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('452', '23', 'CORDOBA', '660', 'SAHAGUN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('453', '23', 'CORDOBA', '670', 'SAN ANDRES SOTAVENTO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('454', '23', 'CORDOBA', '672', 'SAN ANTERO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('455', '23', 'CORDOBA', '675', 'SAN BERNARDO DEL VIENTO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('456', '23', 'CORDOBA', '678', 'SAN CARLOS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('457', '23', 'CORDOBA', '686', 'SAN PELAYO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('458', '23', 'CORDOBA', '807', 'TIERRALTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('459', '23', 'CORDOBA', '855', 'VALENCIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('460', '25', 'CUNDINAMARCA', '1', 'AGUA DE DIOS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('461', '25', 'CUNDINAMARCA', '19', 'ALBAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('462', '25', 'CUNDINAMARCA', '35', 'ANAPOIMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('463', '25', 'CUNDINAMARCA', '40', 'ANOLAIMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('464', '25', 'CUNDINAMARCA', '53', 'ARBELAEZ');
INSERT INTO `intranet_colombia_ciudades` VALUES ('465', '25', 'CUNDINAMARCA', '86', 'BELTRAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('466', '25', 'CUNDINAMARCA', '95', 'BITUIMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('467', '25', 'CUNDINAMARCA', '99', 'BOJACA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('468', '25', 'CUNDINAMARCA', '120', 'CABRERA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('469', '25', 'CUNDINAMARCA', '123', 'CACHIPAY');
INSERT INTO `intranet_colombia_ciudades` VALUES ('470', '25', 'CUNDINAMARCA', '126', 'CAJICA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('471', '25', 'CUNDINAMARCA', '148', 'CAPARRAPI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('472', '25', 'CUNDINAMARCA', '151', 'CAQUEZA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('473', '25', 'CUNDINAMARCA', '154', 'CARMEN DE CARUPA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('474', '25', 'CUNDINAMARCA', '168', 'CHAGUANI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('475', '25', 'CUNDINAMARCA', '175', 'CHIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('476', '25', 'CUNDINAMARCA', '178', 'CHIPAQUE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('477', '25', 'CUNDINAMARCA', '181', 'CHOACHI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('478', '25', 'CUNDINAMARCA', '183', 'CHOCONTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('479', '25', 'CUNDINAMARCA', '200', 'COGUA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('480', '25', 'CUNDINAMARCA', '214', 'COTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('481', '25', 'CUNDINAMARCA', '224', 'CUCUNUBA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('482', '25', 'CUNDINAMARCA', '245', 'EL COLEGIO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('483', '25', 'CUNDINAMARCA', '258', 'EL PEÑON');
INSERT INTO `intranet_colombia_ciudades` VALUES ('484', '25', 'CUNDINAMARCA', '260', 'EL ROSAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('485', '25', 'CUNDINAMARCA', '269', 'FACATATIVA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('486', '25', 'CUNDINAMARCA', '279', 'FOMEQUE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('487', '25', 'CUNDINAMARCA', '281', 'FOSCA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('488', '25', 'CUNDINAMARCA', '286', 'FUNZA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('489', '25', 'CUNDINAMARCA', '288', 'FUQUENE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('490', '25', 'CUNDINAMARCA', '290', 'FUSAGASUGA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('491', '25', 'CUNDINAMARCA', '293', 'GACHALA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('492', '25', 'CUNDINAMARCA', '295', 'GACHANCIPA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('493', '25', 'CUNDINAMARCA', '297', 'GACHETA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('494', '25', 'CUNDINAMARCA', '299', 'GAMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('495', '25', 'CUNDINAMARCA', '307', 'GIRARDOT');
INSERT INTO `intranet_colombia_ciudades` VALUES ('496', '25', 'CUNDINAMARCA', '312', 'GRANADA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('497', '25', 'CUNDINAMARCA', '317', 'GUACHETA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('498', '25', 'CUNDINAMARCA', '320', 'GUADUAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('499', '25', 'CUNDINAMARCA', '322', 'GUASCA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('500', '25', 'CUNDINAMARCA', '324', 'GUATAQUI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('501', '25', 'CUNDINAMARCA', '326', 'GUATAVITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('502', '25', 'CUNDINAMARCA', '328', 'GUAYABAL DE SIQUIMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('503', '25', 'CUNDINAMARCA', '335', 'GUAYABETAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('504', '25', 'CUNDINAMARCA', '339', 'GUTIERREZ');
INSERT INTO `intranet_colombia_ciudades` VALUES ('505', '25', 'CUNDINAMARCA', '368', 'JERUSALEN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('506', '25', 'CUNDINAMARCA', '372', 'JUNIN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('507', '25', 'CUNDINAMARCA', '377', 'LA CALERA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('508', '25', 'CUNDINAMARCA', '386', 'LA MESA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('509', '25', 'CUNDINAMARCA', '394', 'LA PALMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('510', '25', 'CUNDINAMARCA', '398', 'LA PEÑA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('511', '25', 'CUNDINAMARCA', '402', 'LA VEGA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('512', '25', 'CUNDINAMARCA', '407', 'LENGUAZAQUE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('513', '25', 'CUNDINAMARCA', '426', 'MACHETA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('514', '25', 'CUNDINAMARCA', '430', 'MADRID');
INSERT INTO `intranet_colombia_ciudades` VALUES ('515', '25', 'CUNDINAMARCA', '436', 'MANTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('516', '25', 'CUNDINAMARCA', '438', 'MEDINA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('517', '25', 'CUNDINAMARCA', '473', 'MOSQUERA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('518', '25', 'CUNDINAMARCA', '483', 'NARIÑO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('519', '25', 'CUNDINAMARCA', '486', 'NEMOCON');
INSERT INTO `intranet_colombia_ciudades` VALUES ('520', '25', 'CUNDINAMARCA', '488', 'NILO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('521', '25', 'CUNDINAMARCA', '489', 'NIMAIMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('522', '25', 'CUNDINAMARCA', '491', 'NOCAIMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('523', '25', 'CUNDINAMARCA', '506', 'VENECIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('524', '25', 'CUNDINAMARCA', '513', 'PACHO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('525', '25', 'CUNDINAMARCA', '518', 'PAIME');
INSERT INTO `intranet_colombia_ciudades` VALUES ('526', '25', 'CUNDINAMARCA', '524', 'PANDI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('527', '25', 'CUNDINAMARCA', '530', 'PARATEBUENO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('528', '25', 'CUNDINAMARCA', '535', 'PASCA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('529', '25', 'CUNDINAMARCA', '572', 'PUERTO SALGAR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('530', '25', 'CUNDINAMARCA', '580', 'PULI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('531', '25', 'CUNDINAMARCA', '592', 'QUEBRADANEGRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('532', '25', 'CUNDINAMARCA', '594', 'QUETAME');
INSERT INTO `intranet_colombia_ciudades` VALUES ('533', '25', 'CUNDINAMARCA', '596', 'QUIPILE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('534', '25', 'CUNDINAMARCA', '599', 'APULO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('535', '25', 'CUNDINAMARCA', '612', 'RICAURTE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('536', '25', 'CUNDINAMARCA', '645', 'SAN ANTONIO DEL TEQUENDAMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('537', '25', 'CUNDINAMARCA', '649', 'SAN BERNARDO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('538', '25', 'CUNDINAMARCA', '653', 'SAN CAYETANO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('539', '25', 'CUNDINAMARCA', '658', 'SAN FRANCISCO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('540', '25', 'CUNDINAMARCA', '662', 'SAN JUAN DE RIO SECO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('541', '25', 'CUNDINAMARCA', '718', 'SASAIMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('542', '25', 'CUNDINAMARCA', '736', 'SESQUILE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('543', '25', 'CUNDINAMARCA', '740', 'SIBATE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('544', '25', 'CUNDINAMARCA', '743', 'SILVANIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('545', '25', 'CUNDINAMARCA', '745', 'SIMIJACA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('546', '25', 'CUNDINAMARCA', '754', 'SOACHA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('547', '25', 'CUNDINAMARCA', '758', 'SOPO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('548', '25', 'CUNDINAMARCA', '769', 'SUBACHOQUE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('549', '25', 'CUNDINAMARCA', '772', 'SUESCA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('550', '25', 'CUNDINAMARCA', '777', 'SUPATA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('551', '25', 'CUNDINAMARCA', '779', 'SUSA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('552', '25', 'CUNDINAMARCA', '781', 'SUTATAUSA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('553', '25', 'CUNDINAMARCA', '785', 'TABIO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('554', '25', 'CUNDINAMARCA', '793', 'TAUSA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('555', '25', 'CUNDINAMARCA', '797', 'TENA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('556', '25', 'CUNDINAMARCA', '799', 'TENJO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('557', '25', 'CUNDINAMARCA', '805', 'TIBACUY');
INSERT INTO `intranet_colombia_ciudades` VALUES ('558', '25', 'CUNDINAMARCA', '807', 'TIBIRITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('559', '25', 'CUNDINAMARCA', '815', 'TOCAIMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('560', '25', 'CUNDINAMARCA', '817', 'TOCANCIPA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('561', '25', 'CUNDINAMARCA', '823', 'TOPAIPI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('562', '25', 'CUNDINAMARCA', '839', 'UBALA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('563', '25', 'CUNDINAMARCA', '841', 'UBAQUE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('564', '25', 'CUNDINAMARCA', '843', 'VILLA DE SAN DIEGO DE UBATE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('565', '25', 'CUNDINAMARCA', '845', 'UNE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('566', '25', 'CUNDINAMARCA', '851', 'UTICA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('567', '25', 'CUNDINAMARCA', '862', 'VERGARA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('568', '25', 'CUNDINAMARCA', '867', 'VIANI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('569', '25', 'CUNDINAMARCA', '871', 'VILLAGOMEZ');
INSERT INTO `intranet_colombia_ciudades` VALUES ('570', '25', 'CUNDINAMARCA', '873', 'VILLAPINZON');
INSERT INTO `intranet_colombia_ciudades` VALUES ('571', '25', 'CUNDINAMARCA', '875', 'VILLETA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('572', '25', 'CUNDINAMARCA', '878', 'VIOTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('573', '25', 'CUNDINAMARCA', '885', 'YACOPI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('574', '25', 'CUNDINAMARCA', '898', 'ZIPACON');
INSERT INTO `intranet_colombia_ciudades` VALUES ('575', '25', 'CUNDINAMARCA', '899', 'ZIPAQUIRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('576', '27', 'CHOCO', '1', 'QUIBDO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('577', '27', 'CHOCO', '6', 'ACANDI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('578', '27', 'CHOCO', '25', 'ALTO BAUDO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('579', '27', 'CHOCO', '50', 'ATRATO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('580', '27', 'CHOCO', '73', 'BAGADO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('581', '27', 'CHOCO', '75', 'BAHIA SOLANO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('582', '27', 'CHOCO', '77', 'BAJO BAUDO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('583', '27', 'CHOCO', '99', 'BOJAYA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('584', '27', 'CHOCO', '135', 'EL CANTON DEL SAN PABLO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('585', '27', 'CHOCO', '150', 'CARMEN DEL DARIEN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('586', '27', 'CHOCO', '160', 'CERTEGUI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('587', '27', 'CHOCO', '205', 'CONDOTO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('588', '27', 'CHOCO', '245', 'EL CARMEN DE ATRATO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('589', '27', 'CHOCO', '250', 'EL LITORAL DEL SAN JUAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('590', '27', 'CHOCO', '361', 'ISTMINA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('591', '27', 'CHOCO', '372', 'JURADO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('592', '27', 'CHOCO', '413', 'LLORO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('593', '27', 'CHOCO', '425', 'MEDIO ATRATO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('594', '27', 'CHOCO', '430', 'MEDIO BAUDO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('595', '27', 'CHOCO', '450', 'MEDIO SAN JUAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('596', '27', 'CHOCO', '491', 'NOVITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('597', '27', 'CHOCO', '495', 'NUQUI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('598', '27', 'CHOCO', '580', 'RIO IRO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('599', '27', 'CHOCO', '600', 'RIO QUITO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('600', '27', 'CHOCO', '615', 'RIOSUCIO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('601', '27', 'CHOCO', '660', 'SAN JOSE DEL PALMAR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('602', '27', 'CHOCO', '745', 'SIPI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('603', '27', 'CHOCO', '787', 'TADO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('604', '27', 'CHOCO', '800', 'UNGUIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('605', '27', 'CHOCO', '810', 'UNION PANAMERICANA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('606', '41', 'HUILA', '1', 'NEIVA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('607', '41', 'HUILA', '6', 'ACEVEDO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('608', '41', 'HUILA', '13', 'AGRADO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('609', '41', 'HUILA', '16', 'AIPE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('610', '41', 'HUILA', '20', 'ALGECIRAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('611', '41', 'HUILA', '26', 'ALTAMIRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('612', '41', 'HUILA', '78', 'BARAYA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('613', '41', 'HUILA', '132', 'CAMPOALEGRE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('614', '41', 'HUILA', '206', 'COLOMBIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('615', '41', 'HUILA', '244', 'ELIAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('616', '41', 'HUILA', '298', 'GARZON');
INSERT INTO `intranet_colombia_ciudades` VALUES ('617', '41', 'HUILA', '306', 'GIGANTE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('618', '41', 'HUILA', '319', 'GUADALUPE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('619', '41', 'HUILA', '349', 'HOBO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('620', '41', 'HUILA', '357', 'IQUIRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('621', '41', 'HUILA', '359', 'ISNOS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('622', '41', 'HUILA', '378', 'LA ARGENTINA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('623', '41', 'HUILA', '396', 'LA PLATA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('624', '41', 'HUILA', '483', 'NATAGA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('625', '41', 'HUILA', '503', 'OPORAPA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('626', '41', 'HUILA', '518', 'PAICOL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('627', '41', 'HUILA', '524', 'PALERMO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('628', '41', 'HUILA', '530', 'PALESTINA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('629', '41', 'HUILA', '548', 'PITAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('630', '41', 'HUILA', '551', 'PITALITO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('631', '41', 'HUILA', '615', 'RIVERA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('632', '41', 'HUILA', '660', 'SALADOBLANCO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('633', '41', 'HUILA', '668', 'SAN AGUSTIN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('634', '41', 'HUILA', '676', 'SANTA MARIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('635', '41', 'HUILA', '770', 'SUAZA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('636', '41', 'HUILA', '791', 'TARQUI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('637', '41', 'HUILA', '797', 'TESALIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('638', '41', 'HUILA', '799', 'TELLO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('639', '41', 'HUILA', '801', 'TERUEL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('640', '41', 'HUILA', '807', 'TIMANA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('641', '41', 'HUILA', '872', 'VILLAVIEJA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('642', '41', 'HUILA', '885', 'YAGUARA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('643', '44', 'LA GUAJIRA', '1', 'RIOHACHA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('644', '44', 'LA GUAJIRA', '35', 'ALBANIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('645', '44', 'LA GUAJIRA', '78', 'BARRANCAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('646', '44', 'LA GUAJIRA', '90', 'DIBULLA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('647', '44', 'LA GUAJIRA', '98', 'DISTRACCION');
INSERT INTO `intranet_colombia_ciudades` VALUES ('648', '44', 'LA GUAJIRA', '110', 'EL MOLINO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('649', '44', 'LA GUAJIRA', '279', 'FONSECA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('650', '44', 'LA GUAJIRA', '378', 'HATONUEVO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('651', '44', 'LA GUAJIRA', '420', 'LA JAGUA DEL PILAR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('652', '44', 'LA GUAJIRA', '430', 'MAICAO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('653', '44', 'LA GUAJIRA', '560', 'MANAURE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('654', '44', 'LA GUAJIRA', '650', 'SAN JUAN DEL CESAR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('655', '44', 'LA GUAJIRA', '847', 'URIBIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('656', '44', 'LA GUAJIRA', '855', 'URUMITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('657', '44', 'LA GUAJIRA', '874', 'VILLANUEVA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('658', '47', 'MAGDALENA', '1', 'SANTA MARTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('659', '47', 'MAGDALENA', '30', 'ALGARROBO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('660', '47', 'MAGDALENA', '53', 'ARACATACA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('661', '47', 'MAGDALENA', '58', 'ARIGUANI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('662', '47', 'MAGDALENA', '161', 'CERRO SAN ANTONIO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('663', '47', 'MAGDALENA', '170', 'CHIBOLO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('664', '47', 'MAGDALENA', '189', 'CIENAGA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('665', '47', 'MAGDALENA', '205', 'CONCORDIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('666', '47', 'MAGDALENA', '245', 'EL BANCO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('667', '47', 'MAGDALENA', '258', 'EL PIÑON');
INSERT INTO `intranet_colombia_ciudades` VALUES ('668', '47', 'MAGDALENA', '268', 'EL RETEN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('669', '47', 'MAGDALENA', '288', 'FUNDACION');
INSERT INTO `intranet_colombia_ciudades` VALUES ('670', '47', 'MAGDALENA', '318', 'GUAMAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('671', '47', 'MAGDALENA', '460', 'NUEVA GRANADA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('672', '47', 'MAGDALENA', '541', 'PEDRAZA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('673', '47', 'MAGDALENA', '545', 'PIJIÑO DEL CARMEN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('674', '47', 'MAGDALENA', '551', 'PIVIJAY');
INSERT INTO `intranet_colombia_ciudades` VALUES ('675', '47', 'MAGDALENA', '555', 'PLATO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('676', '47', 'MAGDALENA', '570', 'PUEBLOVIEJO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('677', '47', 'MAGDALENA', '605', 'REMOLINO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('678', '47', 'MAGDALENA', '660', 'SABANAS DE SAN ANGEL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('679', '47', 'MAGDALENA', '675', 'SALAMINA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('680', '47', 'MAGDALENA', '692', 'SAN SEBASTIAN DE BUENAVISTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('681', '47', 'MAGDALENA', '703', 'SAN ZENON');
INSERT INTO `intranet_colombia_ciudades` VALUES ('682', '47', 'MAGDALENA', '707', 'SANTA ANA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('683', '47', 'MAGDALENA', '720', 'SANTA BARBARA DE PINTO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('684', '47', 'MAGDALENA', '745', 'SITIONUEVO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('685', '47', 'MAGDALENA', '798', 'TENERIFE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('686', '47', 'MAGDALENA', '960', 'ZAPAYAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('687', '47', 'MAGDALENA', '980', 'ZONA BANANERA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('688', '50', 'META', '1', 'VILLAVICENCIO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('689', '50', 'META', '6', 'ACACIAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('690', '50', 'META', '110', 'BARRANCA DE UPIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('691', '50', 'META', '124', 'CABUYARO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('692', '50', 'META', '150', 'CASTILLA LA NUEVA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('693', '50', 'META', '223', 'CUBARRAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('694', '50', 'META', '226', 'CUMARAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('695', '50', 'META', '245', 'EL CALVARIO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('696', '50', 'META', '251', 'EL CASTILLO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('697', '50', 'META', '270', 'EL DORADO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('698', '50', 'META', '287', 'FUENTE DE ORO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('699', '50', 'META', '313', 'GRANADA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('700', '50', 'META', '318', 'GUAMAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('701', '50', 'META', '325', 'MAPIRIPAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('702', '50', 'META', '330', 'MESETAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('703', '50', 'META', '350', 'LA MACARENA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('704', '50', 'META', '370', 'URIBE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('705', '50', 'META', '400', 'LEJANIAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('706', '50', 'META', '450', 'PUERTO CONCORDIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('707', '50', 'META', '568', 'PUERTO GAITAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('708', '50', 'META', '573', 'PUERTO LOPEZ');
INSERT INTO `intranet_colombia_ciudades` VALUES ('709', '50', 'META', '577', 'PUERTO LLERAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('710', '50', 'META', '590', 'PUERTO RICO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('711', '50', 'META', '606', 'RESTREPO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('712', '50', 'META', '680', 'SAN CARLOS DE GUAROA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('713', '50', 'META', '683', 'SAN JUAN DE ARAMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('714', '50', 'META', '686', 'SAN JUANITO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('715', '50', 'META', '689', 'SAN MARTIN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('716', '50', 'META', '711', 'VISTAHERMOSA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('717', '52', 'NARIÑO', '1', 'PASTO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('718', '52', 'NARIÑO', '19', 'ALBAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('719', '52', 'NARIÑO', '22', 'ALDANA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('720', '52', 'NARIÑO', '36', 'ANCUYA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('721', '52', 'NARIÑO', '51', 'ARBOLEDA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('722', '52', 'NARIÑO', '79', 'BARBACOAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('723', '52', 'NARIÑO', '83', 'BELEN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('724', '52', 'NARIÑO', '110', 'BUESACO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('725', '52', 'NARIÑO', '203', 'COLON');
INSERT INTO `intranet_colombia_ciudades` VALUES ('726', '52', 'NARIÑO', '207', 'CONSACA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('727', '52', 'NARIÑO', '210', 'CONTADERO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('728', '52', 'NARIÑO', '215', 'CORDOBA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('729', '52', 'NARIÑO', '224', 'CUASPUD');
INSERT INTO `intranet_colombia_ciudades` VALUES ('730', '52', 'NARIÑO', '227', 'CUMBAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('731', '52', 'NARIÑO', '233', 'CUMBITARA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('732', '52', 'NARIÑO', '240', 'CHACHAGsI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('733', '52', 'NARIÑO', '250', 'EL CHARCO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('734', '52', 'NARIÑO', '254', 'EL PEÑOL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('735', '52', 'NARIÑO', '256', 'EL ROSARIO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('736', '52', 'NARIÑO', '258', 'EL TABLON DE GOMEZ');
INSERT INTO `intranet_colombia_ciudades` VALUES ('737', '52', 'NARIÑO', '260', 'EL TAMBO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('738', '52', 'NARIÑO', '287', 'FUNES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('739', '52', 'NARIÑO', '317', 'GUACHUCAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('740', '52', 'NARIÑO', '320', 'GUAITARILLA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('741', '52', 'NARIÑO', '323', 'GUALMATAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('742', '52', 'NARIÑO', '352', 'ILES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('743', '52', 'NARIÑO', '354', 'IMUES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('744', '52', 'NARIÑO', '356', 'IPIALES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('745', '52', 'NARIÑO', '378', 'LA CRUZ');
INSERT INTO `intranet_colombia_ciudades` VALUES ('746', '52', 'NARIÑO', '381', 'LA FLORIDA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('747', '52', 'NARIÑO', '385', 'LA LLANADA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('748', '52', 'NARIÑO', '390', 'LA TOLA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('749', '52', 'NARIÑO', '399', 'LA UNION');
INSERT INTO `intranet_colombia_ciudades` VALUES ('750', '52', 'NARIÑO', '405', 'LEIVA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('751', '52', 'NARIÑO', '411', 'LINARES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('752', '52', 'NARIÑO', '418', 'LOS ANDES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('753', '52', 'NARIÑO', '427', 'MAGsI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('754', '52', 'NARIÑO', '435', 'MALLAMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('755', '52', 'NARIÑO', '473', 'MOSQUERA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('756', '52', 'NARIÑO', '480', 'NARIÑO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('757', '52', 'NARIÑO', '490', 'OLAYA HERRERA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('758', '52', 'NARIÑO', '506', 'OSPINA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('759', '52', 'NARIÑO', '520', 'FRANCISCO PIZARRO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('760', '52', 'NARIÑO', '540', 'POLICARPA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('761', '52', 'NARIÑO', '560', 'POTOSI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('762', '52', 'NARIÑO', '565', 'PROVIDENCIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('763', '52', 'NARIÑO', '573', 'PUERRES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('764', '52', 'NARIÑO', '585', 'PUPIALES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('765', '52', 'NARIÑO', '612', 'RICAURTE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('766', '52', 'NARIÑO', '621', 'ROBERTO PAYAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('767', '52', 'NARIÑO', '678', 'SAMANIEGO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('768', '52', 'NARIÑO', '683', 'SANDONA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('769', '52', 'NARIÑO', '685', 'SAN BERNARDO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('770', '52', 'NARIÑO', '687', 'SAN LORENZO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('771', '52', 'NARIÑO', '693', 'SAN PABLO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('772', '52', 'NARIÑO', '694', 'SAN PEDRO DE CARTAGO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('773', '52', 'NARIÑO', '696', 'SANTA BARBARA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('774', '52', 'NARIÑO', '699', 'SANTACRUZ');
INSERT INTO `intranet_colombia_ciudades` VALUES ('775', '52', 'NARIÑO', '720', 'SAPUYES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('776', '52', 'NARIÑO', '786', 'TAMINANGO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('777', '52', 'NARIÑO', '788', 'TANGUA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('778', '52', 'NARIÑO', '835', 'SAN ANDRES DE TUMACO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('779', '52', 'NARIÑO', '838', 'TUQUERRES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('780', '52', 'NARIÑO', '885', 'YACUANQUER');
INSERT INTO `intranet_colombia_ciudades` VALUES ('781', '54', 'N. DE SANTANDER', '1', 'CUCUTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('782', '54', 'N. DE SANTANDER', '3', 'ABREGO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('783', '54', 'N. DE SANTANDER', '51', 'ARBOLEDAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('784', '54', 'N. DE SANTANDER', '99', 'BOCHALEMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('785', '54', 'N. DE SANTANDER', '109', 'BUCARASICA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('786', '54', 'N. DE SANTANDER', '125', 'CACOTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('787', '54', 'N. DE SANTANDER', '128', 'CACHIRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('788', '54', 'N. DE SANTANDER', '172', 'CHINACOTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('789', '54', 'N. DE SANTANDER', '174', 'CHITAGA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('790', '54', 'N. DE SANTANDER', '206', 'CONVENCION');
INSERT INTO `intranet_colombia_ciudades` VALUES ('791', '54', 'N. DE SANTANDER', '223', 'CUCUTILLA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('792', '54', 'N. DE SANTANDER', '239', 'DURANIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('793', '54', 'N. DE SANTANDER', '245', 'EL CARMEN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('794', '54', 'N. DE SANTANDER', '250', 'EL TARRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('795', '54', 'N. DE SANTANDER', '261', 'EL ZULIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('796', '54', 'N. DE SANTANDER', '313', 'GRAMALOTE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('797', '54', 'N. DE SANTANDER', '344', 'HACARI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('798', '54', 'N. DE SANTANDER', '347', 'HERRAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('799', '54', 'N. DE SANTANDER', '377', 'LABATECA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('800', '54', 'N. DE SANTANDER', '385', 'LA ESPERANZA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('801', '54', 'N. DE SANTANDER', '398', 'LA PLAYA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('802', '54', 'N. DE SANTANDER', '405', 'LOS PATIOS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('803', '54', 'N. DE SANTANDER', '418', 'LOURDES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('804', '54', 'N. DE SANTANDER', '480', 'MUTISCUA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('805', '54', 'N. DE SANTANDER', '498', 'OCAÑA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('806', '54', 'N. DE SANTANDER', '518', 'PAMPLONA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('807', '54', 'N. DE SANTANDER', '520', 'PAMPLONITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('808', '54', 'N. DE SANTANDER', '553', 'PUERTO SANTANDER');
INSERT INTO `intranet_colombia_ciudades` VALUES ('809', '54', 'N. DE SANTANDER', '599', 'RAGONVALIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('810', '54', 'N. DE SANTANDER', '660', 'SALAZAR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('811', '54', 'N. DE SANTANDER', '670', 'SAN CALIXTO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('812', '54', 'N. DE SANTANDER', '673', 'SAN CAYETANO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('813', '54', 'N. DE SANTANDER', '680', 'SANTIAGO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('814', '54', 'N. DE SANTANDER', '720', 'SARDINATA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('815', '54', 'N. DE SANTANDER', '743', 'SILOS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('816', '54', 'N. DE SANTANDER', '800', 'TEORAMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('817', '54', 'N. DE SANTANDER', '810', 'TIBU');
INSERT INTO `intranet_colombia_ciudades` VALUES ('818', '54', 'N. DE SANTANDER', '820', 'TOLEDO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('819', '54', 'N. DE SANTANDER', '871', 'VILLA CARO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('820', '54', 'N. DE SANTANDER', '874', 'VILLA DEL ROSARIO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('821', '63', 'QUINDIO', '1', 'ARMENIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('822', '63', 'QUINDIO', '111', 'BUENAVISTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('823', '63', 'QUINDIO', '130', 'CALARCA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('824', '63', 'QUINDIO', '190', 'CIRCASIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('825', '63', 'QUINDIO', '212', 'CORDOBA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('826', '63', 'QUINDIO', '272', 'FILANDIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('827', '63', 'QUINDIO', '302', 'GENOVA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('828', '63', 'QUINDIO', '401', 'LA TEBAIDA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('829', '63', 'QUINDIO', '470', 'MONTENEGRO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('830', '63', 'QUINDIO', '548', 'PIJAO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('831', '63', 'QUINDIO', '594', 'QUIMBAYA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('832', '63', 'QUINDIO', '690', 'SALENTO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('833', '66', 'RISARALDA', '1', 'PEREIRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('834', '66', 'RISARALDA', '45', 'APIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('835', '66', 'RISARALDA', '75', 'BALBOA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('836', '66', 'RISARALDA', '88', 'BELEN DE UMBRIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('837', '66', 'RISARALDA', '170', 'DOSQUEBRADAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('838', '66', 'RISARALDA', '318', 'GUATICA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('839', '66', 'RISARALDA', '383', 'LA CELIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('840', '66', 'RISARALDA', '400', 'LA VIRGINIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('841', '66', 'RISARALDA', '440', 'MARSELLA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('842', '66', 'RISARALDA', '456', 'MISTRATO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('843', '66', 'RISARALDA', '572', 'PUEBLO RICO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('844', '66', 'RISARALDA', '594', 'QUINCHIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('845', '66', 'RISARALDA', '682', 'SANTA ROSA DE CABAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('846', '66', 'RISARALDA', '687', 'SANTUARIO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('847', '68', 'SANTANDER', '1', 'BUCARAMANGA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('848', '68', 'SANTANDER', '13', 'AGUADA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('849', '68', 'SANTANDER', '20', 'ALBANIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('850', '68', 'SANTANDER', '51', 'ARATOCA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('851', '68', 'SANTANDER', '77', 'BARBOSA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('852', '68', 'SANTANDER', '79', 'BARICHARA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('853', '68', 'SANTANDER', '81', 'BARRANCABERMEJA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('854', '68', 'SANTANDER', '92', 'BETULIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('855', '68', 'SANTANDER', '101', 'BOLIVAR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('856', '68', 'SANTANDER', '121', 'CABRERA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('857', '68', 'SANTANDER', '132', 'CALIFORNIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('858', '68', 'SANTANDER', '147', 'CAPITANEJO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('859', '68', 'SANTANDER', '152', 'CARCASI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('860', '68', 'SANTANDER', '160', 'CEPITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('861', '68', 'SANTANDER', '162', 'CERRITO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('862', '68', 'SANTANDER', '167', 'CHARALA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('863', '68', 'SANTANDER', '169', 'CHARTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('864', '68', 'SANTANDER', '176', 'CHIMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('865', '68', 'SANTANDER', '179', 'CHIPATA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('866', '68', 'SANTANDER', '190', 'CIMITARRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('867', '68', 'SANTANDER', '207', 'CONCEPCION');
INSERT INTO `intranet_colombia_ciudades` VALUES ('868', '68', 'SANTANDER', '209', 'CONFINES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('869', '68', 'SANTANDER', '211', 'CONTRATACION');
INSERT INTO `intranet_colombia_ciudades` VALUES ('870', '68', 'SANTANDER', '217', 'COROMORO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('871', '68', 'SANTANDER', '229', 'CURITI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('872', '68', 'SANTANDER', '235', 'EL CARMEN DE CHUCURI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('873', '68', 'SANTANDER', '245', 'EL GUACAMAYO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('874', '68', 'SANTANDER', '250', 'EL PEÑON');
INSERT INTO `intranet_colombia_ciudades` VALUES ('875', '68', 'SANTANDER', '255', 'EL PLAYON');
INSERT INTO `intranet_colombia_ciudades` VALUES ('876', '68', 'SANTANDER', '264', 'ENCINO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('877', '68', 'SANTANDER', '266', 'ENCISO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('878', '68', 'SANTANDER', '271', 'FLORIAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('879', '68', 'SANTANDER', '276', 'FLORIDABLANCA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('880', '68', 'SANTANDER', '296', 'GALAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('881', '68', 'SANTANDER', '298', 'GAMBITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('882', '68', 'SANTANDER', '307', 'GIRON');
INSERT INTO `intranet_colombia_ciudades` VALUES ('883', '68', 'SANTANDER', '318', 'GUACA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('884', '68', 'SANTANDER', '320', 'GUADALUPE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('885', '68', 'SANTANDER', '322', 'GUAPOTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('886', '68', 'SANTANDER', '324', 'GUAVATA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('887', '68', 'SANTANDER', '327', 'GsEPSA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('888', '68', 'SANTANDER', '344', 'HATO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('889', '68', 'SANTANDER', '368', 'JESUS MARIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('890', '68', 'SANTANDER', '370', 'JORDAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('891', '68', 'SANTANDER', '377', 'LA BELLEZA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('892', '68', 'SANTANDER', '385', 'LANDAZURI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('893', '68', 'SANTANDER', '397', 'LA PAZ');
INSERT INTO `intranet_colombia_ciudades` VALUES ('894', '68', 'SANTANDER', '406', 'LEBRIJA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('895', '68', 'SANTANDER', '418', 'LOS SANTOS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('896', '68', 'SANTANDER', '425', 'MACARAVITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('897', '68', 'SANTANDER', '432', 'MALAGA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('898', '68', 'SANTANDER', '444', 'MATANZA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('899', '68', 'SANTANDER', '464', 'MOGOTES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('900', '68', 'SANTANDER', '468', 'MOLAGAVITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('901', '68', 'SANTANDER', '498', 'OCAMONTE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('902', '68', 'SANTANDER', '500', 'OIBA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('903', '68', 'SANTANDER', '502', 'ONZAGA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('904', '68', 'SANTANDER', '522', 'PALMAR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('905', '68', 'SANTANDER', '524', 'PALMAS DEL SOCORRO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('906', '68', 'SANTANDER', '533', 'PARAMO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('907', '68', 'SANTANDER', '547', 'PIEDECUESTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('908', '68', 'SANTANDER', '549', 'PINCHOTE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('909', '68', 'SANTANDER', '572', 'PUENTE NACIONAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('910', '68', 'SANTANDER', '573', 'PUERTO PARRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('911', '68', 'SANTANDER', '575', 'PUERTO WILCHES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('912', '68', 'SANTANDER', '615', 'RIONEGRO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('913', '68', 'SANTANDER', '655', 'SABANA DE TORRES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('914', '68', 'SANTANDER', '669', 'SAN ANDRES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('915', '68', 'SANTANDER', '673', 'SAN BENITO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('916', '68', 'SANTANDER', '679', 'SAN GIL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('917', '68', 'SANTANDER', '682', 'SAN JOAQUIN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('918', '68', 'SANTANDER', '684', 'SAN JOSE DE MIRANDA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('919', '68', 'SANTANDER', '686', 'SAN MIGUEL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('920', '68', 'SANTANDER', '689', 'SAN VICENTE DE CHUCURI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('921', '68', 'SANTANDER', '705', 'SANTA BARBARA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('922', '68', 'SANTANDER', '720', 'SANTA HELENA DEL OPON');
INSERT INTO `intranet_colombia_ciudades` VALUES ('923', '68', 'SANTANDER', '745', 'SIMACOTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('924', '68', 'SANTANDER', '755', 'SOCORRO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('925', '68', 'SANTANDER', '770', 'SUAITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('926', '68', 'SANTANDER', '773', 'SUCRE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('927', '68', 'SANTANDER', '780', 'SURATA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('928', '68', 'SANTANDER', '820', 'TONA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('929', '68', 'SANTANDER', '855', 'VALLE DE SAN JOSE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('930', '68', 'SANTANDER', '861', 'VELEZ');
INSERT INTO `intranet_colombia_ciudades` VALUES ('931', '68', 'SANTANDER', '867', 'VETAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('932', '68', 'SANTANDER', '872', 'VILLANUEVA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('933', '68', 'SANTANDER', '895', 'ZAPATOCA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('934', '70', 'SUCRE', '1', 'SINCELEJO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('935', '70', 'SUCRE', '110', 'BUENAVISTA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('936', '70', 'SUCRE', '124', 'CAIMITO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('937', '70', 'SUCRE', '204', 'COLOSO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('938', '70', 'SUCRE', '215', 'COROZAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('939', '70', 'SUCRE', '221', 'COVEÑAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('940', '70', 'SUCRE', '230', 'CHALAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('941', '70', 'SUCRE', '233', 'EL ROBLE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('942', '70', 'SUCRE', '235', 'GALERAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('943', '70', 'SUCRE', '265', 'GUARANDA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('944', '70', 'SUCRE', '400', 'LA UNION');
INSERT INTO `intranet_colombia_ciudades` VALUES ('945', '70', 'SUCRE', '418', 'LOS PALMITOS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('946', '70', 'SUCRE', '429', 'MAJAGUAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('947', '70', 'SUCRE', '473', 'MORROA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('948', '70', 'SUCRE', '508', 'OVEJAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('949', '70', 'SUCRE', '523', 'PALMITO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('950', '70', 'SUCRE', '670', 'SAMPUES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('951', '70', 'SUCRE', '678', 'SAN BENITO ABAD');
INSERT INTO `intranet_colombia_ciudades` VALUES ('952', '70', 'SUCRE', '702', 'SAN JUAN DE BETULIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('953', '70', 'SUCRE', '708', 'SAN MARCOS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('954', '70', 'SUCRE', '713', 'SAN ONOFRE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('955', '70', 'SUCRE', '717', 'SAN PEDRO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('956', '70', 'SUCRE', '742', 'SAN LUIS DE SINCE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('957', '70', 'SUCRE', '771', 'SUCRE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('958', '70', 'SUCRE', '820', 'SANTIAGO DE TOLU');
INSERT INTO `intranet_colombia_ciudades` VALUES ('959', '70', 'SUCRE', '823', 'TOLU VIEJO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('960', '73', 'TOLIMA', '1', 'IBAGUE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('961', '73', 'TOLIMA', '24', 'ALPUJARRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('962', '73', 'TOLIMA', '26', 'ALVARADO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('963', '73', 'TOLIMA', '30', 'AMBALEMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('964', '73', 'TOLIMA', '43', 'ANZOATEGUI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('965', '73', 'TOLIMA', '55', 'ARMERO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('966', '73', 'TOLIMA', '67', 'ATACO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('967', '73', 'TOLIMA', '124', 'CAJAMARCA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('968', '73', 'TOLIMA', '148', 'CARMEN DE APICALA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('969', '73', 'TOLIMA', '152', 'CASABIANCA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('970', '73', 'TOLIMA', '168', 'CHAPARRAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('971', '73', 'TOLIMA', '200', 'COELLO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('972', '73', 'TOLIMA', '217', 'COYAIMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('973', '73', 'TOLIMA', '226', 'CUNDAY');
INSERT INTO `intranet_colombia_ciudades` VALUES ('974', '73', 'TOLIMA', '236', 'DOLORES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('975', '73', 'TOLIMA', '268', 'ESPINAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('976', '73', 'TOLIMA', '270', 'FALAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('977', '73', 'TOLIMA', '275', 'FLANDES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('978', '73', 'TOLIMA', '283', 'FRESNO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('979', '73', 'TOLIMA', '319', 'GUAMO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('980', '73', 'TOLIMA', '347', 'HERVEO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('981', '73', 'TOLIMA', '349', 'HONDA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('982', '73', 'TOLIMA', '352', 'ICONONZO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('983', '73', 'TOLIMA', '408', 'LERIDA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('984', '73', 'TOLIMA', '411', 'LIBANO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('985', '73', 'TOLIMA', '443', 'MARIQUITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('986', '73', 'TOLIMA', '449', 'MELGAR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('987', '73', 'TOLIMA', '461', 'MURILLO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('988', '73', 'TOLIMA', '483', 'NATAGAIMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('989', '73', 'TOLIMA', '504', 'ORTEGA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('990', '73', 'TOLIMA', '520', 'PALOCABILDO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('991', '73', 'TOLIMA', '547', 'PIEDRAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('992', '73', 'TOLIMA', '555', 'PLANADAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('993', '73', 'TOLIMA', '563', 'PRADO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('994', '73', 'TOLIMA', '585', 'PURIFICACION');
INSERT INTO `intranet_colombia_ciudades` VALUES ('995', '73', 'TOLIMA', '616', 'RIOBLANCO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('996', '73', 'TOLIMA', '622', 'RONCESVALLES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('997', '73', 'TOLIMA', '624', 'ROVIRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('998', '73', 'TOLIMA', '671', 'SALDAÑA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('999', '73', 'TOLIMA', '675', 'SAN ANTONIO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1000', '73', 'TOLIMA', '678', 'SAN LUIS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1001', '73', 'TOLIMA', '686', 'SANTA ISABEL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1002', '73', 'TOLIMA', '770', 'SUAREZ');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1003', '73', 'TOLIMA', '854', 'VALLE DE SAN JUAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1004', '73', 'TOLIMA', '861', 'VENADILLO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1005', '73', 'TOLIMA', '870', 'VILLAHERMOSA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1006', '73', 'TOLIMA', '873', 'VILLARRICA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1007', '76', 'VALLE DEL CAUCA', '1', 'CALI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1008', '76', 'VALLE DEL CAUCA', '20', 'ALCALA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1009', '76', 'VALLE DEL CAUCA', '36', 'ANDALUCIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1010', '76', 'VALLE DEL CAUCA', '41', 'ANSERMANUEVO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1011', '76', 'VALLE DEL CAUCA', '54', 'ARGELIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1012', '76', 'VALLE DEL CAUCA', '100', 'BOLIVAR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1013', '76', 'VALLE DEL CAUCA', '109', 'BUENAVENTURA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1014', '76', 'VALLE DEL CAUCA', '111', 'GUADALAJARA DE BUGA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1015', '76', 'VALLE DEL CAUCA', '113', 'BUGALAGRANDE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1016', '76', 'VALLE DEL CAUCA', '122', 'CAICEDONIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1017', '76', 'VALLE DEL CAUCA', '126', 'CALIMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1018', '76', 'VALLE DEL CAUCA', '130', 'CANDELARIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1019', '76', 'VALLE DEL CAUCA', '147', 'CARTAGO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1020', '76', 'VALLE DEL CAUCA', '233', 'DAGUA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1021', '76', 'VALLE DEL CAUCA', '243', 'EL AGUILA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1022', '76', 'VALLE DEL CAUCA', '246', 'EL CAIRO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1023', '76', 'VALLE DEL CAUCA', '248', 'EL CERRITO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1024', '76', 'VALLE DEL CAUCA', '250', 'EL DOVIO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1025', '76', 'VALLE DEL CAUCA', '275', 'FLORIDA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1026', '76', 'VALLE DEL CAUCA', '306', 'GINEBRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1027', '76', 'VALLE DEL CAUCA', '318', 'GUACARI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1028', '76', 'VALLE DEL CAUCA', '364', 'JAMUNDI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1029', '76', 'VALLE DEL CAUCA', '377', 'LA CUMBRE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1030', '76', 'VALLE DEL CAUCA', '400', 'LA UNION');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1031', '76', 'VALLE DEL CAUCA', '403', 'LA VICTORIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1032', '76', 'VALLE DEL CAUCA', '497', 'OBANDO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1033', '76', 'VALLE DEL CAUCA', '520', 'PALMIRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1034', '76', 'VALLE DEL CAUCA', '563', 'PRADERA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1035', '76', 'VALLE DEL CAUCA', '606', 'RESTREPO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1036', '76', 'VALLE DEL CAUCA', '616', 'RIOFRIO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1037', '76', 'VALLE DEL CAUCA', '622', 'ROLDANILLO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1038', '76', 'VALLE DEL CAUCA', '670', 'SAN PEDRO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1039', '76', 'VALLE DEL CAUCA', '736', 'SEVILLA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1040', '76', 'VALLE DEL CAUCA', '823', 'TORO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1041', '76', 'VALLE DEL CAUCA', '828', 'TRUJILLO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1042', '76', 'VALLE DEL CAUCA', '834', 'TULUA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1043', '76', 'VALLE DEL CAUCA', '845', 'ULLOA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1044', '76', 'VALLE DEL CAUCA', '863', 'VERSALLES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1045', '76', 'VALLE DEL CAUCA', '869', 'VIJES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1046', '76', 'VALLE DEL CAUCA', '890', 'YOTOCO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1047', '76', 'VALLE DEL CAUCA', '892', 'YUMBO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1048', '76', 'VALLE DEL CAUCA', '895', 'ZARZAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1049', '81', 'ARAUCA', '1', 'ARAUCA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1050', '81', 'ARAUCA', '65', 'ARAUQUITA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1051', '81', 'ARAUCA', '220', 'CRAVO NORTE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1052', '81', 'ARAUCA', '300', 'FORTUL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1053', '81', 'ARAUCA', '591', 'PUERTO RONDON');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1054', '81', 'ARAUCA', '736', 'SARAVENA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1055', '81', 'ARAUCA', '794', 'TAME');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1056', '85', 'CASANARE', '1', 'YOPAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1057', '85', 'CASANARE', '10', 'AGUAZUL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1058', '85', 'CASANARE', '15', 'CHAMEZA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1059', '85', 'CASANARE', '125', 'HATO COROZAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1060', '85', 'CASANARE', '136', 'LA SALINA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1061', '85', 'CASANARE', '139', 'MANI');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1062', '85', 'CASANARE', '162', 'MONTERREY');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1063', '85', 'CASANARE', '225', 'NUNCHIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1064', '85', 'CASANARE', '230', 'OROCUE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1065', '85', 'CASANARE', '250', 'PAZ DE ARIPORO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1066', '85', 'CASANARE', '263', 'PORE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1067', '85', 'CASANARE', '279', 'RECETOR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1068', '85', 'CASANARE', '300', 'SABANALARGA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1069', '85', 'CASANARE', '315', 'SACAMA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1070', '85', 'CASANARE', '325', 'SAN LUIS DE PALENQUE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1071', '85', 'CASANARE', '400', 'TAMARA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1072', '85', 'CASANARE', '410', 'TAURAMENA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1073', '85', 'CASANARE', '430', 'TRINIDAD');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1074', '85', 'CASANARE', '440', 'VILLANUEVA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1075', '86', 'PUTUMAYO', '1', 'MOCOA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1076', '86', 'PUTUMAYO', '219', 'COLON');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1077', '86', 'PUTUMAYO', '320', 'ORITO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1078', '86', 'PUTUMAYO', '568', 'PUERTO ASIS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1079', '86', 'PUTUMAYO', '569', 'PUERTO CAICEDO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1080', '86', 'PUTUMAYO', '571', 'PUERTO GUZMAN');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1081', '86', 'PUTUMAYO', '573', 'LEGUIZAMO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1082', '86', 'PUTUMAYO', '749', 'SIBUNDOY');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1083', '86', 'PUTUMAYO', '755', 'SAN FRANCISCO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1084', '86', 'PUTUMAYO', '757', 'SAN MIGUEL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1085', '86', 'PUTUMAYO', '760', 'SANTIAGO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1086', '86', 'PUTUMAYO', '865', 'VALLE DEL GUAMUEZ');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1087', '86', 'PUTUMAYO', '885', 'VILLAGARZON');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1088', '88', 'SAN ANDRES', '1', 'SAN ANDRES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1089', '88', 'SAN ANDRES', '564', 'PROVIDENCIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1090', '91', 'AMAZONAS', '1', 'LETICIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1091', '91', 'AMAZONAS', '263', 'EL ENCANTO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1092', '91', 'AMAZONAS', '405', 'LA CHORRERA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1093', '91', 'AMAZONAS', '407', 'LA PEDRERA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1094', '91', 'AMAZONAS', '430', 'LA VICTORIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1095', '91', 'AMAZONAS', '460', 'MIRITI - PARANA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1096', '91', 'AMAZONAS', '530', 'PUERTO ALEGRIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1097', '91', 'AMAZONAS', '536', 'PUERTO ARICA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1098', '91', 'AMAZONAS', '540', 'PUERTO NARIÑO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1099', '91', 'AMAZONAS', '669', 'PUERTO SANTANDER');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1100', '91', 'AMAZONAS', '798', 'TARAPACA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1101', '94', 'GUAINIA', '1', 'INIRIDA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1102', '94', 'GUAINIA', '343', 'BARRANCO MINAS');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1103', '94', 'GUAINIA', '663', 'MAPIRIPANA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1104', '94', 'GUAINIA', '883', 'SAN FELIPE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1105', '94', 'GUAINIA', '884', 'PUERTO COLOMBIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1106', '94', 'GUAINIA', '885', 'LA GUADALUPE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1107', '94', 'GUAINIA', '886', 'CACAHUAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1108', '94', 'GUAINIA', '887', 'PANA PANA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1109', '94', 'GUAINIA', '888', 'MORICHAL');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1110', '95', 'GUAVIARE', '1', 'SAN JOSE DEL GUAVIARE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1111', '95', 'GUAVIARE', '15', 'CALAMAR');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1112', '95', 'GUAVIARE', '25', 'EL RETORNO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1113', '95', 'GUAVIARE', '200', 'MIRAFLORES');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1114', '97', 'VAUPES', '1', 'MITU');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1115', '97', 'VAUPES', '161', 'CARURU');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1116', '97', 'VAUPES', '511', 'PACOA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1117', '97', 'VAUPES', '666', 'TARAIRA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1118', '97', 'VAUPES', '777', 'PAPUNAUA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1119', '97', 'VAUPES', '889', 'YAVARATE');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1120', '99', 'VICHADA', '1', 'PUERTO CARREÑO');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1121', '99', 'VICHADA', '524', 'LA PRIMAVERA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1122', '99', 'VICHADA', '624', 'SANTA ROSALIA');
INSERT INTO `intranet_colombia_ciudades` VALUES ('1123', '99', 'VICHADA', '773', 'CUMARIBO');

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
  `movil` varchar(50) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `paginaweb` varchar(50) DEFAULT NULL,
  `cupo` double(50,0) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `fechaCreacion` datetime DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`cardcode`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intranet_trust_clientes
-- ----------------------------
INSERT INTO `intranet_trust_clientes` VALUES ('1', '176702', 'SALAMANCA HUMBERTO Y/O EQUITAN                              ', 'CALLE 12 A N 21-38            ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('2', '348508', 'VELASQUEZ HERMES/LOCAL 1032-1063 EL GRAN SAN                ', 'CALLE 14 A SUR 18-32          ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('3', '3139979', 'CRUZ JUAN  Y/O MONTACARGAS CENTENARIO                       ', 'CRA 97 16 B 30                ', null, '4041632', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('4', '3151764', 'GARCIA JUAN MANUEL Y/O IMPORTADORA CHAMPION S.A.S           ', 'CALLE 12 N 28-36              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('5', '3161400', 'ZAMORA CARLOS', 'CRA 53 N 14-41/45 PUENTE ARAND', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('6', '3182357', 'CORONEL CAMARGO JAIRO Y/O MAQUIRODAFER LTDA                 ', 'CALLE 13 N  26-79             ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('7', '3209461', 'BOLA¥OS ALBERTO                                             ', 'CALLE 6 B 71 F 9 PISO 3 BAVARI', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('8', '3250453', 'MORALES GILBERTO Y/O FERREISTRUMENTOS M Y M                 ', 'CRA 20 N 15-74                ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('9', '4059001', 'MOJICA JORGE ALBERTO Y/O TECINCOL LTDA                      ', 'CL 12 B N 26 - 66             ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('10', '4098696', 'BARON PAULINO Y /O FERRETERIA TUBOS Y ACCESORIOS P Y B      ', 'CRA 26 N 11-18                ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('11', '4104549', 'PEREZ LUIS HUMBERTO Y/O HIDRAMAG                            ', 'Carrera 53 n 15-86            ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('12', '4504805', 'FRANCO ECHEVERRY JAVIER Y/O FERRETERIA LOS INDUSTRIALES     ', 'CALLE 13 N 21-01              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('13', '5219384', 'CABEZAS FELIX Y/O CHIKSAN Y VALVULAS                        ', 'CALE 5A 20 30                 ', null, '3602784', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('14', '5712595', 'TELLEZ ELBERT                                               ', '                              ', null, null, null, null, '                              ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('15', '5916680', 'GARCIA CASAS MAURICIO Y/O REPRESENTACIONES MGC LTDA         ', 'CRA 28 12 A 11                ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('16', '5971744', 'LOZANO WILMER  Y/O RODY TRANSMISIONES LTDA                  ', 'CRA 24 N 12-27                ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('17', '5975880', 'MORENO DAVID Y/O COMERCIALIZADORA VALPETROL                 ', 'CALLE 12 B N. 23 - 15         ', null, '4085061', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('18', '7221646', 'GARCIA GUSTAVO                                              ', 'CRA 16 N 25-76 YOPAL CASANARE ', null, '2147483647', null, null, 'YOPAL CASANARE                ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('19', '7313112', 'PACHON NU¥EZ HENRY Y/O FERREHIDROVAL S.A.S                  ', 'CARRERA 24 N 12-55            ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('20', '7618172', 'RIVERA ALEXANDER                                            ', 'CALLE 22 N 22-47              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('21', '8304725', 'HURTADO ALBERTO Y/O FERRETERIA FERROVALVULAS S.A.           ', 'CRA 50 N. 42 16               ', null, '3841500', null, null, 'MEDELLIN                      ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('22', '8711072', 'LANCHEROS GERMAN                                            ', '                              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('23', '9350558', 'DIAZ JESUS Y /O MADEINTEC                                   ', 'CRA 23 N 12 B 15              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('24', '9398224', 'JIMENEZ HERNANDEZ JAVIER                                    ', 'CALLE 12 N 27-63/CR 70 C 1-28 ', null, '2147483647', null, null, 'INT 8 AP 503   BOGOTA         ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('25', '9398824', 'ALVAREZ LUIS ALIRIO Y/O PETRO EXA LTDA                      ', 'CRA 29 N 10-78                ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('26', '9655764', 'CABALLERO HENRY  ONEL Y/O SLS                               ', 'CRA 26 N 22 B 15              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('27', '10163003', 'MAHECHA LEOVIGILDO Y/O FERRETERIA VALVULAS Y ACCESORIOS     ', 'CALLE 12 B N 26-22            ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('28', '11319538', 'ORTIZ LUIS FERNANDO /OFICINA HT                             ', 'CALLE 13 N 24-37 OF 207       ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('29', '11387372', 'CRUZ JAIRO Y/O MECANIZADOS INDUSTRIALES                     ', 'CRA 21 N 16-21                ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('30', '12112332', 'PARAMO RAUL Y/O SURTIFER                                    ', 'CALLE 15 N 1-07 NEIVA         ', null, '388738048', null, null, 'NEIVA                         ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('31', '12127370', 'PEREZ HENRY                                                 ', '                              ', null, null, null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('32', '12129982', 'BERNAL TOVAR ALBERTO Y/O FERREPROYECTOS LTDA                ', 'CALLE 12 B 26-35              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('33', '13374712', 'MANDON CASTRO FREDY Y/O MATERIALES FM                       ', 'CALLE 30 N 30-28              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('34', '13468367', 'BARON PEREZ NARCISO Y/O POZOVAL LTDA                        ', 'CRA 25 N 12-65                ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('35', '13472699', 'PINEDA VILLAMIZAR MARIO Y/O MEDICONT SAS                    ', 'CALLE 12 N 28-31 OF 352       ', null, '2147483647', null, null, 'CENTRO EMPRESARIAL RICAUTE BGT', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('36', '13615653', 'TELLEZ GARCIA NESTOR Y/O TELLTEX S.A                        ', 'AV TRON OCCIDE N 18-76 BOD B10', null, '2147483647', null, null, 'MOSQUERA                      ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('37', '13616127', 'ARIZA MAURICIO                                              ', 'CRA 78 N 70-18 BOSA           ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('38', '13616754', 'ORTIZ ADOLFO Y/O LAMFER                                     ', 'CRA 25 12 73                  ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('39', '13617328', 'SOSA TELLEZ ALDEMAR                                         ', 'CRA 78 C N 70-08              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('40', '13812289', 'HIPOLITO TELLEZ                                             ', 'CALLE 13 No 26-57             ', null, '3603299', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('41', '13880234', 'PENDAS MANUEL Y/O INTERAMERICANA DE TUBERIAS                ', 'CALLE 22 N 22-47              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('42', '13886970', 'PENDAS EMILIO Y/O COMPA¥IA FERRETERA ASTURIANA              ', 'CALLE 22 N 22-47              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('43', '13894673', 'ESCOBAR JULIO CESAR Y/O UNIVERSAL DE TUBERIAS               ', 'CRA 25 A N 11-19              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('44', '13922681', 'PENAGOS GARICA LIBARDO                                      ', 'TRANSV 14 N 21-39 DUITAMA BOYA', null, '2147483647', null, null, 'DUITAMA                       ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('45', '14200402', 'RUBIO ADOLFO Y/O FERRETERIA SICAR                           ', 'CRA 25 N 15-36                ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('46', '14266721', 'MENDEZ LUIS ENRIQUE Y/O FERRETERIA ESPA¥OLA                 ', 'CRA 25 N 15-64                ', null, '3704099', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('47', '14268506', 'MENDEZ AGUSTIN  Y/O DISTRIBUIDORA INOXIDABLE                ', 'CALLE 12 B N 24-32            ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('48', '14935654', 'MONTEALEGRE IVAN Y/O TUBOPHERS                              ', 'CALLE 29 SUR 10 B 17          ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('49', '16582044', 'URQUIJO VICENTE Y/O INDUSTRIAS VIUR                         ', 'KM 1 PUNTO CINCO CANDELARIA VA', null, '2147483647', null, null, 'VALLE  CALI                   ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('50', '16596059', 'RAMIREZ FERNANDO                                            ', 'CRA 51 A N 127-49             ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('51', '17012862', 'MARTINEZ ENRIQUE Y/O COMERCIALIZADORA MARVIA LTDA           ', 'AVDA 6 N 19 A 81              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('52', '17013203', 'CLAVIJO PERDOMO LUIS Y/O GEOEXPLORACIONES S.A               ', 'CRA 70 C N 124-22             ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('53', '17068174', 'ROJAS HUMBERTO Y/O INDUSTRIAS ASOCIADAS                     ', 'CRA 27 NO 13-95               ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('54', '17073114', 'PRIETO HECTOR Y/O EL HIDRANTE                               ', 'CL 13 26 45                   ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('55', '17084882', 'OSPINA FABIO Y/O TUVAL TECH LTDA                            ', 'CALLE 18 N 28 A 04            ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('56', '17108191', 'PEDRAZA JOSSE DEL CARMEN Y/O FERRETERIA PEDRAZA             ', 'CRA 27 N 11-43                ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('57', '17135379', 'RODRIGUEZ ALONSO Y/O FERRETERIA RODRIGUEZ                   ', 'CALLE 12 B N 23-18            ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('58', '17194355', 'ACOSTA JOSE FERNANDO Y/O A.M. INDUSTRIAL SUPPLIES LTDA      ', 'CRA 27 N. 13 15 OF 408        ', null, '3602218', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('59', '17333250', 'MAHECHA CARLOS JULIO Y/O SERVICE PETROLEUM COMPANY LTDA     ', 'CRA 18 N 14-28                ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('60', '19060434', 'RODRIGUEZ JORGE Y/O COMERCIALIZADORA M.I                    ', 'CRA 27 N 13-23                ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('61', '19067255', 'BAYONA LUIS CARLOS Y/O SERVICIOS ESPECIALES DE VAPOR        ', 'CR 29 12 B 34 CAL 12 B 28 88  ', null, '2147483647', null, null, 'LOCA 102-109 BOGOTA           ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('62', '19068011', 'PINTO HERNANDO Y/O DISTRIBUCIONES INDUSTRIALES              ', '                              ', null, null, null, null, '                              ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('63', '19070497', 'MORENO ALFONSO Y/O COMERCIALIZADORA VALPETROL               ', 'CALLE 22 N 22-20              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('64', '19109738', 'ZAPATA RODRIGUEZ JULIO ROBERTO Y/O PRODUCCIONES A Y Z       ', 'CRA 23 N 12-23                ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('65', '19116449', 'ALDANA JOSE RAMON Y/O HERMAFIL DE COLOMBIA                  ', 'CALLE 12 B N 26-73            ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('66', '19126970', 'MATEUS LAUREANO Y/O FERRETERIA CHEQUES Y VALVULAS           ', 'CALLE 12 B N 24-40            ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('67', '19148210', 'FAJARDO HILDEBRANDO Y/O SERVIACUEDUCTO LTDA                 ', 'CRA 50 18 05                  ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('68', '19153221', 'PARAMO ALVARO Y/O DISTRIVAPOR                               ', 'CALLE 12 B N 23-24            ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('69', '19231846', 'RAMIREZ ALDUVAR Y/O DEPOSITO RAMIREZ                        ', 'CALLE 51 SUR No 80-24         ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('70', '19253648', 'TARQUINO JAIRO Y/O FERREORIENTE LTDA                        ', 'CL 13 25 95                   ', null, '3601624', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('71', '19261588', 'ARIAS HIPARCO Y/O REC LTDA                                  ', 'AUTP MEDELLIN KM 305 COST SUR ', null, '2147483647', null, null, 'PRIMERA ETAPA BODEGA 57BOGOTA ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('72', '19281902', 'SIERRA ISMAEL Y/O TERMOVAL S.A                              ', 'CRA 22 N 15 07                ', null, '2470100', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('73', '19296848', 'PULIDO LUIS OLIVERIO Y/O TECNITANQUES                       ', '                              ', null, '2147483647', null, null, 'SOACHA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('74', '19336373', 'MORALES ALFREDO                                             ', 'CLL 12B 24 55                 ', null, '3705978', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('75', '19338177', 'VARGAS NESTOR Y/O AISLASER                                  ', 'CALLE 7O C N 111 A 70         ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('76', '19343206', 'RUBIO FERNANDO Y/O EXCEDENTES INDUSTRIALES LTDA             ', 'CRA 28 N 8-24                 ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('77', '19345872', 'CAMELO ALFONSO Y/O INDUPROSER LTDA                          ', 'CALLE 12 B 23 - 37            ', null, '2471636', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('78', '19353306', 'GARZON GERMAN Y/O IMPORTACIONES GEGAR LTDA                  ', 'AV CALLE 19 N. 19 - 42        ', null, '2474214', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('79', '19363530', 'CORTES MACIAS LUIS Y/O PASCO FERRETERIA                     ', 'CRA 25 N 13-12                ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('80', '19398400', 'HERRERA LUIS Y/O FERRESEMPA LTDA                            ', 'CRA 26 N 12 B 18              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('81', '19405625', 'CORREDOR OMAR Y/O FERRTEERIA SAN ROQUE                      ', 'CRA 27 13 39                  ', null, '2015555', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('82', '19406243', 'DAZA ROBERTO Y/O BILLARES EURO ITALIA Y/O BILL GRAN DANES   ', 'CRA 26 N 9-75 /CRA 28 N 11-82 ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('83', '19417523', 'CONTRERAS EDGAR EDUARDO Y/O GEOHIDRAULICAS LTDA             ', 'CRA 99 N 157 A 56             ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('84', '19437574', 'CASTRO FEDERMAN Y/O COLTUBOS STEEL                          ', 'CRA 25 A N 10-70              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('85', '19451137', 'BARRETO FREDY Y/O COMTVAL                                   ', 'CRA 23 N 12-65                ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('86', '19453936', 'URUE¥A HECTOR Y/O FERREINSTRUMENTACION LTDA                 ', 'CALLE 13 24-37 OFI 303        ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('87', '19454903', 'SOSSA VELASQUEZ RAFAEL Y/O FERRETERIA INTERVALVULAS         ', 'CALLE 12 B N 26-59            ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('88', '19457995', 'OVALLE WISTON                                               ', 'CRA 23 12 B 30                ', null, '3607905', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('89', '19482192', 'MATEUS ALONSO Y/O FERRETERIA PETROVAL LTDA                  ', 'CRA 24 N 12-59                ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('90', '19491767', 'HERNANDEZ DANIEL Y/O COIDCOL LTDA                           ', 'CRA 26 N 12 A-17              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('91', '19693003', 'PERDOMO ALEJANDRO Y/O GIREM                                 ', 'CRA 54 N 16 44                ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('92', '23351134', 'MONIJA NANCY Y/O DISTRINFER LTDA                            ', 'CRA 27 N 13-15 LOCAL 407      ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('93', '28307372', 'MARINA SANTAMARIA                                           ', '                              ', null, null, null, null, '                              ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('94', '30715715', 'CALVACHE MONICA Y/O INDUSTRIA Y MERCADSEO                   ', 'CARRERA 27 N 15-31            ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('95', '34512636', 'ORTIZ PATI¥O MARIA ISABEL Y/O COMERCIALIZADORA SALVAMER     ', 'CRA 10 N 12-12                ', null, '2147483647', null, null, 'CALI                          ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('96', '39776307', 'CLAVIJO JULIA CONSUELO Y/O COLSWISS                         ', 'CRA 50 C N 130-14 CIU JARDIN N', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('97', '41540097', 'CARDENAS AYDA LUZ Y/O FERRENIPLES DE COLOMBIA LTDA          ', 'CRA 24 N 12-77                ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('98', '51554408', 'URUE¥A FLOR Y/O COMERCIALIZADORA VALPETROL                  ', 'CALLE 12 B N. 23 - 15         ', null, '4085061', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('99', '51765756', 'BARRENECHE  MARTHA ISABEL Y/O FERRETERIA INDUVAPOR          ', 'CALLE 12 B 26-11              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('100', '51799897', 'MORALES ALBA Y/O TUBERIAS VALVULAS Y FILTROS                ', 'CALLE 12 B N  24-25           ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('101', '51974811', 'MARTINEZ LIDA Y/O SURAMENRICANA DE IMPLEMENTOS              ', 'CL 12 B 26 45                 ', null, '2772866', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('102', '52079179', 'CAMPOS ANDREA Y/O DORADOS Y PLATEADOS RABY                  ', 'CRA 70 A BIS N 23-18          ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('103', '52211928', 'VALERO JULIETH Y/O PROIMCOL E.U.                            ', 'CRA 104 N 13 D 48 LOCAL 78    ', null, '2147483647', null, null, 'ZONA FRANCA FONTIBON  BOGOTA  ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('104', '52979281', 'PARAMO BERNAL CAROLINA  Y/O  FERREIMPORTACIONES J.D         ', 'CALLE 22 C 20-12              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('105', '53083267', 'GARCIA BOLA¥OS CATALINA                                     ', 'CL 12 B 24 32                 ', null, '2771989', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('106', '70710703', 'AGUILAR CARLOS Y/0 IMPWTUVl S.A.S                           ', 'CRA 26 N 10-03 L 42           ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('107', '74343062', 'ALVAREZ RAMIRO Y/O ACCEPETROL LTDA                          ', 'CALLE 18 A SUR N 29 A-35      ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('108', '79104967', 'NEIRA GARAY ALVARO Y/O METALCOMER LTDA                      ', 'CL 17 A 16 - 23               ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('109', '79116819', 'ROJAS ANTONIO  Y/O SETEFER LTDA                             ', 'CRA 27 N 13-15 OF 308         ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('110', '79134344', 'MORENO JUAN CARLOS Y/O INDUSTRIVAL Y CIA LTDA               ', 'CLL 12 B N 28-69              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('111', '79262062', 'BORJA CARLOS Y/O FENISCO                                    ', 'CRA 23 B 12 B 45              ', null, '3603478', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('112', '79279159', 'RUEDA EXCELINO                                              ', 'CRA 105 A N 72-15 APTO 1015   ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('113', '79291888', 'RUIZ ALBERTO Y/O METAL FORMING                              ', 'AVD CALLE 13 N 68 D 07        ', null, '2147483647', null, null, 'BOGOTA ZONA INDUSTRIAL MONTEVI', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('114', '79296466', 'RATIVA POSADA EDGAR Y/O IMPORTADORA DISTUPETROL             ', 'CL 12 B 28 93                 ', null, '2370164', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('115', '79321004', 'AVILA GUILLERMO Y/O INDUFERCOL                              ', 'CALLE 12 B N 26-15            ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('116', '79323793', 'MATEUS JESUS ORLANDO Y/O  OMM                               ', 'CALLE 12 B 26-35              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('117', '79325823', 'BORJA BERNARDO Y/O FERREISTRUMENTACION FABORME S.A.S        ', 'CRA 23 N 12 B -45             ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('118', '79346267', 'MATEUS JOSE Y/O IMPOVAL                                     ', 'CALLE 12 N 27-05              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('119', '79368647', 'RICO ALEXANDER Y/O DISTRICALDERAS                           ', 'CRA 26 N 12 B 49              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('120', '79381162', 'TRUJILLO JORGE Y/O TUBOS CO                                 ', 'CALLE 13 N 69-41              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('121', '79403500', 'NU¥EZ PABLO Y/O DIMPOR LTDA                                 ', 'CL 13 26 27                   ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('122', '79404049', 'RODRIGUEZ HUERTAS JAIME Y/O FERRETERIA ELITEC               ', 'CRA 26 N 12 A-18              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('123', '79422822', 'BOLIVAR LEONARDO                                            ', 'CL 12 B 23 43                 ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('124', '79429757', 'PACHECO LUIS ENRIQUE Y/O TUVALREP E.U                       ', 'CALLE 13 N 22-72              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('125', '79448248', 'ROMERO RICARDO Y/O FERREINDAR S.A.S                         ', 'CRA 27 N 13-15                ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('126', '79464732', 'SILVA MAURICIO                                              ', '                              ', null, null, null, null, '                              ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('127', '79483337', 'NU¥EZ EDGAR Y/O SURESCO LTDA                                ', 'CALLE 13 N 25-34              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('128', '79512334', 'ARIAS RAMOS NELSON Y/O DRAIWOL                              ', 'CRA 72 B 2 - 15 SUR           ', null, '4514536', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('129', '79515927', 'AREVALO NELSON Y/O ZONA FRANA COLOMBIA                      ', 'CLL 12 22 24                  ', null, '2011163', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('130', '79519989', 'LOPEZ FERNANDO  Y/O FERRETERIA LOPEZ HERMANOS               ', 'CALLE 12 A N 27-93 PISO 3     ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('131', '79523422', 'RAMIREZ MOYANO AUGUSTO Y/O LLANO POZOS SAS                  ', 'TV 93 53 48 IN 7              ', null, '320', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('132', '79526726', 'FORERO MIGUEL ALFONSO                                       ', '                              ', null, null, null, null, '                              ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('133', '79534298', 'NU¥EZ ADONAY Y/O SUMINISTROS Y MECANIZADOS LTDA             ', 'CALLE 13 N 24-37              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('134', '79570548', 'PRIETO EDWARD                                               ', 'CALLE 13 N 26-45              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('135', '79575034', 'ECHEVERRY DIEGO Y/O FERREIMPORTACIONES DIAL                 ', 'CRA 26 N 12-31                ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('136', '79576452', 'CAMACHO RICARDO Y/O SAVIFER LTDA                            ', 'CRA 25 N 12 73                ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('137', '79582708', 'ABRIL HERNANDEZ CARLOS ALBERTO                              ', 'CRA 23 N 12 B 39              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('138', '79629136', 'CAMACHO ALEXANDER                                           ', 'CRA 26 N 12-31                ', null, '3603215', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('139', '79635961', 'DURAN TOVAR OSCAR Y/O FERRETERIA SANITUBO                   ', 'CRA 15 N 21-67                ', null, '776715050', null, null, 'BUCARAMANGA                   ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('140', '79694450', 'OSPINA JUAN CARLOS Y/O FERROSPINA                           ', 'CRA 25 N 12 B 11              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('141', '79702961', 'GALEANO NELSON                                              ', '                              ', null, null, null, null, '                              ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('142', '79729696', 'RODRIGUEZ RODRIGO Y/O COMERCIALIZADORA VALFER               ', 'CALLE 22 A N 22-59            ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('143', '79826509', 'MORENO CARLOS ENRIQUE Y/O INSTRUMITE LTDA                   ', 'CRA 28 N 11-67 LOCAL 430      ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('144', '79849238', 'PIRATIVA DIAZ LUIS GABRIEL                                  ', 'CRA 9 17 99                   ', null, '2147483647', null, null, 'FUNZA                         ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('145', '79849868', 'GARZON CARLOS Y/O VALVATEC S.A.S.                           ', 'CRA 82 N 32 05                ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('146', '79895876', 'BARON EUSEBIO/FABRIACCESORIO                                ', 'CLL 12 B 24 42                ', null, '2471064', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('147', '79973427', 'CIFUENTES BOLIVAR WILSON Y/O METALPLUS S.A.                 ', 'CRA 35 10 42                  ', null, '2473396', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('148', '79974695', 'CASAS JUAN CARLOS Y/O VEHICARS                              ', 'CRA 50 N 8-37 SUR             ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('149', '80012633', 'SILVA CRISTIAN DAVID Y/O AMERICANA DE TUBERIAS              ', 'CALLE 11 N 26-49              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('150', '80013520', 'GONZALEZ JONNY                                              ', 'CALLE 12 B N 28-71            ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('151', '80048877', 'BARON ARQUIMEDES Y/O ABTUBOPOZOS                            ', 'CALLE 12 N 26-06              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('152', '80054081', 'GALEANO NESTOR                                              ', 'CRA 130N 145-45 APT 405 CEDRIT', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('153', '80151135', 'TELLEZ JAISON                                               ', '                              ', null, null, null, null, '                              ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('154', '80169792', 'RAMIREZ NU¥EZ ALEJANDRO Y/O M  & E                          ', 'CRA 22 N 12 B 31              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('155', '80202419', 'MARULANDA CESAR Y/O TOVAR CARLOS IMPORTADORA PETROINDUSTRIAL', 'CRA 22 N 12 B 09              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('156', '80272806', 'PAEZ ALVARO Y/O CALDERAS Y CHURRUSCOS  DE COLOMBIA          ', 'CRA 77 HY N 65 J 44 SUR BOSA  ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('157', '80354626', 'RODRIGUEZ WILLIAM Y/O RIEGOS Y ACUEDUCTOS                   ', 'CL 11N 14 58                  ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('158', '80384242', 'AVILA RICARDO Y/O FERRETERIA AVIFER                         ', 'CRA 24 12 66                  ', null, '3713463', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('159', '80720643', 'RICO NU¥EZ SEBASTIAN Y/O DISEFER LTDA                       ', 'CA 26 N 12 B 79               ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('160', '80748538', 'BARRAGAN CIFUENTES RONALD Y/O R Y M                         ', 'AV CRA 30 N 1 F 33            ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('161', '80792374', 'GARAVITO YESID Y/O SPEM DE COLOMBIA SAS                     ', 'CALLE 12 B 23 11              ', null, '3060598', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('162', '80803732', 'AMAYA LEONARDO                                              ', 'CALLE 12 B 26 35              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('163', '86829062', 'CASTRO PEREZ ALIRIO Y/O DEPOSITO C                          ', 'CRA 44 A N 44 27 URBA EI PARQU', null, '2147483647', null, null, 'BARRANQUILLA                  ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('164', '91223191', 'PINZON JAVIER Y/O FERRETERIA IMHERVAL LTDA                  ', 'CL 12 N. 28-44                ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('165', '93122818', 'BARRIOS RUBEN Y/O DISTRITUBERIAS RB                         ', 'CL 12 N 23 - 07               ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('166', '93150390', 'LOZANO ULICES Y/O FERRETERIA LOZANO                         ', 'CRA 22 N 12 A-62              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('167', '93200377', 'PADILLA CAICEDO NICOLAS Y/O TALLER TOLIMAFER                ', 'CRA 23 N 12 B 10              ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('168', '93203830', 'SANCHEZ ACOSTA ARCESIO Y/O COINDUFER Y CIA TDA              ', 'DIAG CALLE 15 N 25-20 OF 407  ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('169', '860057091', 'SANABRIA JORGE Y/O FERRETERIA TUBOFER                       ', 'CALLE 12 A N 21-67            ', null, '2147483647', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('170', '860528792', 'FERRETERIA SATEL Y CIA LTDA                                 ', 'CL 13 26 57                   ', null, '3603299', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('171', '900314982', 'TRUST CORPORATION S.A.S.                                    ', 'CALLE 13 26 57                ', null, '3603299', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('172', '1022342275', 'FLECHAS KELLY Y/O COMERCIALIZADORA RFC SAS                  ', 'CLL 12 N 27 80                ', null, '4083444', null, null, 'BOGOTA                        ', null, null, null);
INSERT INTO `intranet_trust_clientes` VALUES ('173', '1032447659', 'TELLEZ SANTAMARIA ALEJANDRO                                 ', 'CALLE 13 26 57                ', null, '3603299', null, null, 'BOGOTA                        ', null, null, null);

-- ----------------------------
-- Table structure for `intranet_trust_clientes_archivos`
-- ----------------------------
DROP TABLE IF EXISTS `intranet_trust_clientes_archivos`;
CREATE TABLE `intranet_trust_clientes_archivos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardcode` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comentarios` text,
  `fecha` date DEFAULT NULL,
  `tipo_archivo` varchar(40) DEFAULT NULL,
  `n_adjunto` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intranet_trust_clientes_archivos
-- ----------------------------
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('1', 'C1013590018', '1', 'juan carlos romero', '2017-08-09', null, null);
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('2', 'C1013590018', '1', 'Sui la bandera de argentina', '2017-08-09', null, 'ARGENTINA.png');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('3', '', null, null, '2017-08-24', 'firma', '');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('4', '', null, null, '2017-08-24', 'cheque', '');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('5', '', null, null, '2017-08-24', 'otro', '');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('6', '1030521287', null, null, '2017-08-24', 'firma', '');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('7', '1030521287', null, null, '2017-08-24', 'cheque', '');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('8', '1030521287', null, null, '2017-08-24', 'otro', '');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('9', '1030521287', null, null, '2017-08-24', 'firma', '1030521287_20170824png');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('10', '1030521287', null, null, '2017-08-24', 'cheque', '1030521287_20170824png');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('11', '1030521287', null, null, '2017-08-24', 'otro', '1030521287_20170824png');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('12', '1030521287', null, null, '2017-08-24', 'firma', '1030521287_20170824png');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('13', '1030521287', null, null, '2017-08-24', 'cheque', '1030521287_20170824png');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('14', '1030521287', null, null, '2017-08-24', 'otro', '1030521287_20170824png');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('15', '1030521287', null, null, '2017-08-24', 'firma', '1030521287_20170824.png');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('16', '1030521287', null, null, '2017-08-24', 'cheque', '1030521287_20170824.png');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('17', '1030521287', null, null, '2017-08-24', 'otro', '1030521287_20170824.png');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('18', '1030521287', null, null, '2017-08-24', 'firma', '1030521287_20170824.png');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('19', '1030521287', null, null, '2017-08-24', 'cheque', '1030521287_20170824.png');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('20', '1030521287', null, null, '2017-08-24', 'otro', '1030521287_20170824.png');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('21', '1030521287', null, null, '2017-08-24', 'firma', '1030521287_20170824.png');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('22', '1030521287', null, null, '2017-08-24', 'cheque', '1030521287_20170824.png');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('23', '1030521287', null, null, '2017-08-24', 'otro', '1030521287_20170824.png');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('24', '1030521287', null, null, '2017-08-24', 'firma', '1030521287_20170824.png');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('25', '1030521287', null, null, '2017-08-24', 'cheque', '1030521287_20170824.png');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('26', '1030521287', null, null, '2017-08-24', 'otro', '1030521287_20170824.png');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('27', '1030521287', null, null, '2017-08-24', 'firma', '1030521287_20170824.png');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('28', '1030521287', null, null, '2017-08-24', 'cheque', '1030521287_20170824.png');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('29', '1030521287', null, null, '2017-08-24', 'otro', '1030521287_20170824.png');
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('30', '1030521287', '1', 'hola como estas', '2017-08-24', null, null);
INSERT INTO `intranet_trust_clientes_archivos` VALUES ('31', '1030521287', '1', 'imagen_de_ecuador', '2017-08-24', null, 'ECUADOR.png');

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
-- Table structure for `intranet_trust_tasa_usura`
-- ----------------------------
DROP TABLE IF EXISTS `intranet_trust_tasa_usura`;
CREATE TABLE `intranet_trust_tasa_usura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tasa_usura` double(11,2) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intranet_trust_tasa_usura
-- ----------------------------
INSERT INTO `intranet_trust_tasa_usura` VALUES ('1', '1.22', '2017-11-01');
INSERT INTO `intranet_trust_tasa_usura` VALUES ('7', '1.96', '2017-12-19');

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
