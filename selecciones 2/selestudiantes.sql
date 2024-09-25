select * from estudiantes
where (nombre like 'A%' or apellido like '%z');

select nombre from estudiantes 
where (cedula like '%32%' and cedula like '17%');

select nombre,apellido from estudiantes 
where (cedula like '%06' or cedula like '17%');