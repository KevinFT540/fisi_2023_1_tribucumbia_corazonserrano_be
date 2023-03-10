
USE hotel_db;

-- @block
INSERT INTO hotel (nombre, telefono, ciudad, distrito, direccion, niveles)
VALUES("Casa Andina Premium Miraflores", "989669782", "Lima", "Miraflores", "Av. La Paz 463", 9),
    ("Casa Andina Select Miraflores", "947586991", "Lima", "Miraflores", "Calle Schell 452", 10),
    ("Casa Andina Standard Benavides", "955444788", "Lima", "Miraflores", "Av. Benavides 271", 7),
    ("Casa Andina Premium Arequipa", "974475899", "Arequipa", "Arequipa", "Calle Ugarte 403", 3),
    ("Casa Andina Standard Machu Picchu", "974236674", "Cusco", "Aguas Calientes", "Prolongación, Imperio de los Incas E-34", 5),
    ("Casa Andina Premium Piura", "958281123", "Piura", "El Chipe", "Av. Ramón Mujica Sub Lote 1E", 3),
    ("Casa Andina Select Chiclayo", "940505789", "Chiclayo", "Chiclayo", "Federico Villarreal 115", 6);



-- @block
INSERT INTO usuario (nombres, apellidos, dni, correo, telefono, contraseña)
VALUES(
        "Andres",
        "Castañeda",
        "48525589",
        "andrec@gmail.com",
        955477418,
        "andcas"
    ),
    (
        "Jesus",
        "Lujan",
        "47556912",
        "jlujan@gmail.com",
        932215412,
        "jluaa"
    ),
    (
        "John",
        "Doe",
        "47475899",
        "hondoe@gmail.com",
        955674515,
        "jhondd"
    ),
    (
        "Patricio",
        "Estrella",
        "48556231",
        "patrickstart@gmail.com",
        955674515,
        "pstar"
    ),
    (
        "Juan",
        "Quintana",
        "47585523",
        "juanquintana@gmail.com",
        953469512,
        "jquintana"
    ),
    (
        "Esmeralda",
        "Esquivel",
        "75101566",
        "esmeesquivel@gmail.com",
        955674413,
        "eequiv"
    ),
    (
        "Pedro",
        "Gutierres",
        "75511211",
        "pgutier@gmail.com",
        955674515,
        "gutipedr"
    );



-- @block
INSERT INTO habitacion (
        hotelId,
        nivel,
        aforo,
        camasPersonales,
        camasDoble,
        precio,
        tipo,
        tamaño
    )
