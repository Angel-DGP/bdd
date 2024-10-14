create table banco(
	codigo_banco int,
	codigo_transaccion int,
	detalle varchar(100),
	CONSTRAINT banco_pk primary key (codigo_banco)
);
delete from transacciones;
alter table banco
add constraint banco_fk foreign key (codigo_transaccion)
references transacciones (codigo);
INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES
(1, 22001, 500.00, 'C', '2023-08-01', '08:30:00'),  -- Transacción con código 1
(2, 22002, 300.00, 'C', '2023-08-02', '09:00:00'),
(3, 22003, 700.00, 'C', '2023-08-03', '10:15:00'),
(4, 22001, 1000.00, 'C', '2023-08-04', '11:00:00'),
(5, 22002, 150.00, 'C', '2023-08-05', '12:45:00'),
(6, 22003, 450.00, 'C', '2023-08-06', '13:30:00'),
(7, 22004, 800.00, 'C', '2023-08-07', '14:15:00'),
(8, 22001, 250.00, 'C', '2023-08-08', '15:45:00'),
(9, 22002, 600.00, 'C', '2023-08-09', '16:30:00'),
(10, 22004, 900.00, 'C', '2023-08-10', '17:00:00');

INSERT INTO banco (codigo_banco, codigo_transaccion, detalle)
VALUES
(101, 1, 'Depósito inicial en cuenta 22001'),
(102, 2, 'Pago de tarjeta en cuenta 22002'),
(103, 3, 'Transferencia a cuenta 22003'),
(104, 4, 'Depósito grande en cuenta 22001'),
(105, 5, 'Pago de servicios en cuenta 22002'),
(106, 6, 'Depósito en cuenta 22003'),
(107, 7, 'Transferencia internacional en cuenta 22004'),
(108, 8, 'Depósito pequeño en cuenta 22001'),
(109, 9, 'Pago de préstamos en cuenta 22002'),
(110, 10, 'Transferencia de fondos a cuenta 22004');

select * from transacciones;