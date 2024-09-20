drop table if exists videojuegos;
create table videojuegos(
	codigo int not null primary key,
	nombre varchar(100)not null,
	descripcion varchar(300),
	valoracion int not null
);
/*Los primeros cinco*/
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (001,'Las flipantes aventuras de Jose','Son unas flipantes aventuras',9);

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (002,'El hombre que araña','Te aruña',10);

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (003,'El demonio que llora en mayo','No se si sea la traducción literal de devil may cry',3);

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (004,'Rompe y construye con armas','Se volvio sandbox',6);

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (005,'Simulador de simuladores','Simula los simuladores que se crean en la vida tratando de simular',7);

/*Las otras 3*/
insert into videojuegos(codigo,nombre,valoracion)
values (006,'Los bloques que le hicieron peliculas',9);

insert into videojuegos(codigo,nombre,valoracion)
values (007,'La copia de los bloques pero para mas niños',8);

insert into videojuegos(codigo,nombre,valoracion)
values (008,'Otro simulador',8);
select * from videojuegos;