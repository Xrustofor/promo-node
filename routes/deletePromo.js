const path = require('path');
const fs = require('fs');
const { Router } = require('express');
const router = Router();
const Advert = require("../models/advert");
const Image = require("../models/image");

async function removeImages(items){
  const imageRemove = [];

  for(let i = 0; i < items.length; i++){
    try{
      const item = await Image.findByPk(items[i]);

      const imageData = item.dataValues.url.split('/');
      const folder = imageData[0];
      const fileName = imageData[1];

      await item.destroy();

      await fs.unlink(path.join(folder, fileName), async (err) => {
        if(err) throw err;
        console.log('File deleted!');
      })
      
    } catch(e){
      console.log(e);
    }
  }
  return imageRemove;
}



router.delete('/delete/:id', async (req, res) => {
  const id = +req.params.id;

  try{
    const promo = await Advert.findByPk(id);
    const imgsId = JSON.parse(promo.imagesId) ? JSON.parse(promo.imagesId) : [];
    console.log(imgsId)
    
    await promo.destroy();
    await removeImages(imgsId);

  } catch(e){ console.log(e) };

  res.status(200).json();
})

module.exports = router;