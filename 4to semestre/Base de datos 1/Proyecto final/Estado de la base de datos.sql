use fabrica;
-- Insert

-- Insert de estados
INSERT INTO estados (id_estados, estado, abreviatura)
VALUES (1,'Aguascalientes','AGS'),(2,'Baja California','BC'),(3,'Baja California Sur','BCS'),(4,'Campeche','CAMP'),(5,'Coahuila','COAH'),(6,'Colima','COL'),(7,'Chiapas','CHIS'),(8,'Chihuahua','CHIH'),(9,'Ciudad de México','CDMX'),(10,'Durango','DGO'),(11,'Guanajuato','GTO'),(12,'Guerrero','GRO'),(13,'Hidalgo','HGO'),(14,'Jalisco','JAL'),(15,'Estado de México','MEX'),(16,'Michoacán','MICH'),(17,'Morelos','MOR'),(18,'Nayarit','NAY'),(19,'Nuevo León','NL'),(20,'Oaxaca','OAX'),(21,'Puebla','PUE'),(22,'Querétaro','QRO'),(23,'Quintana Roo','QR'),(24,'San Luis Potosí','SLP'),(25,'Sinaloa','SIN'),(26,'Sonora','SON'),(27,'Tabasco','TAB'),(28,'Tamaulipas','TAMP'),(29,'Tlaxcala','TLAX'),(30,'Veracruz','VER'),(31,'Yucatán','YUC'),(32,'Zacatecas','ZAC');

-- Insert de roles
INSERT INTO rol (id_rol, nombre_rol) VALUES
(101, 'Desarrollador Web'),
(102,'Diseñador UI/UX'),
(103,'Ingeniero de Calidad'),
(104,'Scrum Master'),
(105,'Gerente de Proyecto'),
(106,'Analista de Negocios'),
(107,'Ingeniero de Software'),
(108,'Desarrollador Full Stack'),
(109,'Ingeniero DevOps'),
(110,'Desarrollador Móvil'),
(111,'Administrador de diseño');

-- Insert de empresa
INSERT INTO empresa (id_empresa, nombre, razon_social, rfc, calle, nocalle, colonia, codigo_postal, ciudad, telefono, id_estados) VALUES
(120601, 'Tecnología Express', 'Diseño y Desarrollo de Páginas Web', 'TEC220511XYZ', 'Av. Tecnológico ', '123', 'Tecnológica', '20230', 'Aguascalientes', '5512345678', 1),
(120602, 'Innova Tech', 'Desarrollo de Aplicaciones Móviles', 'INV220511XYZ', 'Calle del Paseo ', '456', 'Innovadora', '21040', 'Mexicali', '2345678901', 2),
(120603, 'Sistema Digital', 'Sistemas de Control de Inventarios', 'SID220511XYZ', 'Calle de la Tecnología ', '789', 'Digital', '24050', 'Campeche', '3456789012', 4),
(120604, 'TecnoSys', 'Desarrollo de Software a la Medida', 'TEC220511XWZ', 'Av. Principal ', '123', 'Campestre', '29060', 'Tuxtla Gutiérrez', '4567890123', 7),
(120605, 'SoftHouse', 'Desarrollo de Sistemas de Gestión Empresarial', 'SOF220511XYZ', 'Calle Principal ', '456', 'Residencial', '31070', 'Chihuahua', '5678901234', 8),
(120606, 'DataWeb', 'Desarrollo de Bases de Datos', 'DAW220511XYZ', 'Av. Principal ', '789', 'Tecnológica', '42080', 'Ciudad de México', '6789012345', 9),
(120607, 'Red Code', 'Desarrollo de Aplicaciones Web', 'REC220511XYZ', 'Calle del Progreso ', '123', 'Progreso', '23090', 'Saltillo', '7890123456', 5),
(120608, 'BlueTech', 'Desarrollo de Sistemas de Comunicación', 'BLT220511XYZ', 'Calle Principal ', '456', 'Azul', '24010', 'Colima','8901234567', 6),
(120609, 'InnoTech', 'Desarrollo de Aplicaciones Especializadas', 'INT220511XYZ', 'Calle de la Tecnología ', '789', 'Tecnológica', '35020', 'Durango','0123456789', 10),
(120610, 'SoftNova', 'Desarrollo de Aplicaciones Móviles', 'SNV220511XYZ', 'Calle de la Creatividad ', '123', 'Moderna', '44190', 'Guadalajara', '3456789012', 14);

