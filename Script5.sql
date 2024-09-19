drop table if exists videojuegos;
create table videojuegos(
	codigo int not null primary key,
	nombre varchar(100)not null,
	descripcion varchar(300),
	valoracion int not null
);
select * from videojuegos;