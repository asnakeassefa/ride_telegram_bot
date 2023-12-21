abstract class PhoneNumberUtils {
  Future<bool> validateMobileApi(String phoneNumber, String countryCode);
  Future<String?> passPhoneToIso(String phoneNumber, String countryCode);
  Future<bool?> validateEmail(String email);
}
