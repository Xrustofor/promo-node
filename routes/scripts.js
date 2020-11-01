function AdaptationForEdit(val) {
  let data = {
    title: '',
    description: '',
    price: '',
    imagesTitles: [],
    removeImages: [],
    imagesUpload: [],
  }
  if(val){
    data = {
        title: val.title ? val.title : '',
        description: val.description  ? val.description : '',
        price: val.price ? val.price : '',
        imagesTitles: (typeof val.imagesTitles == 'string') ? JSON.parse(val.imagesTitles) : [],
        removeImages: (typeof val.removeImages  == 'string') ? JSON.parse(val.removeImages) : []
      }
  }
  return data;
}

function setDataImages(items) {
  let dataImages = [];
  
  if(items.length){
    for(let i = 0; i < items.length; i++){
      dataImages.push(items[i].filename);
    }
  }

  return dataImages;
} 

// проверка на присутствие данных
const ERRORMESAGE = {
  title: { message: "Не заповненний заголовок." },
  description: {
    messageValue: "Не заповненний опис продукту.",
    messageLength: "Опис не має перевищувати 1000 символів."
  },
  price: { message: "Не вказана ціна." },
  image: { message: "Не вибране головне зображення." }
};

function Validation(item) {
  let errorInText = [];

  if(!item.imagesUpload){ item.imagesUpload = [] };

  for(key in item){
    switch(key) {
      case 'title' :
        if(!item[key].length){
          errorInText.push(ERRORMESAGE.title.message)
        } break;
      case 'description' : 
        if(!item[key].length){
          errorInText.push(ERRORMESAGE.description.messageValue)
        }
        if(item[key].length > 1000){
          errorInText.push(ERRORMESAGE.description.messageLength)
        } break;
      case 'price' :
        if(typeof item[key] == 'null' || item[key].replace(/\s+/g, '') == ''){
          errorInText.push(ERRORMESAGE.price.message)
        }
        break;
      case 'removeImages' :
        if(item[key][0].remove && !item[key][0].select){
          errorInText.push(ERRORMESAGE.image.message)
        }
    }
  }

  return errorInText;
}

function getRemoveImgId(item) {
  
  let removeImages = [];

  if(item.removeImages){

    for(let i = 0; i < item.removeImages.length; i++){
      if(item.removeImages[i].remove){
        removeImages.push(item.removeImages[i].id)
      }
    }
    return removeImages;

   } else {
     return removeImages;
   }

}

module.exports = {
  setDataImages,
  AdaptationForEdit,
  Validation,
  getRemoveImgId
}
