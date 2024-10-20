drop table if exists productos;
create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock integer not null,
	constraint producto_pk primary key (codigo)
);
/*Todos los campos*/
insert into productos (codigo,nombre,descripcion,precio,stock)
	values (01,'Fertilizante','Fertilizante',4.25,20);
insert into productos (codigo,nombre,descripcion,precio,stock)
	values (02,'Chicles','Chicles',0.25,50);
insert into productos (codigo,nombre,descripcion,precio,stock)
	values (03,'Mentas','Mentas',0.10,100);
insert into productos (codigo,nombre,descripcion,precio,stock)
	values (04,'Manzanas','Manzanas',0.50,150);
insert into productos (codigo,nombre,descripcion,precio,stock)
	values (05,'Chocolate','Chocolate',2.25,20);

/*Campos obligatorios*/
insert into productos (codigo,nombre,precio,stock)
	values (06,'Papas fritas',0.50,100);
insert into productos (codigo,nombre,precio,stock)
	values (07,'Huevo Kinder',1.00,150);
insert into productos (codigo,nombre,precio,stock)
	values (08,'Avena Polaca',1.00,20);

	
select * from productos;