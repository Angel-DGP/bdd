select * from productos where nombre like 'Q*'

select * from productos where descripcion is null

select * from productos 
where precio>money(2) and precio<=money(3)