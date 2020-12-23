const mysql = require('mysql')

var conexion = mysql.createConnection({
    host: 'localhost',
    database: 'amezagaCode',
    user: 'root',
    password: ""
})
conexion.connect(function(error){
    if(error){
        throw error
    }else{
        console.log('Conexión exitosa')
    }
})
conexion.end()