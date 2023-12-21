abstract class ChangePasswordRepo {
  Future<String> changePassword(String oldPassword, String newPassword);
}
