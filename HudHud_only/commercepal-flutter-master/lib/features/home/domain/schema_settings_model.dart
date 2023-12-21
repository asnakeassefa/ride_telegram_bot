class SchemaSettingsModel {
  List<String>? banners;
  int? targetId;
  String? target;
  String? displayName;
  List<SchemaSections>? schemaSections;
  String? key;

  SchemaSettingsModel({
    this.target,
    this.banners,
    this.targetId,
    this.displayName,
    this.schemaSections,
  });
}

class SchemaSections {
  String? template;
  String? catalogueType;
  String? description;
  num? sectionId;
  String? displayName;
  String? key;
  List<SchemaItem>? items;

  SchemaSections(
      {this.template,
      this.catalogueType,
      this.description,
      this.sectionId,
      this.displayName,
      this.key,
      this.items});
}

class SchemaItem {
  String? mobileImage;
  String? uniqueName;
  String? name;
  num? parentCategoryId;
  String? sectionDescription;
  num? id;
  String? mobileThumbnail;
  String? sectionType;
  num? categoryId;
  String? isDiscounted;
  String? unitPrice;
  String? currency;
  String? actualPrice;
  num? offerPrice;
  num? prodId;

  SchemaItem(
      {this.mobileImage,
      this.uniqueName,
      this.name,
      this.parentCategoryId,
      this.sectionDescription,
      this.id,
      this.mobileThumbnail,
      this.sectionType,
      this.categoryId,
      this.isDiscounted,
      this.unitPrice,
      this.currency,
      this.actualPrice,
      this.prodId,
      this.offerPrice});
}