-- Insert de proyecto
INSERT INTO proyecto(id_proyecto, nombre, fecha_inicio, fecha_finalizacion, fecha_estimadaFinalizacion, costo_ejecucion, precio_final_venta, id_empresa) VALUES
(1101011, 'Desarrollo de aplicación móvil', '2023-01-01', '2023-08-31', '2023-06-01', 48000, 78000, 120601),
(1101012, 'Sistema de facturación electrónica', '2023-02-01', '2024-04-30', '2024-02-01', 57000, 81000, 120602),
(1101013, 'Migración de sistema ERP', '2023-03-01', '2024-12-31', '2024-10-01', 67000, 93000, 120604),
(1101014, 'Desarrollo de plataforma e-commerce', '2023-04-01', '2025-08-31', '2025-06-01', 75000, 101000, 120603),
(1101015, 'Automatización de procesos', '2023-05-01', '2026-04-30', '2026-02-01', 82000, 106000, 120601),
(1101016, 'Desarrollo de aplicación para gestión de inventarios', '2023-06-01', '2026-12-31', '2026-10-01', 93000, 115000, 120606),
(1101017, 'Desarrollo de sistema de reservas en línea', '2023-07-01', '2027-08-31', '2027-06-01', 102000, 123000, 120608),
(1101018, 'Desarrollo de aplicación para gestión de proyectos', '2023-08-01', '2028-04-30', '2028-02-01', 113000, 133000, 120605),
(1101019, 'Implementación de sistema de seguridad informática', '2023-09-01', '2028-12-31', '2028-10-01', 123000, 144000, 120610),
(1101020, 'Desarrollo de aplicación para control de acceso', '2023-10-01', '2029-08-31', '2029-06-01', 135000, 155000, 120609),
(1101021, 'Desarrollo de sistema de gestión de recursos humanos', '2023-11-01', '2030-04-30', '2030-02-01', 145000, 166000, 120610),
(1101022, 'Desarrollo de aplicación para reserva de citas médicas', '2023-12-01', '2030-12-31', '2030-10-01', 156000, 177000, 120607),
(1101023, 'Desarrollo de sistema de gestión de inventarios', '2024-01-01', '2031-08-31', '2031-06-01', 168000, 190000, 120602),
(1101024, 'Desarrollo de aplicación para seguimiento de pedidos', '2024-02-01', '2032-04-30', '2032-02-01', 180000, 202000, 120608),
(1101025, 'Desarrollo de plataforma de enseñanza en línea', '2024-03-01', '2032-12-31', '2032-10-01', 195000, 218000, 120603);

