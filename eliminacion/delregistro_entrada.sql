delete from registros_entrada
where EXTRACT(MONTH FROM fecha) = 6;
select * from registros_entrada
