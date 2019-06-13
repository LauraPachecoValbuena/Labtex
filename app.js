const express = require('express');
const path = require('path');
const logger = require('morgan');
const mysql = require('mysql');
const myConnection = require('express-myconnection');
const prendaRouter = require('./src/routes/prenda');
const app = express(); 

app.set('view engine', 'ejs');  //aqui le estamos dicienod que use este archivo.

app.set('views', path.join(__dirname, 'src/views'))  //aqui le estamos diciendo que la raiz de la plantilla js es views y lo que hay dentro.

//conexion
app.use(myConnection(mysql, {  // esto es para conectar con la base de datos. 
    host:'localhost',
    user:'root',
    password:'1234',
    port:3306,
    database:'labtex'
}, 'single'));

//middelware
app.use(logger('dev'));  //esto es un loger, para que me del el tiempo de respuesta en consola.Y el método (get, post, etc...)
app.use(express.json()); // me establece los estandares xa leer los JSONS
app.use(express.urlencoded({ extended: false })); // es un filtro que facilita el envio de datos. Esto hay q tenerlo siempre.

app.use(express.static(path.join(__dirname, 'src/controllers/')));

app.use('/', prendaRouter); //debo poner mi index inicial 

app.listen(8080);