-- Insert de trabajador
INSERT INTO trabajador (id_trabajador, rfc, nombre, apellido_paterno, apellido_materno, domicilio, nocalle, colonia, codigo_postal, telefono, email, id_rol, id_proyecto, id_estados) VALUES
(11030171,'GAA230907KCO', 'Ana', 'García', 'Martínez', 'Calle de la Paloma', '123', 'La Paz', '23090', '5551234567', 'ana.garcia@gmail.com', 101 , 1101017, 5),
(11030172,'LHJ660726JCM','José', 'López', 'Hernández', 'Calle del Bosque', '456', 'Bosques del Valle', '66210', '5552345678', 'jose.lopez@hotmail.com', 102, 1101016, 9),
(11030173,'SAM72831929','María', 'Sánchez', 'Gómez', 'Calle de la Luna', '789', 'Lomas de Angelópolis', '72830',  '5553456789', 'maria.sanchez@yahoo.com', 103,  1101013, 21),
(11030174,'MAC6472182C','Carlos', 'Martínez', 'González', 'Calle del Sol', '456', 'Los Alpes', '64720','5554567890', 'carlos.martinez@gmail.com', 104,1101020, 19),
(11030175,'GUL882508C6','Laura', 'Gutiérrez', 'Torres', 'Calle del Río', '789', 'El Mirador', '88250',  '5555678901', 'laura.gutierrez@hotmail.com', 105,1101015, 28),
(11030176,'HVJ830123N5','Jorge', 'Hernández', 'Vázquez', 'Calle de la Montaña', '123', 'Los Pinos', '83010',  '5556789012', 'jorge.hernandez@yahoo.com', 106, 1101019, 26),
(11030177,'FPD9191095D','Diana', 'Flores', 'Pérez', 'Calle del Mar', '456', 'La Playa', '91910', '5557890123', 'diana.flores@gmail.com', 107,1101021, 10),
(11030178,'RGF820102G9','Fernando', 'Ramírez', 'García', 'Calle del Viento', '789', 'Brisas del Golfo', '82010', '5558901234', 'fernando.ramirez@hotmail.com', 108, 1101012, 25),
(11030179,'HVA71980737','Adriana', 'Herrera', 'Vargas', 'Calle de la Arena', '123', 'Puerto Escondido', '71980', '5559012345', 'adriana.herrera@yahoo.com', 109, 1101011, 20),
(11030180,'DIR680102B7','Roberto', 'Díaz', 'Castillo', 'Calle de la Sierra', '456', 'Sierra Azul', '68010', '5550123456', 'roberto.diaz@gmail.com', 110,  1101022, 13),
(11030181,'GAA446905TG1','Ana', 'García', 'Martínez', 'Av. de los Pinos', '789', 'Los Pinos', '44690', '3334567890', 'ana.garcia@gmail.com', 109, 1101013, 14),
(11030182,'SGL671910ES4','Luis', 'Sánchez', 'González', 'Calle del Bosque', '321', 'Bosques del Sur', '67190', '8187654321', 'luis.sanchez@gmail.com', 107, 1101011, 19),
(11030183,'HRK6610022E7','Karen', 'Hernández', 'Ruíz', 'Calle del Sol', '234', 'Los Alpes', '66100', '8112345678', 'karen.hernandez@gmail.com', 105, 1101020, 15),
(11030184,'MPI8009256H3','Juan', 'Martínez', 'Pérez', 'Calle del Mar', '567', 'La Marina', '80090','6623456789', 'juan.martinez@gmail.com', 103, 1101017, 26),
(11030185,'LOF441601I2','Fernanda', 'López', 'Gutiérrez', 'Av. de las Flores', '890', 'Las Flores', '44160', '3337890123', 'fernanda.lopez@gmail.com', 110, 1101015, 16),
(11030186,'GOM802418UM9','Manuel', 'González', 'Sánchez', 'Calle del Río', '123', 'El Río', '80240', '6628901234', 'manuel.gonzalez@gmail.com', 102, 1101016, 26),
(11030187,'DIS800407M76','Sofía', 'Díaz', 'Hernández', 'Calle del Viento', '456', 'Los Vientos', '80040', '6625678901', 'sofia.diaz@gmail.com', 104, 1101012, 26),
(11030188,'ROJ441509AS3','José', 'Rodríguez', 'Castillo', 'Calle de la Montaña', '789', 'La Montaña', '44150', '3330123456', 'jose.rodriguez@gmail.com', 106, 1101019, 14),
(11030189,'VAL681013L77','Elena', 'Vargas', 'Ruíz', 'Av. del Cielo', '123', 'Los Cielos', '68100','5556789012', 'elena.vargas@gmail.com', 108, 1101021, 13),
(11030190,'GOM450502KT2','María', 'González', 'Sánchez', 'Calle del Bosque', '234', 'Bosques de San José', '45050', '3330123456', 'maria.gonzalez@gmail.com', 110, 1101011, 9);

-- Insert de Proyecto_Trabajador
INSERT INTO proyecto_trabajador(id_proyecto_trabajador, horas_trabajadas, monto_por_hora, hora_extras, id_trabajador) VALUES 
  (11030201, 160, 100, 2, 11030171),
  (11030202, 140, 95, 3, 11030172),
  (11030203, 150, 110, 1, 11030173),
  (11030204, 155, 90, 0, 11030174),
  (11030205, 165, 105, 4, 11030175),
  (11030206, 175, 115, 1, 11030176),
  (11030207, 145, 98, 0, 11030177),
  (11030208, 135, 92, 2, 11030178),
  (11030209, 160, 105, 1, 11030179),
  (11030210, 170, 112, 3, 11030180),
  (11030211, 155, 93, 0, 11030181),
  (11030212, 150, 100, 2, 11030182),
  (11030213, 145, 96, 1, 11030183),
  (11030214, 165, 108, 1, 11030184),
  (11030215, 155, 95, 3, 11030185),
  (11030216, 160, 105, 0, 11030186),
  (11030217, 140, 97, 2, 11030187),
  (11030218, 150, 103, 1, 11030188),
  (11030219, 155, 94, 1, 11030189),
  (11030220, 165, 110, 4, 11030190);
  
  -- Insert de Pago_Periodico
  INSERT INTO pago_periodico (id_pago_periodico, monto, fecha_pago, id_proyecto) VALUES