VALUES(1, 1, 4, 2, 2, 300, "Superior Doble", "70m2"),
    (1, 1, 2, 0, 2, 310, "Superior Matrimonial", "50m2"),
    (1, 1, 2, 0, 2, 310, "Junior Suit", "35m2"),
    (1, 1, 2, 0, 2, 310, "Junior Suit", "35m2"),
    (1, 2, 2, 0, 2, 310, "Superior Matrimonial", "50m2"),
    (1, 2, 2, 0, 2, 310, "Junior Suit", "35m2"),
    (1, 2, 2, 0, 2, 310, "Superior Doble", "70m2"),
    (1, 3, 2, 0, 2, 310, "Junior Suit", "35m2"),
    (1, 3, 2, 0, 2, 310, "Junior Suit", "35m2"),
    (1, 3, 2, 0, 2, 310, "Superior Matrimonial", "50m2"),
    (2, 1, 4, 2, 2, 300, "Junior Suit", "35m2"),
    (2, 1, 4, 2, 2, 300, "Superior Doble", "70m2"),
    (2, 1, 4, 2, 2, 300, "Junior Suit", "35m2"),
    (2, 2, 4, 2, 2, 300, "Junior Suit", "35m2"),
    (2, 2, 4, 2, 2, 300, "Superior Matrimonial", "50m2"),
    (2, 2, 4, 2, 2, 300, "Superior Matrimonial", "50m2"),
    (2, 3, 4, 2, 2, 300, "Junior Suit", "35m2"),
    (2, 3, 4, 2, 2, 300, "Superior Doble", "70m2"),
    (2, 3, 4, 2, 2, 300, "Superior Doble", "70m2"),
    (2, 3, 3, 1, 1, 400, "Superior Matrimonial", "50m2"),
    (3, 1, 4, 2, 2, 400, "Junior Suit", "35m2"),
    (3, 1, 4, 2, 2, 400, "Junior Suit", "35m2"),
    (3, 1, 4, 2, 2, 400, "Junior Suit", "35m2"),
    (3, 1, 4, 2, 2, 400, "Superior Matrimonial", "50m2"),
    (3, 2, 4, 2, 2, 400, "Superior Matrimonial", "50m2"),
    (3, 2, 4, 2, 2, 400, "Superior Matrimonial", "50m2"),
    (3, 2, 4, 2, 2, 400, "Superior Doble", "70m2"),
    (3, 2, 4, 2, 2, 400, "Junior Suit", "35m2"),
    (3, 3, 4, 2, 2, 400, "Junior Suit", "35m2"),
    (3, 3, 4, 2, 2, 400, "Superior Matrimonial", "50m2"),
    (3, 3, 4, 2, 2, 400, "Junior Suit", "35m2"),
    (3, 3, 4, 2, 2, 400, "Superior Doble", "70m2"),
    (3, 3, 3, 3, 0, 360, "Superior Doble", "70m2"),
    (4, 1, 4, 2, 2, 300, "Superior Doble", "70m2"),
    (4, 1, 2, 0, 2, 310, "Superior Matrimonial", "50m2"),
    (4, 1, 2, 0, 2, 310, "Junior Suit", "35m2"),
    (4, 1, 2, 0, 2, 310, "Junior Suit", "35m2"),
    (4, 2, 2, 0, 2, 310, "Superior Matrimonial", "50m2"),
    (4, 2, 2, 0, 2, 310, "Junior Suit", "35m2"),
    (4, 2, 2, 0, 2, 310, "Superior Doble", "70m2"),
    (4, 3, 2, 0, 2, 310, "Junior Suit", "35m2"),
    (4, 3, 2, 0, 2, 310, "Junior Suit", "35m2"),
    (4, 3, 2, 0, 2, 310, "Superior Matrimonial", "50m2"),
    (5, 1, 4, 2, 2, 300, "Junior Suit", "35m2"),
    (5, 1, 4, 2, 2, 300, "Superior Doble", "70m2"),
    (5, 1, 4, 2, 2, 300, "Junior Suit", "35m2"),
    (5, 2, 4, 2, 2, 300, "Junior Suit", "35m2"),
    (5, 2, 4, 2, 2, 300, "Superior Matrimonial", "50m2"),
    (5, 2, 4, 2, 2, 300, "Superior Matrimonial", "50m2"),
    (5, 3, 4, 2, 2, 300, "Junior Suit", "35m2"),
    (5, 3, 4, 2, 2, 300, "Superior Doble", "70m2"),
    (5, 3, 4, 2, 2, 300, "Superior Doble", "70m2"),
    (6, 3, 3, 1, 1, 400, "Superior Matrimonial", "50m2"),
    (6, 1, 4, 2, 2, 400, "Junior Suit", "35m2"),
    (6, 1, 4, 2, 2, 400, "Junior Suit", "35m2"),
    (6, 1, 4, 2, 2, 400, "Junior Suit", "35m2"),
    (6, 1, 4, 2, 2, 400, "Superior Matrimonial", "50m2"),
    (6, 2, 4, 2, 2, 400, "Superior Matrimonial", "50m2"),
    (7, 2, 4, 2, 2, 400, "Superior Matrimonial", "50m2"),
    (7, 2, 4, 2, 2, 400, "Superior Doble", "70m2"),
    (7, 2, 4, 2, 2, 400, "Junior Suit", "35m2"),
    (7, 3, 4, 2, 2, 400, "Junior Suit", "35m2"),
    (7, 3, 4, 2, 2, 400, "Superior Matrimonial", "50m2"),
    (7, 3, 4, 2, 2, 400, "Junior Suit", "35m2"),
    (7, 3, 4, 2, 2, 400, "Superior Doble", "70m2");



-- @block
INSERT INTO reserva(habitacionId, usuarioId, inicio, fin)
VALUES(7, 1, "2021-01-01", "2021-01-03"),
    (8, 1, "2021-01-04", "2021-01-06"),
    (22, 1, "2021-01-08", "2021-01-11"),
    (30, 2, "2021-02-01", "2021-02-03"),
    (21, 2, "2021-02-04", "2021-02-06"),
    (32, 2, "2021-03-01", "2021-03-03"),
    (43, 3, "2021-03-01", "2021-03-03"),
    (4, 3, "2021-03-01", "2021-03-03"),
    (11, 4, "2021-03-01", "2021-03-03"),
    (23, 4, "2021-03-01", "2021-03-03"),
    (44, 4, "2021-10-01", "2021-10-02"),
    (50, 5, "2021-10-10", "2021-10-15"),
    (19, 6, "2021-10-11", "2021-10-16"),
    (24, 6, "2021-10-20", "2021-10-21"),
    (39, 7, "2021-10-21", "2021-10-22");
