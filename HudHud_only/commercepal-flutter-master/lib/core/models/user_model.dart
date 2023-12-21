import 'dart:convert';

import 'package:commercepal/core/models/auth_model.dart';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  AuthModel? authStatus;

  UserModel({
    String? isDistributor,
    String? isBusiness,
    AgentInfo? agentInfo,
    String? isMessenger,
    MerchantInfo? merchantInfo,
    String? statusMessage,
    BusinessInfo? businessInfo,
    String? statusDescription,
    Details? details,
    String? isAgent,
    String? isMerchant,
    MessengerInfo? messengerInfo,
    String? statusCode,
  }) {
    _isDistributor = isDistributor;
    _isBusiness = isBusiness;
    _agentInfo = agentInfo;
    _isMessenger = isMessenger;
    _merchantInfo = merchantInfo;
    _statusMessage = statusMessage;
    _businessInfo = businessInfo;
    _statusDescription = statusDescription;
    _details = details;
    _isAgent = isAgent;
    _isMerchant = isMerchant;
    _messengerInfo = messengerInfo;
    _statusCode = statusCode;
  }

  UserModel.fromJson(dynamic json) {
    _isDistributor = json['IsDistributor'];
    _isBusiness = json['IsBusiness'];
    _agentInfo = json['agentInfo'] != null
        ? AgentInfo.fromJson(json['agentInfo'])
        : null;
    _isMessenger = json['IsMessenger'];
    _merchantInfo = json['merchantInfo'] != null
        ? MerchantInfo.fromJson(json['merchantInfo'])
        : null;
    _statusMessage = json['statusMessage'];
    _businessInfo = json['businessInfo'] != null
        ? BusinessInfo.fromJson(json['businessInfo'])
        : null;
    _statusDescription = json['statusDescription'];
    _details =
        json['Details'] != null ? Details.fromJson(json['Details']) : null;
    _isAgent = json['IsAgent'];
    _isMerchant = json['IsMerchant'];
    _messengerInfo = json['messengerInfo'] != null
        ? MessengerInfo.fromJson(json['messengerInfo'])
        : null;
    _statusCode = json['statusCode'];
  }

  String? _isDistributor;
  String? _isBusiness;
  AgentInfo? _agentInfo;
  String? _isMessenger;
  MerchantInfo? _merchantInfo;
  String? _statusMessage;
  BusinessInfo? _businessInfo;
  String? _statusDescription;
  Details? _details;
  String? _isAgent;
  String? _isMerchant;
  MessengerInfo? _messengerInfo;
  String? _statusCode;

  UserModel copyWith({
    String? isDistributor,
    String? isBusiness,
    AgentInfo? agentInfo,
    String? isMessenger,
    MerchantInfo? merchantInfo,
    String? statusMessage,
    BusinessInfo? businessInfo,
    String? statusDescription,
    Details? details,
    String? isAgent,
    String? isMerchant,
    MessengerInfo? messengerInfo,
    String? statusCode,
  }) =>
      UserModel(
        isDistributor: isDistributor ?? _isDistributor,
        isBusiness: isBusiness ?? _isBusiness,
        agentInfo: agentInfo ?? _agentInfo,
        isMessenger: isMessenger ?? _isMessenger,
        merchantInfo: merchantInfo ?? _merchantInfo,
        statusMessage: statusMessage ?? _statusMessage,
        businessInfo: businessInfo ?? _businessInfo,
        statusDescription: statusDescription ?? _statusDescription,
        details: details ?? _details,
        isAgent: isAgent ?? _isAgent,
        isMerchant: isMerchant ?? _isMerchant,
        messengerInfo: messengerInfo ?? _messengerInfo,
        statusCode: statusCode ?? _statusCode,
      );

  String? get isDistributor => _isDistributor;

  String? get isBusiness => _isBusiness;

  AgentInfo? get agentInfo => _agentInfo;

  String? get isMessenger => _isMessenger;

  MerchantInfo? get merchantInfo => _merchantInfo;

  String? get statusMessage => _statusMessage;

  BusinessInfo? get businessInfo => _businessInfo;

  String? get statusDescription => _statusDescription;

  Details? get details => _details;

  String? get isAgent => _isAgent;

  String? get isMerchant => _isMerchant;

  MessengerInfo? get messengerInfo => _messengerInfo;

  String? get statusCode => _statusCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['IsDistributor'] = _isDistributor;
    map['IsBusiness'] = _isBusiness;
    if (_agentInfo != null) {
      map['agentInfo'] = _agentInfo?.toJson();
    }
    map['IsMessenger'] = _isMessenger;
    if (_merchantInfo != null) {
      map['merchantInfo'] = _merchantInfo?.toJson();
    }
    map['statusMessage'] = _statusMessage;
    if (_businessInfo != null) {
      map['businessInfo'] = _businessInfo?.toJson();
    }
    map['statusDescription'] = _statusDescription;
    if (_details != null) {
      map['Details'] = _details?.toJson();
    }
    map['IsAgent'] = _isAgent;
    map['IsMerchant'] = _isMerchant;
    if (_messengerInfo != null) {
      map['messengerInfo'] = _messengerInfo?.toJson();
    }
    map['statusCode'] = _statusCode;
    return map;
  }
}

