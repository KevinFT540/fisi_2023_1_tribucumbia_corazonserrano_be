
const mysql = require("mysql2");
const { config } = require("../config/conf");

const getAll = (table) => {
    return new Promise((resolve, reject) => {
        const conecction = mysql.createConnection({
            user: config.dbUser,
            host: config.dbHost,
            password: config.dbPassword,
            database: config.dbName,
        });

        conecction.query(`SELECT * FROM ${table}`, (err, results) => {
            if (err) return console.error(err.message);
            conecction.end();
            resolve(results);
        });
    });
};

const get = (table, id) => {
    return new Promise((resolve, reject) => {
        const conecction = mysql.createConnection({
            user: config.dbUser,
            host: config.dbHost,
            password: config.dbPassword,
            database: config.dbName,
        });

        conecction.query(`SELECT * FROM ${table} WHERE ${table + "ID"}=${id}`, (err, results) => {
            if (err) return console.error(err.message);
            conecction.end();
            resolve(results);
        });
    });
};

const create = async (table, entity) => {
    const conecction = mysql.createConnection({
        user: config.dbUser,
        host: config.dbHost,
        password: config.dbPassword,
        database: config.dbName,
    });

    let data = [];
    let valuesString = "";
    
    switch (table) {
        case "usuario":
            data = [entity.nombres, entity.apellidos, entity.dni, entity.correo, entity.telefono, entity.contraseña];
            valuesString = "(nombres, apellidos, dni, correo, telefono, contraseña) VALUES(?,?,?,?,?,?)";
            break;

        case "hotel":
            data = [entity.nombre, entity.telefono, entity.ciudad, entity.distrito, entity.direccion, entity.niveles];
            valuesString = "(nombre, telefono, ciudad, distrito, direccion, niveles) VALUES(?,?,?,?,?,?)";
            break;

        case "reserva":
            data = [entity.habitacionId, entity.usuarioId, entity.inicio, entity.fin];
            valuesString = "(habitacionId, usuarioId, inicio, fin) VALUES(?,?,?,?)";
            break;

        case "habitacion":
            data = [entity.hotelId, entity.nivel, entity.aforo, entity.camasPersonales, entity.camasDoble, entity.precio, entity.tipo, entity.tamaño];
            valuesString = "(hotelId, nivel, aforo, camasPersonales, camasDoble, precio, tipo, tamaño) VALUES(?,?,?,?,?,?,?,?)";
            break;

        default:
            break;
    }

    return new Promise((resolve, reject) => {
        conecction.query(`INSERT INTO ${table}${valuesString}`, data, (err) => {
            if (err) {
                console.log(data);
                console.log(valuesString);
                return console.error(err.message, ":v ?");
            }
            console.log(`${table} creada`);
            resolve("done");
            conecction.end();
        });
    });
};

module.exports = { getAll, get, create };
