--------------------------------------------USUARIO Y GRUPO----------------------------------------------
--CONSULTA
select u.nombre,g.nombre from usuarios u , grupo g, usuario_grupo ug
where u.id = ug.us_id and g.id = ug.gr_id;
--SUBCONSULTA
select nombre from usuarios
where id in(SELECT us_id from usuario_grupo where gr_id = 1);
--AGREGACION
select g.nombre, count(ug.us_id) from grupo g, usuario_grupo ug
where g.id = ug.gr_id 
group by g.nombre;
--CONSULTA 2
select u.nombre,g.nombre from usuarios u , grupo g, usuario_grupo ug
where u.id = ug.us_id and g.id = ug.gr_id and g.nombre like '%intensivo%';
--SUBCONSULTA 2
select nombre from usuarios
where id in (SELECT us_id from usuario_grupo where gr_id = 2);
--AGREGACION 2
select g.nombre, max(ug.us_id),min(ug.us_id) from grupo g, usuario_grupo ug
where g.id = ug.gr_id
group by g.nombre;
--CONSULTA 3
select u.nombre, g.fecha_creacion from usuarios u, grupo g, usuario_grupo ug
where u.id = ug.us_id and g.id = ug.gr_id and fecha_creacion between '2020-03-08' and '2022-03-08';
--SUBCONSULTA 3
select nombre from usuarios 
where id in(SELECT us_id from usuario_grupo where gr_id = 3);
--AGREGACION 3
select g.descripcion, count(ug.us_id) from grupo g, usuario_grupo ug
where g.id = ug.gr_id and g.descripcion like '%matutino%'
group by g.descripcion;

----------------------------------------HABITACIONES Y HUESPEDES----------------------------------------
--CONSULTA
select h.habitacion_numero,hs.nombres, hs.apellidos from habitaciones h, huespedes hs, reservas r
where h.habitacion_numero = r.habitacion and hs.id = r.huesped_id;
--SUBCONSULTA
select nombres, apellidos from huespedes 
where id in (SELECT huesped_id from reservas where habitacion = 2);
--AGREGACION
select h.habitacion_numero, count(huesped_id) from  habitaciones h, reservas r
where r.habitacion = h.habitacion_numero 
group by h.habitacion_numero;
--CONSULTA 2
select h.habitacion_numero, h.piso, hs.nombres, hs.apellidos from habitaciones h, huespedes hs, reservas r
where r.habitacion = h.habitacion_numero and r.huesped_id = hs.id and h.piso = 4;
--SUBCONSULTA 2
select nombres, apellidos from huespedes
where id in (SELECT huesped_id from reservas where habitacion = 3);
--AGREGACION 2
select h.habitacion_numero, AVG(r.huesped_id) from habitaciones h, reservas r
where r.habitacion = h.habitacion_numero 
group by h.habitacion_numero;
--CONSULTA 3
select h.habitacion_numero , hs.nombres , hs.apellidos from huespedes hs, habitaciones h, reservas r
where r.habitacion = h.habitacion_numero and r.huesped_id = hs.id;
--SUBCONSULTA 3
select nombres, apellidos from huespedes
where id in (SELECT huesped_id FROM reservas WHERE habitacion = 4);
--AGREGACION 3
select h.habitacion_numero, sum(h.precio_por_noche) from habitaciones h, reservas r
where r.habitacion = h.habitacion_numero 
group by h.habitacion_numero;

-----------------------------------------MUNICIPIO Y PROYECTOS------------------------------------------

--CONSULTA
select m.nombre, p.proyecto from municipio m, proyecto p, proyecto_municipio pm
where pm.municipio_id = m.id and pm.proyecto_id = p.id;
--SUBCONSULTA
select proyecto from proyecto
where id in(SELECT proyecto_id from proyecto_municipio where municipio_id = 1);
--AGREGACION
select m.nombre, COUNT(pm.proyecto_id) from municipio m, proyecto_municipio pm
where pm.municipio_id = m.id
group by m.nombre;
--CONSULTA 2
select m.nombre , p.proyecto from municipio m, proyecto p, proyecto_municipio mp
where mp.municipio_id = m.id and mp.proyecto_id = p.id and m.nombre like '%GAD%';
--SUBCONSULTA 2
---???
--AGREGACION 2
select m.nombre, MIN(mp.proyecto_id) from municipio m, proyecto_municipio mp
where mp.municipio_id = m.id 
group by m.nombre;
--CONSULTA 3
select m.nombre,c.nombre from ciudad c, municipio m
where m.ciudad_id = c.id;
--SUBCONSULTA 3
select proyecto from proyecto
where id in (SELECT proyecto_id from proyecto_municipio where municipio_id = 1);
--AGREGACION 3
select m.nombre, MAX(pm.proyecto_id) from municipio m, proyecto_municipio pm
where m.id = pm.municipio_id
group by m.nombre;
