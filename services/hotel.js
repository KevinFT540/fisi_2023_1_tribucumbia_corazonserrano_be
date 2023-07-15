
const { get, getAll } = require("../lib/tables");

const getHotels = async () => {
    const hoteles = await getAll("hotel");
    return hoteles;
};

const getHotel = async (id) => {
    const hotel = await get("hotel", id);
    return hotel;
};

module.exports = { getHotel, getHotels };
