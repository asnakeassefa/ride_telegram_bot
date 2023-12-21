import 'dart:convert';

SessionManagementDto sessionManagementDtoFromJson(String str) =>
    SessionManagementDto.fromJson(json.decode(str));

String sessionManagementDtoToJson(SessionManagementDto data) =>
    json.encode(data.toJson());

class SessionManagementDto {
  SessionManagementDto({
    String? statusDescription,
    SessionManagementData? data,
    String? statusMessage,
    String? statusCode,
  }) {
    _statusDescription = statusDescription;
    _data = data;
    _statusMessage = statusMessage;
    _statusCode = statusCode;
  }

  SessionManagementDto.fromJson(dynamic json) {
    _statusDescription = json['statusDescription'];
    _data = json['data'] != null
        ? SessionManagementData.fromJson(json['data'])
        : null;
    _statusMessage = json['statusMessage'];
    _statusCode = json['statusCode'];
  }

  String? _statusDescription;
  SessionManagementData? _data;
  String? _statusMessage;
  String? _statusCode;

  SessionManagementDto copyWith({
    String? statusDescription,
    SessionManagementData? data,
    String? statusMessage,
    String? statusCode,
  }) =>
      SessionManagementDto(
        statusDescription: statusDescription ?? _statusDescription,
        data: data ?? _data,
        statusMessage: statusMessage ?? _statusMessage,
        statusCode: statusCode ?? _statusCode,
      );

  String? get statusDescription => _statusDescription;

  SessionManagementData? get data => _data;

  String? get statusMessage => _statusMessage;

  String? get statusCode => _statusCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statusDescription'] = _statusDescription;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['statusMessage'] = _statusMessage;
    map['statusCode'] = _statusCode;
    return map;
  }
}

SessionManagementData dataFromJson(String str) =>
    SessionManagementData.fromJson(json.decode(str));

String dataToJson(SessionManagementData data) => json.encode(data.toJson());

class SessionManagementData {
  SessionManagementData({
    String? iosUpdate,
    String? iosComment,
    num? sessionTimeout,
    String? androidComment,
    String? androidUpdate,
    String? iosVersion,
    String? androidUpdateType,
    String? androidVersion,
    String? iosUpdateType,
  }) {
    _iosUpdate = iosUpdate;
    _iosComment = iosComment;
    _sessionTimeout = sessionTimeout;
    _androidComment = androidComment;
    _androidUpdate = androidUpdate;
    _iosVersion = iosVersion;
    _androidUpdateType = androidUpdateType;
    _androidVersion = androidVersion;
    _iosUpdateType = iosUpdateType;
  }

  SessionManagementData.fromJson(dynamic json) {
    _iosUpdate = json['IosUpdate'];
    _iosComment = json['IosComment'];
    _sessionTimeout = json['SessionTimeout'];
    _androidComment = json['AndroidComment'];
    _androidUpdate = json['AndroidUpdate'];
    _iosVersion = json['IosVersion'];
    _androidUpdateType = json['AndroidUpdateType'];
    _androidVersion = json['AndroidVersion'];
    _iosUpdateType = json['iosUpdateType'];
  }

  String? _iosUpdate;
  String? _iosComment;
  num? _sessionTimeout;
  String? _androidComment;
  String? _androidUpdate;
  String? _iosVersion;
  String? _androidUpdateType;
  String? _androidVersion;
  String? _iosUpdateType;

  SessionManagementData copyWith({
    String? iosUpdate,
    String? iosComment,
    num? sessionTimeout,
    String? androidComment,
    String? androidUpdate,
    String? iosVersion,
    String? androidUpdateType,
    String? androidVersion,
    String? iosUpdateType,
  }) =>
      SessionManagementData(
        iosUpdate: iosUpdate ?? _iosUpdate,
        iosComment: iosComment ?? _iosComment,
        sessionTimeout: sessionTimeout ?? _sessionTimeout,
        androidComment: androidComment ?? _androidComment,
        androidUpdate: androidUpdate ?? _androidUpdate,
        iosVersion: iosVersion ?? _iosVersion,
        androidUpdateType: androidUpdateType ?? _androidUpdateType,
        androidVersion: androidVersion ?? _androidVersion,
        iosUpdateType: iosUpdateType ?? _iosUpdateType,
      );

  String? get iosUpdate => _iosUpdate;

  String? get iosComment => _iosComment;

  num? get sessionTimeout => _sessionTimeout;

  String? get androidComment => _androidComment;

  String? get androidUpdate => _androidUpdate;

  String? get iosVersion => _iosVersion;

  String? get androidUpdateType => _androidUpdateType;

  String? get androidVersion => _androidVersion;

  String? get iosUpdateType => _iosUpdateType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['IosUpdate'] = _iosUpdate;
    map['IosComment'] = _iosComment;
    map['SessionTimeout'] = _sessionTimeout;
    map['AndroidComment'] = _androidComment;
    map['AndroidUpdate'] = _androidUpdate;
    map['IosVersion'] = _iosVersion;
    map['AndroidUpdateType'] = _androidUpdateType;
    map['AndroidVersion'] = _androidVersion;
    map['iosUpdateType'] = _iosUpdateType;
    return map;
  }
}
