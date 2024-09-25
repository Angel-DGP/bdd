delete from transacciones 
where hora <= '18:00' and hora >= '14:00' 
and fecha>= '2024/08/01' and fecha<= '2024/08/31';
select * from transacciones