MessengerInfo messengerInfoFromJson(String str) =>
    MessengerInfo.fromJson(json.decode(str));

String messengerInfoToJson(MessengerInfo data) => json.encode(data.toJson());

class MessengerInfo {
  MessengerInfo({
    String? ownerType,
    String? status,
    String? ownerPhoneNumber,
    String? country,
    String? lastName,
    dynamic nextOfKin,
    String? city,
    String? latitude,
    String? carrierType,
    String? language,
    String? idNumber,
    num? userId,
    String? insuranceExpiry,
    String? firstName,
    String? phoneNumber,
    String? carrierLicencePlate,
    String? district,
    String? location,
    String? email,
    String? drivingLicenceNumber,
    String? longitude,
  }) {
    _ownerType = ownerType;
    _status = status;
    _ownerPhoneNumber = ownerPhoneNumber;
    _country = country;
    _lastName = lastName;
    _nextOfKin = nextOfKin;
    _city = city;
    _latitude = latitude;
    _carrierType = carrierType;
    _language = language;
    _idNumber = idNumber;
    _userId = userId;
    _insuranceExpiry = insuranceExpiry;
    _firstName = firstName;
    _phoneNumber = phoneNumber;
    _carrierLicencePlate = carrierLicencePlate;
    _district = district;
    _location = location;
    _email = email;
    _drivingLicenceNumber = drivingLicenceNumber;
    _longitude = longitude;
  }

  MessengerInfo.fromJson(dynamic json) {
    _ownerType = json['ownerType'];
    _status = json['Status'];
    _ownerPhoneNumber = json['ownerPhoneNumber'];
    _country = json['country'];
    _lastName = json['lastName'];
    _nextOfKin = json['nextOfKin'];
    _city = json['city'];
    _latitude = json['latitude'];
    _carrierType = json['carrierType'];
    _language = json['language'];
    _idNumber = json['idNumber'];
    _userId = json['userId'];
    _insuranceExpiry = json['insuranceExpiry'];
    _firstName = json['firstName'];
    _phoneNumber = json['phoneNumber'];
    _carrierLicencePlate = json['carrierLicencePlate'];
    _district = json['district'];
    _location = json['location'];
    _email = json['email'];
    _drivingLicenceNumber = json['drivingLicenceNumber'];
    _longitude = json['longitude'];
  }

  String? _ownerType;
  String? _status;
  String? _ownerPhoneNumber;
  String? _country;
  String? _lastName;
  dynamic _nextOfKin;
  String? _city;
  String? _latitude;
  String? _carrierType;
  String? _language;
  String? _idNumber;
  num? _userId;
  String? _insuranceExpiry;
  String? _firstName;
  String? _phoneNumber;
  String? _carrierLicencePlate;
  String? _district;
  String? _location;
  String? _email;
  String? _drivingLicenceNumber;
  String? _longitude;

