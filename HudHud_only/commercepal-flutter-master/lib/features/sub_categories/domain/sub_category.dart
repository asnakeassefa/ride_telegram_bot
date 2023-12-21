class SubCategory{
  final String? _name;
  final String? _image;
  final num? _id;
  final num? _categoryId;

  SubCategory(this._name, this._image, this._id, this._categoryId);

  String? get name => _name;

  String? get image => _image;

  num? get categoryId => _categoryId;

  num? get id => _id;
}
