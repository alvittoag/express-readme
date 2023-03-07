const dbPool = require('../config/database');

const getAllPinjam = () => {
  const SQLQuery = 'SELECT * FROM pinjam';

  return dbPool.execute(SQLQuery);
};

const createNewPinjam = (body) => {
  const SQLQuery = `  INSERT INTO pinjam (judul_buku, penulis, tahun_buku, kategori_buku, sinopsis_buku, gambar, liked_by, waktu_pinjam, pinjam_by) 
                        VALUES ('${body.judul_buku}', '${body.penulis}', '${body.tahun_buku}', '${body.kategori_buku}', '${body.sinopsis_buku}', '${body.gambar}', '${body.liked_by}', '${body.waktu_pinjam}', '${body.pinjam_by}')`;

  return dbPool.execute(SQLQuery);
};

const updatePinjam = (body, idPinjam) => {
  const SQLQuery = `  UPDATE pinjam 
                        SET judul_buku='${body.judul_buku}', penulis='${body.penulis}', tahun_buku='${body.tahun_buku}', kategori_buku='${body.kategori_buku}', sinopsis_buku='${body.sinopsis_buku}', gambar='${body.gambar}', liked_by='${body.liked_by}', waktu_pinjam='${body.waktu_pinjam}', pinjam_by='${body.pinjam_by}'
                        WHERE id=${idPinjam}`;

  return dbPool.execute(SQLQuery);
};

const deletePinjam = (idPinjam) => {
  const SQLQuery = `DELETE FROM pinjam WHERE id=${idPinjam}`;

  return dbPool.execute(SQLQuery);
};

module.exports = {
  getAllPinjam,
  createNewPinjam,
  updatePinjam,
  deletePinjam,
};