  MessengerInfo copyWith({
    String? ownerType,
    String? status,
    String? ownerPhoneNumber,
    String? country,
    String? lastName,
    dynamic nextOfKin,
    String? city,
    String? latitude,
    String? carrierType,
    String? language,
    String? idNumber,
    num? userId,
    String? insuranceExpiry,
    String? firstName,
    String? phoneNumber,
    String? carrierLicencePlate,
    String? district,
    String? location,
    String? email,
    String? drivingLicenceNumber,
    String? longitude,
  }) =>
      MessengerInfo(
        ownerType: ownerType ?? _ownerType,
        status: status ?? _status,
        ownerPhoneNumber: ownerPhoneNumber ?? _ownerPhoneNumber,
        country: country ?? _country,
        lastName: lastName ?? _lastName,
        nextOfKin: nextOfKin ?? _nextOfKin,
        city: city ?? _city,
        latitude: latitude ?? _latitude,
        carrierType: carrierType ?? _carrierType,
        language: language ?? _language,
        idNumber: idNumber ?? _idNumber,
        userId: userId ?? _userId,
        insuranceExpiry: insuranceExpiry ?? _insuranceExpiry,
        firstName: firstName ?? _firstName,
        phoneNumber: phoneNumber ?? _phoneNumber,
        carrierLicencePlate: carrierLicencePlate ?? _carrierLicencePlate,
        district: district ?? _district,
        location: location ?? _location,
        email: email ?? _email,
        drivingLicenceNumber: drivingLicenceNumber ?? _drivingLicenceNumber,
        longitude: longitude ?? _longitude,
      );

  String? get ownerType => _ownerType;

  String? get status => _status;

  String? get ownerPhoneNumber => _ownerPhoneNumber;

  String? get country => _country;

  String? get lastName => _lastName;

  dynamic get nextOfKin => _nextOfKin;

  String? get city => _city;

  String? get latitude => _latitude;

  String? get carrierType => _carrierType;

  String? get language => _language;

  String? get idNumber => _idNumber;

  num? get userId => _userId;

  String? get insuranceExpiry => _insuranceExpiry;

  String? get firstName => _firstName;

  String? get phoneNumber => _phoneNumber;

  String? get carrierLicencePlate => _carrierLicencePlate;

  String? get district => _district;

  String? get location => _location;

  String? get email => _email;

  String? get drivingLicenceNumber => _drivingLicenceNumber;

  String? get longitude => _longitude;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ownerType'] = _ownerType;
    map['Status'] = _status;
    map['ownerPhoneNumber'] = _ownerPhoneNumber;
    map['country'] = _country;
    map['lastName'] = _lastName;
    map['nextOfKin'] = _nextOfKin;
    map['city'] = _city;
    map['latitude'] = _latitude;
    map['carrierType'] = _carrierType;
    map['language'] = _language;
    map['idNumber'] = _idNumber;
    map['userId'] = _userId;
    map['insuranceExpiry'] = _insuranceExpiry;
    map['firstName'] = _firstName;
    map['phoneNumber'] = _phoneNumber;
    map['carrierLicencePlate'] = _carrierLicencePlate;
    map['district'] = _district;
    map['location'] = _location;
    map['email'] = _email;
    map['drivingLicenceNumber'] = _drivingLicenceNumber;
    map['longitude'] = _longitude;
    return map;
  }
}

Details detailsFromJson(String str) => Details.fromJson(json.decode(str));

String detailsToJson(Details data) => json.encode(data.toJson());

class Details {
  Details({
    String? firstName,
    String? lastName,
    String? country,
    String? phoneNumber,
    String? oneSignalToken,
    String? city,
    String? language,
    num? userId,
    String? email,
  }) {
    _firstName = firstName;
    _lastName = lastName;
    _country = country;
    _phoneNumber = phoneNumber;
    _oneSignalToken = oneSignalToken;
    _city = city;
    _language = language;
    _userId = userId;
    _email = email;
  }

