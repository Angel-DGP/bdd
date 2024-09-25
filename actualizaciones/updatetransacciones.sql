select * from transacciones 
update transacciones set tipo = 'T' 
where monto>money(100) and monto<money(500) AND 
extract(month from fecha) = 9 AND
hora between '14:00' and '20:00' ;