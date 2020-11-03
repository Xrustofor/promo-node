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
  let query = {};
  let result = [];
  let totalItems = {};

  if(Object.keys(req.query).length){

    let currentPages = req.query.currentPage ? req.query.currentPage : 1;
    const countPromoOnPage = req.query.countPromoOnPage ? req.query.countPromoOnPage : 2;
    const sort = req.query.sort ? req.query.sort : 'data';

    let countPromoAll = null;
    try{
      countPromoAll = await Advert.count();
    } catch(e) { console.log(e) } 

    let offset = 0;

    const countPages = +Math.ceil(countPromoAll / countPromoOnPage);
    if(currentPages > countPages){
      offset = 0;
      currentPages = 1;
    }
    offset = countPromoOnPage * currentPages - countPromoOnPage;

    try {
      let items = await Advert.findAll({
        limit: +countPromoOnPage,
        offset: offset
      });

      for(let i = 0; i < items.length; i++){

        result[i] = items[i].dataValues;

        if(items[i].imagesId){
          const imgsId = JSON.parse(items[i].dataValues.imagesId);
          let images = [];
          try{
            result[i].images = await getAllNameImg(imgsId);
          } catch(e) { console.log(e) }
        }   
      }
         
      const totalItems = { countPages, currentPages, countPromoOnPage, sort,  result }
      res.status(200).json(totalItems);

    } catch(e) {
      console.log(e)
      res.status(404).json();
    }

  } else {

    let items = await Advert.findAll();

    for(let i = 0; i < items.length; i++){

      result[i] = items[i].dataValues;

      if(items[i].imagesId){
        const imgsId = JSON.parse(items[i].dataValues.imagesId);
        try{
          result[i].images = await getAllNameImg(imgsId);
        } catch(e) { console.log(e) }
      }   
    }

    res.status(200).json({result});
  }
})

module.exports = router;