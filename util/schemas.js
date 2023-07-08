
const Joi = require("joi");

//Hotel
const hotelIdSchema = Joi.number().integer().min(1).max(1000);
const hotelIdSchemaObject = Joi.object({ hotelId: hotelIdSchema.required() });
const nombreSchema = Joi.string().alphanum().min(1).max(20);
const numeroSchema = Joi.string().alphanum().min(1).max(20);
const ciudadSchema = Joi.string().alphanum().min(1).max(20);
const distritoSchema = Joi.string().alphanum().min(1).max(20);
const direccionSchema = Joi.string().min(1).max(60);
const nivelesSchema = Joi.number().integer().min(1).max(100);

//Usuario
const usuarioIdSchema = Joi.number().integer().min(1).max(10000);
const usuariosIdSchemaObject = Joi.object({ usuarioId: usuarioIdSchema.required() });
const nombresSchema = Joi.string().regex(/^[a-zA-Z ]{2,30}$/);
const apellidosSchema = Joi.string().regex(/^[a-zA-Z ]{2,30}$/);
const dniSchema = Joi.string().alphanum().min(1).max(20);
const correoSchema = Joi.string().email();
const telefonoSchema = Joi.string().alphanum().min(1).max(20);
const contraseñaSchema = Joi.string().regex(/^[a-zA-Z0-9]{5,20}$/);

//Habitacion
const habitacionIdSchema = Joi.number().integer().min(1).max(1000);
const habitacionIdSchemaObject = Joi.object({ habitacionId: habitacionIdSchema.required() });
const nivelSchema = Joi.number().integer().min(1).max(100);
const aforoSchema = Joi.number().integer().min(1).max(1000);
const camasPersonalesSchema = Joi.number().integer().min(0).max(10);
const camasDobleSchema = Joi.number().integer().min(0).max(10);
const precioSchema = Joi.number().min(0).max(10000);

//Reserva
const reservaIdSchema = Joi.number().integer().min(1).max(100000);
const inicioSchema = Joi.date();
const finSchema = Joi.date().greater(Joi.ref("inicioSchema"));

//Requests schemas
const createUsuarioSchema = Joi.object({ 
    nombres: nombresSchema.required(),
    apellidos: apellidosSchema.required(),
    dni: dniSchema.required(),
    correo: correoSchema.required(),
    telefono: telefonoSchema.required(),
    contraseña: contraseñaSchema.required(),
});

module.exports = {
    createUsuarioSchema,
    hotelIdSchemaObject,
    habitacionIdSchemaObject,
    usuariosIdSchemaObject,
};
