drop table if exists estudiantes;
create table estudiantes (
	cedula char(10) not null Primary Key,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null
);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('0812345671','Efrain','Cedeño','cedeno.efrain@gmail.com','02/04/2003');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('0812345672','Armando','Paredes','armando.paredesfirmes@gmail.com','07/04/2004');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('0812345673','Diego','Castillo','castillosfuertes@gmail.com','12/09/2005');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('0812345674','Sebastian','Perez','sebapepa@gmail.com','31/07/1994');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('0812345675','Santiago','Rodriguez','santiguez@gmail.com','16/01/1999');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('0812345676','Derian','Zera','zeraonoderian@gmail.com','01/12/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('0812345677','Analia','Posligua','cedeno.efrain@gmail.com','05/12/2013');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('0812345678','Adrian','Paredes','fuertesparedesdeadrian@gmail.com','11/11/201');

select * from estudiantes;
