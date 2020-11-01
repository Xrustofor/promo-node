const fs = require('fs');
const path = require('path');
const { 
  setDataImages,
  Validation,
  AdaptationForEdit,
  getRemoveImgId
} = require('./scripts')
const { Router } = require('express')
const router = Router();

const Advert = require("../models/advert");
const Image = require("../models/image");

const upload = require("../middleware/upload");

async function getAllNameImg(imgsId){
  const images = [];
  if(imgsId.length != 0){
    for(let i = 0; i < imgsId.length; i++){
      const data = await Image.findByPk(imgsId[i]);
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

async function setCreateMainImages_db(item){
  const data = await Image.create({
    title: item.title,
    url:  `upload/${item.fileName}`
  })
  return data.dataValues.id;
}

async function setCreateImages_db(items){

  const imgsId = [];
  for(let i = 0; i < items.length; i++){
    const data = await Image.create({
      url:  `upload/${items[i].fileName}`
    });
    imgsId.push(data.id);
  }
  return imgsId;
}

async function updateImagesTitles_db(items){
  if(items){
    for(let i = 0; i < items.length; i++){
      try{
        const images = await Image.findByPk(items[i].id);

        images.title = items[i].title;
        images.save();

      } catch(e){
        console.log(e);
      }
    }
  }
}

async function setRemoveImages_db(items){
  
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


router.get('/edit/:id', async (req, res) => {

  const pageId = +req.params.id;

  if(pageId != 0){

    const item = await Advert.findByPk(pageId);

    const imgsId = JSON.parse(item.imagesId);

    const images = await getAllNameImg(imgsId);
    
    const data = item.dataValues;
    data.images = images;
    delete data.imagesId;

    res.status(200).json(data);

  }

})

router.put(
  '/edit/:id',
  upload,
  async (req, res, next) => {
    const id = +req.params.id;

    let data = AdaptationForEdit(req.body);

    const imagesUpload = setDataImages(req.files);
    data.imagesUpload = imagesUpload;

    const errorMessage = Validation(data);

    if(!errorMessage.length){
      try{

        const promo = await Advert.findByPk(id);

        let imagesId_db = JSON.parse(promo.dataValues.imagesId) 
          ? JSON.parse(promo.dataValues.imagesId)
          : [];

        let removeImages = getRemoveImgId(data);
        
        await setRemoveImages_db(removeImages);

        for(let i = 0; i < removeImages.length; i++){
          const idx = imagesId_db.indexOf(removeImages[i]);
          imagesId_db.splice(idx, 1);
        }

        if(data.removeImages[0].select && imagesUpload.length === 1){
          const item = {
            title: data.imagesTitles[0],
            fileName: data.imagesUpload[0]
          }
          const idMainImage = await setCreateMainImages_db(item);
          imagesId_db.unshift(idMainImage);
        } 
        
        else {
          const updataImages = [];
          for(let i = 0; i < imagesUpload.length; i++){
            updataImages.push({
              fileName: imagesUpload[i],
            })
          }
          const imagesId = await setCreateImages_db(updataImages);
          for(let i = 0; i < imagesId.length; i++){
            imagesId_db.push(imagesId[i])
          }

        }
       
        const updateImagesTitles = [];
        for(let i = 0; i < imagesId_db.length; i++){
          updateImagesTitles.push({
            id: imagesId_db[i],
            title: data.imagesTitles[i]
          })
        }
        await updateImagesTitles_db(updateImagesTitles);

        promo.imagesId = JSON.stringify(imagesId_db);
        promo.title = data.title;
        promo.description = data.description;
        promo.price = data.price;
        await promo.save();
 
      }catch(e){ console.log(e) }
    } else {
      res.status(412).json(errorMessage);
    }

     res.status(201).json();
  }
  
)

module.exports = router;