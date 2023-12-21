

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:commercepal/core/session/presentation/session_state.dart';
import 'package:fimber/fimber.dart';
import 'package:injectable/injectable.dart';

import '../../device-info/device_info.dart';
import '../domain/session_repo.dart';

@injectable
class SessionCubit extends Cubit<SessionState> {
  final SessionRepo sessionRepo;
  final DeviceInfo deviceInfo;

  SessionCubit(this.sessionRepo, this.deviceInfo)
      : super(const SessionState.init());

  void initSession() async {
    // try {
    //   emit(const SessionState.loading());
    //   final response = await sessionRepo.initSession();
    //   if (response?.iosUpdate == "1" && response?.iosUpdateType == "FORCE") {
    //     // TODO: view should handle redirect
    //     redirectUserToForcedUpdate();
    //   } else if (response?.androidUpdate == "1" &&
    //       response?.androidUpdateType == "FORCE") {
    //     // TODO: view should handle redirect
    //     redirectUserToForcedUpdate();
    //   }
    // } catch (e) {
    //   emit(SessionState.error(e.toString()));
    // }
  }

  void saveHash() async {
    try {
      final hash = await deviceInfo.getAndroidHash();
      if (hash != null) {
        final response = await sessionRepo.saveAndroidHash(hash);
        Fimber.i(response);
      } else {
        throw 'Hash not generated';
      }
    } catch (e) {
      Fimber.e("Error saving hash ");
    }
  }
}
