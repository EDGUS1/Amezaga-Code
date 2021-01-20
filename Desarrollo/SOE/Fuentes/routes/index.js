const express = require('express')
const user = require('../controllers/user')
const api = express.Router()
const dbConnection = require('../connect');
const connection = dbConnection();

api.all('*', function (req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With");
    res.header("Access-Control-Allow-Credentials", true);
    next();
});

api.get('/', function(req, res){
    res.render("login")
})

api.get('/prueba', (req, res) => {
    connection.query('SELECT * FROM usuario', (err, result) => {
      console.log(result)
      res.render("login", {
        user: result
      });
    });
  });

api.get('/crearCurso', function(req, res){
    res.render("crearCurso")
})
api.get('/crearTarea', function(req, res){
    res.render("crearTarea")
})
api.get('/login', function(req, res){
    res.render("login")
})
api.get('/register', function(req, res){
    res.render("register")
})
api.post('/user', user)

module.exports = api