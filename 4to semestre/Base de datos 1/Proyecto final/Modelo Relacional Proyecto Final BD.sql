CREATE TABLE `Empresa` (
  `Id_Empresa` int PRIMARY KEY NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Razon_social` varchar(150) NOT NULL,
  `RFC` int(12) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `NoCalle` varchar(50) NOT NULL,
  `Colonia` varchar(50) NOT NULL,
  `CP` varchar(5) NOT NULL,
  `Ciudad` varchar(50) NOT NULL,
  `Estado` varchar(50) NOT NULL,
  `Pais` varchar(50) NOT NULL DEFAULT "MX",
  `Telefono` int(15) NOT NULL,
  `Codigo_Interno` varchar(20) NOT NULL,
  `Id_Estado` int NOT NULL
);

CREATE TABLE `Proyecto` (
  `Id_Proyecto` int PRIMARY KEY NOT NULL,
  `F_Inicio` date NOT NULL,
  `F_Finalizacion` date NOT NULL,
  `F_Estimada` date NOT NULL,
  `C_Estimado` int NOT NULL,
  `P_Final` int NOT NULL,
  `Id_Empresa` int NOT NULL,
  `Id_Lista_Proyecto` int NOT NULL,
  `Id_Rol` int NOT NULL
);

CREATE TABLE `Pago_Periodico` (
  `Id_Pago_Periodico` int PRIMARY KEY NOT NULL,
  `Monto` int NOT NULL,
  `Fecha_pago` date NOT NULL,
  `Id_Proyecto` int NOT NULL
);

CREATE TABLE `Lista_Proyecto` (
  `Id_Lista_Proyecto` int PRIMARY KEY NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` varchar(300) NOT NULL,
  `P_Estimado` int NOT NULL
);

CREATE TABLE `Rol` (
  `Id_Rol` int PRIMARY KEY NOT NULL,
  `Nombre_Rol` varchar(50) NOT NULL,
  `Id_Trabajador` int NOT NULL
);

CREATE TABLE `Trabajador` (
  `Id_Trabajador` int PRIMARY KEY NOT NULL,
  `RFC` varchar(12) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido_Paterno` varchar(50) NOT NULL,
  `Apellido_Materno` varchar(50) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `NoCalle` varchar(50) NOT NULL,
  `Colonia` varchar(50) NOT NULL,
  `CP` varchar(5) NOT NULL,
  `Ciudad` varchar(50) NOT NULL,
  `Estado` varchar(50) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Id_Estado` int NOT NULL
);

CREATE TABLE `Proyecto_Trabajador` (
  `Id_Proyecto_Trabajador` int PRIMARY KEY NOT NULL,
  `Asignacion` varchar(50) NOT NULL,
  `Id_HTrabajador` int NOT NULL
);

CREATE TABLE `Asigna` (
  `Id_Asigna` int PRIMARY KEY NOT NULL,
  `Id_Proyecto_Trabajador` int NOT NULL,
  `Id_Trabajador` int NOT NULL
);

CREATE TABLE `Horas_Trabajador` (
  `Id_HTrabajador` int PRIMARY KEY NOT NULL,
  `H_Llegada` time NOT NULL,
  `H_Salida` time NOT NULL,
  `Monto_H` int NOT NULL,
  `H_Extras` int
);

CREATE TABLE `Estados` (
  `Id_Estado` int PRIMARY KEY NOT NULL,
  `Estado` varchar(50) NOT NULL,
  `Abreviatura` varchar(50) NOT NULL
);

ALTER TABLE `Empresa` ADD FOREIGN KEY (`Id_Estado`) REFERENCES `Estados` (`Id_Estado`);

ALTER TABLE `Empresa` ADD FOREIGN KEY (`Id_Empresa`) REFERENCES `Proyecto` (`Id_Empresa`);

ALTER TABLE `Lista_Proyecto` ADD FOREIGN KEY (`Id_Lista_Proyecto`) REFERENCES `Proyecto` (`Id_Lista_Proyecto`);

ALTER TABLE `Rol` ADD FOREIGN KEY (`Id_Rol`) REFERENCES `Proyecto` (`Id_Rol`);

ALTER TABLE `Pago_Periodico` ADD FOREIGN KEY (`Id_Proyecto`) REFERENCES `Proyecto` (`Id_Proyecto`);

ALTER TABLE `Rol` ADD FOREIGN KEY (`Id_Trabajador`) REFERENCES `Trabajador` (`Id_Trabajador`);

ALTER TABLE `Trabajador` ADD FOREIGN KEY (`Id_Estado`) REFERENCES `Estados` (`Id_Estado`);

ALTER TABLE `Horas_Trabajador` ADD FOREIGN KEY (`Id_HTrabajador`) REFERENCES `Proyecto_Trabajador` (`Id_HTrabajador`);

ALTER TABLE `Proyecto_Trabajador` ADD FOREIGN KEY (`Id_Proyecto_Trabajador`) REFERENCES `Asigna` (`Id_Proyecto_Trabajador`);

ALTER TABLE `Trabajador` ADD FOREIGN KEY (`Id_Trabajador`) REFERENCES `Asigna` (`Id_Trabajador`);
