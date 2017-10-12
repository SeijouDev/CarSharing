USE car_sharing_db;

CREATE TABLE `vehiculo` (
`vehiculo_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`marca` varchar(100) Not NULL,
`linea` varchar(100) Not NULL,
`placa` varchar(100) Not NULL,
`color` varchar(100) Not NULL,
`ciudad_placa` varchar(100) Not NULL,
`modelo` varchar(100) Not NULL,
`tipo_combustible` varchar(100),
`clase_vehiculo` varchar(100) Not NULL,
`vacantes` varchar(100) Not NULL,
`foto` varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `prestador` (
`prestador_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`nombre` varchar(100) Not NULL,
`apellido` varchar(100) Not NULL,
`cedula` varchar(100) Not NULL,
`correo` varchar(100) Not NULL,
`ciudad_residencia` varchar(100) Not NULL,
`fecha_nacimiento` datetime Not NULL,
`telefono` varchar(20),
`usuario` varchar(100) Not NULL,
`clave` varchar(100) Not NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `pasajero` (
`pasajero_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`nombre` varchar(100) Not NULL,
`apellido` varchar(100) Not NULL,
`cedula` varchar(100) Not NULL,
`correo` varchar(100) Not NULL,
`ciudad_residencia` varchar(100) Not NULL,
`fecha_nacimiento` datetime Not NULL,
`telefono` varchar(20),
`usuario` varchar(100) Not NULL,
`clave` varchar(100) Not NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

