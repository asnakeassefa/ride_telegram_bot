import 'dart:io';

import 'package:commercepal/core/core-phonenumber/phone_number_utils.dart';
import 'package:email_validator/email_validator.dart';
import 'package:fimber/fimber.dart';
import 'package:injectable/injectable.dart';
import 'package:phone_number/phone_number.dart';

@Injectable(as: PhoneNumberUtils)
class PhoneNumberUtilsImpl implements PhoneNumberUtils {
  Future<PhoneNumber?> customPhoneNumberParser(String phoneNumber) async {
    try {
      if (Platform.isIOS &&
          (phoneNumber.startsWith('+225') || phoneNumber.startsWith('225'))) {
        var civNumber = phoneNumber.startsWith('+225')
            ? phoneNumber.substring(4)
            : phoneNumber.startsWith('225')
                ? phoneNumber.substring(3).trim()
                : phoneNumber;
        return PhoneNumber(
            countryCode: 'CI',
            e164: phoneNumber,
            national: '',
            type: PhoneNumberType.MOBILE,
            international: '',
            nationalNumber: civNumber,
            regionCode: '');
      }
      return await PhoneNumberUtil().parse(phoneNumber);
    } catch (e) {
      Fimber.e('Unable to parse phone number');
    }
    return null;
  }

  /// validates phone number
  /// For CI it'll fail using the lib, watch the issue here https://github.com/marmelroy/PhoneNumberKit/pull/481
  @override
  Future<bool> validateMobileApi(String phone, String countryCode) async {
    // try parsing the phone number
    try {
      if (Platform.isIOS && countryCode == 'CI') {
        return validateMobileCI(phone);
      } else {
        return await PhoneNumberUtil().validate(phone, regionCode: countryCode);
      }
    } catch (e) {
      Fimber.e(e.toString());
      return false;
    }
  }

  bool validateMobileCI(String value) {
    var regExp = RegExp(r'(^(?:[+0]9)?[0-9]{10}$)');
    return regExp.hasMatch(value);
  }

  @override
  Future<String?> passPhoneToIso(String phoneNumber, String countryCode) async {
    try {
      final parsedPhone =
          await PhoneNumberUtil().parse(phoneNumber, regionCode: countryCode);
      return parsedPhone.e164.replaceFirst("+", "");
    } catch (e) {
      Fimber.e('Error parsing phone number : ${e}');
    }
    return null;
  }

  @override
  Future<bool?> validateEmail(String email) async {
    return EmailValidator.validate(email);
  }
}
