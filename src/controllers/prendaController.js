const prendaController = {}; //craemos u json.
const path = require("path");
const fs = require("fs");


prendaController.list = (req, res) => { //req= hacer una petición. ésto lo exporto para utilizarlo en alumno.js 
    req.getConnection((err, conn) => { //le decimos que nos de la conexxion con 2 parametros error y conexion.
        conn.query(SQL_ALL(), (err, result) => { // aqui tenemos el query con la consulta a la base de datos y contemplamos en los parametros el error y resultado = alumos en este caso.
            // console.log(result);
            res.render('prenda', { 
                //Siempre se iguala la etiqueta a lo que queremos asignar
                prendas: result //aqui guardamos todos los datos de la tyabla alumno en formato JSON.
            })
        });
    });
};
const SQL_ALL = () => 'SELECT * FROM prenda';

//recibir los datos del formulario
prendaController.save = (req, res) => {
    console.log("req.file: " + JSON.stringify(req.file));
    //req.body casi siempre recibe un Json dnd las clases se llaman igual que los name del formulario.
    const tempPath = req.file.path;
    const targetPath = path.join(__dirname, "img/" + req.body.referencia + ".png");

    fs.rename(tempPath, targetPath, err => {
        console.log("PETADAAAAA: " + err);
    });
    const data = req.body; //como enviamos un post. ésto lo vamos a tener siempre por ahora.
    req.getConnection((err, conn) => {
        conn.query(SQL_INSERTPRENDA(data.referencia, data.talla, data.color, data.descripcion, data.imagen), (err, prendas) => { //ponemos el data.nombre puesto quye estamos llamando a la clave "nombre" del JSON.
            res.redirect('/'); //ésto es para q me rediriga a la misma pagina.
        });
    });
};
const SQL_INSERTPRENDA = (r, t, c, d, i) => `INSERT INTO prenda (referencia,talla,color,descripcion,imagen) VALUES('${r}','${t}','${c}','${d}','${i}')`; //con las comillas francesas metemos datos y texto todo junto. y los parametros que entran se declaran en la consulta ${parametro/variable}

//Borrar prenda por ID.
prendaController.delete = (req, res) => {
    //el id me lo está enviando a traves de un parametro re.params.id.
    const id = req.params.id;
    req.getConnection((err, conn) => {
        conn.query('DELETE FROM prenda WHERE idPrenda = ?', [id], (err, prenda) => { //le estamos pidiendo que vamos a borrar x ID.
            res.redirect('/')
        });
    });
};

//primero ponemos el edit para que 
prendaController.edit = (req, res) => {
    console.log(req.params.id)
    const id = req.params.id;
    req.getConnection((err, conn) => {
        conn.query('SELECT * FROM prenda WHERE idPrenda = ?', [id], (err, result) => {
            //obtenemos un array
            console.log(result)
            res.render('edit', {
                //como obtenemos un array tenemos que ponerle un indice 0
                prendas:result[0]
            });
        });
    });
};

prendaController.update=(req, res)=>{
    const id=req.params.id;     //aqui recibo los nuevos datos
     const newprenda=req.body
     req.getConnection((err, conn) => {
         conn.query('UPDATE  prenda set ? WHERE idPrenda = ?', [newprenda, id], (err,rows) =>{
            res.redirect('/')
         });
     });
 };

module.exports = prendaController;