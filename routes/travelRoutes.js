const express = require('express');
const router = express.Router();
const multer = require('multer');
const travelController = require('../controller/travelController.js')

const upload = multer();

router.get("/", travelController.getTravels);


module.exports = router;