  Details.fromJson(dynamic json) {
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _country = json['country'];
    _phoneNumber = json['phoneNumber'];
    _oneSignalToken = json['oneSignalToken'];
    _city = json['city'];
    _language = json['language'];
    _userId = json['userId'];
    _email = json['email'];
  }

  String? _firstName;
  String? _lastName;
  String? _country;
  String? _phoneNumber;
  String? _oneSignalToken;
  String? _city;
  String? _language;
  num? _userId;
  String? _email;

  Details copyWith({
    String? firstName,
    String? lastName,
    String? country,
    String? phoneNumber,
    String? oneSignalToken,
    String? city,
    String? language,
    num? userId,
    String? email,
  }) =>
      Details(
        firstName: firstName ?? _firstName,
        lastName: lastName ?? _lastName,
        country: country ?? _country,
        phoneNumber: phoneNumber ?? _phoneNumber,
        oneSignalToken: oneSignalToken ?? _oneSignalToken,
        city: city ?? _city,
        language: language ?? _language,
        userId: userId ?? _userId,
        email: email ?? _email,
      );

  String? get firstName => _firstName;

  String? get lastName => _lastName;

  String? get country => _country;

  String? get phoneNumber => _phoneNumber;

  String? get oneSignalToken => _oneSignalToken;

  String? get city => _city;

  String? get language => _language;

  num? get userId => _userId;

  String? get email => _email;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    map['country'] = _country;
    map['phoneNumber'] = _phoneNumber;
    map['oneSignalToken'] = _oneSignalToken;
    map['city'] = _city;
    map['language'] = _language;
    map['userId'] = _userId;
    map['email'] = _email;
    return map;
  }
}

BusinessInfo businessInfoFromJson(String str) =>
    BusinessInfo.fromJson(json.decode(str));

String businessInfoToJson(BusinessInfo data) => json.encode(data.toJson());

class BusinessInfo {
  BusinessInfo({
    String? ownerType,
    num? businessSector,
    String? businessLicense,
    String? status,
    String? ownerPhoneNumber,
    String? country,
    String? lastName,
    num? city,
    String? latitude,
    String? tillNumber,
    String? language,
    num? userId,
    String? firstName,
    String? phoneNumber,
    num? termOfService,
    String? name,
    String? commercialCertNo,
    String? email,
    String? businessPhoneNumber,
    String? longitude,
  }) {
    _ownerType = ownerType;
    _businessSector = businessSector;
    _businessLicense = businessLicense;
    _status = status;
    _ownerPhoneNumber = ownerPhoneNumber;
    _country = country;
    _lastName = lastName;
    _city = city;
    _latitude = latitude;
    _tillNumber = tillNumber;
    _language = language;
    _userId = userId;
    _firstName = firstName;
    _phoneNumber = phoneNumber;
    _termOfService = termOfService;
    _name = name;
    _commercialCertNo = commercialCertNo;
    _email = email;
    _businessPhoneNumber = businessPhoneNumber;
    _longitude = longitude;
  }

  BusinessInfo.fromJson(dynamic json) {
    _ownerType = json['ownerType'];
    _businessSector = json['businessSector'];
    _businessLicense = json['businessLicense'];
    _status = json['Status'];
    _ownerPhoneNumber = json['ownerPhoneNumber'];
    _country = json['country'];
    _lastName = json['lastName'];
    _city = json['city'];
    _latitude = json['latitude'];
    _tillNumber = json['tillNumber'];
    _language = json['language'];
    _userId = json['userId'];
    _firstName = json['firstName'];
    _phoneNumber = json['phoneNumber'];
    _termOfService = json['termOfService'];
    _name = json['name'];
    _commercialCertNo = json['commercialCertNo'];
    _email = json['email'];
    _businessPhoneNumber = json['businessPhoneNumber'];
    _longitude = json['longitude'];
  }

