const Sequelize = require('sequelize');
const sequelize = require('../utils/database');

const image = sequelize.define('Images', {
  id: {
    primaryKey: true,
    autoIncrement: true,
    allowNull: false,
    type: Sequelize.INTEGER
  },
  url: {
    type:  Sequelize.STRING,
  },
  title: {
    type: Sequelize.STRING,
  }
});

module.exports = image;