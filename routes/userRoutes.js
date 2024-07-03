const express = require('express');
const router = express.Router();
const multer = require('multer');
const userController = require('../controller/userController')

const upload = multer();

router.get("/:id", userController.getUser);

router.post("/create" , upload.none(),userController.createUser );

router.delete("/:id" , upload.none(),userController.deleteUser );

router.put("/:id" , upload.none(),userController.updateUser );

module.exports = router;