const express = require('express');

const BukuController = require('../controller/buku');

const router = express.Router();

// CREATE - POST
router.post('/', BukuController.createNewBuku);

// READ - GET
router.get('/', BukuController.getAllBuku);

// UPDATE - PATCH
router.patch('/:idBuku', BukuController.updateBuku);

// DELETE - DELETE
router.delete('/:idBuku', BukuController.deleteBuku);

module.exports = router;
