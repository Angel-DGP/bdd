create table plataformas(
 id_plataforma int,
 nombre_plataforma varchar(50),
 codigo_videojuego int,
 constraint plataforma_pk primary key (id_plataforma)
);
alter table plataformas
add constraint codigo_videojuego_fk foreign key (codigo_videojuego)
references videojuegos(codigo);

INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion)
VALUES 
(1, 'Call of Duty', 'Juego de disparos en primera persona basado en la Guerra Mundial', 9.0),
(2, 'Civilization VI', 'Juego de estrategia por turnos que simula el crecimiento de una civilización', 8.5),
(3, 'Dark Souls', 'Juego de rol de acción con combates desafiantes y escenarios oscuros', 9.5),
(4, 'Doom Eternal', 'Juego de disparos en primera persona con acción intensa y guerra interdimensional', 8.8),
(5, 'God of War', 'Juego de acción y aventuras basado en la mitología nórdica', 9.7),
(6, 'Halo', 'Juego de disparos en primera persona que sigue la guerra entre humanos y alienígenas', 9.2),
(7, 'Gears of War', 'Juego de disparos en tercera persona ambientado en una guerra futurista', 8.9),
(8, 'Command & Conquer', 'Juego de estrategia en tiempo real con temática de guerra', 8.3),
(9, 'Diablo III', 'Juego de rol de acción con ambientación oscura y combates estratégicos', 9.4),
(10, 'Cyberpunk 2077', 'Juego de rol y acción ambientado en un mundo futurista lleno de tecnología y conflictos', 7.5);

INSERT INTO plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
VALUES 
(1, 'PlayStation', 5),   
(2, 'Xbox', 7),          
(3, 'PC', 1),            
(4, 'Nintendo Switch', 2), 
(5, 'PlayStation', 3),   
(6, 'PC', 8),          
(7, 'Xbox', 4),       
(8, 'PlayStation', 9),   
(9, 'PC', 10),          
(10, 'Xbox', 6);         


select * from videojuegos;
select * from plataformas;
