const Sequelize = require('sequelize');

const DB_NAME = 'promo';
const USER_NAME = 'root';
const PASSWORD = '';

const sequelize = new Sequelize(DB_NAME, USER_NAME, PASSWORD, {
  host: 'localhost',
  dialect: 'mysql',
});


module.exports = sequelize;