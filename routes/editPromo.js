const fs = require('fs');
const path = require('path');
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

async function setAddImages(items) {
  const imgsId = [];

  for(let i = 0; i < items.length; i++){
    const data = await Image.create({
      title: items[i].title,
      url:  `upload/${items[i].nameFile}`
    });
    imgsId.push(data.id);
  }
  return imgsId;
};

function compareImgId(imagesId, dateRemove){
  console.log(imagesId)
  console.log(dateRemove)
  let idx = 0;
  const data = [];

  for(let i = 0; i < dateRemove.length; i++){
    if(dateRemove[i].remove){
      data.push(imagesId[idx++])
    } if (dateRemove[i].remove == false) {
      data.push(dateRemove[i].id);
    }
  }

  console.log(data);
  return data;

}

async function removeImages(items){

  const imageRemove = [];

  for(let i = 0; i < items.length; i++){
    if(items[i].remove){
      let id = items[i].id
      try{
        let item = await Image.findByPk(id);

        const imgId = item.dataValues.id;
        
        const imageData = item.dataValues.url.split('/');
        const folder = imageData[0];
        const fileName = imageData[1];

        await fs.unlink(path.join(folder, fileName), async (err) => {

          if(err) throw err;

          await item.destroy();

          imageRemove.push(imgId)

          console.log('File deleted!');

        })
      } catch(e) { console.log(e) }
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
    const data = req.body;
    const dateRemove = JSON.parse(data.removeImages);

    const errorData = {
      title: { message: "Не заповненний заголовок." },
      description: {
        messageValue: "Не заповненний опис продукту.",
        messageLength: "Опис не має перевищувати 1000 символів."
      },
      price: { message: "Не вказана ціна." },
      image: { message: "Відсутнє головне зображеня." }
    };

    let errorMessage = [];

    for(key in data){
      switch(key) {
        case 'title' : 
          if(!data[key].length){
            errorMessage.push(errorData.title.message)
          }
          break;
        case 'description' : 
          if(!data[key].length){
            errorMessage.push(errorData.description.messageValue)
          }
          if(data[key].length > 1000){
            errorMessage.push(errorData.description.messageLength)
          }
          break;
        case 'price' :
          if(data[key] == 'null' || data[key].trim() == ''){
            errorMessage.push(errorData.price.message)
          }
          break;
      }
    }

    if(!req.files.length && dateRemove[0].remove){
      errorMessage.push(errorData.image.message);
    }


    if(!errorMessage.length){
      const dataImages = [];
      let imagesId = null;
      
      if(req.files.length !== 0){

        const imagesNames = req.files.map(d => d.filename);
        const imagesTitle =  JSON.parse(data.imagesTitles);

        imagesTitle.forEach((n, idx) => {
          dataImages.push({
            title: n,
            nameFile: imagesNames[idx]
          })
        });

        imagesId = await setAddImages(dataImages); // збереження зображення на сервері

        arrayId = compareImgId(imagesId, dateRemove);

        console.log('compareId-' + arrayId);

        // let promo = await Advert.findByPk(id)
        // promo.imagesId = JSON.stringify(imagesId);
        // await promo.save();

        // console.log(promo);

        // items = await Advert.create({
        //   title: data.title,
        //   description: data.description,
        //   price: data.price,
        //   imagesId: imagesId
        // })
      }
      res.status(201).json();
    } else {
      res.status(412).json(errorMessage);
      errorMessage = [];
    }



    
    // let imagesRemove = [];
    // if(dateRemove){
    //   imagesRemove = await removeImages(dateRemove);
    // }
    // console.log(imagesRemove);
  }
)

module.exports = router;