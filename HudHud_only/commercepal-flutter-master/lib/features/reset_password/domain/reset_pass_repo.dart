abstract class ResetPassRepo {
  Future<String> requestPassReset(String emailOrPhone);

  Future<String> confirmPassReset(String emailOrPhone, String code);

  Future<String> setNewPassword(String newPass);
}
