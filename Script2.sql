drop table if exists cuentas;

create table cuentas (
    numero_cuenta CHAR(5) not null primary key,
    cedula_propietario CHAR(5) not null,
    fecha_creacion DATE not null,
    saldo MONEY not null
);

select * from cuentas;
