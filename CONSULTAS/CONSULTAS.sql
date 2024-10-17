/*
Usuario y cuentas*/
select c.numero_cuenta, u.nombre from
usuario u, cuentas c
where u.cedula = c.cedula_propietario and c.saldo >='100' and c.saldo <='1000'
;
select * from usuario u, cuentas c;
/*
-----SubConsulta*/
select c.numero_cuenta,c.fecha_creacion, c.saldo, u.cedula from
usuario u, cuentas c
where c.fecha_creacion between '2022-09-21' and '2023-09-21'
;

/*
Clientes y compras
*/
select cl.nombre, cl.apellido from 
clientes cl, compras cs
where cl.cedula = cs.cedula and cl.cedula like '%7%'
;
/*
-----SubConsulta
*/
select cl.cedula, cl.nombre, cl.apellido from
clientes cl, compras cs
where cl.cedula = cs.cedula and cl.nombre = 'Mónica'
;
/*
Estudiantes y Profesores
*/
select e.codigo_profesor, e.nombre, e.apellido from
estudiantes e, profesores p
where e.codigo_profesor = p.codigo and e.apellido like '%n%'
;
/*
-----SubConsulta
*/
select e.cedula,e.nombre,e.apellido,e.email,e.fecha_nacimiento,e.codigo_profesor 
from estudiantes e, profesores p
where e.codigo_profesor = p.codigo and p.nombre = 'Francisco';
/*
Persona y Préstamo
*/
select p.cantidad_ahorrada, pr.monto, pr.garante from
personas p, prestamo pr
where pr.cedula = p.cedula and pr.monto >='100' and pr.monto <='1000'
;
/*
-----SubConsulta
*/
select p.cedula, p.nombre,p.apellido,p.estatura,p.fecha_nacimiento,p.hora_nacimiento,p.cantidad_ahorrada,p.numero_hijos,p.estado_civil_codigo
from personas p, prestamo pr
where pr.cedula = p.cedula and p.nombre = 'Sean'
;
/*
Productos y ventas
*/
select pro.nombre ,pro.stock,v.cantidad
from productos pro, ventas v
where pro.codigo = v.codigo_producto and (pro.nombre like '%m%' or pro.descripcion = '0');
/*
-----SubConsulta
*/
select pro.nombre, pro.stock 
from productos pro, ventas v
where pro.codigo = v.codigo_producto and v.cantidad = 5;

/*
Transacciones y Banco
*/
select * from
banco b, transacciones t
where b.codigo_transaccion = t.codigo and t.tipo = 'C' and t.numero_cuenta between '22001' and '22004'

/*
-----SubConsulta
*/
select t.codigo,t.numero_cuenta,t.monto,t.tipo,t.fecha,t.hora from 
banco b, transacciones t
where t.codigo = b.codigo_transaccion and b.codigo_transaccion = 1;

/*
VideoJuegos y plataforma
*/
select * from
videojuegos v, plataformas p
where v.codigo = p.codigo_videojuego and (v.descripcion like '%Guerra%' and v.valoracion >7) 
or (v.nombre like 'C%' and v.valoracion >8) and (v.nombre like  '%D')
;
/*
-----SubConsulta
*/
select p.id_plataforma,p.nombre_plataforma,p.codigo_videojuego from
plataformas p, videojuegos v
where p.codigo_videojuego = v.codigo and v.nombre = 'God of War'

/*
VideoJuegos y plataforma*/
select re.cedula_empleado,re.fecha,e.nombre 
from registros_entrada re, empleado e
where re.codigo_empleado = e.codigo_empleado and (re.fecha between '2023-08-01' and '2023-08-31') 
or (re.cedula_empleado like '17%' and re.hora between '08:00' and '12:00') 
or (re.fecha between '2023-10-06' and '2023-10-20') 
or (re.cedula_empleado like '08%' and re.hora between '09:00' and '13:00');
/*
-----SubConsulta*/
select re.codigo_registro,e.nombre 
from registros_entrada re, empleado e
where re.codigo_empleado = e.codigo_empleado and re.codigo_empleado = '2201'
;