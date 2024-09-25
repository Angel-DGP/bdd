drop table if exists transacciones;
create table transacciones(
	codigo int not null primary key,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date null,
	hora time not null
);

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (01,'00001',20.05,'C','31/01/2007','03:50');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (02,'00002',26.60,'C','04/04/2007','13:55');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (03,'00003',120.5,'C','12/03/2007','01:20');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (04,'00004',34.54,'D','11/04/2007','00:10');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (05,'00005',22.00,'C','11/09/2001','09:50');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (06,'00006',56.05,'D','31/01/2005','03:50');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (07,'00007',76.60,'D','04/02/2012','13:55');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (08,'00008',977.5,'D','12/12/2023','01:20');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (09,'00009',124.54,'C','01/12/2015','00:10');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (10,'00010',156.00,'D','11/09/2011','09:50');



select * from transacciones;