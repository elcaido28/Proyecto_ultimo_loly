

CREATE TABLE `cabecera_cotizacion` (
  `id_cabecera_cotizacion` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `solicitud` int(11) NOT NULL,
  `turno` int(11) NOT NULL,
  `costo` double(8,2) NOT NULL,
  `tipo_pago` int(11) NOT NULL,
  `abono` double(8,2) NOT NULL,
  `descuento` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL,
  PRIMARY KEY (`id_cabecera_cotizacion`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

INSERT INTO cabecera_cotizacion VALUES("3","2020-12-08","3","1","13.00","1","0.00","0","15","1");
INSERT INTO cabecera_cotizacion VALUES("4","2020-12-08","4","13","19.94","1","0.00","1","72","2");
INSERT INTO cabecera_cotizacion VALUES("5","2020-12-08","5","14","25.00","1","0.00","2","95","2");
INSERT INTO cabecera_cotizacion VALUES("6","2020-12-09","6","9","5.00","1","0.00","0","78","2");
INSERT INTO cabecera_cotizacion VALUES("7","2020-12-09","7","9","19.00","1","0.00","1","84","2");
INSERT INTO cabecera_cotizacion VALUES("8","2020-12-09","8","9","19.00","1","0.00","1","84","2");
INSERT INTO cabecera_cotizacion VALUES("9","2020-12-09","9","65","38.80","1","0.00","1","109","2");
INSERT INTO cabecera_cotizacion VALUES("10","2020-12-09","10","34","10.00","1","0.00","0","82","2");
INSERT INTO cabecera_cotizacion VALUES("11","2020-12-09","11","98","2.00","1","0.00","0","88","2");
INSERT INTO cabecera_cotizacion VALUES("12","2020-12-09","12","6","2.00","1","0.00","0","95","2");
INSERT INTO cabecera_cotizacion VALUES("13","2020-12-10","13","20","14.80","2","10.00","2","59","2");
INSERT INTO cabecera_cotizacion VALUES("14","2020-12-10","14","21","8.00","1","0.00","0","83","2");
INSERT INTO cabecera_cotizacion VALUES("15","2020-12-10","15","22","9.94","1","0.00","0","86","2");
INSERT INTO cabecera_cotizacion VALUES("16","2020-12-10","16","23","9.90","1","0.00","1","11","2");
INSERT INTO cabecera_cotizacion VALUES("17","2020-12-10","17","24","10.00","1","0.00","0","87","2");
INSERT INTO cabecera_cotizacion VALUES("18","2020-12-10","18","25","7.00","1","0.00","0","58","2");
INSERT INTO cabecera_cotizacion VALUES("19","2020-12-10","19","26","13.00","1","0.00","0","100","2");
INSERT INTO cabecera_cotizacion VALUES("20","2020-12-11","20","8","3.00","1","0.00","0","65","2");
INSERT INTO cabecera_cotizacion VALUES("21","2020-12-11","21","9","3.00","1","0.00","0","58","2");
INSERT INTO cabecera_cotizacion VALUES("22","2020-12-11","22","10","10.00","1","0.00","0","19","2");
INSERT INTO cabecera_cotizacion VALUES("23","2020-12-11","23","11","5.00","1","0.00","0","111","2");
INSERT INTO cabecera_cotizacion VALUES("24","2020-12-11","24","12","12.60","1","0.00","1","96","2");
INSERT INTO cabecera_cotizacion VALUES("25","2020-12-11","25","13","5.00","1","0.00","0","101","2");
INSERT INTO cabecera_cotizacion VALUES("26","2020-12-11","26","13","25.60","1","0.00","2","98","2");
INSERT INTO cabecera_cotizacion VALUES("30","2020-12-12","30","2","6.00","1","0.00","0","107","2");
INSERT INTO cabecera_cotizacion VALUES("31","2020-12-12","31","3","5.00","1","0.00","0","113","2");
INSERT INTO cabecera_cotizacion VALUES("32","2020-12-12","32","4","5.00","1","0.00","0","74","2");
INSERT INTO cabecera_cotizacion VALUES("34","2020-12-15","34","5","10.00","1","0.00","0","113","2");
INSERT INTO cabecera_cotizacion VALUES("35","2020-12-15","35","6","10.35","1","0.00","1","112","2");
INSERT INTO cabecera_cotizacion VALUES("36","2020-12-16","36","1","13.00","1","0.00","0","81","2");
INSERT INTO cabecera_cotizacion VALUES("37","2020-12-16","37","2","5.00","1","0.00","0","76","2");
INSERT INTO cabecera_cotizacion VALUES("38","2020-12-16","38","3","5.00","1","0.00","0","92","2");
INSERT INTO cabecera_cotizacion VALUES("39","2020-12-16","39","4","5.00","1","0.00","0","105","2");
INSERT INTO cabecera_cotizacion VALUES("40","2020-12-16","40","5","24.80","2","20.00","0","110","2");
INSERT INTO cabecera_cotizacion VALUES("41","2020-12-16","41","6","5.00","1","0.00","0","115","2");
INSERT INTO cabecera_cotizacion VALUES("42","2020-12-16","42","12","6.00","1","0.00","0","102","2");
INSERT INTO cabecera_cotizacion VALUES("43","2020-12-16","43","14","3.00","1","0.00","0","106","2");
INSERT INTO cabecera_cotizacion VALUES("44","2020-12-16","44","14","9.90","2","6.00","1","97","2");





CREATE TABLE `cabecera_examen` (
  `cabecera_exa_id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_ingreso_exa` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion_exa` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tipo_examen` varchar(300) NOT NULL,
  `precio_examen` varchar(15) NOT NULL,
  `doctor_externo` varchar(150) NOT NULL,
  `tipo_pago` varchar(30) NOT NULL,
  `abono` varchar(30) NOT NULL,
  `estado_exa_id` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  PRIMARY KEY (`cabecera_exa_id`),
  KEY `estado_exa_id` (`estado_exa_id`),
  KEY `id_paciente` (`id_paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

INSERT INTO cabecera_examen VALUES("2","2020-12-08 13:27:00","2020-12-08 13:43:54","Examen Orina*Examen de Sangre","19.94","","1","0.00","1","72");
INSERT INTO cabecera_examen VALUES("3","2020-12-08 13:55:30","2020-12-08 13:55:30","Examen de Sangre","25.00","","1","0.00","1","95");
INSERT INTO cabecera_examen VALUES("4","2020-12-09 10:32:29","2020-12-09 10:32:29","Examen de Sangre - Embarazo","5.00","","1","0.00","1","78");
INSERT INTO cabecera_examen VALUES("5","2020-12-09 10:44:59","2020-12-09 10:44:59","Examen de Sangre*Examen Biometría Hemática","19.00","","1","0.00","1","84");
INSERT INTO cabecera_examen VALUES("6","2020-12-09 12:17:39","2020-12-09 12:17:39","Examen de Sangre","38.80","","1","0.00","1","109");
INSERT INTO cabecera_examen VALUES("7","2020-12-09 13:02:46","2020-12-09 13:02:46","Examen de Secreción","10.00","","1","0.00","1","82");
INSERT INTO cabecera_examen VALUES("8","2020-12-09 13:18:42","2020-12-09 13:18:42","Examen de Sangre","2.00","","1","0.00","1","88");
INSERT INTO cabecera_examen VALUES("9","2020-12-09 14:10:02","2020-12-09 14:10:02","Examen de Sangre","2.00","","1","0.00","1","95");
INSERT INTO cabecera_examen VALUES("10","2020-12-10 11:01:09","2020-12-10 12:07:06","Examen de Sangre","14.80","","1","0","1","59");
INSERT INTO cabecera_examen VALUES("11","2020-12-10 12:31:03","2020-12-14 23:48:41","Examen Físico - Químico de Orina*Examen de Sangre - Embarazo","8.00","","1","0.00","1","83");
INSERT INTO cabecera_examen VALUES("12","2020-12-10 12:38:45","2020-12-14 23:47:22","Examen de Sangre","9.94","","1","0.00","1","86");
INSERT INTO cabecera_examen VALUES("13","2020-12-10 12:59:17","2020-12-10 12:59:17","Examen de Sangre","9.90","","1","0.00","1","11");
INSERT INTO cabecera_examen VALUES("14","2020-12-10 13:18:18","2020-12-10 13:18:18","Examen de Sangre","10.00","","1","0.00","1","87");
INSERT INTO cabecera_examen VALUES("15","2020-12-10 13:25:01","2020-12-10 13:25:01","Examen de Sangre","7.00","","1","0.00","1","58");
INSERT INTO cabecera_examen VALUES("16","2020-12-10 13:37:23","2020-12-10 13:49:36","Examen Orina*Examen Físico - Químico de Orina","13.00","","1","0.00","1","100");
INSERT INTO cabecera_examen VALUES("18","2020-12-11 14:37:48","2020-12-11 14:37:48","Examen Orina","3.00","","1","0.00","1","65");
INSERT INTO cabecera_examen VALUES("19","2020-12-11 15:04:24","2020-12-11 15:04:24","Examen Físico - Químico de Orina","3.00","","1","0.00","1","58");
INSERT INTO cabecera_examen VALUES("20","2020-12-11 15:23:54","2020-12-11 15:23:54","Examen de Sangre","10.00","","1","0.00","1","19");
INSERT INTO cabecera_examen VALUES("21","2020-12-11 15:40:34","2020-12-11 15:40:34","Examen de Sangre - Embarazo","5.00","","1","0.00","1","111");
INSERT INTO cabecera_examen VALUES("22","2020-12-11 15:55:09","2020-12-11 15:55:09","Examen de Sangre","12.60","","1","0.00","1","96");
INSERT INTO cabecera_examen VALUES("23","2020-12-11 16:07:42","2020-12-11 16:07:42","Examen de Sangre - Embarazo","5.00","","1","0.00","1","101");
INSERT INTO cabecera_examen VALUES("24","2020-12-11 16:23:16","2020-12-11 16:23:16","Examen de Sangre","25.60","","1","0.00","1","98");
INSERT INTO cabecera_examen VALUES("25","2020-12-12 11:34:23","2020-12-12 11:34:23","Examen de Sangre - Embarazo","5.00","","1","0.00","1","113");
INSERT INTO cabecera_examen VALUES("26","2020-12-12 11:48:44","2020-12-12 11:48:44","Examen de Sangre - Embarazo","5.00","","1","0.00","1","74");
INSERT INTO cabecera_examen VALUES("27","2020-12-15 13:47:08","2020-12-15 13:47:08","Examen de Secreción","10.00","","1","0.00","1","113");
INSERT INTO cabecera_examen VALUES("28","2020-12-15 13:57:16","2020-12-15 13:57:16","Examen de Sangre","10.35","","1","0.00","1","112");
INSERT INTO cabecera_examen VALUES("29","2020-12-16 10:00:18","2020-12-16 10:00:18","Examen de Sangre*Examen Biometría Hemática","13.00","","1","0.00","1","81");
INSERT INTO cabecera_examen VALUES("30","2020-12-16 10:19:42","2020-12-16 10:19:42","Examen de Sangre - Embarazo","5.00","","1","0.00","1","76");
INSERT INTO cabecera_examen VALUES("31","2020-12-16 10:21:47","2020-12-16 10:21:47","Examen de Sangre - Embarazo","5.00","","1","0.00","1","92");
INSERT INTO cabecera_examen VALUES("32","2020-12-16 10:31:45","2020-12-16 10:31:45","Examen de Sangre","6.00","","1","0.00","1","107");
INSERT INTO cabecera_examen VALUES("33","2020-12-16 10:48:07","2020-12-16 10:48:07","Examen de Sangre - Embarazo","5.00","","1","0.00","1","105");
INSERT INTO cabecera_examen VALUES("34","2020-12-16 11:33:44","2020-12-16 11:33:44","Examen de Sangre","24.80","","2","20.00","1","110");
INSERT INTO cabecera_examen VALUES("35","2020-12-16 12:11:31","2020-12-16 12:11:31","Examen de Sangre - Embarazo","5.00","","1","0.00","1","115");
INSERT INTO cabecera_examen VALUES("36","2020-12-16 13:45:23","2020-12-16 13:45:23","Examen de Sangre*Examen Biometría Hemática","19.00","","1","0.00","1","84");
INSERT INTO cabecera_examen VALUES("37","2020-12-16 15:02:50","2020-12-16 15:02:50","Examen de Sangre","6.00","","1","0.00","1","102");
INSERT INTO cabecera_examen VALUES("38","2020-12-16 15:26:07","2020-12-16 15:26:07","Examen Orina","3.00","","1","0.00","1","106");
INSERT INTO cabecera_examen VALUES("39","2020-12-16 15:37:58","2020-12-16 15:43:09","Examen Físico - Químico de Orina","9.90","","1","0","1","97");





CREATE TABLE `cabecera_resultado` (
  `cabecera_resultado_id` int(11) NOT NULL AUTO_INCREMENT,
  `cabecera_resultado_fechai` date NOT NULL,
  `cabecera_resultado_fecham` date NOT NULL,
  `cabecera_tipo_formato` varchar(10) NOT NULL,
  `privacidad` int(5) NOT NULL,
  `cabecera_exa_id` int(11) NOT NULL,
  PRIMARY KEY (`cabecera_resultado_id`),
  KEY `cabecera_exa_id` (`cabecera_exa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

INSERT INTO cabecera_resultado VALUES("53","2020-12-08","2020-12-08","3","1","2");
INSERT INTO cabecera_resultado VALUES("54","2020-12-08","2020-12-08","1","1","2");
INSERT INTO cabecera_resultado VALUES("55","2020-12-08","2020-12-08","3","1","3");
INSERT INTO cabecera_resultado VALUES("56","2020-12-09","2020-12-09","4","2","4");
INSERT INTO cabecera_resultado VALUES("57","2020-12-09","2020-12-09","6","1","5");
INSERT INTO cabecera_resultado VALUES("58","2020-12-09","2020-12-09","3","1","5");
INSERT INTO cabecera_resultado VALUES("59","2020-12-09","2020-12-09","3","1","6");
INSERT INTO cabecera_resultado VALUES("60","2020-12-09","2020-12-09","5","1","7");
INSERT INTO cabecera_resultado VALUES("61","2020-12-09","2020-12-09","3","1","8");
INSERT INTO cabecera_resultado VALUES("62","2020-12-09","2020-12-09","3","1","9");
INSERT INTO cabecera_resultado VALUES("63","2020-12-10","2020-12-10","3","1","10");
INSERT INTO cabecera_resultado VALUES("64","2020-12-10","2020-12-10","2","1","11");
INSERT INTO cabecera_resultado VALUES("65","2020-12-10","2020-12-10","4","1","11");
INSERT INTO cabecera_resultado VALUES("66","2020-12-10","2020-12-10","3","1","12");
INSERT INTO cabecera_resultado VALUES("67","2020-12-10","2020-12-10","3","1","13");
INSERT INTO cabecera_resultado VALUES("68","2020-12-10","2020-12-10","3","1","14");
INSERT INTO cabecera_resultado VALUES("69","2020-12-10","2020-12-10","3","1","15");
INSERT INTO cabecera_resultado VALUES("70","2020-12-10","2020-12-10","1","1","16");
INSERT INTO cabecera_resultado VALUES("71","2020-12-10","2020-12-10","2","1","16");
INSERT INTO cabecera_resultado VALUES("72","2020-12-11","2020-12-11","1","1","18");
INSERT INTO cabecera_resultado VALUES("73","2020-12-11","2020-12-11","2","1","19");
INSERT INTO cabecera_resultado VALUES("74","2020-12-11","2020-12-11","4","2","21");
INSERT INTO cabecera_resultado VALUES("75","2020-12-11","2020-12-11","3","1","20");
INSERT INTO cabecera_resultado VALUES("76","2020-12-11","2020-12-11","3","1","22");
INSERT INTO cabecera_resultado VALUES("77","2020-12-11","2020-12-11","4","1","23");
INSERT INTO cabecera_resultado VALUES("78","2020-12-11","2020-12-11","3","1","24");
INSERT INTO cabecera_resultado VALUES("79","2020-12-12","2020-12-12","4","1","25");
INSERT INTO cabecera_resultado VALUES("80","2020-12-12","2020-12-12","4","2","26");
INSERT INTO cabecera_resultado VALUES("81","2020-12-15","2020-12-15","5","1","27");
INSERT INTO cabecera_resultado VALUES("82","2020-12-15","2020-12-15","3","1","28");
INSERT INTO cabecera_resultado VALUES("83","2020-12-16","2020-12-16","3","1","29");
INSERT INTO cabecera_resultado VALUES("84","2020-12-16","2020-12-16","6","1","29");
INSERT INTO cabecera_resultado VALUES("85","2020-12-16","2020-12-16","4","2","30");
INSERT INTO cabecera_resultado VALUES("86","2020-12-16","2020-12-16","4","2","31");
INSERT INTO cabecera_resultado VALUES("87","2020-12-16","2020-12-16","3","1","32");
INSERT INTO cabecera_resultado VALUES("88","2020-12-16","2020-12-16","4","2","33");
INSERT INTO cabecera_resultado VALUES("89","2020-12-16","2020-12-16","3","1","34");
INSERT INTO cabecera_resultado VALUES("90","2020-12-16","2020-12-16","4","2","35");
INSERT INTO cabecera_resultado VALUES("91","2020-12-16","2020-12-16","3","1","36");
INSERT INTO cabecera_resultado VALUES("92","2020-12-16","2020-12-16","6","1","36");
INSERT INTO cabecera_resultado VALUES("93","2020-12-16","2020-12-16","3","1","37");
INSERT INTO cabecera_resultado VALUES("94","2020-12-16","2020-12-16","1","1","38");
INSERT INTO cabecera_resultado VALUES("95","2020-12-16","2020-12-16","2","1","39");





CREATE TABLE `detalle_cotizacion` (
  `id_detalle_cotizacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_cabecera_cotizacion` int(11) NOT NULL,
  `id_reactivo` int(11) NOT NULL,
  PRIMARY KEY (`id_detalle_cotizacion`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=latin1;

INSERT INTO detalle_cotizacion VALUES("12","3","21");
INSERT INTO detalle_cotizacion VALUES("13","3","25");
INSERT INTO detalle_cotizacion VALUES("14","3","186");
INSERT INTO detalle_cotizacion VALUES("15","4","1");
INSERT INTO detalle_cotizacion VALUES("16","4","93");
INSERT INTO detalle_cotizacion VALUES("17","4","39");
INSERT INTO detalle_cotizacion VALUES("18","4","42");
INSERT INTO detalle_cotizacion VALUES("19","4","41");
INSERT INTO detalle_cotizacion VALUES("20","4","40");
INSERT INTO detalle_cotizacion VALUES("21","5","11");
INSERT INTO detalle_cotizacion VALUES("22","5","12");
INSERT INTO detalle_cotizacion VALUES("23","5","10");
INSERT INTO detalle_cotizacion VALUES("24","5","146");
INSERT INTO detalle_cotizacion VALUES("25","5","138");
INSERT INTO detalle_cotizacion VALUES("26","6","178");
INSERT INTO detalle_cotizacion VALUES("27","7","20");
INSERT INTO detalle_cotizacion VALUES("28","7","21");
INSERT INTO detalle_cotizacion VALUES("29","7","22");
INSERT INTO detalle_cotizacion VALUES("30","7","138");
INSERT INTO detalle_cotizacion VALUES("31","8","20");
INSERT INTO detalle_cotizacion VALUES("32","8","21");
INSERT INTO detalle_cotizacion VALUES("33","8","22");
INSERT INTO detalle_cotizacion VALUES("34","8","138");
INSERT INTO detalle_cotizacion VALUES("35","9","38");
INSERT INTO detalle_cotizacion VALUES("36","9","74");
INSERT INTO detalle_cotizacion VALUES("37","9","95");
INSERT INTO detalle_cotizacion VALUES("38","9","18");
INSERT INTO detalle_cotizacion VALUES("39","9","145");
INSERT INTO detalle_cotizacion VALUES("40","9","238");
INSERT INTO detalle_cotizacion VALUES("41","10","91");
INSERT INTO detalle_cotizacion VALUES("42","11","38");
INSERT INTO detalle_cotizacion VALUES("43","12","38");
INSERT INTO detalle_cotizacion VALUES("44","13","63");
INSERT INTO detalle_cotizacion VALUES("45","13","60");
INSERT INTO detalle_cotizacion VALUES("46","13","71");
INSERT INTO detalle_cotizacion VALUES("47","13","73");
INSERT INTO detalle_cotizacion VALUES("48","13","57");
INSERT INTO detalle_cotizacion VALUES("49","13","80");
INSERT INTO detalle_cotizacion VALUES("50","14","331");
INSERT INTO detalle_cotizacion VALUES("51","14","178");
INSERT INTO detalle_cotizacion VALUES("52","15","38");
INSERT INTO detalle_cotizacion VALUES("53","15","42");
INSERT INTO detalle_cotizacion VALUES("54","15","40");
INSERT INTO detalle_cotizacion VALUES("55","15","52");
INSERT INTO detalle_cotizacion VALUES("56","15","41");
INSERT INTO detalle_cotizacion VALUES("57","16","21");
INSERT INTO detalle_cotizacion VALUES("58","16","238");
INSERT INTO detalle_cotizacion VALUES("59","17","255");
INSERT INTO detalle_cotizacion VALUES("60","17","38");
INSERT INTO detalle_cotizacion VALUES("61","18","38");
INSERT INTO detalle_cotizacion VALUES("62","18","52");
INSERT INTO detalle_cotizacion VALUES("63","18","42");
INSERT INTO detalle_cotizacion VALUES("64","19","331");
INSERT INTO detalle_cotizacion VALUES("65","19","91");
INSERT INTO detalle_cotizacion VALUES("66","20","331");
INSERT INTO detalle_cotizacion VALUES("67","21","331");
INSERT INTO detalle_cotizacion VALUES("68","22","38");
INSERT INTO detalle_cotizacion VALUES("69","22","39");
INSERT INTO detalle_cotizacion VALUES("70","22","42");
INSERT INTO detalle_cotizacion VALUES("71","22","32");
INSERT INTO detalle_cotizacion VALUES("72","23","178");
INSERT INTO detalle_cotizacion VALUES("73","24","38");
INSERT INTO detalle_cotizacion VALUES("74","24","39");
INSERT INTO detalle_cotizacion VALUES("75","24","42");
INSERT INTO detalle_cotizacion VALUES("76","24","126");
INSERT INTO detalle_cotizacion VALUES("77","25","178");
INSERT INTO detalle_cotizacion VALUES("78","26","38");
INSERT INTO detalle_cotizacion VALUES("79","26","39");
INSERT INTO detalle_cotizacion VALUES("80","26","42");
INSERT INTO detalle_cotizacion VALUES("81","26","36");
INSERT INTO detalle_cotizacion VALUES("82","26","37");
INSERT INTO detalle_cotizacion VALUES("83","26","35");
INSERT INTO detalle_cotizacion VALUES("84","26","67");
INSERT INTO detalle_cotizacion VALUES("85","26","68");
INSERT INTO detalle_cotizacion VALUES("86","26","301");
INSERT INTO detalle_cotizacion VALUES("93","30","38");
INSERT INTO detalle_cotizacion VALUES("94","30","42");
INSERT INTO detalle_cotizacion VALUES("95","30","39");
INSERT INTO detalle_cotizacion VALUES("96","31","178");
INSERT INTO detalle_cotizacion VALUES("97","32","178");
INSERT INTO detalle_cotizacion VALUES("100","34","91");
INSERT INTO detalle_cotizacion VALUES("101","35","15");
INSERT INTO detalle_cotizacion VALUES("102","35","115");
INSERT INTO detalle_cotizacion VALUES("103","35","16");
INSERT INTO detalle_cotizacion VALUES("104","36","38");
INSERT INTO detalle_cotizacion VALUES("105","36","39");
INSERT INTO detalle_cotizacion VALUES("106","36","42");
INSERT INTO detalle_cotizacion VALUES("107","36","317");
INSERT INTO detalle_cotizacion VALUES("108","37","178");
INSERT INTO detalle_cotizacion VALUES("109","38","178");
INSERT INTO detalle_cotizacion VALUES("110","39","178");
INSERT INTO detalle_cotizacion VALUES("111","40","38");
INSERT INTO detalle_cotizacion VALUES("112","40","39");
INSERT INTO detalle_cotizacion VALUES("113","40","42");
INSERT INTO detalle_cotizacion VALUES("114","40","3");
INSERT INTO detalle_cotizacion VALUES("115","40","37");
INSERT INTO detalle_cotizacion VALUES("116","40","35");
INSERT INTO detalle_cotizacion VALUES("117","40","41");
INSERT INTO detalle_cotizacion VALUES("118","40","40");
INSERT INTO detalle_cotizacion VALUES("119","40","138");
INSERT INTO detalle_cotizacion VALUES("120","41","178");
INSERT INTO detalle_cotizacion VALUES("121","42","38");
INSERT INTO detalle_cotizacion VALUES("122","42","39");
INSERT INTO detalle_cotizacion VALUES("123","42","42");
INSERT INTO detalle_cotizacion VALUES("124","43","331");
INSERT INTO detalle_cotizacion VALUES("125","44","331");
INSERT INTO detalle_cotizacion VALUES("126","44","251");





CREATE TABLE `detalle_examen` (
  `detalle_examen_id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle_examen_dscrp` varchar(200) NOT NULL,
  `cabecera_exa_id` int(11) NOT NULL,
  PRIMARY KEY (`detalle_examen_id`),
  KEY `cabecera_exa_id` (`cabecera_exa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

INSERT INTO detalle_examen VALUES("1","Hematies","1");
INSERT INTO detalle_examen VALUES("2","Eritrosedimentación","1");
INSERT INTO detalle_examen VALUES("3","Hematies","2");
INSERT INTO detalle_examen VALUES("4","Colesterol","2");
INSERT INTO detalle_examen VALUES("5","L.D.L. colesterol","2");
INSERT INTO detalle_examen VALUES("6","H.D.L. colesterol","2");
INSERT INTO detalle_examen VALUES("7","Triglicéridos","2");
INSERT INTO detalle_examen VALUES("8","Urinalisis EMO (F.Q.S.)","2");
INSERT INTO detalle_examen VALUES("9","Coagulación","3");
INSERT INTO detalle_examen VALUES("10","T. de protombina","3");
INSERT INTO detalle_examen VALUES("11","Tromboplastina","3");
INSERT INTO detalle_examen VALUES("12","Hemograma","3");
INSERT INTO detalle_examen VALUES("13","T. de Sangría","3");
INSERT INTO detalle_examen VALUES("14","P. embarazo en sangre","4");
INSERT INTO detalle_examen VALUES("15","R.A. test","5");
INSERT INTO detalle_examen VALUES("16","A.S.T.O","5");
INSERT INTO detalle_examen VALUES("17","P.C. reactiva","5");
INSERT INTO detalle_examen VALUES("18","Hemograma","5");
INSERT INTO detalle_examen VALUES("19","Glucosa","6");
INSERT INTO detalle_examen VALUES("20","Prot. totales","6");
INSERT INTO detalle_examen VALUES("21","Albumina Ocasional","6");
INSERT INTO detalle_examen VALUES("22","Grupo Sanguíneo y Rh.","6");
INSERT INTO detalle_examen VALUES("23","Factor Reumatoideo","6");
INSERT INTO detalle_examen VALUES("24","Cultivo antibiograma","7");
INSERT INTO detalle_examen VALUES("25","Cultivo antibiograma","7");
INSERT INTO detalle_examen VALUES("26","Cultivo antibiograma","7");
INSERT INTO detalle_examen VALUES("27","Glucosa","8");
INSERT INTO detalle_examen VALUES("28","Glucosa","9");
INSERT INTO detalle_examen VALUES("29","Bilirrubina directa","10");
INSERT INTO detalle_examen VALUES("30","Bilirrubina indirecta","10");
INSERT INTO detalle_examen VALUES("31","P. embarazo en sangre","11");
INSERT INTO detalle_examen VALUES("32","Glucosa","12");
INSERT INTO detalle_examen VALUES("33","L.D.L. colesterol","12");
INSERT INTO detalle_examen VALUES("34","H.D.L. colesterol","12");
INSERT INTO detalle_examen VALUES("35","Triglicéridos","12");
INSERT INTO detalle_examen VALUES("36","A.S.T.O","13");
INSERT INTO detalle_examen VALUES("37","Factor Reumatoideo","13");
INSERT INTO detalle_examen VALUES("38","Glucosa","14");
INSERT INTO detalle_examen VALUES("39","HbA1c Hemog. Glicosilada","14");
INSERT INTO detalle_examen VALUES("40","Glucosa","15");
INSERT INTO detalle_examen VALUES("41","Triglicéridos","15");
INSERT INTO detalle_examen VALUES("42","Cultivo antibiograma","16");
INSERT INTO detalle_examen VALUES("43","Cultivo antibiograma","16");
INSERT INTO detalle_examen VALUES("44","Cultivo antibiograma","16");
INSERT INTO detalle_examen VALUES("45","Físico","17");
INSERT INTO detalle_examen VALUES("46","Urinalisis EMO (F.Q.S.)","18");
INSERT INTO detalle_examen VALUES("47","Urinalisis EMO (F.Q.S.)","19");
INSERT INTO detalle_examen VALUES("48","R. de Widal","20");
INSERT INTO detalle_examen VALUES("49","Glucosa","20");
INSERT INTO detalle_examen VALUES("50","Colesterol","20");
INSERT INTO detalle_examen VALUES("51","Triglicéridos","20");
INSERT INTO detalle_examen VALUES("52","P. embarazo en sangre","21");
INSERT INTO detalle_examen VALUES("53","Glucosa","22");
INSERT INTO detalle_examen VALUES("54","Colesterol","22");
INSERT INTO detalle_examen VALUES("55","Triglicéridos","22");
INSERT INTO detalle_examen VALUES("56","Heces Nickerson","22");
INSERT INTO detalle_examen VALUES("57","P. embarazo en sangre","23");
INSERT INTO detalle_examen VALUES("58","Ac. urico","24");
INSERT INTO detalle_examen VALUES("59","Urea","24");
INSERT INTO detalle_examen VALUES("60","Creatinina","24");
INSERT INTO detalle_examen VALUES("61","Glucosa","24");
INSERT INTO detalle_examen VALUES("62","Colesterol","24");
INSERT INTO detalle_examen VALUES("63","Triglicéridos","24");
INSERT INTO detalle_examen VALUES("64","Rubeola (Ac. Anti-lgG)","24");
INSERT INTO detalle_examen VALUES("65","P. embarazo en sangre","25");
INSERT INTO detalle_examen VALUES("66","P. embarazo en sangre","26");
INSERT INTO detalle_examen VALUES("67","Colesterol Total","12");
INSERT INTO detalle_examen VALUES("68","Urinalisis EMO (F.Q.S.)","11");
INSERT INTO detalle_examen VALUES("69","Cultivo antibiograma","27");
INSERT INTO detalle_examen VALUES("70","Cultivo antibiograma","27");
INSERT INTO detalle_examen VALUES("71","Widal","28");
INSERT INTO detalle_examen VALUES("72","Proteos O x 19","28");
INSERT INTO detalle_examen VALUES("73","Parasitológico","28");
INSERT INTO detalle_examen VALUES("74","Glucosa","29");
INSERT INTO detalle_examen VALUES("75","Colesterol","29");
INSERT INTO detalle_examen VALUES("76","Triglicéridos","29");
INSERT INTO detalle_examen VALUES("77","TPO (Ac.- Microsomales TPO)","29");
INSERT INTO detalle_examen VALUES("78","P. embarazo en sangre","30");
INSERT INTO detalle_examen VALUES("79","P. embarazo en sangre","31");
INSERT INTO detalle_examen VALUES("80","Glucosa","32");
INSERT INTO detalle_examen VALUES("81","Colesterol","32");
INSERT INTO detalle_examen VALUES("82","Triglicéridos","32");
INSERT INTO detalle_examen VALUES("83","P. embarazo en sangre","33");
INSERT INTO detalle_examen VALUES("84","Hematócrito","34");
INSERT INTO detalle_examen VALUES("85","Ac. urico","34");
INSERT INTO detalle_examen VALUES("86","Creatinina","34");
INSERT INTO detalle_examen VALUES("87","Glucosa","34");
INSERT INTO detalle_examen VALUES("88","Colesterol","34");
INSERT INTO detalle_examen VALUES("89","L.D.L. colesterol","34");
INSERT INTO detalle_examen VALUES("90","H.D.L. colesterol","34");
INSERT INTO detalle_examen VALUES("91","Triglicéridos","34");
INSERT INTO detalle_examen VALUES("92","Hemograma","34");
INSERT INTO detalle_examen VALUES("93","P. embarazo en sangre","35");
INSERT INTO detalle_examen VALUES("94","R.A. test","36");
INSERT INTO detalle_examen VALUES("95","A.S.T.O","36");
INSERT INTO detalle_examen VALUES("96","P.C. reactiva","36");
INSERT INTO detalle_examen VALUES("97","Hemograma","36");
INSERT INTO detalle_examen VALUES("98","Glucosa","37");
INSERT INTO detalle_examen VALUES("99","Colesterol","37");
INSERT INTO detalle_examen VALUES("100","Triglicéridos","37");
INSERT INTO detalle_examen VALUES("101","Orina FQS","38");
INSERT INTO detalle_examen VALUES("102","Orina FQS","39");
INSERT INTO detalle_examen VALUES("103","FSH","39");





CREATE TABLE `detalle_resultado` (
  `detalle_resultado_id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle_resultado_seccion` varchar(300) NOT NULL,
  `detalle_resultado_tipoexa` text NOT NULL,
  `detalle_resultado_resul` text NOT NULL,
  `cabecera_resultado_id` int(11) NOT NULL,
  PRIMARY KEY (`detalle_resultado_id`),
  KEY `cabecera_resultado_id` (`cabecera_resultado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=791 DEFAULT CHARSET=latin1;

INSERT INTO detalle_resultado VALUES("1","Perfil Bioquimicos","Glucosa","82*mg/dl*70 a 100","53");
INSERT INTO detalle_resultado VALUES("2","Perfil Bioquimicos","Colesterol","160*mg/dl*110 a 130","53");
INSERT INTO detalle_resultado VALUES("3","Perfil Bioquimicos","Trigliceridos","75*mg/dl*70 a 100","53");
INSERT INTO detalle_resultado VALUES("4","Examen Fisico-Quimico de Orina","Color","Amarillo","53");
INSERT INTO detalle_resultado VALUES("5","Examen Fisico-Quimico de Orina","Aspecto","Ligeramente Turbio","53");
INSERT INTO detalle_resultado VALUES("6","Examen Fisico-Quimico de Orina","Densidad","1.020","53");
INSERT INTO detalle_resultado VALUES("7","Examen Fisico-Quimico de Orina","PH","6","53");
INSERT INTO detalle_resultado VALUES("8","Examen Fisico-Quimico de Orina","Glucosaplus","Negativo","53");
INSERT INTO detalle_resultado VALUES("9","Examen Fisico-Quimico de Orina","Nitritos","Negativo","53");
INSERT INTO detalle_resultado VALUES("10","Examen Fisico-Quimico de Orina","C. Cetonicos","Negativo","53");
INSERT INTO detalle_resultado VALUES("11","Examen Fisico-Quimico de Orina","Proteínas","Negativo","53");
INSERT INTO detalle_resultado VALUES("12","Examen Fisico-Quimico de Orina","Uroblinogeno","Negativo","53");
INSERT INTO detalle_resultado VALUES("13","Examen Fisico-Quimico de Orina","Bilirrubinas","Negativo","53");
INSERT INTO detalle_resultado VALUES("14","Examen Fisico-Quimico de Orina","Sangre","Negativo","53");
INSERT INTO detalle_resultado VALUES("15","Examen Fisico-Quimico de Orina","Acido Ascorbico","Negativo","53");
INSERT INTO detalle_resultado VALUES("16","Examen Fisico-Quimico de Orina","Leucocitos","Negativo","53");
INSERT INTO detalle_resultado VALUES("17","Sedimento","Cell Epiteliales Escamosas","Numerosas","53");
INSERT INTO detalle_resultado VALUES("18","Sedimento","Bacterias Bacilares","Moderadas","53");
INSERT INTO detalle_resultado VALUES("19","Sedimento","Procitos","0-2 x c","53");
INSERT INTO detalle_resultado VALUES("20","Sedimento","C. Oxalato de Calcio","(-)","53");
INSERT INTO detalle_resultado VALUES("21","Sedimento","Filamentos Mucosos","(-)","53");
INSERT INTO detalle_resultado VALUES("22","Examen de Heces","Colorhe","Cafe Claro","53");
INSERT INTO detalle_resultado VALUES("23","Examen de Heces","Aspectohe","Blandas","53");
INSERT INTO detalle_resultado VALUES("24","Examen de Heces","Null","","53");
INSERT INTO detalle_resultado VALUES("25","Observacion Microscopica","Parásitos","E.COLI+","53");
INSERT INTO detalle_resultado VALUES("26","Observacion Microscopica","Null","","53");
INSERT INTO detalle_resultado VALUES("27","Observacion Microscopica","Null","","53");
INSERT INTO detalle_resultado VALUES("28","Bacteriologia Cultivo - Antibiograma de Orina","Contaje de Colonias","-10.000col/ml","54");
INSERT INTO detalle_resultado VALUES("29","Bacteriologia Cultivo - Antibiograma de Orina","Null","","54");
INSERT INTO detalle_resultado VALUES("30","Antibiograma","Null","","54");
INSERT INTO detalle_resultado VALUES("31","Antibiograma","Null","","54");
INSERT INTO detalle_resultado VALUES("32","Antibiograma","Null","","54");
INSERT INTO detalle_resultado VALUES("33","Antibiograma","Null","","54");
INSERT INTO detalle_resultado VALUES("34","Antibiograma","Null","","54");
INSERT INTO detalle_resultado VALUES("35","Perfil Bioquimicos","Glucosa","90*mg/dl*70 a 100","55");
INSERT INTO detalle_resultado VALUES("36","Perfil Bioquimicos","Colesterol","180*mg/dl*110 a 130","55");
INSERT INTO detalle_resultado VALUES("37","Perfil Bioquimicos","Trigliceridos","200*mg/dl*70 a 100","55");
INSERT INTO detalle_resultado VALUES("38","Examen Fisico-Quimico de Orina","Color","Amarillo","55");
INSERT INTO detalle_resultado VALUES("39","Examen Fisico-Quimico de Orina","Aspecto","Ligeramente Turbio","55");
INSERT INTO detalle_resultado VALUES("40","Examen Fisico-Quimico de Orina","Densidad","1.025","55");
INSERT INTO detalle_resultado VALUES("41","Examen Fisico-Quimico de Orina","PH","6","55");
INSERT INTO detalle_resultado VALUES("42","Examen Fisico-Quimico de Orina","Glucosaplus","Negativo","55");
INSERT INTO detalle_resultado VALUES("43","Examen Fisico-Quimico de Orina","Nitritos","Negativo","55");
INSERT INTO detalle_resultado VALUES("44","Examen Fisico-Quimico de Orina","C. Cetonicos","Negativo","55");
INSERT INTO detalle_resultado VALUES("45","Examen Fisico-Quimico de Orina","Proteínas","Negativo","55");
INSERT INTO detalle_resultado VALUES("46","Examen Fisico-Quimico de Orina","Uroblinogeno","Negativo","55");
INSERT INTO detalle_resultado VALUES("47","Examen Fisico-Quimico de Orina","Bilirrubinas","Negativo","55");
INSERT INTO detalle_resultado VALUES("48","Examen Fisico-Quimico de Orina","Sangre","Negativo","55");
INSERT INTO detalle_resultado VALUES("49","Examen Fisico-Quimico de Orina","Acido Ascorbico","Negativo","55");
INSERT INTO detalle_resultado VALUES("50","Examen Fisico-Quimico de Orina","Leucocitos","Negativo","55");
INSERT INTO detalle_resultado VALUES("51","Sedimento","Cell Epiteliales Escamosas","Escasas","55");
INSERT INTO detalle_resultado VALUES("52","Sedimento","Bacterias Bacilares","Escasas","55");
INSERT INTO detalle_resultado VALUES("53","Sedimento","Procitos","0-2xc","55");
INSERT INTO detalle_resultado VALUES("54","Sedimento","C. Oxalato de Calcio","+","55");
INSERT INTO detalle_resultado VALUES("55","Sedimento","Filamentos Mucosos","(-)","55");
INSERT INTO detalle_resultado VALUES("56","Examen de Heces","Null","","55");
INSERT INTO detalle_resultado VALUES("57","Examen de Heces","Null","","55");
INSERT INTO detalle_resultado VALUES("58","Examen de Heces","Null","","55");
INSERT INTO detalle_resultado VALUES("59","Observacion Microscopica","Null","","55");
INSERT INTO detalle_resultado VALUES("60","Observacion Microscopica","Null","","55");
INSERT INTO detalle_resultado VALUES("61","Observacion Microscopica","Null","","55");
INSERT INTO detalle_resultado VALUES("62","Examen de Sangre - Embarazo","Prueba de Embarazo","NEGATIVO*-*-","56");
INSERT INTO detalle_resultado VALUES("63","Biometria","Globulos Blancos","9.5*10^3/ul*4.0 - 10.0","57");
INSERT INTO detalle_resultado VALUES("64","Biometria","Linfocitos #","0.9*10^3/ul*0.8 - 4.0","57");
INSERT INTO detalle_resultado VALUES("65","Biometria","Celulas Intermedias #","0.1*10^3/ul*0.1 - 0.9","57");
INSERT INTO detalle_resultado VALUES("66","Biometria","Segmentados #","6.5*10^3/ul*2.0 - 7.0","57");
INSERT INTO detalle_resultado VALUES("67","Biometria","Linfocitos %","30*%*20.0 - 40.0","57");
INSERT INTO detalle_resultado VALUES("68","Biometria","Celulas Intermedias %","3*%*3.0 - 9.0","57");
INSERT INTO detalle_resultado VALUES("69","Biometria","Segmentados %","65*%*50.0 - 70.0","57");
INSERT INTO detalle_resultado VALUES("70","Celulas Atipicas","Hemoglobina","14.5*g/dl*11.0 - 15.0","57");
INSERT INTO detalle_resultado VALUES("71","Celulas Atipicas","Glóbulos Rojos","4.6*10^6/ul*3.50 - 5.00","57");
INSERT INTO detalle_resultado VALUES("72","Celulas Atipicas","Hematocrito","45*%*37.0 - 48.0","57");
INSERT INTO detalle_resultado VALUES("73","Celulas Atipicas","VCM","93*fL*82.0 - 95.0","57");
INSERT INTO detalle_resultado VALUES("74","Celulas Atipicas","HCM","30*pg*27.0 - 31.0","57");
INSERT INTO detalle_resultado VALUES("75","Celulas Atipicas","CHCM","35*g/dL*32.0 - 36.0","57");
INSERT INTO detalle_resultado VALUES("76","Celulas Atipicas","WDR-VC","13.5*%*11.5 - 14.5","57");
INSERT INTO detalle_resultado VALUES("77","Celulas Atipicas","WDR-DS","52*fL*35.0 - 56.0","57");
INSERT INTO detalle_resultado VALUES("78","Celulas Atipicas","Plaquetas","310*10^3/uL*150 - 450","57");
INSERT INTO detalle_resultado VALUES("79","Celulas Atipicas","MPV","10*fL*7.0 - 11.0","57");
INSERT INTO detalle_resultado VALUES("80","Celulas Atipicas","WDP","16.2*%*15.0 - 17.0","57");
INSERT INTO detalle_resultado VALUES("81","Celulas Atipicas","PCT","0.22*%*0.108 - 0.282","57");
INSERT INTO detalle_resultado VALUES("82","Extendido Sanguineo","Null","","57");
INSERT INTO detalle_resultado VALUES("83","Extendido Sanguineo","Null","","57");
INSERT INTO detalle_resultado VALUES("84","Extendido Sanguineo","Null","","57");
INSERT INTO detalle_resultado VALUES("85","Extendido Sanguineo","Null","","57");
INSERT INTO detalle_resultado VALUES("86","Extendido Sanguineo","Null","","57");
INSERT INTO detalle_resultado VALUES("87","Extendido Sanguineo","Null","","57");
INSERT INTO detalle_resultado VALUES("88","Perfil Bioquimicos","Null","","58");
INSERT INTO detalle_resultado VALUES("89","Perfil Bioquimicos","Null","","58");
INSERT INTO detalle_resultado VALUES("90","Perfil Bioquimicos","Null","","58");
INSERT INTO detalle_resultado VALUES("91","Examen Fisico-Quimico de Orina","Null","","58");
INSERT INTO detalle_resultado VALUES("92","Examen Fisico-Quimico de Orina","Null","","58");
INSERT INTO detalle_resultado VALUES("93","Examen Fisico-Quimico de Orina","Null","","58");
INSERT INTO detalle_resultado VALUES("94","Examen Fisico-Quimico de Orina","Null","","58");
INSERT INTO detalle_resultado VALUES("95","Examen Fisico-Quimico de Orina","Null","","58");
INSERT INTO detalle_resultado VALUES("96","Examen Fisico-Quimico de Orina","Null","","58");
INSERT INTO detalle_resultado VALUES("97","Examen Fisico-Quimico de Orina","Null","","58");
INSERT INTO detalle_resultado VALUES("98","Examen Fisico-Quimico de Orina","Null","","58");
INSERT INTO detalle_resultado VALUES("99","Examen Fisico-Quimico de Orina","Null","","58");
INSERT INTO detalle_resultado VALUES("100","Examen Fisico-Quimico de Orina","Null","","58");
INSERT INTO detalle_resultado VALUES("101","Examen Fisico-Quimico de Orina","Null","","58");
INSERT INTO detalle_resultado VALUES("102","Examen Fisico-Quimico de Orina","Null","","58");
INSERT INTO detalle_resultado VALUES("103","Examen Fisico-Quimico de Orina","Null","","58");
INSERT INTO detalle_resultado VALUES("104","Sedimento","Null","","58");
INSERT INTO detalle_resultado VALUES("105","Sedimento","Null","","58");
INSERT INTO detalle_resultado VALUES("106","Sedimento","Null","","58");
INSERT INTO detalle_resultado VALUES("107","Sedimento","Null","","58");
INSERT INTO detalle_resultado VALUES("108","Sedimento","Null","","58");
INSERT INTO detalle_resultado VALUES("109","Examen de Heces","Null","","58");
INSERT INTO detalle_resultado VALUES("110","Examen de Heces","Null","","58");
INSERT INTO detalle_resultado VALUES("111","Examen de Heces","Null","","58");
INSERT INTO detalle_resultado VALUES("112","Observacion Microscopica","Null","","58");
INSERT INTO detalle_resultado VALUES("113","Observacion Microscopica","Null","","58");
INSERT INTO detalle_resultado VALUES("114","Observacion Microscopica","Null","","58");
INSERT INTO detalle_resultado VALUES("115","Perfil Bioquimicos","ASTO","-1*mg/dl*--","58");
INSERT INTO detalle_resultado VALUES("116","Perfil Bioquimicos","PCR","-1*gr*--","58");
INSERT INTO detalle_resultado VALUES("117","Perfil Bioquimicos","R.A","-1*gr*--","58");
INSERT INTO detalle_resultado VALUES("118","Perfil Bioquimicos","Glucosa","98*mg/dl*30 a 60","59");
INSERT INTO detalle_resultado VALUES("119","Perfil Bioquimicos","Null","","59");
INSERT INTO detalle_resultado VALUES("120","Perfil Bioquimicos","Null","","59");
INSERT INTO detalle_resultado VALUES("121","Examen Fisico-Quimico de Orina","Color","Amarillo","59");
INSERT INTO detalle_resultado VALUES("122","Examen Fisico-Quimico de Orina","Aspecto","Ligeramente Turbio","59");
INSERT INTO detalle_resultado VALUES("123","Examen Fisico-Quimico de Orina","Densidad","1.010","59");
INSERT INTO detalle_resultado VALUES("124","Examen Fisico-Quimico de Orina","PH","7","59");
INSERT INTO detalle_resultado VALUES("125","Examen Fisico-Quimico de Orina","Glucosaplus","Negativo","59");
INSERT INTO detalle_resultado VALUES("126","Examen Fisico-Quimico de Orina","Nitritos","Negativo","59");
INSERT INTO detalle_resultado VALUES("127","Examen Fisico-Quimico de Orina","C. Cetonicos","Negativo","59");
INSERT INTO detalle_resultado VALUES("128","Examen Fisico-Quimico de Orina","Proteínas","Positivo","59");
INSERT INTO detalle_resultado VALUES("129","Examen Fisico-Quimico de Orina","Uroblinogeno","+ +","59");
INSERT INTO detalle_resultado VALUES("130","Examen Fisico-Quimico de Orina","Bilirrubinas","Negativo","59");
INSERT INTO detalle_resultado VALUES("131","Examen Fisico-Quimico de Orina","Sangre","Positivo","59");
INSERT INTO detalle_resultado VALUES("132","Examen Fisico-Quimico de Orina","Acido Ascorbico","Negativo","59");
INSERT INTO detalle_resultado VALUES("133","Examen Fisico-Quimico de Orina","Leucocitos","Negativo","59");
INSERT INTO detalle_resultado VALUES("134","Sedimento","Cell Epiteliales Escamosas","Moderadas","59");
INSERT INTO detalle_resultado VALUES("135","Sedimento","Bacterias Bacilares","Abundantes","59");
INSERT INTO detalle_resultado VALUES("136","Sedimento","Procitos","2 - 5 xc","59");
INSERT INTO detalle_resultado VALUES("137","Sedimento","Null","","59");
INSERT INTO detalle_resultado VALUES("138","Sedimento","Null","","59");
INSERT INTO detalle_resultado VALUES("139","Examen de Heces","Null","","59");
INSERT INTO detalle_resultado VALUES("140","Examen de Heces","Null","","59");
INSERT INTO detalle_resultado VALUES("141","Examen de Heces","Null","","59");
INSERT INTO detalle_resultado VALUES("142","Observacion Microscopica","Null","","59");
INSERT INTO detalle_resultado VALUES("143","Observacion Microscopica","Null","","59");
INSERT INTO detalle_resultado VALUES("144","Observacion Microscopica","Null","","59");
INSERT INTO detalle_resultado VALUES("145","Perfil Bioquimicos","Proteinas  Totales","5.6*g/dl*6.4 a 8.3","59");
INSERT INTO detalle_resultado VALUES("146","Perfil Bioquimicos","Albumina","3.5*g/dl*3.5 - 4.5","59");
INSERT INTO detalle_resultado VALUES("147","Perfil Bioquimicos","Globulinas","2.1*g/dl*2.5 - 3.5","59");
INSERT INTO detalle_resultado VALUES("148","Sedimento","Cristales","Fosfato amorfos abundantes","59");
INSERT INTO detalle_resultado VALUES("149","secrecion","Vaginal","","60");
INSERT INTO detalle_resultado VALUES("150","En fresco","Microorganismos","Germen aislado","60");
INSERT INTO detalle_resultado VALUES("151","En fresco","Celulas Epiteliales Escamosas","Abundantes","60");
INSERT INTO detalle_resultado VALUES("152","En fresco","Bacterias","Abundantes","60");
INSERT INTO detalle_resultado VALUES("153","En fresco","Piocitos","20 - 30 xc","60");
INSERT INTO detalle_resultado VALUES("154","En fresco","Filamentos Mucosos","5 - 10 xc","60");
INSERT INTO detalle_resultado VALUES("155","Antibiograma","Ac Nalidixico","Sensible","60");
INSERT INTO detalle_resultado VALUES("156","Antibiograma","Amikacina","Sensible","60");
INSERT INTO detalle_resultado VALUES("157","Antibiograma","Amox +AC Clavulanico","Sensible","60");
INSERT INTO detalle_resultado VALUES("158","Antibiograma","Cefalexina","Sensible","60");
INSERT INTO detalle_resultado VALUES("159","Antibiograma","Ceftriaxona","No Sensible","60");
INSERT INTO detalle_resultado VALUES("160","Antibiograma","Levofloxacina","Sensible","60");
INSERT INTO detalle_resultado VALUES("161","Antibiograma","Tetraciclina","No Sensible","60");
INSERT INTO detalle_resultado VALUES("162","Perfil Bioquimicos","Glucosa","260*mg/dl*30 a 60","61");
INSERT INTO detalle_resultado VALUES("163","Perfil Bioquimicos","Null","","61");
INSERT INTO detalle_resultado VALUES("164","Perfil Bioquimicos","Null","","61");
INSERT INTO detalle_resultado VALUES("165","Examen Fisico-Quimico de Orina","Null","","61");
INSERT INTO detalle_resultado VALUES("166","Examen Fisico-Quimico de Orina","Null","","61");
INSERT INTO detalle_resultado VALUES("167","Examen Fisico-Quimico de Orina","Null","","61");
INSERT INTO detalle_resultado VALUES("168","Examen Fisico-Quimico de Orina","Null","","61");
INSERT INTO detalle_resultado VALUES("169","Examen Fisico-Quimico de Orina","Null","","61");
INSERT INTO detalle_resultado VALUES("170","Examen Fisico-Quimico de Orina","Null","","61");
INSERT INTO detalle_resultado VALUES("171","Examen Fisico-Quimico de Orina","Null","","61");
INSERT INTO detalle_resultado VALUES("172","Examen Fisico-Quimico de Orina","Null","","61");
INSERT INTO detalle_resultado VALUES("173","Examen Fisico-Quimico de Orina","Null","","61");
INSERT INTO detalle_resultado VALUES("174","Examen Fisico-Quimico de Orina","Null","","61");
INSERT INTO detalle_resultado VALUES("175","Examen Fisico-Quimico de Orina","Null","","61");
INSERT INTO detalle_resultado VALUES("176","Examen Fisico-Quimico de Orina","Null","","61");
INSERT INTO detalle_resultado VALUES("177","Examen Fisico-Quimico de Orina","Null","","61");
INSERT INTO detalle_resultado VALUES("178","Sedimento","Null","","61");
INSERT INTO detalle_resultado VALUES("179","Sedimento","Null","","61");
INSERT INTO detalle_resultado VALUES("180","Sedimento","Null","","61");
INSERT INTO detalle_resultado VALUES("181","Sedimento","Null","","61");
INSERT INTO detalle_resultado VALUES("182","Sedimento","Null","","61");
INSERT INTO detalle_resultado VALUES("183","Examen de Heces","Null","","61");
INSERT INTO detalle_resultado VALUES("184","Examen de Heces","Null","","61");
INSERT INTO detalle_resultado VALUES("185","Examen de Heces","Null","","61");
INSERT INTO detalle_resultado VALUES("186","Observacion Microscopica","Null","","61");
INSERT INTO detalle_resultado VALUES("187","Observacion Microscopica","Null","","61");
INSERT INTO detalle_resultado VALUES("188","Observacion Microscopica","Null","","61");
INSERT INTO detalle_resultado VALUES("189","Perfil Bioquimicos","Glucosa","270*mg/dl*30 a 60","62");
INSERT INTO detalle_resultado VALUES("190","Perfil Bioquimicos","Null","","62");
INSERT INTO detalle_resultado VALUES("191","Perfil Bioquimicos","Null","","62");
INSERT INTO detalle_resultado VALUES("192","Examen Fisico-Quimico de Orina","Null","","62");
INSERT INTO detalle_resultado VALUES("193","Examen Fisico-Quimico de Orina","Null","","62");
INSERT INTO detalle_resultado VALUES("194","Examen Fisico-Quimico de Orina","Null","","62");
INSERT INTO detalle_resultado VALUES("195","Examen Fisico-Quimico de Orina","Null","","62");
INSERT INTO detalle_resultado VALUES("196","Examen Fisico-Quimico de Orina","Null","","62");
INSERT INTO detalle_resultado VALUES("197","Examen Fisico-Quimico de Orina","Null","","62");
INSERT INTO detalle_resultado VALUES("198","Examen Fisico-Quimico de Orina","Null","","62");
INSERT INTO detalle_resultado VALUES("199","Examen Fisico-Quimico de Orina","Null","","62");
INSERT INTO detalle_resultado VALUES("200","Examen Fisico-Quimico de Orina","Null","","62");
INSERT INTO detalle_resultado VALUES("201","Examen Fisico-Quimico de Orina","Null","","62");
INSERT INTO detalle_resultado VALUES("202","Examen Fisico-Quimico de Orina","Null","","62");
INSERT INTO detalle_resultado VALUES("203","Examen Fisico-Quimico de Orina","Null","","62");
INSERT INTO detalle_resultado VALUES("204","Examen Fisico-Quimico de Orina","Null","","62");
INSERT INTO detalle_resultado VALUES("205","Sedimento","Null","","62");
INSERT INTO detalle_resultado VALUES("206","Sedimento","Null","","62");
INSERT INTO detalle_resultado VALUES("207","Sedimento","Null","","62");
INSERT INTO detalle_resultado VALUES("208","Sedimento","Null","","62");
INSERT INTO detalle_resultado VALUES("209","Sedimento","Null","","62");
INSERT INTO detalle_resultado VALUES("210","Examen de Heces","Null","","62");
INSERT INTO detalle_resultado VALUES("211","Examen de Heces","Null","","62");
INSERT INTO detalle_resultado VALUES("212","Examen de Heces","Null","","62");
INSERT INTO detalle_resultado VALUES("213","Observacion Microscopica","Null","","62");
INSERT INTO detalle_resultado VALUES("214","Observacion Microscopica","Null","","62");
INSERT INTO detalle_resultado VALUES("215","Observacion Microscopica","Null","","62");
INSERT INTO detalle_resultado VALUES("216","Perfil Bioquimicos","Null","","63");
INSERT INTO detalle_resultado VALUES("217","Perfil Bioquimicos","Null","","63");
INSERT INTO detalle_resultado VALUES("218","Perfil Bioquimicos","Null","","63");
INSERT INTO detalle_resultado VALUES("219","Examen Fisico-Quimico de Orina","Null","","63");
INSERT INTO detalle_resultado VALUES("220","Examen Fisico-Quimico de Orina","Null","","63");
INSERT INTO detalle_resultado VALUES("221","Examen Fisico-Quimico de Orina","Null","","63");
INSERT INTO detalle_resultado VALUES("222","Examen Fisico-Quimico de Orina","Null","","63");
INSERT INTO detalle_resultado VALUES("223","Examen Fisico-Quimico de Orina","Null","","63");
INSERT INTO detalle_resultado VALUES("224","Examen Fisico-Quimico de Orina","Null","","63");
INSERT INTO detalle_resultado VALUES("225","Examen Fisico-Quimico de Orina","Null","","63");
INSERT INTO detalle_resultado VALUES("226","Examen Fisico-Quimico de Orina","Null","","63");
INSERT INTO detalle_resultado VALUES("227","Examen Fisico-Quimico de Orina","Null","","63");
INSERT INTO detalle_resultado VALUES("228","Examen Fisico-Quimico de Orina","Null","","63");
INSERT INTO detalle_resultado VALUES("229","Examen Fisico-Quimico de Orina","Null","","63");
INSERT INTO detalle_resultado VALUES("230","Examen Fisico-Quimico de Orina","Null","","63");
INSERT INTO detalle_resultado VALUES("231","Examen Fisico-Quimico de Orina","Null","","63");
INSERT INTO detalle_resultado VALUES("232","Sedimento","Null","","63");
INSERT INTO detalle_resultado VALUES("233","Sedimento","Null","","63");
INSERT INTO detalle_resultado VALUES("234","Sedimento","Null","","63");
INSERT INTO detalle_resultado VALUES("235","Sedimento","Null","","63");
INSERT INTO detalle_resultado VALUES("236","Sedimento","Null","","63");
INSERT INTO detalle_resultado VALUES("237","Examen de Heces","Null","","63");
INSERT INTO detalle_resultado VALUES("238","Examen de Heces","Null","","63");
INSERT INTO detalle_resultado VALUES("239","Examen de Heces","Null","","63");
INSERT INTO detalle_resultado VALUES("240","Observacion Microscopica","Null","","63");
INSERT INTO detalle_resultado VALUES("241","Observacion Microscopica","Null","","63");
INSERT INTO detalle_resultado VALUES("242","Observacion Microscopica","Null","","63");
INSERT INTO detalle_resultado VALUES("243","Perfil Bioquimicos","TGO","28*U/L*hasta 40","63");
INSERT INTO detalle_resultado VALUES("244","Perfil Bioquimicos","TGP","32*U/L*hasta 41","63");
INSERT INTO detalle_resultado VALUES("245","Perfil Bioquimicos","Bilirrubina T","0.8*mg/dl*hasta 1","63");
INSERT INTO detalle_resultado VALUES("246","Perfil Bioquimicos","Bilirrubina D","0.2*mg/dl*hasta 0.2","63");
INSERT INTO detalle_resultado VALUES("247","Perfil Bioquimicos","Bilirrubina I","0.6*mg/dl*hasta 0.8","63");
INSERT INTO detalle_resultado VALUES("248","Perfil Bioquimicos","Fosfatasa Alcalina","205*U/L*hasta 300","63");
INSERT INTO detalle_resultado VALUES("249","Perfil Bioquimicos","GGT","30*U/L*hasta 32","63");
INSERT INTO detalle_resultado VALUES("250","Fisico-Quimico","Color","Amarillo","64");
INSERT INTO detalle_resultado VALUES("251","Fisico-Quimico","Aspecto","Turbio","64");
INSERT INTO detalle_resultado VALUES("252","Fisico-Quimico","Densidad","1.025","64");
INSERT INTO detalle_resultado VALUES("253","Fisico-Quimico","PH","6,5","64");
INSERT INTO detalle_resultado VALUES("254","Fisico-Quimico","Glucosaplus","Negativo","64");
INSERT INTO detalle_resultado VALUES("255","Fisico-Quimico","Nitritos","Negativo","64");
INSERT INTO detalle_resultado VALUES("256","Fisico-Quimico","C. Cetonicos","Negativo","64");
INSERT INTO detalle_resultado VALUES("257","Fisico-Quimico","Proteínas","Negativo","64");
INSERT INTO detalle_resultado VALUES("258","Fisico-Quimico","Uroblinogeno","Negativo","64");
INSERT INTO detalle_resultado VALUES("259","Fisico-Quimico","Bilirrubinas","Negativo","64");
INSERT INTO detalle_resultado VALUES("260","Fisico-Quimico","Sangre","Negativo","64");
INSERT INTO detalle_resultado VALUES("261","Fisico-Quimico","Acido Ascorbico","Negativo","64");
INSERT INTO detalle_resultado VALUES("262","Fisico-Quimico","Leucocitos","Negativo","64");
INSERT INTO detalle_resultado VALUES("263","Sedimento","Cel. Epiteliales Escamosas","Abundantes","64");
INSERT INTO detalle_resultado VALUES("264","Sedimento","Bacterias","Numerosas","64");
INSERT INTO detalle_resultado VALUES("265","Sedimento","Piocitos","3-5 x c","64");
INSERT INTO detalle_resultado VALUES("266","Sedimento","Hematies","0 -2 x c","64");
INSERT INTO detalle_resultado VALUES("267","Sedimento","Filamentos Mucosos","abundantes","64");
INSERT INTO detalle_resultado VALUES("268","Examen de Sangre - Embarazo","Prueba de Embarazo","NEGATIVO*-*-","65");
INSERT INTO detalle_resultado VALUES("269","Perfil Bioquimicos","Glucosa","110*mg/dl*30 a 60","66");
INSERT INTO detalle_resultado VALUES("270","Perfil Bioquimicos","Colesterol","280*mg/dl*70 a 100","66");
INSERT INTO detalle_resultado VALUES("271","Perfil Bioquimicos","Trigliceridos","302*mg/dl*110 a 130","66");
INSERT INTO detalle_resultado VALUES("272","Examen Fisico-Quimico de Orina","Null","","66");
INSERT INTO detalle_resultado VALUES("273","Examen Fisico-Quimico de Orina","Null","","66");
INSERT INTO detalle_resultado VALUES("274","Examen Fisico-Quimico de Orina","Null","","66");
INSERT INTO detalle_resultado VALUES("275","Examen Fisico-Quimico de Orina","Null","","66");
INSERT INTO detalle_resultado VALUES("276","Examen Fisico-Quimico de Orina","Null","","66");
INSERT INTO detalle_resultado VALUES("277","Examen Fisico-Quimico de Orina","Null","","66");
INSERT INTO detalle_resultado VALUES("278","Examen Fisico-Quimico de Orina","Null","","66");
INSERT INTO detalle_resultado VALUES("279","Examen Fisico-Quimico de Orina","Null","","66");
INSERT INTO detalle_resultado VALUES("280","Examen Fisico-Quimico de Orina","Null","","66");
INSERT INTO detalle_resultado VALUES("281","Examen Fisico-Quimico de Orina","Null","","66");
INSERT INTO detalle_resultado VALUES("282","Examen Fisico-Quimico de Orina","Null","","66");
INSERT INTO detalle_resultado VALUES("283","Examen Fisico-Quimico de Orina","Null","","66");
INSERT INTO detalle_resultado VALUES("284","Examen Fisico-Quimico de Orina","Null","","66");
INSERT INTO detalle_resultado VALUES("285","Sedimento","Null","","66");
INSERT INTO detalle_resultado VALUES("286","Sedimento","Null","","66");
INSERT INTO detalle_resultado VALUES("287","Sedimento","Null","","66");
INSERT INTO detalle_resultado VALUES("288","Sedimento","Null","","66");
INSERT INTO detalle_resultado VALUES("289","Sedimento","Null","","66");
INSERT INTO detalle_resultado VALUES("290","Examen de Heces","Null","","66");
INSERT INTO detalle_resultado VALUES("291","Examen de Heces","Null","","66");
INSERT INTO detalle_resultado VALUES("292","Examen de Heces","Null","","66");
INSERT INTO detalle_resultado VALUES("293","Observacion Microscopica","Null","","66");
INSERT INTO detalle_resultado VALUES("294","Observacion Microscopica","Null","","66");
INSERT INTO detalle_resultado VALUES("295","Observacion Microscopica","Null","","66");
INSERT INTO detalle_resultado VALUES("296","Perfil Bioquimicos","HDL","48*mg/dl*30 - 50","66");
INSERT INTO detalle_resultado VALUES("297","Perfil Bioquimicos","Null","","67");
INSERT INTO detalle_resultado VALUES("298","Perfil Bioquimicos","Null","","67");
INSERT INTO detalle_resultado VALUES("299","Perfil Bioquimicos","Null","","67");
INSERT INTO detalle_resultado VALUES("300","Examen Fisico-Quimico de Orina","Null","","67");
INSERT INTO detalle_resultado VALUES("301","Examen Fisico-Quimico de Orina","Null","","67");
INSERT INTO detalle_resultado VALUES("302","Examen Fisico-Quimico de Orina","Null","","67");
INSERT INTO detalle_resultado VALUES("303","Examen Fisico-Quimico de Orina","Null","","67");
INSERT INTO detalle_resultado VALUES("304","Examen Fisico-Quimico de Orina","Null","","67");
INSERT INTO detalle_resultado VALUES("305","Examen Fisico-Quimico de Orina","Null","","67");
INSERT INTO detalle_resultado VALUES("306","Examen Fisico-Quimico de Orina","Null","","67");
INSERT INTO detalle_resultado VALUES("307","Examen Fisico-Quimico de Orina","Null","","67");
INSERT INTO detalle_resultado VALUES("308","Examen Fisico-Quimico de Orina","Null","","67");
INSERT INTO detalle_resultado VALUES("309","Examen Fisico-Quimico de Orina","Null","","67");
INSERT INTO detalle_resultado VALUES("310","Examen Fisico-Quimico de Orina","Null","","67");
INSERT INTO detalle_resultado VALUES("311","Examen Fisico-Quimico de Orina","Null","","67");
INSERT INTO detalle_resultado VALUES("312","Examen Fisico-Quimico de Orina","Null","","67");
INSERT INTO detalle_resultado VALUES("313","Sedimento","Null","","67");
INSERT INTO detalle_resultado VALUES("314","Sedimento","Null","","67");
INSERT INTO detalle_resultado VALUES("315","Sedimento","Null","","67");
INSERT INTO detalle_resultado VALUES("316","Sedimento","Null","","67");
INSERT INTO detalle_resultado VALUES("317","Sedimento","Null","","67");
INSERT INTO detalle_resultado VALUES("318","Examen de Heces","Null","","67");
INSERT INTO detalle_resultado VALUES("319","Examen de Heces","Null","","67");
INSERT INTO detalle_resultado VALUES("320","Examen de Heces","Null","","67");
INSERT INTO detalle_resultado VALUES("321","Observacion Microscopica","Null","","67");
INSERT INTO detalle_resultado VALUES("322","Observacion Microscopica","Null","","67");
INSERT INTO detalle_resultado VALUES("323","Observacion Microscopica","Null","","67");
INSERT INTO detalle_resultado VALUES("324","Perfil Bioquimicos","ASTO","++*mg/dl*--","67");
INSERT INTO detalle_resultado VALUES("325","Perfil Bioquimicos","PCR","++*gr*--","67");
INSERT INTO detalle_resultado VALUES("326","Perfil Bioquimicos","Glucosa","182*mg/dl*30 a 60","68");
INSERT INTO detalle_resultado VALUES("327","Perfil Bioquimicos","Null","","68");
INSERT INTO detalle_resultado VALUES("328","Perfil Bioquimicos","Null","","68");
INSERT INTO detalle_resultado VALUES("329","Examen Fisico-Quimico de Orina","Null","","68");
INSERT INTO detalle_resultado VALUES("330","Examen Fisico-Quimico de Orina","Null","","68");
INSERT INTO detalle_resultado VALUES("331","Examen Fisico-Quimico de Orina","Null","","68");
INSERT INTO detalle_resultado VALUES("332","Examen Fisico-Quimico de Orina","Null","","68");
INSERT INTO detalle_resultado VALUES("333","Examen Fisico-Quimico de Orina","Null","","68");
INSERT INTO detalle_resultado VALUES("334","Examen Fisico-Quimico de Orina","Null","","68");
INSERT INTO detalle_resultado VALUES("335","Examen Fisico-Quimico de Orina","Null","","68");
INSERT INTO detalle_resultado VALUES("336","Examen Fisico-Quimico de Orina","Null","","68");
INSERT INTO detalle_resultado VALUES("337","Examen Fisico-Quimico de Orina","Null","","68");
INSERT INTO detalle_resultado VALUES("338","Examen Fisico-Quimico de Orina","Null","","68");
INSERT INTO detalle_resultado VALUES("339","Examen Fisico-Quimico de Orina","Null","","68");
INSERT INTO detalle_resultado VALUES("340","Examen Fisico-Quimico de Orina","Null","","68");
INSERT INTO detalle_resultado VALUES("341","Examen Fisico-Quimico de Orina","Null","","68");
INSERT INTO detalle_resultado VALUES("342","Sedimento","Null","","68");
INSERT INTO detalle_resultado VALUES("343","Sedimento","Null","","68");
INSERT INTO detalle_resultado VALUES("344","Sedimento","Null","","68");
INSERT INTO detalle_resultado VALUES("345","Sedimento","Null","","68");
INSERT INTO detalle_resultado VALUES("346","Sedimento","Null","","68");
INSERT INTO detalle_resultado VALUES("347","Examen de Heces","Null","","68");
INSERT INTO detalle_resultado VALUES("348","Examen de Heces","Null","","68");
INSERT INTO detalle_resultado VALUES("349","Examen de Heces","Null","","68");
INSERT INTO detalle_resultado VALUES("350","Observacion Microscopica","Null","","68");
INSERT INTO detalle_resultado VALUES("351","Observacion Microscopica","Null","","68");
INSERT INTO detalle_resultado VALUES("352","Observacion Microscopica","Null","","68");
INSERT INTO detalle_resultado VALUES("353","Perfil Bioquimicos","H1 Glicosilada","7,5*%*4 - 6,5","68");
INSERT INTO detalle_resultado VALUES("354","Perfil Bioquimicos","Glucosa","85*mg/dl*30 a 60","69");
INSERT INTO detalle_resultado VALUES("355","Perfil Bioquimicos","Colesterol","192*mg/dl*70 a 100","69");
INSERT INTO detalle_resultado VALUES("356","Perfil Bioquimicos","Trigliceridos","88*mg/dl*110 a 130","69");
INSERT INTO detalle_resultado VALUES("357","Examen Fisico-Quimico de Orina","Null","","69");
INSERT INTO detalle_resultado VALUES("358","Examen Fisico-Quimico de Orina","Null","","69");
INSERT INTO detalle_resultado VALUES("359","Examen Fisico-Quimico de Orina","Null","","69");
INSERT INTO detalle_resultado VALUES("360","Examen Fisico-Quimico de Orina","Null","","69");
INSERT INTO detalle_resultado VALUES("361","Examen Fisico-Quimico de Orina","Null","","69");
INSERT INTO detalle_resultado VALUES("362","Examen Fisico-Quimico de Orina","Null","","69");
INSERT INTO detalle_resultado VALUES("363","Examen Fisico-Quimico de Orina","Null","","69");
INSERT INTO detalle_resultado VALUES("364","Examen Fisico-Quimico de Orina","Null","","69");
INSERT INTO detalle_resultado VALUES("365","Examen Fisico-Quimico de Orina","Null","","69");
INSERT INTO detalle_resultado VALUES("366","Examen Fisico-Quimico de Orina","Null","","69");
INSERT INTO detalle_resultado VALUES("367","Examen Fisico-Quimico de Orina","Null","","69");
INSERT INTO detalle_resultado VALUES("368","Examen Fisico-Quimico de Orina","Null","","69");
INSERT INTO detalle_resultado VALUES("369","Examen Fisico-Quimico de Orina","Null","","69");
INSERT INTO detalle_resultado VALUES("370","Sedimento","Null","","69");
INSERT INTO detalle_resultado VALUES("371","Sedimento","Null","","69");
INSERT INTO detalle_resultado VALUES("372","Sedimento","Null","","69");
INSERT INTO detalle_resultado VALUES("373","Sedimento","Null","","69");
INSERT INTO detalle_resultado VALUES("374","Sedimento","Null","","69");
INSERT INTO detalle_resultado VALUES("375","Examen de Heces","Null","","69");
INSERT INTO detalle_resultado VALUES("376","Examen de Heces","Null","","69");
INSERT INTO detalle_resultado VALUES("377","Examen de Heces","Null","","69");
INSERT INTO detalle_resultado VALUES("378","Observacion Microscopica","Null","","69");
INSERT INTO detalle_resultado VALUES("379","Observacion Microscopica","Null","","69");
INSERT INTO detalle_resultado VALUES("380","Observacion Microscopica","Null","","69");
INSERT INTO detalle_resultado VALUES("381","Bacteriologia Cultivo - Antibiograma de Orina","Contaje de Colonias","+100.000col/ml","70");
INSERT INTO detalle_resultado VALUES("382","Bacteriologia Cultivo - Antibiograma de Orina","Microorganismo","E.coli","70");
INSERT INTO detalle_resultado VALUES("383","Antibiograma","Acido Nalidixico","No sensible","70");
INSERT INTO detalle_resultado VALUES("384","Antibiograma","Amikacina","Sensible","70");
INSERT INTO detalle_resultado VALUES("385","Antibiograma","Ampicilina Sulbactam","No sensible","70");
INSERT INTO detalle_resultado VALUES("386","Antibiograma","Amoxicilina + AC Clavulanico","No sensible","70");
INSERT INTO detalle_resultado VALUES("387","Antibiograma","Nitrofurantoina","Sensible","70");
INSERT INTO detalle_resultado VALUES("388","Antibiograma","Ciprofloxacina","Sensible","70");
INSERT INTO detalle_resultado VALUES("389","Fisico-Quimico","Color","Amarillo","71");
INSERT INTO detalle_resultado VALUES("390","Fisico-Quimico","Aspecto","Turbio","71");
INSERT INTO detalle_resultado VALUES("391","Fisico-Quimico","Densidad","1.030","71");
INSERT INTO detalle_resultado VALUES("392","Fisico-Quimico","PH","7","71");
INSERT INTO detalle_resultado VALUES("393","Fisico-Quimico","Glucosaplus","Negativo","71");
INSERT INTO detalle_resultado VALUES("394","Fisico-Quimico","Nitritos","Negativo","71");
INSERT INTO detalle_resultado VALUES("395","Fisico-Quimico","C. Cetonicos","Negativo","71");
INSERT INTO detalle_resultado VALUES("396","Fisico-Quimico","Proteínas","+","71");
INSERT INTO detalle_resultado VALUES("397","Fisico-Quimico","Uroblinogeno","Negativo","71");
INSERT INTO detalle_resultado VALUES("398","Fisico-Quimico","Bilirrubinas","Negativo","71");
INSERT INTO detalle_resultado VALUES("399","Fisico-Quimico","Sangre","Negativo","71");
INSERT INTO detalle_resultado VALUES("400","Fisico-Quimico","Acido Ascorbico","Negativo","71");
INSERT INTO detalle_resultado VALUES("401","Fisico-Quimico","Leucocitos","Negativo","71");
INSERT INTO detalle_resultado VALUES("402","Sedimento","Cel. Epiteliales Escamosas","Abundantes","71");
INSERT INTO detalle_resultado VALUES("403","Sedimento","Bacterias","Abundantes","71");
INSERT INTO detalle_resultado VALUES("404","Sedimento","Piocitos","10 a 15 xc","71");
INSERT INTO detalle_resultado VALUES("405","Sedimento","Hematies","--","71");
INSERT INTO detalle_resultado VALUES("406","Sedimento","Filamentos Mucosos","--","71");
INSERT INTO detalle_resultado VALUES("407","Bacteriologia Cultivo - Antibiograma de Orina","Contaje de Colonias","+100000 col/ml","72");
INSERT INTO detalle_resultado VALUES("408","Bacteriologia Cultivo - Antibiograma de Orina","Microorganismo","Proteus Mirabilis","72");
INSERT INTO detalle_resultado VALUES("409","Antibiograma","Acido Nalidixico","Sensible","72");
INSERT INTO detalle_resultado VALUES("410","Antibiograma","Amikacina","Sensible","72");
INSERT INTO detalle_resultado VALUES("411","Antibiograma","Ampicilina Sulbactam","No sensible","72");
INSERT INTO detalle_resultado VALUES("412","Antibiograma","Amoxicilina + AC Clavulanico","No sensible","72");
INSERT INTO detalle_resultado VALUES("413","Antibiograma","Nitrofurantoina","Sensible","72");
INSERT INTO detalle_resultado VALUES("414","Fisico-Quimico","Color","Amarillo Verdoso","73");
INSERT INTO detalle_resultado VALUES("415","Fisico-Quimico","Aspecto","Ligeramente Turbio","73");
INSERT INTO detalle_resultado VALUES("416","Fisico-Quimico","Densidad","1020","73");
INSERT INTO detalle_resultado VALUES("417","Fisico-Quimico","PH","5","73");
INSERT INTO detalle_resultado VALUES("418","Fisico-Quimico","Glucosaplus","Negativo","73");
INSERT INTO detalle_resultado VALUES("419","Fisico-Quimico","Nitritos","Negativo","73");
INSERT INTO detalle_resultado VALUES("420","Fisico-Quimico","C. Cetonicos","Negativo","73");
INSERT INTO detalle_resultado VALUES("421","Fisico-Quimico","Proteínas","Negativo","73");
INSERT INTO detalle_resultado VALUES("422","Fisico-Quimico","Uroblinogeno","Negativo","73");
INSERT INTO detalle_resultado VALUES("423","Fisico-Quimico","Bilirrubinas","Negativo","73");
INSERT INTO detalle_resultado VALUES("424","Fisico-Quimico","Sangre","Negativo","73");
INSERT INTO detalle_resultado VALUES("425","Fisico-Quimico","Acido Ascorbico","Negativo","73");
INSERT INTO detalle_resultado VALUES("426","Fisico-Quimico","Leucocitos","Negativo","73");
INSERT INTO detalle_resultado VALUES("427","Sedimento","Cel. Epiteliales Escamosas","Numerosas","73");
INSERT INTO detalle_resultado VALUES("428","Sedimento","Bacterias","Moderadas","73");
INSERT INTO detalle_resultado VALUES("429","Sedimento","Piocitos","0 -2xc","73");
INSERT INTO detalle_resultado VALUES("430","Sedimento","Hematies","0 - 1xc","73");
INSERT INTO detalle_resultado VALUES("431","Sedimento","Filamentos Mucosos","+","73");
INSERT INTO detalle_resultado VALUES("432","Examen de Sangre - Embarazo","Prueba de Embarazo","POSITIVO*-*-","74");
INSERT INTO detalle_resultado VALUES("433","Perfil Bioquimicos","Glucosa","78*mg/dl*30 a 60","75");
INSERT INTO detalle_resultado VALUES("434","Perfil Bioquimicos","Colesterol","121*mg/dl*70 a 100","75");
INSERT INTO detalle_resultado VALUES("435","Perfil Bioquimicos","Trigliceridos","80*mg/dl*110 a 130","75");
INSERT INTO detalle_resultado VALUES("436","Examen Fisico-Quimico de Orina","Null","","75");
INSERT INTO detalle_resultado VALUES("437","Examen Fisico-Quimico de Orina","Null","","75");
INSERT INTO detalle_resultado VALUES("438","Examen Fisico-Quimico de Orina","Null","","75");
INSERT INTO detalle_resultado VALUES("439","Examen Fisico-Quimico de Orina","Null","","75");
INSERT INTO detalle_resultado VALUES("440","Examen Fisico-Quimico de Orina","Null","","75");
INSERT INTO detalle_resultado VALUES("441","Examen Fisico-Quimico de Orina","Null","","75");
INSERT INTO detalle_resultado VALUES("442","Examen Fisico-Quimico de Orina","Null","","75");
INSERT INTO detalle_resultado VALUES("443","Examen Fisico-Quimico de Orina","Null","","75");
INSERT INTO detalle_resultado VALUES("444","Examen Fisico-Quimico de Orina","Null","","75");
INSERT INTO detalle_resultado VALUES("445","Examen Fisico-Quimico de Orina","Null","","75");
INSERT INTO detalle_resultado VALUES("446","Examen Fisico-Quimico de Orina","Null","","75");
INSERT INTO detalle_resultado VALUES("447","Examen Fisico-Quimico de Orina","Null","","75");
INSERT INTO detalle_resultado VALUES("448","Examen Fisico-Quimico de Orina","Null","","75");
INSERT INTO detalle_resultado VALUES("449","Sedimento","Null","","75");
INSERT INTO detalle_resultado VALUES("450","Sedimento","Null","","75");
INSERT INTO detalle_resultado VALUES("451","Sedimento","Null","","75");
INSERT INTO detalle_resultado VALUES("452","Sedimento","Null","","75");
INSERT INTO detalle_resultado VALUES("453","Sedimento","Null","","75");
INSERT INTO detalle_resultado VALUES("454","Examen de Heces","Null","","75");
INSERT INTO detalle_resultado VALUES("455","Examen de Heces","Null","","75");
INSERT INTO detalle_resultado VALUES("456","Examen de Heces","Null","","75");
INSERT INTO detalle_resultado VALUES("457","Observacion Microscopica","Null","","75");
INSERT INTO detalle_resultado VALUES("458","Observacion Microscopica","Null","","75");
INSERT INTO detalle_resultado VALUES("459","Observacion Microscopica","Null","","75");
INSERT INTO detalle_resultado VALUES("460","Examen Fisico-Quimico de Orina","widal","-","75");
INSERT INTO detalle_resultado VALUES("461","Examen Fisico-Quimico de Orina","PARAT A","negativo","75");
INSERT INTO detalle_resultado VALUES("462","Examen Fisico-Quimico de Orina","PARAT B","negativo","75");
INSERT INTO detalle_resultado VALUES("463","Examen Fisico-Quimico de Orina","Ebert O","negativo","75");
INSERT INTO detalle_resultado VALUES("464","Examen Fisico-Quimico de Orina","Ebert H","negativo","75");
INSERT INTO detalle_resultado VALUES("465","Examen Fisico-Quimico de Orina","Proteus OX2","negativo","75");
INSERT INTO detalle_resultado VALUES("466","Examen Fisico-Quimico de Orina","Proteus OX19","negativo","75");
INSERT INTO detalle_resultado VALUES("467","Perfil Bioquimicos","Glucosa","125*mg/dl*30 a 60","76");
INSERT INTO detalle_resultado VALUES("468","Perfil Bioquimicos","Colesterol","182*mg/dl*70 a 100","76");
INSERT INTO detalle_resultado VALUES("469","Perfil Bioquimicos","Trigliceridos","160*mg/dl*110 a 130","76");
INSERT INTO detalle_resultado VALUES("470","Examen Fisico-Quimico de Orina","Color","Amarillo","76");
INSERT INTO detalle_resultado VALUES("471","Examen Fisico-Quimico de Orina","Aspecto","Ligeramente Turbio","76");
INSERT INTO detalle_resultado VALUES("472","Examen Fisico-Quimico de Orina","Densidad","1015","76");
INSERT INTO detalle_resultado VALUES("473","Examen Fisico-Quimico de Orina","PH","5.5","76");
INSERT INTO detalle_resultado VALUES("474","Examen Fisico-Quimico de Orina","Glucosaplus","Negativo","76");
INSERT INTO detalle_resultado VALUES("475","Examen Fisico-Quimico de Orina","Nitritos","Negativo","76");
INSERT INTO detalle_resultado VALUES("476","Examen Fisico-Quimico de Orina","C. Cetonicos","Negativo","76");
INSERT INTO detalle_resultado VALUES("477","Examen Fisico-Quimico de Orina","Proteínas","Negativo","76");
INSERT INTO detalle_resultado VALUES("478","Examen Fisico-Quimico de Orina","Uroblinogeno","Negativo","76");
INSERT INTO detalle_resultado VALUES("479","Examen Fisico-Quimico de Orina","Bilirrubinas","Negativo","76");
INSERT INTO detalle_resultado VALUES("480","Examen Fisico-Quimico de Orina","Sangre","Negativo","76");
INSERT INTO detalle_resultado VALUES("481","Examen Fisico-Quimico de Orina","Acido Ascorbico","Negativo","76");
INSERT INTO detalle_resultado VALUES("482","Examen Fisico-Quimico de Orina","Leucocitos","Negativo","76");
INSERT INTO detalle_resultado VALUES("483","Sedimento","Cell Epiteliales Escamosas","Numerosas","76");
INSERT INTO detalle_resultado VALUES("484","Sedimento","Bacterias Bacilares","Numerosas","76");
INSERT INTO detalle_resultado VALUES("485","Sedimento","Procitos","2 - 5","76");
INSERT INTO detalle_resultado VALUES("486","Sedimento","C. Oxalato de Calcio","0 - 2","76");
INSERT INTO detalle_resultado VALUES("487","Sedimento","Filamentos Mucosos","++","76");
INSERT INTO detalle_resultado VALUES("488","Examen de Heces","Colorhe","Cafe Oscuro","76");
INSERT INTO detalle_resultado VALUES("489","Examen de Heces","Aspectohe","Blandas","76");
INSERT INTO detalle_resultado VALUES("490","Examen de Heces","Reaccion","no presenta parasitos","76");
INSERT INTO detalle_resultado VALUES("491","Observacion Microscopica","Null","","76");
INSERT INTO detalle_resultado VALUES("492","Observacion Microscopica","Null","","76");
INSERT INTO detalle_resultado VALUES("493","Observacion Microscopica","Null","","76");
INSERT INTO detalle_resultado VALUES("494","Examen de Sangre - Embarazo","Prueba de Embarazo","NEGATIVO*-*-","77");
INSERT INTO detalle_resultado VALUES("495","Perfil Bioquimicos","Glucosa","76*mg/dl*30 a 60","78");
INSERT INTO detalle_resultado VALUES("496","Perfil Bioquimicos","Colesterol","137*mg/dl*70 a 100","78");
INSERT INTO detalle_resultado VALUES("497","Perfil Bioquimicos","Trigliceridos","119*mg/dl*110 a 130","78");
INSERT INTO detalle_resultado VALUES("498","Examen Fisico-Quimico de Orina","Null","","78");
INSERT INTO detalle_resultado VALUES("499","Examen Fisico-Quimico de Orina","Null","","78");
INSERT INTO detalle_resultado VALUES("500","Examen Fisico-Quimico de Orina","Null","","78");
INSERT INTO detalle_resultado VALUES("501","Examen Fisico-Quimico de Orina","Null","","78");
INSERT INTO detalle_resultado VALUES("502","Examen Fisico-Quimico de Orina","Null","","78");
INSERT INTO detalle_resultado VALUES("503","Examen Fisico-Quimico de Orina","Null","","78");
INSERT INTO detalle_resultado VALUES("504","Examen Fisico-Quimico de Orina","Null","","78");
INSERT INTO detalle_resultado VALUES("505","Examen Fisico-Quimico de Orina","Null","","78");
INSERT INTO detalle_resultado VALUES("506","Examen Fisico-Quimico de Orina","Null","","78");
INSERT INTO detalle_resultado VALUES("507","Examen Fisico-Quimico de Orina","Null","","78");
INSERT INTO detalle_resultado VALUES("508","Examen Fisico-Quimico de Orina","Null","","78");
INSERT INTO detalle_resultado VALUES("509","Examen Fisico-Quimico de Orina","Null","","78");
INSERT INTO detalle_resultado VALUES("510","Examen Fisico-Quimico de Orina","Null","","78");
INSERT INTO detalle_resultado VALUES("511","Sedimento","Null","","78");
INSERT INTO detalle_resultado VALUES("512","Sedimento","Null","","78");
INSERT INTO detalle_resultado VALUES("513","Sedimento","Null","","78");
INSERT INTO detalle_resultado VALUES("514","Sedimento","Null","","78");
INSERT INTO detalle_resultado VALUES("515","Sedimento","Null","","78");
INSERT INTO detalle_resultado VALUES("516","Examen de Heces","Null","","78");
INSERT INTO detalle_resultado VALUES("517","Examen de Heces","Null","","78");
INSERT INTO detalle_resultado VALUES("518","Examen de Heces","Null","","78");
INSERT INTO detalle_resultado VALUES("519","Observacion Microscopica","Null","","78");
INSERT INTO detalle_resultado VALUES("520","Observacion Microscopica","Null","","78");
INSERT INTO detalle_resultado VALUES("521","Observacion Microscopica","Null","","78");
INSERT INTO detalle_resultado VALUES("522","Perfil Bioquimicos","urea","37*mg/dl*10 - 50","78");
INSERT INTO detalle_resultado VALUES("523","Perfil Bioquimicos","creatinina","0.6*mg/dl*0.5 - 0.9 (m)","78");
INSERT INTO detalle_resultado VALUES("524","Perfil Bioquimicos","-","-*-*0.6 - 1.1 (H)","78");
INSERT INTO detalle_resultado VALUES("525","Perfil Bioquimicos","Ac. urico","2.74*mg/dl*2.0 - 7.2","78");
INSERT INTO detalle_resultado VALUES("526","Examen de Sangre - Embarazo","Prueba de Embarazo","POSITIVO*-*-","79");
INSERT INTO detalle_resultado VALUES("527","Examen de Sangre - Embarazo","Prueba de Embarazo","POSITIVO*-*-","80");
INSERT INTO detalle_resultado VALUES("528","secrecion","Vaginal","","81");
INSERT INTO detalle_resultado VALUES("529","En fresco","Microorganismos","proteus vulgaris","81");
INSERT INTO detalle_resultado VALUES("530","En fresco","Celulas Epiteliales Escamosas","Moderadas","81");
INSERT INTO detalle_resultado VALUES("531","En fresco","Bacterias","Moderadas","81");
INSERT INTO detalle_resultado VALUES("532","En fresco","Piocitos","20.000 uifc/ ml","81");
INSERT INTO detalle_resultado VALUES("533","En fresco","Filamentos Mucosos","orina","81");
INSERT INTO detalle_resultado VALUES("534","Antibiograma","Ac Nalidixico","No Sensible","81");
INSERT INTO detalle_resultado VALUES("535","Antibiograma","Amikacina","Sensible","81");
INSERT INTO detalle_resultado VALUES("536","Antibiograma","Amox +AC Clavulanico","No Sensible","81");
INSERT INTO detalle_resultado VALUES("537","Antibiograma","Cefalexina","Sensible","81");
INSERT INTO detalle_resultado VALUES("538","Antibiograma","Ceftriaxona","Sensible","81");
INSERT INTO detalle_resultado VALUES("539","Antibiograma","Levofloxacina","No Sensible","81");
INSERT INTO detalle_resultado VALUES("540","Antibiograma","Tetraciclina","Sensible","81");
INSERT INTO detalle_resultado VALUES("541","Perfil Bioquimicos","Null","","82");
INSERT INTO detalle_resultado VALUES("542","Perfil Bioquimicos","Null","","82");
INSERT INTO detalle_resultado VALUES("543","Perfil Bioquimicos","Null","","82");
INSERT INTO detalle_resultado VALUES("544","Examen Fisico-Quimico de Orina","Null","","82");
INSERT INTO detalle_resultado VALUES("545","Examen Fisico-Quimico de Orina","Null","","82");
INSERT INTO detalle_resultado VALUES("546","Examen Fisico-Quimico de Orina","Null","","82");
INSERT INTO detalle_resultado VALUES("547","Examen Fisico-Quimico de Orina","Null","","82");
INSERT INTO detalle_resultado VALUES("548","Examen Fisico-Quimico de Orina","Null","","82");
INSERT INTO detalle_resultado VALUES("549","Examen Fisico-Quimico de Orina","Null","","82");
INSERT INTO detalle_resultado VALUES("550","Examen Fisico-Quimico de Orina","Null","","82");
INSERT INTO detalle_resultado VALUES("551","Examen Fisico-Quimico de Orina","Null","","82");
INSERT INTO detalle_resultado VALUES("552","Examen Fisico-Quimico de Orina","Null","","82");
INSERT INTO detalle_resultado VALUES("553","Examen Fisico-Quimico de Orina","Null","","82");
INSERT INTO detalle_resultado VALUES("554","Examen Fisico-Quimico de Orina","Null","","82");
INSERT INTO detalle_resultado VALUES("555","Examen Fisico-Quimico de Orina","Null","","82");
INSERT INTO detalle_resultado VALUES("556","Examen Fisico-Quimico de Orina","Null","","82");
INSERT INTO detalle_resultado VALUES("557","Sedimento","Null","","82");
INSERT INTO detalle_resultado VALUES("558","Sedimento","Null","","82");
INSERT INTO detalle_resultado VALUES("559","Sedimento","Null","","82");
INSERT INTO detalle_resultado VALUES("560","Sedimento","Null","","82");
INSERT INTO detalle_resultado VALUES("561","Sedimento","Null","","82");
INSERT INTO detalle_resultado VALUES("562","Examen de Heces","Null","","82");
INSERT INTO detalle_resultado VALUES("563","Examen de Heces","Null","","82");
INSERT INTO detalle_resultado VALUES("564","Examen de Heces","Null","","82");
INSERT INTO detalle_resultado VALUES("565","Observacion Microscopica","Null","","82");
INSERT INTO detalle_resultado VALUES("566","Observacion Microscopica","Null","","82");
INSERT INTO detalle_resultado VALUES("567","Observacion Microscopica","Null","","82");
INSERT INTO detalle_resultado VALUES("568","Perfil Bioquimicos","widal","1.0000*-*-","82");
INSERT INTO detalle_resultado VALUES("569","Perfil Bioquimicos","parasitologico","negativo*-*-","82");
INSERT INTO detalle_resultado VALUES("570","Perfil Bioquimicos","Proteos ox19","negativo*-*-","82");
INSERT INTO detalle_resultado VALUES("571","Perfil Bioquimicos","Glucosa","102*mg/dl*30 a 60","83");
INSERT INTO detalle_resultado VALUES("572","Perfil Bioquimicos","Colesterol","189*mg/dl*70 a 100","83");
INSERT INTO detalle_resultado VALUES("573","Perfil Bioquimicos","Trigliceridos","120*ml*110 a 130","83");
INSERT INTO detalle_resultado VALUES("574","Examen Fisico-Quimico de Orina","Color","Amarillo","83");
INSERT INTO detalle_resultado VALUES("575","Examen Fisico-Quimico de Orina","Aspecto","Ligeramente Turbio","83");
INSERT INTO detalle_resultado VALUES("576","Examen Fisico-Quimico de Orina","Densidad","1,025","83");
INSERT INTO detalle_resultado VALUES("577","Examen Fisico-Quimico de Orina","PH","7","83");
INSERT INTO detalle_resultado VALUES("578","Examen Fisico-Quimico de Orina","Glucosaplus","Negativo","83");
INSERT INTO detalle_resultado VALUES("579","Examen Fisico-Quimico de Orina","Nitritos","Negativo","83");
INSERT INTO detalle_resultado VALUES("580","Examen Fisico-Quimico de Orina","C. Cetonicos","Negativo","83");
INSERT INTO detalle_resultado VALUES("581","Examen Fisico-Quimico de Orina","Proteínas","Negativo","83");
INSERT INTO detalle_resultado VALUES("582","Examen Fisico-Quimico de Orina","Uroblinogeno","Negativo","83");
INSERT INTO detalle_resultado VALUES("583","Examen Fisico-Quimico de Orina","Bilirrubinas","Negativo","83");
INSERT INTO detalle_resultado VALUES("584","Examen Fisico-Quimico de Orina","Sangre","Negativo","83");
INSERT INTO detalle_resultado VALUES("585","Examen Fisico-Quimico de Orina","Acido Ascorbico","Negativo","83");
INSERT INTO detalle_resultado VALUES("586","Examen Fisico-Quimico de Orina","Leucocitos","Negativo","83");
INSERT INTO detalle_resultado VALUES("587","Sedimento","Cell Epiteliales Escamosas","Moderadas","83");
INSERT INTO detalle_resultado VALUES("588","Sedimento","Bacterias Bacilares","Moderadas","83");
INSERT INTO detalle_resultado VALUES("589","Sedimento","Procitos","0 a 1 xc","83");
INSERT INTO detalle_resultado VALUES("590","Sedimento","Null","","83");
INSERT INTO detalle_resultado VALUES("591","Sedimento","Filamentos Mucosos","+","83");
INSERT INTO detalle_resultado VALUES("592","Examen de Heces","Colorhe","Cafe","83");
INSERT INTO detalle_resultado VALUES("593","Examen de Heces","Aspectohe","Blandas","83");
INSERT INTO detalle_resultado VALUES("594","Examen de Heces","Reaccion","--","83");
INSERT INTO detalle_resultado VALUES("595","Observacion Microscopica","Parásitos","no presencia","83");
INSERT INTO detalle_resultado VALUES("596","Observacion Microscopica","Predominio Bacterias Bacilares","+++","83");
INSERT INTO detalle_resultado VALUES("597","Observacion Microscopica","Null","","83");
INSERT INTO detalle_resultado VALUES("598","Perfil Bioquimicos","TGO","14*U/L*hasta 40","83");
INSERT INTO detalle_resultado VALUES("599","Perfil Bioquimicos","TGP","10*U/L*hast 41","83");
INSERT INTO detalle_resultado VALUES("600","Observacion Microscopica","Fibras","++","83");
INSERT INTO detalle_resultado VALUES("601","Biometria","Globulos Blancos","5.1*10^3/ul*4.0 - 10.0","84");
INSERT INTO detalle_resultado VALUES("602","Biometria","Linfocitos #","2.1*10^3/ul*0.8 - 4.0","84");
INSERT INTO detalle_resultado VALUES("603","Biometria","Celulas Intermedias #","0.3*10^3/ul*0.1 - 0.9","84");
INSERT INTO detalle_resultado VALUES("604","Biometria","Segmentados #","2.7*10^3/ul*2.0 - 7.0","84");
INSERT INTO detalle_resultado VALUES("605","Biometria","Linfocitos %","40.5*%*20.0 - 40.0","84");
INSERT INTO detalle_resultado VALUES("606","Biometria","Celulas Intermedias %","7.5*%*3.0 - 9.0","84");
INSERT INTO detalle_resultado VALUES("607","Biometria","Segmentados %","52.0*%*50.0 - 70.0","84");
INSERT INTO detalle_resultado VALUES("608","Celulas Atipicas","Hemoglobina","11.8*g/dl*11.0 - 15.0","84");
INSERT INTO detalle_resultado VALUES("609","Celulas Atipicas","Glóbulos Rojos","3.90*10^6/ul*3.50 - 5.00","84");
INSERT INTO detalle_resultado VALUES("610","Celulas Atipicas","Hematocrito","35.4*%*37.0 - 48.0","84");
INSERT INTO detalle_resultado VALUES("611","Celulas Atipicas","VCM","90.8*fL*82.0 - 95.0","84");
INSERT INTO detalle_resultado VALUES("612","Celulas Atipicas","HCM","30.2*pg*27.0 - 31.0","84");
INSERT INTO detalle_resultado VALUES("613","Celulas Atipicas","CHCM","33.3*g/dL*32.0 - 36.0","84");
INSERT INTO detalle_resultado VALUES("614","Celulas Atipicas","WDR-VC","12.7*%*11.5 - 14.5","84");
INSERT INTO detalle_resultado VALUES("615","Celulas Atipicas","WDR-DS","43.8*fL*35.0 - 56.0","84");
INSERT INTO detalle_resultado VALUES("616","Celulas Atipicas","Plaquetas","205*10^3/uL*150 - 450","84");
INSERT INTO detalle_resultado VALUES("617","Celulas Atipicas","MPV","8.5*fL*7.0 - 11.0","84");
INSERT INTO detalle_resultado VALUES("618","Celulas Atipicas","WDP","14.3*%*15.0 - 17.0","84");
INSERT INTO detalle_resultado VALUES("619","Celulas Atipicas","PCT","0.174*%*0.108 - 0.282","84");
INSERT INTO detalle_resultado VALUES("620","Extendido Sanguineo","SEGMENTADOS","0*%","84");
INSERT INTO detalle_resultado VALUES("621","Extendido Sanguineo","LINFOCITOS","0*%","84");
INSERT INTO detalle_resultado VALUES("622","Extendido Sanguineo","MONOCITOS","0*%","84");
INSERT INTO detalle_resultado VALUES("623","Extendido Sanguineo","NEUTROFILOS","0*%","84");
INSERT INTO detalle_resultado VALUES("624","Extendido Sanguineo","EOSINOFILOS","0*%","84");
INSERT INTO detalle_resultado VALUES("625","Extendido Sanguineo","BASOFILOS","0*%","84");
INSERT INTO detalle_resultado VALUES("626","Examen de Sangre - Embarazo","Prueba de Embarazo","NEGATIVO*-*-","85");
INSERT INTO detalle_resultado VALUES("627","Examen de Sangre - Embarazo","Prueba de Embarazo","NEGATIVO*-*-","86");
INSERT INTO detalle_resultado VALUES("628","Perfil Bioquimicos","Glucosa","101*mg/dl*30 a 60","87");
INSERT INTO detalle_resultado VALUES("629","Perfil Bioquimicos","Colesterol","218*mg/dl*70 a 100","87");
INSERT INTO detalle_resultado VALUES("630","Perfil Bioquimicos","Trigliceridos","142*mg/dl*110 a 130","87");
INSERT INTO detalle_resultado VALUES("631","Examen Fisico-Quimico de Orina","Null","","87");
INSERT INTO detalle_resultado VALUES("632","Examen Fisico-Quimico de Orina","Null","","87");
INSERT INTO detalle_resultado VALUES("633","Examen Fisico-Quimico de Orina","Null","","87");
INSERT INTO detalle_resultado VALUES("634","Examen Fisico-Quimico de Orina","Null","","87");
INSERT INTO detalle_resultado VALUES("635","Examen Fisico-Quimico de Orina","Null","","87");
INSERT INTO detalle_resultado VALUES("636","Examen Fisico-Quimico de Orina","Null","","87");
INSERT INTO detalle_resultado VALUES("637","Examen Fisico-Quimico de Orina","Null","","87");
INSERT INTO detalle_resultado VALUES("638","Examen Fisico-Quimico de Orina","Null","","87");
INSERT INTO detalle_resultado VALUES("639","Examen Fisico-Quimico de Orina","Null","","87");
INSERT INTO detalle_resultado VALUES("640","Examen Fisico-Quimico de Orina","Null","","87");
INSERT INTO detalle_resultado VALUES("641","Examen Fisico-Quimico de Orina","Null","","87");
INSERT INTO detalle_resultado VALUES("642","Examen Fisico-Quimico de Orina","Null","","87");
INSERT INTO detalle_resultado VALUES("643","Examen Fisico-Quimico de Orina","Leucocitos","+ +","87");
INSERT INTO detalle_resultado VALUES("644","Sedimento","Null","","87");
INSERT INTO detalle_resultado VALUES("645","Sedimento","Null","","87");
INSERT INTO detalle_resultado VALUES("646","Sedimento","Null","","87");
INSERT INTO detalle_resultado VALUES("647","Sedimento","Null","","87");
INSERT INTO detalle_resultado VALUES("648","Sedimento","Null","","87");
INSERT INTO detalle_resultado VALUES("649","Examen de Heces","Null","","87");
INSERT INTO detalle_resultado VALUES("650","Examen de Heces","Null","","87");
INSERT INTO detalle_resultado VALUES("651","Examen de Heces","Null","","87");
INSERT INTO detalle_resultado VALUES("652","Observacion Microscopica","Null","","87");
INSERT INTO detalle_resultado VALUES("653","Observacion Microscopica","Null","","87");
INSERT INTO detalle_resultado VALUES("654","Observacion Microscopica","Null","","87");
INSERT INTO detalle_resultado VALUES("655","Examen de Sangre - Embarazo","Prueba de Embarazo","POSITIVO*-*-","88");
INSERT INTO detalle_resultado VALUES("656","Perfil Bioquimicos","Glucosa","94*mg/dl*30 a 60","89");
INSERT INTO detalle_resultado VALUES("657","Perfil Bioquimicos","Colesterol","120*mg/dl*70 a 100","89");
INSERT INTO detalle_resultado VALUES("658","Perfil Bioquimicos","Trigliceridos","158*mg/dl*110 a 130","89");
INSERT INTO detalle_resultado VALUES("659","Examen Fisico-Quimico de Orina","Color","Amarillo","89");
INSERT INTO detalle_resultado VALUES("660","Examen Fisico-Quimico de Orina","Aspecto","Turbio","89");
INSERT INTO detalle_resultado VALUES("661","Examen Fisico-Quimico de Orina","Densidad","1,015","89");
INSERT INTO detalle_resultado VALUES("662","Examen Fisico-Quimico de Orina","PH","6","89");
INSERT INTO detalle_resultado VALUES("663","Examen Fisico-Quimico de Orina","Glucosaplus","Negativo","89");
INSERT INTO detalle_resultado VALUES("664","Examen Fisico-Quimico de Orina","Nitritos","Negativo","89");
INSERT INTO detalle_resultado VALUES("665","Examen Fisico-Quimico de Orina","C. Cetonicos","Negativo","89");
INSERT INTO detalle_resultado VALUES("666","Examen Fisico-Quimico de Orina","Proteínas","Negativo","89");
INSERT INTO detalle_resultado VALUES("667","Examen Fisico-Quimico de Orina","Uroblinogeno","Negativo","89");
INSERT INTO detalle_resultado VALUES("668","Examen Fisico-Quimico de Orina","Bilirrubinas","Negativo","89");
INSERT INTO detalle_resultado VALUES("669","Examen Fisico-Quimico de Orina","Sangre","Negativo","89");
INSERT INTO detalle_resultado VALUES("670","Examen Fisico-Quimico de Orina","Acido Ascorbico","Negativo","89");
INSERT INTO detalle_resultado VALUES("671","Examen Fisico-Quimico de Orina","Leucocitos","Negativo","89");
INSERT INTO detalle_resultado VALUES("672","Sedimento","Cell Epiteliales Escamosas","Moderadas","89");
INSERT INTO detalle_resultado VALUES("673","Sedimento","Bacterias Bacilares","Numerosas","89");
INSERT INTO detalle_resultado VALUES("674","Sedimento","Procitos","5 a 6 xc","89");
INSERT INTO detalle_resultado VALUES("675","Sedimento","Null","","89");
INSERT INTO detalle_resultado VALUES("676","Sedimento","Null","","89");
INSERT INTO detalle_resultado VALUES("677","Examen de Heces","Colorhe","Cafe","89");
INSERT INTO detalle_resultado VALUES("678","Examen de Heces","Aspectohe","Blandas","89");
INSERT INTO detalle_resultado VALUES("679","Examen de Heces","Null","","89");
INSERT INTO detalle_resultado VALUES("680","Observacion Microscopica","Parásitos","no presencia","89");
INSERT INTO detalle_resultado VALUES("681","Observacion Microscopica","Predominio Bacterias Bacilares","++","89");
INSERT INTO detalle_resultado VALUES("682","Observacion Microscopica","Granulos de almidon","+","89");
INSERT INTO detalle_resultado VALUES("683","Examen de Sangre - Embarazo","Prueba de Embarazo","POSITIVO*-*-","90");
INSERT INTO detalle_resultado VALUES("684","Perfil Bioquimicos","Null","","91");
INSERT INTO detalle_resultado VALUES("685","Perfil Bioquimicos","Null","","91");
INSERT INTO detalle_resultado VALUES("686","Perfil Bioquimicos","Null","","91");
INSERT INTO detalle_resultado VALUES("687","Examen Fisico-Quimico de Orina","Null","","91");
INSERT INTO detalle_resultado VALUES("688","Examen Fisico-Quimico de Orina","Null","","91");
INSERT INTO detalle_resultado VALUES("689","Examen Fisico-Quimico de Orina","Null","","91");
INSERT INTO detalle_resultado VALUES("690","Examen Fisico-Quimico de Orina","Null","","91");
INSERT INTO detalle_resultado VALUES("691","Examen Fisico-Quimico de Orina","Null","","91");
INSERT INTO detalle_resultado VALUES("692","Examen Fisico-Quimico de Orina","Null","","91");
INSERT INTO detalle_resultado VALUES("693","Examen Fisico-Quimico de Orina","Null","","91");
INSERT INTO detalle_resultado VALUES("694","Examen Fisico-Quimico de Orina","Null","","91");
INSERT INTO detalle_resultado VALUES("695","Examen Fisico-Quimico de Orina","Null","","91");
INSERT INTO detalle_resultado VALUES("696","Examen Fisico-Quimico de Orina","Null","","91");
INSERT INTO detalle_resultado VALUES("697","Examen Fisico-Quimico de Orina","Null","","91");
INSERT INTO detalle_resultado VALUES("698","Examen Fisico-Quimico de Orina","Null","","91");
INSERT INTO detalle_resultado VALUES("699","Examen Fisico-Quimico de Orina","Null","","91");
INSERT INTO detalle_resultado VALUES("700","Sedimento","Null","","91");
INSERT INTO detalle_resultado VALUES("701","Sedimento","Null","","91");
INSERT INTO detalle_resultado VALUES("702","Sedimento","Null","","91");
INSERT INTO detalle_resultado VALUES("703","Sedimento","Null","","91");
INSERT INTO detalle_resultado VALUES("704","Sedimento","Null","","91");
INSERT INTO detalle_resultado VALUES("705","Examen de Heces","Null","","91");
INSERT INTO detalle_resultado VALUES("706","Examen de Heces","Null","","91");
INSERT INTO detalle_resultado VALUES("707","Examen de Heces","Null","","91");
INSERT INTO detalle_resultado VALUES("708","Observacion Microscopica","Null","","91");
INSERT INTO detalle_resultado VALUES("709","Observacion Microscopica","Null","","91");
INSERT INTO detalle_resultado VALUES("710","Observacion Microscopica","Null","","91");
INSERT INTO detalle_resultado VALUES("711","Perfil Bioquimicos","ASTO","NEGATIVO*mg/dl*-----","91");
INSERT INTO detalle_resultado VALUES("712","Perfil Bioquimicos","PCR","NEGATIVO*mg/dl*-----","91");
INSERT INTO detalle_resultado VALUES("713","Perfil Bioquimicos","R.A ANTIBITIL","POSITIVO*mg/dl*-----","91");
INSERT INTO detalle_resultado VALUES("714","Biometria","Globulos Blancos","10.3*10^3/ul*4.0 - 10.0","92");
INSERT INTO detalle_resultado VALUES("715","Biometria","Linfocitos #","0.8*10^3/ul*0.8 - 4.0","92");
INSERT INTO detalle_resultado VALUES("716","Biometria","Celulas Intermedias #","0.11*10^3/ul*0.1 - 0.9","92");
INSERT INTO detalle_resultado VALUES("717","Biometria","Segmentados #","7.00*10^3/ul*2.0 - 7.0","92");
INSERT INTO detalle_resultado VALUES("718","Biometria","Linfocitos %","29.8*%*20.0 - 40.0","92");
INSERT INTO detalle_resultado VALUES("719","Biometria","Celulas Intermedias %","4*%*3.0 - 9.0","92");
INSERT INTO detalle_resultado VALUES("720","Biometria","Segmentados %","68*%*50.0 - 70.0","92");
INSERT INTO detalle_resultado VALUES("721","Celulas Atipicas","Hemoglobina","13.8*g/dl*11.0 - 15.0","92");
INSERT INTO detalle_resultado VALUES("722","Celulas Atipicas","Glóbulos Rojos","4.9*10^6/ul*3.50 - 5.00","92");
INSERT INTO detalle_resultado VALUES("723","Celulas Atipicas","Hematocrito","47*%*37.0 - 48.0","92");
INSERT INTO detalle_resultado VALUES("724","Celulas Atipicas","VCM","83.7*fL*82.0 - 95.0","92");
INSERT INTO detalle_resultado VALUES("725","Celulas Atipicas","HCM","28*pg*27.0 - 31.0","92");
INSERT INTO detalle_resultado VALUES("726","Celulas Atipicas","CHCM","34.3*g/dL*32.0 - 36.0","92");
INSERT INTO detalle_resultado VALUES("727","Celulas Atipicas","WDR-VC","12.6*%*11.5 - 14.5","92");
INSERT INTO detalle_resultado VALUES("728","Celulas Atipicas","WDR-DS","35.1*fL*35.0 - 56.0","92");
INSERT INTO detalle_resultado VALUES("729","Celulas Atipicas","Plaquetas","365*10^3/uL*150 - 450","92");
INSERT INTO detalle_resultado VALUES("730","Celulas Atipicas","MPV","9*fL*7.0 - 11.0","92");
INSERT INTO detalle_resultado VALUES("731","Celulas Atipicas","WDP","14.6*%*15.0 - 17.0","92");
INSERT INTO detalle_resultado VALUES("732","Celulas Atipicas","PCT","0.23*%*0.108 - 0.282","92");
INSERT INTO detalle_resultado VALUES("733","Extendido Sanguineo","Null","","92");
INSERT INTO detalle_resultado VALUES("734","Extendido Sanguineo","Null","","92");
INSERT INTO detalle_resultado VALUES("735","Extendido Sanguineo","Null","","92");
INSERT INTO detalle_resultado VALUES("736","Extendido Sanguineo","Null","","92");
INSERT INTO detalle_resultado VALUES("737","Extendido Sanguineo","Null","","92");
INSERT INTO detalle_resultado VALUES("738","Extendido Sanguineo","Null","","92");
INSERT INTO detalle_resultado VALUES("739","Perfil Bioquimicos","Glucosa","90*mg/dl*30 a 60","93");
INSERT INTO detalle_resultado VALUES("740","Perfil Bioquimicos","Colesterol","163*ml*70 a 100","93");
INSERT INTO detalle_resultado VALUES("741","Perfil Bioquimicos","Trigliceridos","75*gr*110 a 130","93");
INSERT INTO detalle_resultado VALUES("742","Examen Fisico-Quimico de Orina","Null","","93");
INSERT INTO detalle_resultado VALUES("743","Examen Fisico-Quimico de Orina","Null","","93");
INSERT INTO detalle_resultado VALUES("744","Examen Fisico-Quimico de Orina","Null","","93");
INSERT INTO detalle_resultado VALUES("745","Examen Fisico-Quimico de Orina","Null","","93");
INSERT INTO detalle_resultado VALUES("746","Examen Fisico-Quimico de Orina","Null","","93");
INSERT INTO detalle_resultado VALUES("747","Examen Fisico-Quimico de Orina","Null","","93");
INSERT INTO detalle_resultado VALUES("748","Examen Fisico-Quimico de Orina","Null","","93");
INSERT INTO detalle_resultado VALUES("749","Examen Fisico-Quimico de Orina","Null","","93");
INSERT INTO detalle_resultado VALUES("750","Examen Fisico-Quimico de Orina","Null","","93");
INSERT INTO detalle_resultado VALUES("751","Examen Fisico-Quimico de Orina","Null","","93");
INSERT INTO detalle_resultado VALUES("752","Examen Fisico-Quimico de Orina","Null","","93");
INSERT INTO detalle_resultado VALUES("753","Examen Fisico-Quimico de Orina","Null","","93");
INSERT INTO detalle_resultado VALUES("754","Examen Fisico-Quimico de Orina","Null","","93");
INSERT INTO detalle_resultado VALUES("755","Sedimento","Null","","93");
INSERT INTO detalle_resultado VALUES("756","Sedimento","Null","","93");
INSERT INTO detalle_resultado VALUES("757","Sedimento","Null","","93");
INSERT INTO detalle_resultado VALUES("758","Sedimento","Null","","93");
INSERT INTO detalle_resultado VALUES("759","Sedimento","Null","","93");
INSERT INTO detalle_resultado VALUES("760","Examen de Heces","Null","","93");
INSERT INTO detalle_resultado VALUES("761","Examen de Heces","Null","","93");
INSERT INTO detalle_resultado VALUES("762","Examen de Heces","Null","","93");
INSERT INTO detalle_resultado VALUES("763","Observacion Microscopica","Null","","93");
INSERT INTO detalle_resultado VALUES("764","Observacion Microscopica","Null","","93");
INSERT INTO detalle_resultado VALUES("765","Observacion Microscopica","Null","","93");
INSERT INTO detalle_resultado VALUES("766","Bacteriologia Cultivo - Antibiograma de Orina","Contaje de Colonias","+10050col/ml","94");
INSERT INTO detalle_resultado VALUES("767","Bacteriologia Cultivo - Antibiograma de Orina","Microorganismo","P. teosty","94");
INSERT INTO detalle_resultado VALUES("768","Antibiograma","Acido Nalidixico","Sensible","94");
INSERT INTO detalle_resultado VALUES("769","Antibiograma","Amikacina","Sensible","94");
INSERT INTO detalle_resultado VALUES("770","Antibiograma","Ampicilina Sulbactam","No sensible","94");
INSERT INTO detalle_resultado VALUES("771","Antibiograma","Amoxicilina + AC Clavulanico","No sensible","94");
INSERT INTO detalle_resultado VALUES("772","Antibiograma","Nitrofurantoina","Sensible","94");
INSERT INTO detalle_resultado VALUES("773","Fisico-Quimico","Color","Amarillo Claro","95");
INSERT INTO detalle_resultado VALUES("774","Fisico-Quimico","Aspecto","Ligeramente Turbio","95");
INSERT INTO detalle_resultado VALUES("775","Fisico-Quimico","Densidad","1000","95");
INSERT INTO detalle_resultado VALUES("776","Fisico-Quimico","PH","3","95");
INSERT INTO detalle_resultado VALUES("777","Fisico-Quimico","Glucosaplus","Negativo","95");
INSERT INTO detalle_resultado VALUES("778","Fisico-Quimico","Nitritos","Positivo","95");
INSERT INTO detalle_resultado VALUES("779","Fisico-Quimico","C. Cetonicos","Negativo","95");
INSERT INTO detalle_resultado VALUES("780","Fisico-Quimico","Proteínas","Negativo","95");
INSERT INTO detalle_resultado VALUES("781","Fisico-Quimico","Uroblinogeno","Negativo","95");
INSERT INTO detalle_resultado VALUES("782","Fisico-Quimico","Bilirrubinas","Negativo","95");
INSERT INTO detalle_resultado VALUES("783","Fisico-Quimico","Sangre","Negativo","95");
INSERT INTO detalle_resultado VALUES("784","Fisico-Quimico","Acido Ascorbico","Negativo","95");
INSERT INTO detalle_resultado VALUES("785","Fisico-Quimico","Leucocitos","Negativo","95");
INSERT INTO detalle_resultado VALUES("786","Sedimento","Cel. Epiteliales Escamosas","Abundantes","95");
INSERT INTO detalle_resultado VALUES("787","Sedimento","Bacterias","Moderadas","95");
INSERT INTO detalle_resultado VALUES("788","Sedimento","Piocitos","0 - 3 xc","95");
INSERT INTO detalle_resultado VALUES("789","Sedimento","Hematies","0 - 1.9 xc","95");
INSERT INTO detalle_resultado VALUES("790","Sedimento","Filamentos Mucosos","++","95");





CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_ingreso` date NOT NULL,
  `fecha_modificacion` date NOT NULL,
  `nombres` varchar(250) NOT NULL,
  `apellidos` varchar(250) NOT NULL,
  `cedula` varchar(30) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `celular` varchar(30) NOT NULL,
  `correo` varchar(250) NOT NULL,
  `direccion` varchar(300) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL,
  PRIMARY KEY (`id_empleado`),
  KEY `id_rol` (`id_rol`),
  KEY `id_perfil` (`id_perfil`),
  KEY `id_estado` (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

INSERT INTO empleado VALUES("1","2020-03-08","2020-03-09","Admin","Admin","0000000000","000000","0000000000","admin@admin.com","direccion admin","1","1","1");
INSERT INTO empleado VALUES("10","2020-03-09","2020-11-15","Daniel","Ruiz","0919191923","2123123","0123123123","dani_ruiz@gmail.com","Las Exclusas mz 3453 villa 65","3","2","1");
INSERT INTO empleado VALUES("13","2020-07-03","2020-12-05","Allan Jefferson","Pincay Choez","0931274385","99393383","0199129302","allanpchoez@hotmail.com","Sauces 4 mz 345 villa 17","2","2","1");
INSERT INTO empleado VALUES("19","2020-11-15","2020-11-15","Dolores","Erazo","0907564892","3004587","0985136547","dderazo@gmail.com","Via la costa Urb La perla mz 654 villa 5","1","1","1");
INSERT INTO empleado VALUES("20","2020-11-15","2020-12-05","Colombia","Sanchez","0926799362","2564879","0984145236","colombia_san@gmail.com","Sergio Toral Mz 657 solar 6","4","8","1");





CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_estado` varchar(100) NOT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO estado VALUES("1","Activo");
INSERT INTO estado VALUES("2","Inactivo");





CREATE TABLE `estado_examen` (
  `estado_exa_id` int(11) NOT NULL AUTO_INCREMENT,
  `estado_exa_dscrp` varchar(150) NOT NULL,
  PRIMARY KEY (`estado_exa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO estado_examen VALUES("1","Resultados");
INSERT INTO estado_examen VALUES("2","Sin Resultados");





CREATE TABLE `paciente` (
  `id_paciente` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_ingreso` date NOT NULL,
  `fecha_modificacion` date NOT NULL,
  `nombres` varchar(250) NOT NULL,
  `apellidos` varchar(250) NOT NULL,
  `tipo_identificacion` int(11) NOT NULL,
  `identificacion` varchar(30) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `edad` int(11) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `direccion` varchar(300) NOT NULL,
  `observacion` text NOT NULL,
  `paciente_usuario` varchar(250) NOT NULL,
  `paciente_clave` varchar(50) NOT NULL,
  `sexo` int(11) NOT NULL,
  `tipo_paciente` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`id_paciente`),
  KEY `sexo` (`sexo`,`tipo_paciente`),
  KEY `tipo_identificacion` (`tipo_identificacion`),
  KEY `estado` (`estado`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;

INSERT INTO paciente VALUES("11","2020-07-02","2020-08-17","Carlos Andres","Vera Pérez","1","0950039982","1990-12-15","29","65465416","1954195419","asasd@asdasd.com","direccion del 11","observacion del 11","0950039982","paci111","1","1","1");
INSERT INTO paciente VALUES("19","2020-08-27","2020-08-27","Gabriela","Galarza Martinez","1","0929459204","1995-10-24","24","458785444","0980040116","titan_gaby17@hotmail.com","paraiso de la flor","Nada","0929459204","PR81424guI","2","1","1");
INSERT INTO paciente VALUES("58","2020-11-15","2020-12-14","Angela Ivis","Parrales Pizarro","1","0911968337","1987-07-24","33","3652154","0965874122","marithamendozau@outlook.com","ecocity mz 543 villa 2","Ninguna","0911968337","toKqQbACaA","2","1","1");
INSERT INTO paciente VALUES("59","2020-11-15","2020-11-15","Martina Fernanda","Bello Flores","1","1302118094","1980-11-19","39","3215456","0956621451","fernanda99@hotmail.com","Las corte mz 654 villa 7","Ninguna","1302118094","FPTMruUBLw","1","1","1");
INSERT INTO paciente VALUES("65","2020-11-17","2020-11-17","Kevin Fernando","Mora Padilla","1","0911238897","1993-11-18","26","4374633","0956753437","bryan_lb_13@outlook.com","dwrbfeyuyguvuyv","Uuyvuyvvyvyu","0911238897","mf67lXh5ti","1","1","1");
INSERT INTO paciente VALUES("72","2020-12-04","2020-12-04","Salome","Mendoza","1","0915703763","1994-06-08","26","2655854","0922824242","salomemendoza@gmail.com","sauces","Nada","0915703763","s4BEM6RTjJ","2","1","1");
INSERT INTO paciente VALUES("74","2020-12-05","2020-12-05","Allison ","Becerra Olmedo","1","0943555482","2000-02-17","20","3008474","0984747646","alisito20@gmail.com","San Francisco bl 25 mz 2354","Ninguna","0943555482","K9gLIlOP9","2","1","1");
INSERT INTO paciente VALUES("75","2020-12-05","2020-12-05","Noemí Nathaly","Valdez Sarango","1","0962790713","1998-12-16","21","2884884","0087363673","nathi_valdez@hotmail.com","San Francisco bl 657 mz 324","Ninguna","0962790713","la67L8PmbE","2","1","1");
INSERT INTO paciente VALUES("76","2020-12-05","2020-12-05","Nayeli Xiomara","Correa Lucas","1","0954051454","2001-08-08","19","2556373","0987763663","Xiomara32@gmail.com","Coop. Unidos por la paz 2 mz654 el 6","Ninguna","0954051454","ylZN8cQ5VM","2","1","1");
INSERT INTO paciente VALUES("78","2020-12-06","2020-12-06","Yexi Laiz ","Bobadilla Vera","1","1207375476","2000-12-10","19","","0987366373","Yexifer1234@outlook.com","Orquídeas Mz 567 villa 6","Ninguna","1207375476","wy9gGJcNQ1","2","1","1");
INSERT INTO paciente VALUES("79","2020-12-06","2020-12-06","Richard","Balseca","1","0944306406","1988-06-17","32","3228984","0956255568","elkingrichi@hotmail.com","av. piedrahita 543 y av ayacucho","Ninguna","0944306406","vjfpQNsOkh","1","1","1");
INSERT INTO paciente VALUES("80","2020-12-06","2020-12-06","Luz Angelica ","Lucas Carbo","1","0921344750","1987-08-21","33","2546932","0986543298","luzprinc98@gmail.com","Unidos por la paz 2 mz 390 sl 8","Ninguna","0921344750","ymfWn1HLaF","2","1","1");
INSERT INTO paciente VALUES("81","2020-12-06","2020-12-06","Harly Stefania","Mendoza Garcia","1","0952387033","1976-10-29","44","2645893","0986321478","mend_33harly@hotmail.com","Coop. simon bolivar mz 1452 sl 7","Ninguna","0952387033","uBGut29hNW","2","1","1");
INSERT INTO paciente VALUES("82","2020-12-06","2020-12-06","Ambar Estefania","Bejarano Borbor","1","0956682819","2002-10-30","18","3087962","0965439875","amba200r_54@gmail.com","fortyin bl 1 mz 1654 sl 9","Ninguna","0956682819","Evf5l0Mjcn","2","1","1");
INSERT INTO paciente VALUES("83","2020-12-06","2020-12-06","Ana Cecilia ","Borbor Bacilio","1","0923620801","1978-06-17","42","2632178","0987632169","anita_borbor79@hotmail.com","Fortin bl 1 mz 1621 sl9","Ninguna","0923620801","Wa7wO0i02v","2","1","1");
INSERT INTO paciente VALUES("84","2020-12-06","2020-12-06","Kevin Alberto ","Villarreal Ruiz","1","0941359796","1996-12-07","23","3055485","0963215458","kevincitoph_96@hotmail.com","Fortin bl 1 mz 1622 sl23","Ninguna","0941359796","LH8UvTEZGX","1","1","1");
INSERT INTO paciente VALUES("85","2020-12-06","2020-12-06","Karol Elizabeth","Zuñiga Chacon","1","0958757734","1998-04-03","22","2145456","0987931164","karol_23zu@hotmail.com","Coop. Union de bananeros mz  765 solar 6","Ninguna","0958757734","H4zdGfs2t9","2","1","1");
INSERT INTO paciente VALUES("86","2020-12-07","2020-12-07","Christian Doyer","Duran Leon ","1","0952113025","1993-12-02","27","2345781","0988452177","Cduranl@outlook.com","Florida norte ","","0952113025","qiNkSLvK83","1","1","1");
INSERT INTO paciente VALUES("87","2020-12-07","2020-12-07","Javier ","Quiroz ","1","0927228981","1985-09-04","35","2749000","0998240721","Javierquiroz@hotmail.com","Sauces 8","","0927228981","oUp2noZJR","1","1","1");
INSERT INTO paciente VALUES("88","2020-12-07","2020-12-07","Vicente Adres ","Rodríguez Rosales ","1","0959061532","1982-06-11","38","2075885","0992180340","Vicentearrosales@hotmail.com","Km 10 via Daule","","0959061532","yCJSXQMQ1L","1","1","1");
INSERT INTO paciente VALUES("89","2020-12-07","2020-12-07","Rosa Elvira ","Lopez Moreno","1","0904310844","1954-06-10","66","2897045","0986128843","Rosaelviral15@hotmail.com","Bastión popular bloque 10","","0904310844","yGyN8hccKc","2","1","1");
INSERT INTO paciente VALUES("90","2020-12-07","2020-12-15","Raul Sebastian","Becerra","1","0932266877","1988-06-08","32","","0957822564","sebastianpaguay@gmail.com","Avenida 15 de julio calle 13 SO","Ninguna","0932266877","qwXoAe2N1M","1","1","1");
INSERT INTO paciente VALUES("91","2020-12-07","2020-12-07","Pablo Marcelo","Adan","1","0932510472","1986-11-12","34","","0967845125","pablo_marcelo@hotmail.com","calle 18 SO Gómez Rendón","","0932510472","9lJVvCUJNo","1","1","1");
INSERT INTO paciente VALUES("92","2020-12-07","2020-12-07","Silvia","Alvarez Carrion","1","0916692825","1989-02-23","31","","0984582641","silvia_alvarez@gmail.com","Calle 20 SE Calicuchima","","0916692825","NiNVDMspb","2","1","1");
INSERT INTO paciente VALUES("93","2020-12-07","2020-12-07","Luis Humberto","Garzon","1","0906087176","1984-03-02","36","","0985655123","luis_garzon@gmail.com","Calle 19 SE Maldonado","","0906087176","mnZ2RFge3O","1","1","1");
INSERT INTO paciente VALUES("94","2020-12-07","2020-12-07","Rafael De Jesus","Yagual Potes","1","0955041116","1982-07-21","38","","0985425784","yagualrafael@hotmail.com","Calle 11 SO Ayacucho","","0955041116","UDGFeJs4s","1","1","1");
INSERT INTO paciente VALUES("95","2020-12-08","2020-12-09","Nieto","Cristobal","1","0911747327","1986-12-24","33","3097584","0983773636","metooccris@hotmail.com","Los almendros mz 378 villa 4","Ninguna","0911747327","8pqoOvEK36","1","1","1");
INSERT INTO paciente VALUES("96","2020-12-08","2020-12-15","Julio Cesar","Ochoa","1","0931218770","1969-08-12","51","2847484","0960273638","Ochoajuliocesar@gmail.com","Vergeles mz 673 solar 7","Ninguna","0931218770","lUaiLmsQeB","1","1","1");
INSERT INTO paciente VALUES("97","2020-12-08","2020-12-08","José","Oñate Panchana","1","0906854062","1969-12-20","50","2947748","0987363636","Josefornd@hotmail.com","Bastion popular bloque 6 mz 234","Ninguna","0906854062","fdfOhFJk0v","1","1","1");
INSERT INTO paciente VALUES("98","2020-12-08","2020-12-08","Melissa","Zambrano Sánchez","1","0909467680","1995-09-06","25","3087484","0987367373","missarecord@gmail.com","Flor de bastion bl 5 mz 1726 el 7","","0909467680","YM8ldVY8FU","2","1","1");
INSERT INTO paciente VALUES("99","2020-12-08","2020-12-08","Teodoro","Villegas","1","0909766263","1982-07-14","38","2737474","0993737363","ville12389@hotmail.com","Florida Norte mz 768 villa 3","","0909766263","igibPpLlEQ","1","1","1");
INSERT INTO paciente VALUES("100","2020-12-09","2020-12-09","Laura","Taday","1","0602912842","1975-10-12","45","","0965474582","lauraibi@hotmail.com","ciudadela venecia","","0602912842","SObwmfTewz","2","1","1");
INSERT INTO paciente VALUES("101","2020-12-09","2020-12-09","Ashly ","Real","1","0952018786","1998-06-11","22","","0995875201","ashlyreal120@hotmail.com","sacues 2","","0952018786","wb0bIVCQsq","2","1","1");
INSERT INTO paciente VALUES("102","2020-12-09","2020-12-09","Jose Vicente","Tenesaca Guaranda","1","0604944975","1989-03-06","31","","0985236985","josevtene@gmail.com","portete y  la 38","","0604944975","zdTEpARWWu","1","1","1");
INSERT INTO paciente VALUES("103","2020-12-09","2020-12-09","Maria","Ramirez","1","0916220759","1979-08-02","41","2587459","0987845125","mariframirez@outlook.com","Av. Kennedy","","0916220759","u5VXlypd1O","2","1","1");
INSERT INTO paciente VALUES("104","2020-12-09","2020-12-09","Wendy","Ituralde","1","0914973466","1972-02-12","48","","0987523654","wendyiturralde@outlook.com","mapasingue","","0914973466","QEZOQQMNvl","2","1","1");
INSERT INTO paciente VALUES("105","2020-12-09","2020-12-09","Vanessa ","Guzman","1","0958002792","2000-07-10","20","","0980021584","vanessa.g@outlook.com","colinas del valle","","0958002792","AoMSBL8J6s","2","1","1");
INSERT INTO paciente VALUES("106","2020-12-09","2020-12-09","Josue","Siguencia","1","0957547862","2001-02-15","19","","0980781328","j.seguencia@hotmail.es","urbanización 12 de octubre","","0957547862","Mh9ro8wWoO","1","1","1");
INSERT INTO paciente VALUES("107","2020-12-09","2020-12-09","Lorenzo","Cuñishpuma","1","0601844574","1965-02-17","55","2415638","0987456321","lorenzocm@hotmail.com","paraíso de la flor","","0601844574","70PVxA7PkB","1","1","1");
INSERT INTO paciente VALUES("108","2020-12-09","2020-12-09","Nora","Garcia","1","0915104046","1977-09-23","43","2412147","0987800210","nora.garcia@outlook.com","ciudadela paraíso ","","0915104046","M8R3AHH7X0","2","1","1");
INSERT INTO paciente VALUES("109","2020-12-09","2020-12-09","Estefania Pilar","Franco Segura","1","0953959012","1998-07-25","22","3009899","0977656564","bobor_estep@gmail.com","Atarazana mz 86 SL 123","","0953959012","qF6ks5JDa1","2","1","1");
INSERT INTO paciente VALUES("110","2020-12-10","2020-12-10","Danilo Fernando","Auria Cárdenas","1","0911918498","1995-09-06","25","2847748","0987736847","cardenas_4590@gmail.com","Colinas de la florida mz 98 villa 12","","0911918498","s3IJlsW7V7","1","1","1");
INSERT INTO paciente VALUES("111","2020-12-10","2020-12-10","Gina Elizabeth","Yugla Aranda","1","0909789885","1986-04-21","34","3007557","0965328292","gina_5yugla@hotmail.com","Bastion bl 4 mz 389 sl7","","0909789885","NdZeVmbOgC","2","1","1");
INSERT INTO paciente VALUES("112","2020-12-12","2020-12-12","Cristian","Oviedo","1","0950781286","1998-05-04","22","2547896","0902525354","cristiano45@hotmail.com","samanes","","0950781286","CMhYHz7mZb","1","1","1");
INSERT INTO paciente VALUES("113","2020-12-12","2020-12-12","Zoila","Taday","1","0603150889","1981-03-03","39","2584715","0985474152","zoilataday3@gmail.com","guasmo central","","0603150889","dN7khxZjW0","2","1","1");
INSERT INTO paciente VALUES("114","2020-12-16","2020-12-16","Nexar","Castro","1","0950950063","1997-02-01","23","","0978654300","nexarc97@gmail.com","sauces 2","","0950950063","v8sxOXze4Z","1","1","1");
INSERT INTO paciente VALUES("115","2020-12-16","2020-12-16","Dayanna","Mosquera","1","0850923962","1998-08-10","22","","0980970076","dayannamosquera@hotmail.com","portete","Ninguna","0850923962","aff2ZcvyR3","2","1","1");





CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_perfil` varchar(250) NOT NULL,
  PRIMARY KEY (`id_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO perfil VALUES("1","Administrativo");
INSERT INTO perfil VALUES("2","laboratorista");
INSERT INTO perfil VALUES("8","Secretaria");





CREATE TABLE `reactivo` (
  `id_reactivo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_reactivo` varchar(300) NOT NULL,
  `precio_reactivo` varchar(30) NOT NULL,
  `id_estado` int(11) NOT NULL,
  PRIMARY KEY (`id_reactivo`),
  KEY `id_estado` (`id_estado`)
) ENGINE=MyISAM AUTO_INCREMENT=343 DEFAULT CHARSET=latin1;

INSERT INTO reactivo VALUES("2","Leucocitos","2.70","1");
INSERT INTO reactivo VALUES("3","Hematócrito","3.00","1");
INSERT INTO reactivo VALUES("4","Hemoglobina","3.00","1");
INSERT INTO reactivo VALUES("5","H. de Schilling","4.00","1");
INSERT INTO reactivo VALUES("6","Eritrosedimentación","2.00","1");
INSERT INTO reactivo VALUES("7","Plaquetas","2.00","1");
INSERT INTO reactivo VALUES("8","Reticulocitos","8.00","1");
INSERT INTO reactivo VALUES("10","Coagulación","2.00","1");
INSERT INTO reactivo VALUES("11","T. de protombina","4.50","1");
INSERT INTO reactivo VALUES("12","Tromboplastina","4.50","1");
INSERT INTO reactivo VALUES("13","Fibrinógeno","12.00","1");
INSERT INTO reactivo VALUES("14","Grupo y R.h.","6.50","1");
INSERT INTO reactivo VALUES("15","Widal","5.00","1");
INSERT INTO reactivo VALUES("16","Proteos O x 19","4.50","1");
INSERT INTO reactivo VALUES("17","V.D.R.L cuant","6.00","1");
INSERT INTO reactivo VALUES("18","V.D.R.L cuali","7.30","1");
INSERT INTO reactivo VALUES("19","Plasmodium","4.00","1");
INSERT INTO reactivo VALUES("20","R.A. test","4.00","1");
INSERT INTO reactivo VALUES("21","A.S.T.O","3.00","1");
INSERT INTO reactivo VALUES("22","P.C. reactiva","4.00","1");
INSERT INTO reactivo VALUES("23","Toxoplasmosis","2.00","1");
INSERT INTO reactivo VALUES("24","Dengue","14.00","1");
INSERT INTO reactivo VALUES("25","A.S.T.O (Turb.)","4.00","1");
INSERT INTO reactivo VALUES("26","P.C.R. (Turb.)","8.00","1");
INSERT INTO reactivo VALUES("27","R.A. (Turb.)","8.00","1");
INSERT INTO reactivo VALUES("28","Celula L.E.","25.00","1");
INSERT INTO reactivo VALUES("29","Mononucleosis","5.00","1");
INSERT INTO reactivo VALUES("30","R. de Hudlesson","3.50","1");
INSERT INTO reactivo VALUES("31","R. de Weill Felix","4.00","1");
INSERT INTO reactivo VALUES("32","R. de Widal","4.00","1");
INSERT INTO reactivo VALUES("33","Strep A. ","0.86","1");
INSERT INTO reactivo VALUES("331","Orina FQS","3.00","1");
INSERT INTO reactivo VALUES("35","Ac. urico","1.50","1");
INSERT INTO reactivo VALUES("36","Urea","1.50","1");
INSERT INTO reactivo VALUES("37","Creatinina","1.50","1");
INSERT INTO reactivo VALUES("38","Glucosa","2.00","1");
INSERT INTO reactivo VALUES("39","Colesterol","2.00","1");
INSERT INTO reactivo VALUES("40","L.D.L. colesterol","2.00","1");
INSERT INTO reactivo VALUES("41","H.D.L. colesterol","2.30","1");
INSERT INTO reactivo VALUES("42","Triglicéridos","2.00","1");
INSERT INTO reactivo VALUES("43","Lípidos totales","2.00","1");
INSERT INTO reactivo VALUES("44","Sodio","5.00","1");
INSERT INTO reactivo VALUES("45","Cloro","4.50","1");
INSERT INTO reactivo VALUES("47","Calcio","5.00","1");
INSERT INTO reactivo VALUES("48","Glicemia","2.50","1");
INSERT INTO reactivo VALUES("49","Glicemia Post-Prandial","2.80","1");
INSERT INTO reactivo VALUES("50","Glicemia Tolerancia","12.00","1");
INSERT INTO reactivo VALUES("51","BUN","10.00","1");
INSERT INTO reactivo VALUES("52","Colesterol Total","3.00","1");
INSERT INTO reactivo VALUES("53","Lípidos","1.50","1");
INSERT INTO reactivo VALUES("54","Fosfolipidos","8.00","1");
INSERT INTO reactivo VALUES("55","Beta Lipoproteína","8.00","1");
INSERT INTO reactivo VALUES("56","Proteínas y Fracciones","1.00","1");
INSERT INTO reactivo VALUES("57","Bilirrubinas y Fracciones","2.00","1");
INSERT INTO reactivo VALUES("58","Indice icterico","3.00","1");
INSERT INTO reactivo VALUES("59","GOT","2.30","1");
INSERT INTO reactivo VALUES("60","GPT","4.00","1");
INSERT INTO reactivo VALUES("61","LDH","6.00","1");
INSERT INTO reactivo VALUES("62","CHE (Colinesterasa)","4.50","1");
INSERT INTO reactivo VALUES("63","GGT (gamma GT)","4.00","1");
INSERT INTO reactivo VALUES("64","Fosf. Alcalina","4.50","1");
INSERT INTO reactivo VALUES("65","Fosf. Acida Total","8.00","1");
INSERT INTO reactivo VALUES("67","Amilasa","4.50","1");
INSERT INTO reactivo VALUES("68","Lipasa","5.00","1");
INSERT INTO reactivo VALUES("69","C.P.K. (Nac)","20.00","1");
INSERT INTO reactivo VALUES("70","C.K.K. (Mb)","20.00","1");
INSERT INTO reactivo VALUES("71","Bilirrubina directa","2.00","1");
INSERT INTO reactivo VALUES("72","Ind. ictérica","4.00","1");
INSERT INTO reactivo VALUES("73","Bilirrubina indirecta","2.00","1");
INSERT INTO reactivo VALUES("74","Prot. totales","4.50","1");
INSERT INTO reactivo VALUES("75","Seroalbúmina","3.20","1");
INSERT INTO reactivo VALUES("76","S.G.P.T","2.00","1");
INSERT INTO reactivo VALUES("77","S.G.O.T","3.50","1");
INSERT INTO reactivo VALUES("78","Colinesterasa","4.50","1");
INSERT INTO reactivo VALUES("79","D.L.H","10.00","1");
INSERT INTO reactivo VALUES("81","Fosfat. acid. total","8.00","1");
INSERT INTO reactivo VALUES("82","Fosfat. acid. prost.","10.00","1");
INSERT INTO reactivo VALUES("83","G.G.T.P","2.00","1");
INSERT INTO reactivo VALUES("84","C.P.K.MB.","18.00","1");
INSERT INTO reactivo VALUES("85","Amilasa orina","8.00","1");
INSERT INTO reactivo VALUES("86","Amilasa sérica","8.00","1");
INSERT INTO reactivo VALUES("87","Lipasa sérica","1.20","1");
INSERT INTO reactivo VALUES("89","Químico","6.00","1");
INSERT INTO reactivo VALUES("90","Sedimento","2.00","1");
INSERT INTO reactivo VALUES("91","Cultivo antibiograma","10.00","1");
INSERT INTO reactivo VALUES("92","Gravindex","1.80","1");
INSERT INTO reactivo VALUES("94","Albumina 24h","14.00","1");
INSERT INTO reactivo VALUES("95","Albumina Ocasional","12.00","1");
INSERT INTO reactivo VALUES("96","Cloro en Orina","13.00","1");
INSERT INTO reactivo VALUES("98","Creatinina 24h","14.00","1");
INSERT INTO reactivo VALUES("99","Creatinina Ocasional","10.00","1");
INSERT INTO reactivo VALUES("100","Depuración de Creatinina","14.00","1");
INSERT INTO reactivo VALUES("101","Directo de B.K. (BAAR)","10.00","1");
INSERT INTO reactivo VALUES("102","Drogas Panel","10.00","1");
INSERT INTO reactivo VALUES("104","Fósforo de Orina","20.00","1");
INSERT INTO reactivo VALUES("105","Magnesio","12.00","1");
INSERT INTO reactivo VALUES("107","Microalbuminuria","15.00","1");
INSERT INTO reactivo VALUES("108","Potasio en Orina","12.00","1");
INSERT INTO reactivo VALUES("109","Proteina de Bence Jones","3.00","1");
INSERT INTO reactivo VALUES("110","Pyrilinks - D","16.00","1");
INSERT INTO reactivo VALUES("111","Recuento de ADDIS","6.00","1");
INSERT INTO reactivo VALUES("112","Sodio en 24h","13.00","1");
INSERT INTO reactivo VALUES("113","Sodio Ocacional","1.50","1");
INSERT INTO reactivo VALUES("114","Tinción de Gram","8.00","1");
INSERT INTO reactivo VALUES("115","Parasitológico","2.00","1");
INSERT INTO reactivo VALUES("116","Estudio del moco fecal","7.00","1");
INSERT INTO reactivo VALUES("117","Sangre oculta","2.00","1");
INSERT INTO reactivo VALUES("333","V.D.R.I. tantit","0.65","1");
INSERT INTO reactivo VALUES("119","Coprocultivo","12.00","1");
INSERT INTO reactivo VALUES("120","Heces: Parásitos por Concent","3.00","1");
INSERT INTO reactivo VALUES("121","Sudan III-Grasas","2.50","1");
INSERT INTO reactivo VALUES("122","Citología Moco Fecal","4,50","1");
INSERT INTO reactivo VALUES("124","Heces Adenovirus","10.00","1");
INSERT INTO reactivo VALUES("125","Heces H. Pylori","15.00","1");
INSERT INTO reactivo VALUES("126","Heces Nickerson","8.00","1");
INSERT INTO reactivo VALUES("127","Heces Rotavirus","1.90","1");
INSERT INTO reactivo VALUES("128","Heces Sangre Oculta","10.00","1");
INSERT INTO reactivo VALUES("129","Oxiuros Tec. Graham","4.00","1");
INSERT INTO reactivo VALUES("130","Parásitos","2.00","1");
INSERT INTO reactivo VALUES("132","Ziel (B de K)","7.50","1");
INSERT INTO reactivo VALUES("134","Esputo de B.k. (B.A.A.R.)","3.00","1");
INSERT INTO reactivo VALUES("332","V.D.R. tant","0.50","1");
INSERT INTO reactivo VALUES("136","Espermatograma","20.00","1");
INSERT INTO reactivo VALUES("138","Hemograma","8.00","1");
INSERT INTO reactivo VALUES("139","Trombocitos","2.00","1");
INSERT INTO reactivo VALUES("141","Hematozoarios (Crom)","3.00","1");
INSERT INTO reactivo VALUES("338","Físico","1.25","1");
INSERT INTO reactivo VALUES("144","Frag. Osmótica","5.00","1");
INSERT INTO reactivo VALUES("145","Grupo Sanguíneo y Rh.","5.00","1");
INSERT INTO reactivo VALUES("146","T. Sangría","6.00","1");
INSERT INTO reactivo VALUES("147","T. de Coagulación","2.00","1");
INSERT INTO reactivo VALUES("149","T.T.P.","4.20","1");
INSERT INTO reactivo VALUES("150","R.I.N.","4.00","1");
INSERT INTO reactivo VALUES("152","Frotis Sangre Periférica","5.00","1");
INSERT INTO reactivo VALUES("153","Coombs Directa","5.00","1");
INSERT INTO reactivo VALUES("154","Retracción de Coágulo","8.00","1");
INSERT INTO reactivo VALUES("156","Coombs Indirecta","5.00","1");
INSERT INTO reactivo VALUES("330","Panel de alergias","2.00","1");
INSERT INTO reactivo VALUES("159","Potasio","5.00","1");
INSERT INTO reactivo VALUES("160","Calcio Total","10.00","1");
INSERT INTO reactivo VALUES("161","Calcio Ionico","6.00","1");
INSERT INTO reactivo VALUES("162","Amonio","45.00","1");
INSERT INTO reactivo VALUES("163","Fósforo","18.00","1");
INSERT INTO reactivo VALUES("164","Hierro","5.00","1");
INSERT INTO reactivo VALUES("165","Litio","2.00","1");
INSERT INTO reactivo VALUES("340","Embarazo en Orina","15.50","1");
INSERT INTO reactivo VALUES("167","Plomo","4.50","1");
INSERT INTO reactivo VALUES("168","Reserva Alcalina","3.50","1");
INSERT INTO reactivo VALUES("170","Esperma Secreción","10.00","1");
INSERT INTO reactivo VALUES("171","Esputo","4.00","1");
INSERT INTO reactivo VALUES("172","Exudado Faringeo","12.00","1");
INSERT INTO reactivo VALUES("173","Hemocultivo","40.00","1");
INSERT INTO reactivo VALUES("174","Rinofaringeo","1.50","1");
INSERT INTO reactivo VALUES("175","Uretral Secreción","14.00","1");
INSERT INTO reactivo VALUES("176","Urocultivo","10.00","1");
INSERT INTO reactivo VALUES("177","Vaginal Secreción","2.00","1");
INSERT INTO reactivo VALUES("178","P. embarazo en sangre","5.00","1");
INSERT INTO reactivo VALUES("179","T3-T4","12.50","1");
INSERT INTO reactivo VALUES("180","Clamidia","10.00","1");
INSERT INTO reactivo VALUES("337","Seroglobulina","1.25","1");
INSERT INTO reactivo VALUES("183","Sera ameba","10.00","1");
INSERT INTO reactivo VALUES("184","Complemento C3-C4","16.00","1");
INSERT INTO reactivo VALUES("185","17 Beta-Estradiol","19.00","1");
INSERT INTO reactivo VALUES("186","Ac Anti DNA","6.00","1");
INSERT INTO reactivo VALUES("187","Ac Anti-Nucleares (ANA)","18.00","1");
INSERT INTO reactivo VALUES("188","Ac Anti-RNP/SM","16.00","1");
INSERT INTO reactivo VALUES("189","Ac Anti-TB","12.00","1");
INSERT INTO reactivo VALUES("190","Ac Anti-Tiroglobulina (ATG)","18.00","1");
INSERT INTO reactivo VALUES("191","Ac. SS-A(Ro)/SS-B(La)B","18.00","1");
INSERT INTO reactivo VALUES("192","Acido Fólico","12.00","1");
INSERT INTO reactivo VALUES("193","Acido Valproico","18.00","1");
INSERT INTO reactivo VALUES("194","ACTH","17.00","1");
INSERT INTO reactivo VALUES("195","AFP (Alfa Feto Proteína)","18.00","1");
INSERT INTO reactivo VALUES("196","Alergias Alergenos Específico","16.00","1");
INSERT INTO reactivo VALUES("197","Alergias Panel","8.00","1");
INSERT INTO reactivo VALUES("198","AMA - Antimitoncondrial","5.00","1");
INSERT INTO reactivo VALUES("199","Anca C","14.00","1");
INSERT INTO reactivo VALUES("200","Anca P","14.00","1");
INSERT INTO reactivo VALUES("201","Anti - ENA","12.00","1");
INSERT INTO reactivo VALUES("202","Antitrombina III","8.00","1");
INSERT INTO reactivo VALUES("203","Apolipoproteína A1","8.00","1");
INSERT INTO reactivo VALUES("204","Apolipoproteína B","4.50","1");
INSERT INTO reactivo VALUES("205","ASMA - Anti musculo liso","7.00","1");
INSERT INTO reactivo VALUES("206","Beta-2 microglobulina","4.00","1");
INSERT INTO reactivo VALUES("207","Ca 125","18.00","1");
INSERT INTO reactivo VALUES("208","CA 15-3","30.00","1");
INSERT INTO reactivo VALUES("209","CA 19-9","18.00","1");
INSERT INTO reactivo VALUES("210","CA 72-4","18.00","1");
INSERT INTO reactivo VALUES("211","Calcitonina (Tirocal)","6.00","1");
INSERT INTO reactivo VALUES("213","Carbamazepina","5.00","1");
INSERT INTO reactivo VALUES("214","Cardiolipina lgG","5.00","1");
INSERT INTO reactivo VALUES("215","Cardiolipina lgM","6.00","1");
INSERT INTO reactivo VALUES("216","CEA","18.00","1");
INSERT INTO reactivo VALUES("217","Chagas (Ac. Anti-Chagas)","14.00","1");
INSERT INTO reactivo VALUES("218","Chlamydia Ac. Anti-C lgG","12.00","1");
INSERT INTO reactivo VALUES("219","Chlamydia Ac. Anti-C lgM","12.00","1");
INSERT INTO reactivo VALUES("220","Cistatina C","16.00","1");
INSERT INTO reactivo VALUES("221","Cisticercosis (Ac. Anti)","12.00","1");
INSERT INTO reactivo VALUES("222","Citomegalovirus (Ac. anti-lgG)","10.00","1");
INSERT INTO reactivo VALUES("223","Citomegalovirus (Ac. anti-lgM)","10.00","1");
INSERT INTO reactivo VALUES("224","Complemento C3","16.00","1");
INSERT INTO reactivo VALUES("225","Complemento C4","16.00","1");
INSERT INTO reactivo VALUES("226","Cortisol","20.00","1");
INSERT INTO reactivo VALUES("227","Cyfra 21-1","20.00","1");
INSERT INTO reactivo VALUES("228","Dengue (Ac. Anti-lgG)","14.00","1");
INSERT INTO reactivo VALUES("229","Dengue (Ac. Anti-lgM)","14.00","1");
INSERT INTO reactivo VALUES("230","DHEAS","8.00","1");
INSERT INTO reactivo VALUES("231","Digoxina","7.00","1");
INSERT INTO reactivo VALUES("232","Dimero D","18.00","1");
INSERT INTO reactivo VALUES("234","Epstein Barr-lgG","12.00","1");
INSERT INTO reactivo VALUES("235","Epstein Barr-lgM","10.00","1");
INSERT INTO reactivo VALUES("236","Eritopoyetina","2.00","1");
INSERT INTO reactivo VALUES("238","Factor Reumatoideo","8.00","1");
INSERT INTO reactivo VALUES("239","Factor de Von Willebrand","8.00","1");
INSERT INTO reactivo VALUES("240","Factor V","4.00","1");
INSERT INTO reactivo VALUES("241","Factor VII","4.00","1");
INSERT INTO reactivo VALUES("242","Factor VIII","4.00","1");
INSERT INTO reactivo VALUES("243","Factor IX","4.00","1");
INSERT INTO reactivo VALUES("244","Factor X","4.00","1");
INSERT INTO reactivo VALUES("245","Factor XI","4.00","1");
INSERT INTO reactivo VALUES("246","Factor XII","4.00","1");
INSERT INTO reactivo VALUES("247","Fenitoina","14.00","1");
INSERT INTO reactivo VALUES("248","Fenobarbital","8.00","1");
INSERT INTO reactivo VALUES("249","Ferritina","14.00","1");
INSERT INTO reactivo VALUES("250","Fructosamina","4.00","1");
INSERT INTO reactivo VALUES("251","FSH","8.00","1");
INSERT INTO reactivo VALUES("253","Glucosa 6 Fosfato deshidrogenasa","20.00","1");
INSERT INTO reactivo VALUES("254","Haptoglobina","18.00","1");
INSERT INTO reactivo VALUES("255","HbA1c Hemog. Glicosilada","8.00","1");
INSERT INTO reactivo VALUES("256","HCG cuantitativa","8.00","1");
INSERT INTO reactivo VALUES("257","Hepatitis A (Ac. Anti-lgG)","14.00","1");
INSERT INTO reactivo VALUES("258","Hepatitis A (Ac. Anti-lgM)","14.00","1");
INSERT INTO reactivo VALUES("259","Hepatitis B (Ac. Anti-HBS)","14.00","1");
INSERT INTO reactivo VALUES("260","Hepatitis B (Ac. Anti-HBcore lgG)","14.00","1");
INSERT INTO reactivo VALUES("261","Hepatitis B (Ac. Anti-HBcore lgM)","14.00","1");
INSERT INTO reactivo VALUES("262","Hepatitis B HBeAg","14.00","1");
INSERT INTO reactivo VALUES("263","Hepatitis B HBsAg","14.00","1");
INSERT INTO reactivo VALUES("264","Hepatitis C (Ac. Anti)","14.00","1");
INSERT INTO reactivo VALUES("265","Herpes 1 lgG","16.00","1");
INSERT INTO reactivo VALUES("266","Herpes 1 lgM","16.00","1");
INSERT INTO reactivo VALUES("267","Herpes 2 lgG","16.00","1");
INSERT INTO reactivo VALUES("268","Herpes 2 lgM","16.00","1");
INSERT INTO reactivo VALUES("269","HGH","5.00","1");
INSERT INTO reactivo VALUES("270","HIV (Ac. Anti-1 y 2)","6.00","1");
INSERT INTO reactivo VALUES("271","HLA-B27","7.00","1");
INSERT INTO reactivo VALUES("272","Homa IR","20.00","1");
INSERT INTO reactivo VALUES("273","Homocisteína","3.00","1");
INSERT INTO reactivo VALUES("274","IGA","5.20","1");
INSERT INTO reactivo VALUES("275","IgE","3.90","1");
INSERT INTO reactivo VALUES("276","IGF-1","5.60","1");
INSERT INTO reactivo VALUES("277","IGFBP-3","5.20","1");
INSERT INTO reactivo VALUES("278","lgG","5.20","1");
INSERT INTO reactivo VALUES("279","lgM","5.60","1");
INSERT INTO reactivo VALUES("280","Insulina","20.00","1");
INSERT INTO reactivo VALUES("281","LH","16.00","1");
INSERT INTO reactivo VALUES("282","Leptospirosis lgG","4.25","1");
INSERT INTO reactivo VALUES("283","Leptospirosis lgM","4.00","1");
INSERT INTO reactivo VALUES("284","Lipoproteína (a) LP(a)","6.20","1");
INSERT INTO reactivo VALUES("285","Mioglobina","16.00","1");
INSERT INTO reactivo VALUES("286","Neuro-enolasa","14.00","1");
INSERT INTO reactivo VALUES("287","Péptido C","12.00","1");
INSERT INTO reactivo VALUES("288","Ac. Anti-Péptido Citrulinado","17.00","1");
INSERT INTO reactivo VALUES("289","Péptido Natriurético BNP","6.00","1");
INSERT INTO reactivo VALUES("290","P.P.D.","4.00","1");
INSERT INTO reactivo VALUES("291","Prealbúmina","3.98","1");
INSERT INTO reactivo VALUES("292","Progesterona","16.00","1");
INSERT INTO reactivo VALUES("293","Prolactina","16.00","1");
INSERT INTO reactivo VALUES("294","PRP (Plasma Rico en Plaquetas)","7.00","1");
INSERT INTO reactivo VALUES("295","PSA","12.00","1");
INSERT INTO reactivo VALUES("296","PSA libre porcentaje","14.00","1");
INSERT INTO reactivo VALUES("297","PTH","1.50","1");
INSERT INTO reactivo VALUES("298","Pilory lgA","4.50","1");
INSERT INTO reactivo VALUES("299","Pilory lgG","4.80","1");
INSERT INTO reactivo VALUES("300","Pilory lgM","4.00","1");
INSERT INTO reactivo VALUES("301","Rubeola (Ac. Anti-lgG)","12.00","1");
INSERT INTO reactivo VALUES("302","Rubeola (Ac. Anti-lgM)","11.00","1");
INSERT INTO reactivo VALUES("303","Sarampión lgM","3.00","1");
INSERT INTO reactivo VALUES("304","Scl 70","2.30","1");
INSERT INTO reactivo VALUES("305","Serameba (Ac. Anti-ameba)","2.00","1");
INSERT INTO reactivo VALUES("306","S.H.B.G","4.00","1");
INSERT INTO reactivo VALUES("308","T3 libre","13.50","1");
INSERT INTO reactivo VALUES("309","T3 total","13.90","1");
INSERT INTO reactivo VALUES("310","T4 libre","11.00","1");
INSERT INTO reactivo VALUES("311","T4 total","14.00","1");
INSERT INTO reactivo VALUES("312","Testosterona","20.00","1");
INSERT INTO reactivo VALUES("313","Testosterona libre (calc)","22.00","1");
INSERT INTO reactivo VALUES("314","Tiroglobulin","9.00","1");
INSERT INTO reactivo VALUES("315","Toxoplasma (Ac. Anti-lgG)","12.00","1");
INSERT INTO reactivo VALUES("316","Toxoplasma (Ac. Anti-lgM)","11.50","1");
INSERT INTO reactivo VALUES("317","TPO (Ac.- Microsomales TPO)","7.00","1");
INSERT INTO reactivo VALUES("318","Transferrina","5.00","1");
INSERT INTO reactivo VALUES("319","Transferrina Saturación","5.50","1");
INSERT INTO reactivo VALUES("320","Troponina I","2.00","1");
INSERT INTO reactivo VALUES("321","Troponina T","2.00","1");
INSERT INTO reactivo VALUES("322","TSH","12.00","1");
INSERT INTO reactivo VALUES("323","Varicela lgG","6.00","1");
INSERT INTO reactivo VALUES("324","Varicela lgM","6.00","1");
INSERT INTO reactivo VALUES("325","Vitamina B 12","14.00","1");
INSERT INTO reactivo VALUES("326","Vitamina D","6.00","1");
INSERT INTO reactivo VALUES("1","Hematies","6.00","1");
INSERT INTO reactivo VALUES("327","Prueba de embarazo cualitativa","5.00","1");
INSERT INTO reactivo VALUES("328","Prueba de embarazo cuantitativa","5.00","1");
INSERT INTO reactivo VALUES("339","Urinálisis EMO (F.Q.S.)","1.25","1");
INSERT INTO reactivo VALUES("341","T.P","1.25","1");
INSERT INTO reactivo VALUES("342","Progresivos","1.25","1");





CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(250) NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO rol VALUES("1","Administrador");
INSERT INTO rol VALUES("2","Químicofarmacéutico");
INSERT INTO rol VALUES("3","Auxiliar");
INSERT INTO rol VALUES("4","Secretaria");





CREATE TABLE `sexo` (
  `id_sexo` int(11) NOT NULL AUTO_INCREMENT,
  `abreviatura` varchar(20) NOT NULL,
  `sexo` varchar(30) NOT NULL,
  PRIMARY KEY (`id_sexo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO sexo VALUES("1","M","Masculino");
INSERT INTO sexo VALUES("2","F","Femenino");





CREATE TABLE `tipo_formato` (
  `formato_id` int(11) NOT NULL AUTO_INCREMENT,
  `formato_nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`formato_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO tipo_formato VALUES("1","Examen Orina");
INSERT INTO tipo_formato VALUES("2","Examen FÃ­sico - QuÃ­mico de Orina");
INSERT INTO tipo_formato VALUES("3","Examen de Sangre");
INSERT INTO tipo_formato VALUES("4","Examen de Sangre - Embarazo");
INSERT INTO tipo_formato VALUES("5","Examen de SecreciÃ³n");
INSERT INTO tipo_formato VALUES("6","Examen BiometrÃ­a HemÃ¡tica");





CREATE TABLE `tipo_identificacion` (
  `id_tipoidentificacion` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_identificacion` varchar(150) NOT NULL,
  PRIMARY KEY (`id_tipoidentificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO tipo_identificacion VALUES("1","Cedula");
INSERT INTO tipo_identificacion VALUES("2","Pasaporte");
INSERT INTO tipo_identificacion VALUES("3","Representante\n");





CREATE TABLE `tipo_paciente` (
  `id_tipopaciente` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_paciente` varchar(200) NOT NULL,
  PRIMARY KEY (`id_tipopaciente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO tipo_paciente VALUES("1","General");
INSERT INTO tipo_paciente VALUES("2","Familiar");





CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `clave` varchar(250) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `id_empleado` (`id_empleado`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

INSERT INTO usuario VALUES("1","admin009","asdfgqwert","1");
INSERT INTO usuario VALUES("2","druiz","1234druiz","10");
INSERT INTO usuario VALUES("13","derazo","labloly","19");
INSERT INTO usuario VALUES("14","apincay","1234apincay","13");
INSERT INTO usuario VALUES("15","csanchez","1234csanchez","20");



