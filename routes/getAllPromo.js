const {Router} = require('express')
const router = Router();

const Advert = require("../models/advert");
const Image = require("../models/image");

async function getAllNameImg(imgsId){
  const images = [];
  if(imgsId.length != 0){
    for(let i = 0; i < imgsId.length; i++){
      const data = await Image.findByPk(imgsId[i]);
      console.log(data);
      images.push({
        id: data.dataValues.id,
        url: data.dataValues.url,
        title: data.dataValues.title
      })
    }
    return images;
  } else {
    return false;
  }
}

router.get('/', async (req, res) => {
  //const pageId = req.params.id;
  console.log('getAll');
  try{
    const items = await Advert.findAll();
    const data = [];
  
    for(let i = 0; i < items.length; i++){
      data[i] = items[i].dataValues
  
      if(items[i].dataValues.imagesId){
        const imgsId = JSON.parse(items[i].dataValues.imagesId);
        const images = await getAllNameImg(imgsId);
        data[i].images = images ? images : [];
        delete data[i].imagesId
      }
    }
    res.status(200).json(data);
  } catch(e){
    res.status(500).json();
    console.log(e)
  }
})


module.exports = router;