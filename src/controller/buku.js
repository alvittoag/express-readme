const BukuModel = require('../models/buku');

const getAllBuku = async (req, res) => {
  try {
    const [data] = await BukuModel.getAllBuku();

    res.json({
      message: 'GET all buku success',
      data: data,
    });
  } catch (error) {
    res.status(500).json({
      message: 'Server Error',
      serverMessage: error,
    });
  }
};

const createNewBuku = async (req, res) => {
  const { body } = req;

  if (!body.judul_buku || !body.penulis || !body.tahun_buku || !body.kategori_buku || !body.sinopsis_buku) {
    return res.status(400).json({
      message: 'Anda mengirimkan data yang salah',
      data: null,
    });
  }

  try {
    await BukuModel.createNewBuku(body);
    res.status(201).json({
      message: 'CREATE new buku success',
      data: body,
    });
  } catch (error) {
    res.status(500).json({
      message: 'Server Error',
      serverMessage: error,
    });
  }
};

const updateBuku = async (req, res) => {
  const { idBuku } = req.params;
  const { body } = req;
  try {
    await BukuModel.updateBuku(body, idBuku);
    res.json({
      message: 'UPDATE buku success',
      data: {
        id: idBuku,
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

const deleteBuku = async (req, res) => {
  const { idBuku } = req.params;
  try {
    await BukuModel.deleteBuku(idBuku);
    res.json({
      message: 'DELETE buku success',
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
  getAllBuku,
  createNewBuku,
  updateBuku,
  deleteBuku,
};
