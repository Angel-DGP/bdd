select * from productos 
where stock = 10 and precio <money(10);

select * from productos 
where (nombre like  '%m%' or descripcion = '% %');

select * from productos 
where (descripcion is null or stock = 0);