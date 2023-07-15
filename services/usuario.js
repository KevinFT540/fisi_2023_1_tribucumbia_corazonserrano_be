
const { get, getAll, create } = require("../lib/tables");

const getUsers = async () => {
    const usuarios = await getAll("usuario");
    return usuarios;
};

const getUser = async (id) => {
    const usuario = await get("usuario", id);
    return usuario;
};

const createUser = (entity) => {
    create("usuario", entity);
};

module.exports = { getUser, getUsers, createUser };
