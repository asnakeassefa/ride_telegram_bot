import '../../../core/models/auth_model.dart';

abstract class LoginRepository {
  Future<AuthModel> login(String emailOrPhone, String pass);
  Future<bool> isUserLoggedIn();
}
