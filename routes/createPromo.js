const {Router} = require('express')
const router = Router()
const Image = require("../models/image");
const Advert = require("../models/advert");
const upload = require("../middleware/upload");

async function setAddImages(items) {
  
  const imgsId = [];

  for(let i = 0; i < items.length; i++){
    const data = await Image.create({
      title: items[i].title,
      url:  `upload/${items[i].nameFile}`
    });
    imgsId.push(data.id);
  }
  return JSON.stringify(imgsId);
};


router.post(
  '/create/',
  upload,
  async (req, res, next) => {
    
    const data = req.body;
    const errorData = {
      title: { message: "Не заповненний заголовок." },
      description: {
        messageValue: "Не заповненний опис продукту.",
        messageLength: "Опис не має перевищувати 1000 символів."
      },
      price: { message: "Не вказана ціна." },
      image: { message: "Відсутність зображень." }
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
    
    if(!req.files.length){
      errorMessage.push(errorData.image.message)
    }

    let items = "";

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

        imagesId = await setAddImages(dataImages);

        items = await Advert.create({
          title: data.title,
          description: data.description,
          price: data.price,
          imagesId: imagesId
        })
      }
      res.status(201).json(items);
    } else {
      const error = {
        valid: false,
        errorMessage
      }
      res.status(200).json(error);
    }
})

module.exports = router;
