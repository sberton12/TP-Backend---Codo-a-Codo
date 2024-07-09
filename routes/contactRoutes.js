const express = require('express');
const router = express.Router();
const multer = require('multer');
const contactController = require('../controller/contactController.js')

const upload = multer();

router.post("/formulario" , upload.none(),contactController.createContact );


module.exports = router;