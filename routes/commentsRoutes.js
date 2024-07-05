const express = require('express');
const router = express.Router();
const multer = require('multer');
const commentsController = require('../controller/commentsController.js')

const upload = multer();

router.get("/", commentsController.getComments);


module.exports = router;