require("dotenv").config();
var express = require("express");
var mysql = require('mysql');
var app = express();
var PORT = process.env.PORT || 3000;

var connection = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_DATABASE
});

connection.connect(function(err){
    (err)? console.log(err): console.log(connection);
})

require('./src/routes/home-route')(app, connection);

app.listen(PORT, function() {
    console.log("App running on port " + PORT + "!");
})