  String? _ownerType;
  num? _businessSector;
  String? _businessLicense;
  String? _status;
  String? _ownerPhoneNumber;
  String? _country;
  String? _lastName;
  num? _city;
  String? _latitude;
  String? _tillNumber;
  String? _language;
  num? _userId;
  String? _firstName;
  String? _phoneNumber;
  num? _termOfService;
  String? _name;
  String? _commercialCertNo;
  String? _email;
  String? _businessPhoneNumber;
  String? _longitude;

  BusinessInfo copyWith({
    String? ownerType,
    num? businessSector,
    String? businessLicense,
    String? status,
    String? ownerPhoneNumber,
    String? country,
    String? lastName,
    num? city,
    String? latitude,
    String? tillNumber,
    String? language,
    num? userId,
    String? firstName,
    String? phoneNumber,
    num? termOfService,
    String? name,
    String? commercialCertNo,
    String? email,
    String? businessPhoneNumber,
    String? longitude,
  }) =>
      BusinessInfo(
        ownerType: ownerType ?? _ownerType,
        businessSector: businessSector ?? _businessSector,
        businessLicense: businessLicense ?? _businessLicense,
        status: status ?? _status,
        ownerPhoneNumber: ownerPhoneNumber ?? _ownerPhoneNumber,
        country: country ?? _country,
        lastName: lastName ?? _lastName,
        city: city ?? _city,
        latitude: latitude ?? _latitude,
        tillNumber: tillNumber ?? _tillNumber,
        language: language ?? _language,
        userId: userId ?? _userId,
        firstName: firstName ?? _firstName,
        phoneNumber: phoneNumber ?? _phoneNumber,
        termOfService: termOfService ?? _termOfService,
        name: name ?? _name,
        commercialCertNo: commercialCertNo ?? _commercialCertNo,
        email: email ?? _email,
        businessPhoneNumber: businessPhoneNumber ?? _businessPhoneNumber,
        longitude: longitude ?? _longitude,
      );

  String? get ownerType => _ownerType;

  num? get businessSector => _businessSector;

  String? get businessLicense => _businessLicense;

  String? get status => _status;

  String? get ownerPhoneNumber => _ownerPhoneNumber;

  String? get country => _country;

  String? get lastName => _lastName;

  num? get city => _city;

  String? get latitude => _latitude;

  String? get tillNumber => _tillNumber;

  String? get language => _language;

  num? get userId => _userId;

  String? get firstName => _firstName;

  String? get phoneNumber => _phoneNumber;

  num? get termOfService => _termOfService;

  String? get name => _name;

  String? get commercialCertNo => _commercialCertNo;

  String? get email => _email;

  String? get businessPhoneNumber => _businessPhoneNumber;

  String? get longitude => _longitude;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ownerType'] = _ownerType;
    map['businessSector'] = _businessSector;
    map['businessLicense'] = _businessLicense;
    map['Status'] = _status;
    map['ownerPhoneNumber'] = _ownerPhoneNumber;
    map['country'] = _country;
    map['lastName'] = _lastName;
    map['city'] = _city;
    map['latitude'] = _latitude;
    map['tillNumber'] = _tillNumber;
    map['language'] = _language;
    map['userId'] = _userId;
    map['firstName'] = _firstName;
    map['phoneNumber'] = _phoneNumber;
    map['termOfService'] = _termOfService;
    map['name'] = _name;
    map['commercialCertNo'] = _commercialCertNo;
    map['email'] = _email;
    map['businessPhoneNumber'] = _businessPhoneNumber;
    map['longitude'] = _longitude;
    return map;
  }
}

MerchantInfo merchantInfoFromJson(String str) =>
    MerchantInfo.fromJson(json.decode(str));

String merchantInfoToJson(MerchantInfo data) => json.encode(data.toJson());

