const express = require("express");
const user = require("../controllers/user");
const homework = require("../controllers/homework");
const curso = require("../controllers/curso");

const api = express.Router();
const dbConnection = require("../connect");
const connection = dbConnection();

api.all("*", function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With");
    res.header("Access-Control-Allow-Credentials", true);
    next();
});

api.get("/", function(req, res) {
    res.render("principal", { nombre: "Eduardo" });
});

api.get("/lista", function(req, res) {
    res.render("lista", { nombre: "Eduardo" });
});

api.get("/prueba", (req, res) => {
    connection.query("SELECT * FROM usuario", (err, result) => {
        console.log(result);
        res.render("login", {
            user: result,
        });
    });
});

api.get("/curso", (req, res) => {
    res.render("curso");
});

api.get("/crearCurso", function(req, res) {
    res.render("crearCurso");
});

api.get("/crearTarea", function(req, res) {
    res.render("crearTarea");
});

api.get("/login", function(req, res) {
    res.render("login");
});

api.get("/register", function(req, res) {
    res.render("register");
});

api.get("/dashboard", function(req, res) {
    res.render("home");
});

api.get("/lista", (req, res) => {
    res.render("lista");
});

api.post("/user", user);
api.post('/homework', homework);

api.post('/curso', curso);

api.post("/login", (req, res) => {
    res.send("Registrado");
});

/* api.use(function(req, res, next) {
    res.status(404).send("Sorry cant find that!");
}); */

module.exports = api;