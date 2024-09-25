select * from registros_entrada
where (EXTRACT(MONTH FROM fecha)=9 or cedula_empleado like '17%');

select * from registros_entrada
where (EXTRACT(MONTH FROM fecha)=8) 
and (cedula_empleado like '17%') 
and (hora > '08:00' and hora <'12:00');


select * from registros_entrada
where 
(
(EXTRACT(MONTH FROM fecha)=8) 
and (cedula_empleado like '17%') 
and (hora > '08:00' and hora <'12:00')
)
or
(
(EXTRACT(MONTH FROM fecha)=9 ) 
and (cedula_empleado like '08%')
and (hora > '09:00' and hora<'13:00')
);