(111158, 8000, '2023-02-15', 1101011),
(111159, 8000, '2023-03-15', 1101011),
(111160, 8000, '2023-04-15', 1101011),
(111161, 8000, '2023-05-15', 1101011),
(111162, 8000, '2023-06-15', 1101011),
(111163, 8000, '2023-07-15', 1101011),
(111164, 8000, '2023-08-15', 1101011),
(111165, 9500, '2023-09-15', 1101012),
(111166, 9500, '2023-10-15', 1101012),
(111167, 9500, '2023-11-15', 1101012),
(111168, 9500, '2023-12-15', 1101012),
(111169, 9500, '2024-01-15', 1101012),
(111170, 9500, '2024-02-15', 1101012),
(111171, 9500, '2024-03-15', 1101012),
(111172, 9500, '2024-04-15', 1101012),
(111173, 11166, '2024-05-15', 1101013),
(111174, 11166, '2024-06-15', 1101013),
(111175, 11166, '2024-07-15', 1101013),
(111176, 11166, '2024-08-15', 1101013),
(111177, 11166, '2024-09-15', 1101013),
(111178, 11166, '2024-10-15', 1101013),
(111179, 11166, '2024-11-15', 1101013),
(111180, 11166, '2024-12-15', 1101013),
(111181, 12500, '2025-01-15', 1101014),
(111182, 12500, '2025-02-15', 1101014),
(111183, 12500, '2025-03-15', 1101014),
(111184, 12500, '2025-04-15', 1101014),
(111185, 12500, '2025-05-15', 1101014),
(111186, 12500, '2025-06-15', 1101014),
(111187, 12500, '2025-07-15', 1101014),
(111188, 12500, '2025-08-15', 1101014),
(111189, 10250, '2025-09-15', 1101015),
(111190, 10250, '2025-10-15', 1101015),
(111191, 10250, '2025-11-15', 1101015),
(111192, 10250, '2025-12-15', 1101015),
(111193, 10500, '2026-01-15', 1101015),
(111194, 10250, '2026-02-15', 1101015),
(111195, 10500, '2026-03-15', 1101015),
(111196, 10250, '2026-04-15', 1101015),
(111197, 10500, '2026-05-15', 1101015),
(111198, 10250, '2026-06-15', 1101015),
(111199, 10500, '2026-07-15', 1101015),
(111200, 10250, '2026-08-15', 1101015);

-- Insert de Lista_Proyecto
INSERT INTO lista_proyecto (id_lista_proyecto,descripcion, presupuesto_estimado, id_proyecto) VALUES
  (1, 'Desarrollo de una aplicación móvil para una empresa de transporte.', 50000, 1101011),
  (2, 'Desarrollo de un sistema de facturación electrónica para una empresa de venta de productos en línea.', 75000, 1101012),
  (3, 'Migración de un sistema ERP a una nueva plataforma para una empresa de manufactura.', 100000, 1101013),
  (4, 'Desarrollo de una plataforma e-commerce para una tienda en línea.', 80000, 1101014),
  (5, 'Automatización de procesos en una empresa de servicios financieros.', 120000, 1101015),
  (6, 'Desarrollo de una aplicación para gestión de inventarios para una empresa de logística.', 60000, 1101016),
  (7, 'Desarrollo de un sistema de reservas en línea para una empresa de turismo.', 90000, 1101017),
  (8, 'Desarrollo de una aplicación para gestión de proyectos para una empresa de consultoría.', 65000, 1101018),
  (9, 'Implementación de un sistema de seguridad informática para una empresa de servicios de tecnología.', 110000, 1101019),
  (10, 'Desarrollo de una aplicación para control de acceso para una empresa de seguridad.', 70000, 1101020),
  (11, 'Desarrollo de un sistema de gestión de recursos humanos para una empresa de servicios.', 85000, 1101021),
  (12, 'Desarrollo de una aplicación para reserva de citas médicas para una clínica.', 50000, 1101022),
  (13, 'Desarrollo de un sistema de gestión de inventarios para una empresa de comercio electrónico.', 75000, 1101023),
  (14, 'Desarrollo de una aplicación para seguimiento de pedidos para una empresa de logística.', 80000, 1101024),
  (15, 'Desarrollo de una plataforma de enseñanza en línea para unainstitución educativa.', 90000, 1101025);

