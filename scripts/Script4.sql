drop table if exists registros_entrada;
create table registros_entrada(
	codigo_registro int not null primary key,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null
);

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(001,'0123456781','01/01/2001','12:34');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(002,'0123456782','01/01/2022','12:34');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(003,'0123456783','01/01/2025','11:11');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(004,'0123456784','01/01/2015','00:22');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(005,'0123456785','01/01/2000','22:00');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(006,'0123456786','01/01/2009','23:59');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(007,'0123456787','01/01/2002','17:56');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(008,'0123456788','01/01/2001','14:01');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(009,'0123456789','01/01/2006','03:14');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(010,'0123456790','01/01/2011','11:56');

select * from registros_entrada;