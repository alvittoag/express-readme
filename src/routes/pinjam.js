const express = require('express');

const PinjamController = require('../controller/pinjam');

const router = express.Router();

// CREATE - POST
router.post('/', PinjamController.createNewPinjam);

// READ - GET
router.get('/', PinjamController.getAllPinjam);

// UPDATE - PATCH
router.patch('/:idPinjam', PinjamController.updatePinjam);

// DELETE - DELETE
router.delete('/:idPinjam', PinjamController.deletePinjam);

module.exports = router;
