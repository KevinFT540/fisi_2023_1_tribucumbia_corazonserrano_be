
const { get, getAll } = require("../lib/tables");

const getHabitaciones = async () => {
    const habitaciones = await getAll("habitacion");
    return habitaciones;
};

const getHabitacion = async (id) => {
    const habitacion = await get("habitacion", id);
    return habitacion;
};

module.exports = { getHabitaciones, getHabitacion };
