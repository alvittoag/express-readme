const dbPool = require('../config/database');

const getAllUsers = () => {
  const SQLQuery = 'SELECT * FROM users';

  return dbPool.execute(SQLQuery);
};

const createNewUser = (body) => {
  const SQLQuery = `  INSERT INTO users (nama, email, password) 
                        VALUES ('${body.nama}', '${body.email}', '${body.password}')`;

  return dbPool.execute(SQLQuery);
};

const updateUser = (body, idUser) => {
  const SQLQuery = `  UPDATE users 
                        SET nama='${body.nama}', email='${body.email}', address='${body.password}' 
                        WHERE id=${idUser}`;

  return dbPool.execute(SQLQuery);
};

const deleteUser = (idUser) => {
  const SQLQuery = `DELETE FROM users WHERE id=${idUser}`;

  return dbPool.execute(SQLQuery);
};

module.exports = {
  getAllUsers,
  createNewUser,
  updateUser,
  deleteUser,
};
