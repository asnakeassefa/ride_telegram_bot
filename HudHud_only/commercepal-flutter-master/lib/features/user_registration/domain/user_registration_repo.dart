abstract class UserRegistrationRepo {
  Future<bool> userExists(String emailOrPhone);
  Future<String> registerUser(
    String fName,
    String sName,
    String phoneNumber,
    String country,
    String city,
    String? email,
  );
}
