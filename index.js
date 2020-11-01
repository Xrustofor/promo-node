const express = require('express');
const sequelize = require('./utils/database');

const apiRoutersCreate = require('./routes/createPromo');
const apiRoutersEdit = require('./routes/editPromo');
const apiRoutersAll = require('./routes/getAllPromo');
const apiRoutersDelete = require('./routes/deletePromo');
const Routers = require('./routes/index')
const cors = require('cors')


const app = express();

const PORT = process.env.PORT || 3000;

app.use(express.urlencoded({extended: true}))
app.use(express.json());

// app.use(express.static("upload"));
app.use(express.json({ limit: "5mb" }));

app.use('/api', cors(), apiRoutersCreate);
app.use('/api', cors(), apiRoutersEdit);
app.use('/api', cors(), apiRoutersAll);
app.use('/api', cors(), apiRoutersDelete);
app.use('/', cors(), Routers);


async function start() {
  try {
    await sequelize.sync();
    app.listen(PORT, () => {
      console.log(`Gator app listening on port ${PORT}`)
    })
  } catch (e) {
    console.log(e);
  }
}

start();