require("dotenv").config();
var express = require("express");
var bodyParser = require("body-parser");

var db = require("./models");

var app = express();
var PORT = process.env.PORT || 3000;

// Middleware
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(express.static("public"));

var syncOptions = { force: false };

// If running a test, set syncOptions.force to true
if (process.env.NODE_ENV === "test") {
    syncOptions.force = false;
}

// db.sequelize.sync(syncOptions).then(function() {
//     app.listen(PORT, function() {
//         console.log("App running on port " + PORT + "!");
//     });
// });

// module.exports = app;

app.listen(PORT, function() {
    console.log("App running on port " + PORT + "!");
})