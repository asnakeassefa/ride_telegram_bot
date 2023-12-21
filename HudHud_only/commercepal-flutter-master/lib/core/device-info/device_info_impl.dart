import 'dart:io';

import 'package:android_id/android_id.dart';
import 'package:commercepal/core/device-info/device_info_data.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:fimber/fimber.dart';
import 'package:injectable/injectable.dart';
import 'package:sms_autofill/sms_autofill.dart';

import 'device_info.dart';

@Injectable(as: DeviceInfo)
class DeviceInfoImpl implements DeviceInfo {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  SmsAutoFill smsAutoFill = SmsAutoFill();

  @override
  Future<DeviceInfoData> getDeviceInfo() async {
    try {
      String? deviceId;
      if (Platform.isIOS) {
        IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
        deviceId = iosDeviceInfo.identifierForVendor;
      } else {
        const androidIdPlugin = AndroidId();
        deviceId = await androidIdPlugin.getId();
      }

      return DeviceInfoData(Platform.isIOS ? "IOS" : "ANDROID", deviceId);
    } catch (e) {
      Fimber.e(e.toString());
      rethrow;
    }
  }

  @override
  Future<String?> getAndroidHash() async {
    if (Platform.isAndroid) {
      return smsAutoFill.getAppSignature;
    } else {
      return null;
    }
  }
}
