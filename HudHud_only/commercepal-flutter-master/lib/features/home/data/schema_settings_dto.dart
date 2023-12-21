import 'dart:convert';

import '../domain/schema_settings_model.dart';


/// settings : {"schemas":[{"mobileBanners":["https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Banners/Banners_1670515674395_200.jpg","https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Banners/Banners_1670515732565_124.jpg"],"targetId":4,"display_name":"Home","banners":["https://commercepal.s3.af-south-1.amazonaws.com/Web/Banners/Banners_1668425702194_118.jpg","https://commercepal.s3.af-south-1.amazonaws.com/Web/Banners/Banners_1668425729584_683.jpg"],"sections":[{"template":"most_popular","catalogueType":"catalogueType","description":"Most Popular Items","sectionId":5,"display_name":"Most Popular","key":"most_popular"},{"template":"categories","catalogueType":"catalogueType","description":"Categories","sectionId":6,"display_name":"Categories","key":"categories"},{"template":"collections","catalogueType":"catalogueType","description":"Collections for you","sectionId":7,"display_name":"Collections","key":"collections"},{"template":"deals_expiring_soon","catalogueType":"catalogueType","description":"Deals Expiring Soon","sectionId":8,"display_name":"Deals Expiring Soon","key":"deals_expiring_soon"},{"template":"top_brands","catalogueType":"catalogueType","description":"Top Brands","sectionId":10,"display_name":"Top Brands","key":"top_brands"},{"template":"under_1000","catalogueType":"catalogueType","description":"Under 1000","sectionId":13,"display_name":"Under 1000","key":"under_1000"}],"target":"home"},{"mobileBanners":[],"targetId":5,"display_name":"CommercePal Originals","banners":[],"sections":[],"target":"commercepal_originals"},{"mobileBanners":[],"targetId":6,"display_name":"Top Deals","banners":[],"sections":[],"target":"top_deals"},{"mobileBanners":[],"targetId":7,"display_name":"Special Order","banners":[],"sections":[],"target":"special_order"},{"mobileBanners":[],"targetId":8,"display_name":"B2B","banners":[],"sections":[],"target":"b2b"},{"mobileBanners":[],"targetId":9,"display_name":"Under BR99","banners":[],"sections":[],"target":"under_br99"}],"language":"en"}
/// statusDescription : "success"
/// statusMessage : "Request Successful"
/// statusCode : "000"

SchemaSettingsDto schemaSettingsDtoFromJson(String str) =>
    SchemaSettingsDto.fromJson(json.decode(str));

String schemaSettingsDtoToJson(SchemaSettingsDto data) =>
    json.encode(data.toJson());

class SchemaSettingsDto {
  SchemaSettingsDto({
    Settings? settings,
    String? statusDescription,
    String? statusMessage,
    String? statusCode,
  }) {
    _settings = settings;
    _statusDescription = statusDescription;
    _statusMessage = statusMessage;
    _statusCode = statusCode;
  }

  SchemaSettingsDto.fromJson(dynamic json) {
    _settings =
        json['settings'] != null ? Settings.fromJson(json['settings']) : null;
    _statusDescription = json['statusDescription'];
    _statusMessage = json['statusMessage'];
    _statusCode = json['statusCode'];
  }

  Settings? _settings;
  String? _statusDescription;
  String? _statusMessage;
  String? _statusCode;

  SchemaSettingsDto copyWith({
    Settings? settings,
    String? statusDescription,
    String? statusMessage,
    String? statusCode,
  }) =>
      SchemaSettingsDto(
        settings: settings ?? _settings,
        statusDescription: statusDescription ?? _statusDescription,
        statusMessage: statusMessage ?? _statusMessage,
        statusCode: statusCode ?? _statusCode,
      );

  Settings? get settings => _settings;

  String? get statusDescription => _statusDescription;

  String? get statusMessage => _statusMessage;

  String? get statusCode => _statusCode;

  List<SchemaSettingsModel>? toSchemaModel() {
    return settings?.schemas
        ?.map((e) => SchemaSettingsModel(
            target: e.target,
            banners: e.banners,
            targetId: e.targetId?.toInt(),
            displayName: e.displayName,
            schemaSections: e.sections
                ?.map((e) => SchemaSections(
                    template: e.template,
                    catalogueType: e.catalogueType,
                    description: e.description,
                    sectionId: e.sectionId,
                    displayName: e.displayName,
                    key: e.key))
                .toList()))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_settings != null) {
      map['settings'] = _settings?.toJson();
    }
    map['statusDescription'] = _statusDescription;
    map['statusMessage'] = _statusMessage;
    map['statusCode'] = _statusCode;
    return map;
  }
}

