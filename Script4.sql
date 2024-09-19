drop table if exists registros_entrada;
create table registros_entrada(
	codigo_registro int not null primary key,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null
);

select * from registros_entrada;