class MerchantInfo {
  MerchantInfo({
    String? ownerType,
    String? businessLicense,
    String? ownerPhoneNumber,
    String? country,
    String? lastName,
    num? city,
    String? latitude,
    String? language,
    String? branch,
    String? commercialCertNo,
    String? bankAccountNumber,
    String? email,
    String? longitude,
    String? status,
    String? bankCode,
    String? tillNumber,
    String? commissionAccount,
    String? taxNumber,
    num? userId,
    String? firstName,
    String? phoneNumber,
    num? termOfService,
    String? name,
    String? businessCategory,
    String? businessType,
  }) {
    _ownerType = ownerType;
    _businessLicense = businessLicense;
    _ownerPhoneNumber = ownerPhoneNumber;
    _country = country;
    _lastName = lastName;
    _city = city;
    _latitude = latitude;
    _language = language;
    _branch = branch;
    _commercialCertNo = commercialCertNo;
    _bankAccountNumber = bankAccountNumber;
    _email = email;
    _longitude = longitude;
    _status = status;
    _bankCode = bankCode;
    _tillNumber = tillNumber;
    _commissionAccount = commissionAccount;
    _taxNumber = taxNumber;
    _userId = userId;
    _firstName = firstName;
    _phoneNumber = phoneNumber;
    _termOfService = termOfService;
    _name = name;
    _businessCategory = businessCategory;
    _businessType = businessType;
  }

  MerchantInfo.fromJson(dynamic json) {
    _ownerType = json['ownerType'];
    _businessLicense = json['businessLicense'];
    _ownerPhoneNumber = json['ownerPhoneNumber'];
    _country = json['country'];
    _lastName = json['lastName'];
    _city = json['city'];
    _latitude = json['latitude'];
    _language = json['language'];
    _branch = json['branch'];
    _commercialCertNo = json['commercialCertNo'];
    _bankAccountNumber = json['bankAccountNumber'];
    _email = json['email'];
    _longitude = json['longitude'];
    _status = json['Status'];
    _bankCode = json['bankCode'];
    _tillNumber = json['tillNumber'];
    _commissionAccount = json['commissionAccount'];
    _taxNumber = json['taxNumber'];
    _userId = json['userId'];
    _firstName = json['firstName'];
    _phoneNumber = json['phoneNumber'];
    _termOfService = json['termOfService'];
    _name = json['name'];
    _businessCategory = json['businessCategory'];
    _businessType = json['businessType'];
  }

  String? _ownerType;
  String? _businessLicense;
  String? _ownerPhoneNumber;
  String? _country;
  String? _lastName;
  num? _city;
  String? _latitude;
  String? _language;
  String? _branch;
  String? _commercialCertNo;
  String? _bankAccountNumber;
  String? _email;
  String? _longitude;
  String? _status;
  String? _bankCode;
  String? _tillNumber;
  String? _commissionAccount;
  String? _taxNumber;
  num? _userId;
  String? _firstName;
  String? _phoneNumber;
  num? _termOfService;
  String? _name;
  String? _businessCategory;
  String? _businessType;

  MerchantInfo copyWith({
    String? ownerType,
    String? businessLicense,
    String? ownerPhoneNumber,
    String? country,
    String? lastName,
    num? city,
    String? latitude,
    String? language,
    String? branch,
    String? commercialCertNo,
    String? bankAccountNumber,
    String? email,
    String? longitude,
    String? status,
    String? bankCode,
    String? tillNumber,
    String? commissionAccount,
    String? taxNumber,
    num? userId,
    String? firstName,
    String? phoneNumber,
    num? termOfService,
    String? name,
    String? businessCategory,
    String? businessType,
  }) =>
      MerchantInfo(
        ownerType: ownerType ?? _ownerType,
        businessLicense: businessLicense ?? _businessLicense,
        ownerPhoneNumber: ownerPhoneNumber ?? _ownerPhoneNumber,
        country: country ?? _country,
        lastName: lastName ?? _lastName,
        city: city ?? _city,
        latitude: latitude ?? _latitude,
        language: language ?? _language,
        branch: branch ?? _branch,
        commercialCertNo: commercialCertNo ?? _commercialCertNo,
        bankAccountNumber: bankAccountNumber ?? _bankAccountNumber,
        email: email ?? _email,
        longitude: longitude ?? _longitude,
        status: status ?? _status,
        bankCode: bankCode ?? _bankCode,
        tillNumber: tillNumber ?? _tillNumber,
        commissionAccount: commissionAccount ?? _commissionAccount,
        taxNumber: taxNumber ?? _taxNumber,
        userId: userId ?? _userId,
        firstName: firstName ?? _firstName,
        phoneNumber: phoneNumber ?? _phoneNumber,
        termOfService: termOfService ?? _termOfService,
        name: name ?? _name,
        businessCategory: businessCategory ?? _businessCategory,
        businessType: businessType ?? _businessType,
      );

