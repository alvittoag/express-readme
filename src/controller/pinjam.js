const PinjamModel = require('../models/pinjam');

const getAllPinjam = async (req, res) => {
  try {
    const [data] = await PinjamModel.getAllPinjam();

    res.json({
      message: 'GET all pinjam success',
      data: data,
    });
  } catch (error) {
    res.status(500).json({
      message: 'Server Error',
      serverMessage: error,
    });
  }
};

const createNewPinjam = async (req, res) => {
  const { body } = req;

  if (!body.judul_buku || !body.penulis || !body.tahun_buku || !body.kategori_buku || !body.sinopsis_buku || !body.gambar || !body.liked_by || !body.waktu_pinjam || !body.pinjam_by) {
    return res.status(400).json({
      message: 'Anda mengirimkan data yang salah',
      data: null,
    });
  }

  try {
    await PinjamModel.createNewPinjam(body);
    res.status(201).json({
      message: 'CREATE new pinjam success',
      data: body,
    });
  } catch (error) {
    res.status(500).json({
      message: 'Server Error',
      serverMessage: error,
    });
  }
};

const updatePinjam = async (req, res) => {
  const { idPinjam } = req.params;
  const { body } = req;
  try {
    await PinjamModel.updatePinjam(body, idPinjam);
    res.json({
      message: 'UPDATE pinjam success',
      data: {
        id: idPinjam,
        ...body,
      },
    });
  } catch (error) {
    res.status(500).json({
      message: 'Server Error',
      serverMessage: error,
    });
  }
};

const deletePinjam = async (req, res) => {
  const { idPinjam } = req.params;
  try {
    await PinjamModel.deletePinjam(idPinjam);
    res.json({
      message: 'DELETE pinjam success',
      data: null,
    });
  } catch (error) {
    res.status(500).json({
      message: 'Server Error',
      serverMessage: error,
    });
  }
};

module.exports = {
  getAllPinjam,
  createNewPinjam,
  updatePinjam,
  deletePinjam,
};