/// schemas : [{"mobileBanners":["https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Banners/Banners_1670515674395_200.jpg","https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Banners/Banners_1670515732565_124.jpg"],"targetId":4,"display_name":"Home","banners":["https://commercepal.s3.af-south-1.amazonaws.com/Web/Banners/Banners_1668425702194_118.jpg","https://commercepal.s3.af-south-1.amazonaws.com/Web/Banners/Banners_1668425729584_683.jpg"],"sections":[{"template":"most_popular","catalogueType":"catalogueType","description":"Most Popular Items","sectionId":5,"display_name":"Most Popular","key":"most_popular"},{"template":"categories","catalogueType":"catalogueType","description":"Categories","sectionId":6,"display_name":"Categories","key":"categories"},{"template":"collections","catalogueType":"catalogueType","description":"Collections for you","sectionId":7,"display_name":"Collections","key":"collections"},{"template":"deals_expiring_soon","catalogueType":"catalogueType","description":"Deals Expiring Soon","sectionId":8,"display_name":"Deals Expiring Soon","key":"deals_expiring_soon"},{"template":"top_brands","catalogueType":"catalogueType","description":"Top Brands","sectionId":10,"display_name":"Top Brands","key":"top_brands"},{"template":"under_1000","catalogueType":"catalogueType","description":"Under 1000","sectionId":13,"display_name":"Under 1000","key":"under_1000"}],"target":"home"},{"mobileBanners":[],"targetId":5,"display_name":"CommercePal Originals","banners":[],"sections":[],"target":"commercepal_originals"},{"mobileBanners":[],"targetId":6,"display_name":"Top Deals","banners":[],"sections":[],"target":"top_deals"},{"mobileBanners":[],"targetId":7,"display_name":"Special Order","banners":[],"sections":[],"target":"special_order"},{"mobileBanners":[],"targetId":8,"display_name":"B2B","banners":[],"sections":[],"target":"b2b"},{"mobileBanners":[],"targetId":9,"display_name":"Under BR99","banners":[],"sections":[],"target":"under_br99"}]
/// language : "en"

Settings settingsFromJson(String str) => Settings.fromJson(json.decode(str));

String settingsToJson(Settings data) => json.encode(data.toJson());

class Settings {
  Settings({
    List<Schemas>? schemas,
    String? language,
  }) {
    _schemas = schemas;
    _language = language;
  }

  Settings.fromJson(dynamic json) {
    if (json['schemas'] != null) {
      _schemas = [];
      json['schemas'].forEach((v) {
        _schemas?.add(Schemas.fromJson(v));
      });
    }
    _language = json['language'];
  }

  List<Schemas>? _schemas;
  String? _language;

  Settings copyWith({
    List<Schemas>? schemas,
    String? language,
  }) =>
      Settings(
        schemas: schemas ?? _schemas,
        language: language ?? _language,
      );

  List<Schemas>? get schemas => _schemas;

  String? get language => _language;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_schemas != null) {
      map['schemas'] = _schemas?.map((v) => v.toJson()).toList();
    }
    map['language'] = _language;
    return map;
  }
}

/// mobileBanners : ["https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Banners/Banners_1670515674395_200.jpg","https://commercepal.s3.af-south-1.amazonaws.com/Mobile/Banners/Banners_1670515732565_124.jpg"]
/// targetId : 4
/// display_name : "Home"
/// banners : ["https://commercepal.s3.af-south-1.amazonaws.com/Web/Banners/Banners_1668425702194_118.jpg","https://commercepal.s3.af-south-1.amazonaws.com/Web/Banners/Banners_1668425729584_683.jpg"]
/// sections : [{"template":"most_popular","catalogueType":"catalogueType","description":"Most Popular Items","sectionId":5,"display_name":"Most Popular","key":"most_popular"},{"template":"categories","catalogueType":"catalogueType","description":"Categories","sectionId":6,"display_name":"Categories","key":"categories"},{"template":"collections","catalogueType":"catalogueType","description":"Collections for you","sectionId":7,"display_name":"Collections","key":"collections"},{"template":"deals_expiring_soon","catalogueType":"catalogueType","description":"Deals Expiring Soon","sectionId":8,"display_name":"Deals Expiring Soon","key":"deals_expiring_soon"},{"template":"top_brands","catalogueType":"catalogueType","description":"Top Brands","sectionId":10,"display_name":"Top Brands","key":"top_brands"},{"template":"under_1000","catalogueType":"catalogueType","description":"Under 1000","sectionId":13,"display_name":"Under 1000","key":"under_1000"}]
/// target : "home"