  String? get ownerType => _ownerType;

  String? get businessLicense => _businessLicense;

  String? get ownerPhoneNumber => _ownerPhoneNumber;

  String? get country => _country;

  String? get lastName => _lastName;

  num? get city => _city;

  String? get latitude => _latitude;

  String? get language => _language;

  String? get branch => _branch;

  String? get commercialCertNo => _commercialCertNo;

  String? get bankAccountNumber => _bankAccountNumber;

  String? get email => _email;

  String? get longitude => _longitude;

  String? get status => _status;

  String? get bankCode => _bankCode;

  String? get tillNumber => _tillNumber;

  String? get commissionAccount => _commissionAccount;

  String? get taxNumber => _taxNumber;

  num? get userId => _userId;

  String? get firstName => _firstName;

  String? get phoneNumber => _phoneNumber;

  num? get termOfService => _termOfService;

  String? get name => _name;

  String? get businessCategory => _businessCategory;

  String? get businessType => _businessType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ownerType'] = _ownerType;
    map['businessLicense'] = _businessLicense;
    map['ownerPhoneNumber'] = _ownerPhoneNumber;
    map['country'] = _country;
    map['lastName'] = _lastName;
    map['city'] = _city;
    map['latitude'] = _latitude;
    map['language'] = _language;
    map['branch'] = _branch;
    map['commercialCertNo'] = _commercialCertNo;
    map['bankAccountNumber'] = _bankAccountNumber;
    map['email'] = _email;
    map['longitude'] = _longitude;
    map['Status'] = _status;
    map['bankCode'] = _bankCode;
    map['tillNumber'] = _tillNumber;
    map['commissionAccount'] = _commissionAccount;
    map['taxNumber'] = _taxNumber;
    map['userId'] = _userId;
    map['firstName'] = _firstName;
    map['phoneNumber'] = _phoneNumber;
    map['termOfService'] = _termOfService;
    map['name'] = _name;
    map['businessCategory'] = _businessCategory;
    map['businessType'] = _businessType;
    return map;
  }
}

AgentInfo agentInfoFromJson(String str) => AgentInfo.fromJson(json.decode(str));

String agentInfoToJson(AgentInfo data) => json.encode(data.toJson());

class AgentInfo {
  AgentInfo({
    String? ownerType,
    String? status,
    String? ownerPhoneNumber,
    String? country,
    String? lastName,
    num? city,
    String? latitude,
    String? tillNumber,
    String? language,
    num? userId,
    String? firstName,
    String? phoneNumber,
    num? termOfService,
    String? name,
    String? commercialCertNo,
    String? email,
    String? businessPhoneNumber,
    String? longitude,
  }) {
    _ownerType = ownerType;
    _status = status;
    _ownerPhoneNumber = ownerPhoneNumber;
    _country = country;
    _lastName = lastName;
    _city = city;
    _latitude = latitude;
    _tillNumber = tillNumber;
    _language = language;
    _userId = userId;
    _firstName = firstName;
    _phoneNumber = phoneNumber;
    _termOfService = termOfService;
    _name = name;
    _commercialCertNo = commercialCertNo;
    _email = email;
    _businessPhoneNumber = businessPhoneNumber;
    _longitude = longitude;
  }

