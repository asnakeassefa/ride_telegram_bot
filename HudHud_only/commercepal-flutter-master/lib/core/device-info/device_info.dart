import 'device_info_data.dart';

abstract class DeviceInfo {
  Future<DeviceInfoData> getDeviceInfo();
  Future<String?> getAndroidHash();
}
