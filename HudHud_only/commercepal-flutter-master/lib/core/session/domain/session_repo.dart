import '../data/session_management_dto.dart';

abstract class SessionRepo {
  Future<SessionManagementData?> initSession();

  Future<bool> shouldShowForceUpdate();
  Future<String> saveAndroidHash(String hash);
  Future<bool> isUserABusiness();
  Future<void> toggleUserAccountUserBusiness();
  Future<bool> hasUserSwitchedToBusiness();
}
