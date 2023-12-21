class CategoryModel {
  String? _image;
  String? _name;
  num? _parentId;
  num? _id;
  String? _pCategoryName;

  CategoryModel({String? image, String? name, num? parentId, num? id, String? pCategoryName}) {
    _image = image;
    _name = name;
    _parentId = parentId;
    _id = id;
    _pCategoryName = pCategoryName;
  }

  String? get name => _name;

  String? get image => _image;

  num? get parentId => _parentId;

  num? get id => _id;

  String get pCategoryName => _pCategoryName ?? "...";

  set pCategoryName(String value) {
    _pCategoryName = value;
  }
}