Schemas schemasFromJson(String str) => Schemas.fromJson(json.decode(str));

String schemasToJson(Schemas data) => json.encode(data.toJson());

class Schemas {
  Schemas({
    List<String>? mobileBanners,
    num? targetId,
    String? displayName,
    List<String>? banners,
    List<Sections>? sections,
    String? target,
  }) {
    _mobileBanners = mobileBanners;
    _targetId = targetId;
    _displayName = displayName;
    _banners = banners;
    _sections = sections;
    _target = target;
  }

  Schemas.fromJson(dynamic json) {
    _mobileBanners = json['mobileBanners'] != null
        ? json['mobileBanners'].cast<String>()
        : [];
    _targetId = json['targetId'];
    _displayName = json['display_name'];
    _banners = json['banners'] != null ? json['banners'].cast<String>() : [];
    if (json['sections'] != null) {
      _sections = [];
      json['sections'].forEach((v) {
        _sections?.add(Sections.fromJson(v));
      });
    }
    _target = json['target'];
  }

  List<String>? _mobileBanners;
  num? _targetId;
  String? _displayName;
  List<String>? _banners;
  List<Sections>? _sections;
  String? _target;

  Schemas copyWith({
    List<String>? mobileBanners,
    num? targetId,
    String? displayName,
    List<String>? banners,
    List<Sections>? sections,
    String? target,
  }) =>
      Schemas(
        mobileBanners: mobileBanners ?? _mobileBanners,
        targetId: targetId ?? _targetId,
        displayName: displayName ?? _displayName,
        banners: banners ?? _banners,
        sections: sections ?? _sections,
        target: target ?? _target,
      );

  List<String>? get mobileBanners => _mobileBanners;

  num? get targetId => _targetId;

  String? get displayName => _displayName;

  List<String>? get banners => _banners;

  List<Sections>? get sections => _sections;

  String? get target => _target;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mobileBanners'] = _mobileBanners;
    map['targetId'] = _targetId;
    map['display_name'] = _displayName;
    map['banners'] = _banners;
    if (_sections != null) {
      map['sections'] = _sections?.map((v) => v.toJson()).toList();
    }
    map['target'] = _target;
    return map;
  }
}

/// template : "most_popular"
/// catalogueType : "catalogueType"
/// description : "Most Popular Items"
/// sectionId : 5
/// display_name : "Most Popular"
/// key : "most_popular"

Sections sectionsFromJson(String str) => Sections.fromJson(json.decode(str));

String sectionsToJson(Sections data) => json.encode(data.toJson());

class Sections {
  Sections({
    String? template,
    String? catalogueType,
    String? description,
    num? sectionId,
    String? displayName,
    String? key,
  }) {
    _template = template;
    _catalogueType = catalogueType;
    _description = description;
    _sectionId = sectionId;
    _displayName = displayName;
    _key = key;
  }

  Sections.fromJson(dynamic json) {
    _template = json['template'];
    _catalogueType = json['catalogueType'];
    _description = json['description'];
    _sectionId = json['sectionId'];
    _displayName = json['display_name'];
    _key = json['key'];
  }

  String? _template;
  String? _catalogueType;
  String? _description;
  num? _sectionId;
  String? _displayName;
  String? _key;

  Sections copyWith({
    String? template,
    String? catalogueType,
    String? description,
    num? sectionId,
    String? displayName,
    String? key,
  }) =>
      Sections(
        template: template ?? _template,
        catalogueType: catalogueType ?? _catalogueType,
        description: description ?? _description,
        sectionId: sectionId ?? _sectionId,
        displayName: displayName ?? _displayName,
        key: key ?? _key,
      );

  String? get template => _template;

  String? get catalogueType => _catalogueType;

  String? get description => _description;

  num? get sectionId => _sectionId;

  String? get displayName => _displayName;

  String? get key => _key;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['template'] = _template;
    map['catalogueType'] = _catalogueType;
    map['description'] = _description;
    map['sectionId'] = _sectionId;
    map['display_name'] = _displayName;
    map['key'] = _key;
    return map;
  }
}
