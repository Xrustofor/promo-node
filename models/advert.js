const Sequelize = require('sequelize');
const sequelize = require('../utils/database');

const advert = sequelize.define('Advert', {
  id: {
    primaryKey: true,
    autoIncrement: true,
    allowNull: false,
    type: Sequelize.INTEGER
  },
  title: {
    type:  Sequelize.STRING,
  },
  description: {
    type: Sequelize.TEXT,
  },
  price: {
    type: Sequelize.INTEGER,
  },
  imagesId: {
    type: Sequelize.STRING,
  }
});

module.exports = advert;