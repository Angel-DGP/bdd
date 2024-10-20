--RELACION USUARIO CUENTA
select avg(cast(saldo as numeric)) from 
usuario u, cuentas c
where u.cedula = c.cedula_propietario and u.cedula = '0102030401'

select * from usuario,cuentas

select tipo_cuenta, count(u.tipo_cuenta) 
from usuario u, cuentas c
where u.cedula  = c.cedula_propietario
group by tipo_cuenta

--RELACION CLIENTES COMPRAS
select * from clientes,compras

select c.cedula,c.nombre, sum(monto)
from clientes c, compras cs
group by c.cedula

select fecha_compra,count(monto) from
clientes c, compras cs
where fecha_compra  = '2023-10-11'
group by fecha_compra

--RELACION ESTUDIANTES PROFESORES
select * from estudiantes,profesores

select codigo_profesor, count(codigo_profesor)
from estudiantes e, profesores p
where e.codigo_profesor = p.codigo
group by codigo_profesor

select round(AVG(EXTRACT(YEAR FROM CURRENT_DATE)-EXTRACT(YEAR FROM e.fecha_nacimiento)))
from estudiantes e,profesores p;


--RELACION PERSONA PRESTAMO
select * from personas,prestamo

select p.cedula, sum (monto)
from personas p, prestamo pr
group by p.cedula

select count(p.numero_hijos) from
personas p
where numero_hijos >1

--RELACION PRODUCTOS VENTAS
select * from productos,ventas

select max(precio) from productos

select sum(cantidad) from productos p, ventas v

--RELACION TRANSACCION BANCO
select * from transacciones t,banco b

select count(tipo) from transacciones t
where tipo = 'C'

select numero_cuenta, ROUND(AVG(CAST(monto as decimal)),2) 
from transacciones t, banco b
group by numero_cuenta


--RELACION VIDEOJUEGOS PLATAFORMAS

select * from videojuegos,plataformas

select codigo_videojuego, count(id_plataforma)
from videojuegos v,plataformas p
group by codigo_videojuego

select ROUND(AVG(valoracion),2)
from videojuegos

--RELACION REGISTROS_ENTRADA EMPLEADO
select * from registros_entrada re, empleado e

select cedula_empleado,COUNT(re.codigo_empleado) from 
registros_entrada re, empleado e
group by cedula_empleado

select max(re.fecha),min(re.fecha) from registros_entrada re
