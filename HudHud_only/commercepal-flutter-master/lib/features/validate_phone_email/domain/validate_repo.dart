abstract class ValidateRepo {
  Future<String> validate(String user, String type);
  Future<String> validateOtp(String user, String type, String otp);
}
