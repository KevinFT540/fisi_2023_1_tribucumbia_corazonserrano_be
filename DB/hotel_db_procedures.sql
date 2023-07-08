
USE hotel_db;

-- @block
delimiter // 
CREATE PROCEDURE getReservasUsuario(IN id INT) 
BEGIN
SELECT *
FROM reserva
WHERE usuarioId like id;
END // 

-- @block
delimiter // 
CREATE PROCEDURE getReservasHabitacion(IN id INT) 
BEGIN
SELECT *
FROM reserva
WHERE habitacionId like id;
END // 

-- @block
CREATE PROCEDURE ConsultarReservaxHabitacion(idHab INT)
BEGIN
	SELECT b.reservaId, b.inicio as inicio_reserva , b.fin as fin_reserva, 
	a.aforo as aforo_habitacion, a.precio as precio_habitacion, a.tipo as tipo_habitacion    
	FROM habitacion as a 
    INNER JOIN reserva as b ON a.habitacionId = b.habitacionId
    WHERE a.habitacionId = idHab;
END //

-- @block
CREATE PROCEDURE ConsultarReservaxUsuario(DNI VARCHAR(50))
BEGIN
	SELECT 
    b.reservaId, b.id_habitacion, b.inicio as reserva_inicion, b.fin as reserva_fin, 
    a.usuarioId AS codigo_usuario, a.nombres AS nombres_usuario, a.apellidos AS apellidos_usuario 
	FROM usuario as a 
    INNER JOIN reserva as b ON a.usuarioId = b.usuarioId
    WHERE a.dni = DNI;
END //

-- @block
CREATE PROCEDURE ConsultarHabitacionxHotel(idHab int)
BEGIN
	SELECT 
    a.habitacionId as codigo_habitacion,
    b.nombre as nombre_hotel, b.ciudad as ciudad, b.direccion as direccion	 
	FROM habitacion as a 
    INNER JOIN hotel as b ON a.hotelId = b.hotelId
    WHERE a.habitacionId = idHab;
END	//


-- @block
SHOW PROCEDURE STATUS
WHERE Db = DATABASE() AND Type = 'PROCEDURE';

