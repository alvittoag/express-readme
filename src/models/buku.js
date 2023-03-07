const dbPool = require('../config/database');

const getAllBuku = () => {
  const SQLQuery = 'SELECT * FROM buku';

  return dbPool.execute(SQLQuery);
};

const createNewBuku = (body) => {
  const SQLQuery = `  INSERT INTO buku (judul_buku, penulis, tahun_buku, kategori_buku, sinopsis_buku, gambar, liked_by) 
                        VALUES ('${body.judul_buku}', '${body.penulis}', '${body.tahun_buku}', '${body.kategori_buku}', '${body.sinopsis_buku}', '${body.gambar}', '${body.liked_by}')`;

  return dbPool.execute(SQLQuery);
};

const updateBuku = (body, idBuku) => {
  const SQLQuery = `  UPDATE buku 
                        SET judul_buku='${body.judul_buku}', penulis='${body.penulis}', tahun_buku='${body.tahun_buku}', kategori_buku='${body.kategori_buku}', sinopsis_buku='${body.sinopsis_buku}', gambar='${body.gambar}', liked_by='${body.liked_by}'
                        WHERE id=${idBuku}`;

  return dbPool.execute(SQLQuery);
};

const deleteBuku = (idBuku) => {
  const SQLQuery = `DELETE FROM buku WHERE id=${idBuku}`;

  return dbPool.execute(SQLQuery);
};

module.exports = {
  getAllBuku,
  createNewBuku,
  updateBuku,
  deleteBuku,
};
