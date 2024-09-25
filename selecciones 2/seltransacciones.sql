select * from transacciones
where (tipo like 'C') and (numero_cuenta between '22001' and '22004');

select * from transacciones
where (tipo like 'D') 
and 
(EXTRACT(MONTH FROM fecha)=05 and EXTRACT(DAY FROM fecha)=25)
and
(numero_cuenta between '22007' and '22010');

select * from transacciones
where (codigo >=1 and codigo <=5) and 
(numero_cuenta between '22002' and '22004') and
(
	EXTRACT(DAY FROM fecha)<26 and 
	EXTRACT(DAY FROM fecha)>29 and 
	EXTRACT(MONTH FROM fecha) = 05
)
