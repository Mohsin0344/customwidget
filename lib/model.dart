class Data {
   var _image;
   var _title;
   var _description;
   var _price;

  get image => _image;

  set image(value) {
    _image = value;
  }


   Data(this._image, this._title, this._description, this._price);

  get title => _title;

  set title(value) {
    _title = value;
  }

  get description => _description;

  set description(value) {
    _description = value;
  }

  get price => _price;

  set price(value) {
    _price = value;
  }
}