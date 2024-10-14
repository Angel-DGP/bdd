
//Creacion de tablas
drop table if exists usuario;
drop table if exists cuentas;
create table usuario (
	cedula char(10) not null,
	nombre varchar(25),
	apellido varchar(25),
	tipo_cuenta VARCHAR(20),
	limite_credito decimal(10,2),
	constraint usuario_pk primary key(cedula)
);
create table cuentas(
    numero_cuenta char(5),
    cedula_propietario char(10),
    fecha_creacion date,
    saldo money,
    primary key (numero_cuenta));
alter table cuentas
add constraint usuario_cedula_propietario foreign key (cedula_propietario)
references usuario(cedula);

//Los inserts
INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito)
VALUES 
('0102030401', 'Juan', 'Pérez', 'Corriente', 5000.00),
('0203040506', 'María', 'González', 'Ahorros', 3000.00),
('0304050607', 'Carlos', 'Ramírez', 'Crédito', 15000.00),
('0405060708', 'Ana', 'Torres', 'Corriente', 4000.00),
('0506070809', 'Pedro', 'López', 'Crédito', 8000.00),
('0607080910', 'Luisa', 'Martínez', 'Ahorros', 2500.00),
('0708091011', 'Mónica', 'Hernández', 'Corriente', 4500.00),
('0809101112', 'David', 'Vargas', 'Crédito', 6000.00),
('0910111213', 'Paola', 'Mendoza', 'Ahorros', 3200.00),
('1011121314', 'Sofía', 'Castillo', 'Corriente', 5000.00);
INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
VALUES 
('00001', '0102030401', '2022-08-22', 850.50),
('00002', '0203040506', '2022-08-23', 720.00),
('00003', '0304050607', '2022-08-24', 500.75),
('00004', '0405060708', '2022-08-25', 250.00),
('00005', '0506070809', '2022-08-26', 950.00),
('00006', '0607080910', '2022-09-01', 300.20),
('00007', '0708091011', '2022-09-02', 600.00),
('00008', '0809101112', '2022-09-05', 999.99),
('00009', '0910111213', '2022-09-10', 400.00),
('00010', '1011121314', '2022-09-20', 850.00);


select * from cuentas;
select * from usuario;