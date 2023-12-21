import 'dart:convert';

FinancialInstitution financialInstitutionDtoFromJson(String str) =>
    FinancialInstitution.fromJson(json.decode(str));

String financialInstitutionDtoToJson(FinancialInstitution data) =>
    json.encode(data.toJson());

class FinancialInstitution {
  FinancialInstitution({
    String? code,
    String? name,
    num? id,
  }) {
    _code = code;
    _name = name;
    _id = id;
  }

  FinancialInstitution.fromJson(dynamic json) {
    _code = json['code'];
    _name = json['name'];
    _id = json['id'];
  }

  String? _code;
  String? _name;
  num? _id;

  FinancialInstitution copyWith({
    String? code,
    String? name,
    num? id,
  }) =>
      FinancialInstitution(
        code: code ?? _code,
        name: name ?? _name,
        id: id ?? _id,
      );

  String? get code => _code;

  String? get name => _name;

  num? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['name'] = _name;
    map['id'] = _id;
    return map;
  }
}
