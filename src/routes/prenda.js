const express = require('express'); 
const router = express.Router();
const prendaController = require('../controllers/prendaController') //aqui estamos requiriendo el alumnoController del archivo alumnoController.js. Le tengo q poner la ruta

router.get('/', prendaController.list);

//escuchamos a traves de post una ruta nueva(/add)
//requerimos multer que es el módulo xa las imagenes
const multer = require("multer");

//aqui le damos la ruta de dnd tiene que guardar la imagen que se suba
const upload = multer({
   dest: "./src/public/img/db/auxiliar/"
   // you might also want to set
});

router.post('/add', upload.single("file"), prendaController.save); 
router.get('/delete/:id', prendaController.delete);
//cuando te pidan un dato a traves de la ruta update y no de el
router.get('/update/:id', prendaController.edit);
router.post('/update/:id', prendaController.update);

module.exports = router;