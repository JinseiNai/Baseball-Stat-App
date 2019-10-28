import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import * as serviceWorker from './serviceWorker';
var mysql = require('mysql');
var express = require("express");
var app = express();

var db_config = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_DATABASE
});

var connection;

function handleDisconnect() {
    console.log('1. connecting to db:');
    connection = mysql.createConnection(db_config);

    connection.connect(function(err) {
        if (err) {
            console.log('2. error when connection to db:', err);
            setTimeout(handleDisconnect, 1000);
        }
    });

    connection.on('error', function(err) {
        console.log('3. db error', err);
        if (err.code === 'PROTOCOL_CONNECTION_LOST' ) {
            handleDisconnect();
        } else {
            throw err;
        }
    });
}

handleDisconnect();

app.get('/', function(request,response) {
    connection.query('SELECT * FROM players', function(err, rows, fields) {
        if (err) {
            console.log('error: ', err);
            throw err;
        }
        response.send(['Hello World!!!', rows]);
    });
});

var port = process.env.PORT || 3000;
app.listen(port, function() {
    console.log("Listening on " + port);
})

ReactDOM.render(<App />, document.getElementById('root'));

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();
