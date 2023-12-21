abstract class SetPasswordRepo {
  Future<String> resetPassword(String password);
  Future<bool> temporaryLogin(String emailOrPhone, String code);
  Future<String> confirmPassResetCode(String emailOrPhone, String code);
}
