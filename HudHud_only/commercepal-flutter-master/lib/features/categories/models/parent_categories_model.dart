class ParentCategoryModel {
  String? _image;
  String? _name;
  num? _id;

  ParentCategoryModel({String? image, String? name, num? id}) {
    _image = image;
    _name = name;
    _id = id;
  }

  String? get name => _name;

  String? get image => _image;

  num? get id => _id;
}
