var Sequelize = require("sequelize");
var db = {};
var sequelize = new Sequelize(
    process.env.DB_HOST,
    process.env.DB_USER,
    process.env.DB_PASSWORD,
    process.env.DB_DATABASE,
    config
);

db.sequelize = sequelize;
db.Sequelize = Sequelize;

module.exports = db;