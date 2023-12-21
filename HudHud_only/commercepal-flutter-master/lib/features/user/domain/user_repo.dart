import '../../../core/models/user_model.dart';

abstract class UserRepo {
    Future<UserModel?> fetchUser();
    Future<String> logOutUser();
}