  AgentInfo.fromJson(dynamic json) {
    _ownerType = json['ownerType'];
    _status = json['Status'];
    _ownerPhoneNumber = json['ownerPhoneNumber'];
    _country = json['country'];
    _lastName = json['lastName'];
    _city = json['city'];
    _latitude = json['latitude'];
    _tillNumber = json['tillNumber'];
    _language = json['language'];
    _userId = json['userId'];
    _firstName = json['firstName'];
    _phoneNumber = json['phoneNumber'];
    _termOfService = json['termOfService'];
    _name = json['name'];
    _commercialCertNo = json['commercialCertNo'];
    _email = json['email'];
    _businessPhoneNumber = json['businessPhoneNumber'];
    _longitude = json['longitude'];
  }

  String? _ownerType;
  String? _status;
  String? _ownerPhoneNumber;
  String? _country;
  String? _lastName;
  num? _city;
  String? _latitude;
  String? _tillNumber;
  String? _language;
  num? _userId;
  String? _firstName;
  String? _phoneNumber;
  num? _termOfService;
  String? _name;
  String? _commercialCertNo;
  String? _email;
  String? _businessPhoneNumber;
  String? _longitude;

  AgentInfo copyWith({
    String? ownerType,
    String? status,
    String? ownerPhoneNumber,
    String? country,
    String? lastName,
    num? city,
    String? latitude,
    String? tillNumber,
    String? language,
    num? userId,
    String? firstName,
    String? phoneNumber,
    num? termOfService,
    String? name,
    String? commercialCertNo,
    String? email,
    String? businessPhoneNumber,
    String? longitude,
  }) =>
      AgentInfo(
        ownerType: ownerType ?? _ownerType,
        status: status ?? _status,
        ownerPhoneNumber: ownerPhoneNumber ?? _ownerPhoneNumber,
        country: country ?? _country,
        lastName: lastName ?? _lastName,
        city: city ?? _city,
        latitude: latitude ?? _latitude,
        tillNumber: tillNumber ?? _tillNumber,
        language: language ?? _language,
        userId: userId ?? _userId,
        firstName: firstName ?? _firstName,
        phoneNumber: phoneNumber ?? _phoneNumber,
        termOfService: termOfService ?? _termOfService,
        name: name ?? _name,
        commercialCertNo: commercialCertNo ?? _commercialCertNo,
        email: email ?? _email,
        businessPhoneNumber: businessPhoneNumber ?? _businessPhoneNumber,
        longitude: longitude ?? _longitude,
      );

  String? get ownerType => _ownerType;

  String? get status => _status;

  String? get ownerPhoneNumber => _ownerPhoneNumber;

  String? get country => _country;

  String? get lastName => _lastName;

  num? get city => _city;

  String? get latitude => _latitude;

  String? get tillNumber => _tillNumber;

  String? get language => _language;

  num? get userId => _userId;

  String? get firstName => _firstName;

  String? get phoneNumber => _phoneNumber;

  num? get termOfService => _termOfService;

  String? get name => _name;

  String? get commercialCertNo => _commercialCertNo;

  String? get email => _email;

  String? get businessPhoneNumber => _businessPhoneNumber;

  String? get longitude => _longitude;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ownerType'] = _ownerType;
    map['Status'] = _status;
    map['ownerPhoneNumber'] = _ownerPhoneNumber;
    map['country'] = _country;
    map['lastName'] = _lastName;
    map['city'] = _city;
    map['latitude'] = _latitude;
    map['tillNumber'] = _tillNumber;
    map['language'] = _language;
    map['userId'] = _userId;
    map['firstName'] = _firstName;
    map['phoneNumber'] = _phoneNumber;
    map['termOfService'] = _termOfService;
    map['name'] = _name;
    map['commercialCertNo'] = _commercialCertNo;
    map['email'] = _email;
    map['businessPhoneNumber'] = _businessPhoneNumber;
    map['longitude'] = _longitude;
    return map;
  }
}
