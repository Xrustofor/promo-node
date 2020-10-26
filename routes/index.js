const fs = require('fs');
const path  = require('path');
const {Router} = require('express')
const router = Router()

router.get('/upload/*', async (req, res) => {
  const fileName = req.params[0];
  res.sendFile(path.join(__dirname, `../upload/${fileName}`))

})


module.exports = router;
