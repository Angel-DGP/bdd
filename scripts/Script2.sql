drop table if exists cuentas;

create table cuentas (
    numero_cuenta CHAR(5) not null primary key,
    cedula_propietario CHAR(5) not null,
    fecha_creacion DATE not null,
    saldo MONEY not null
);

/*10 inserts Cuenta*/
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
	values ('00001','08001','22/02/2006',25.54);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
	values ('00002','08002','13/08/2024',105.00);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
	values ('00003','08003','31/01/2023',35.25);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
	values ('00004','08004','25/10/2020',50.75);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
	values ('00005','08005','28/06/2001',10.10);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
	values ('00006','08006','12/03/2010',300.45);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
	values ('00007','08007','04/05/2016',1.00);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
	values ('00008','08008','11/12/2005',666.66);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
	values ('00009','08009','09/11/2001',999.99);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
	values ('00010','08010','11/12/2023',0.01);
select * from cuentas;
