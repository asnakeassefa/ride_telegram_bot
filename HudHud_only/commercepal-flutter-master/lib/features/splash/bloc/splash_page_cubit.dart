import 'package:bloc/bloc.dart';
import 'package:commercepal/features/splash/bloc/splash_page_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class SplashPageCubit extends Cubit<SplashPageState> {
  SplashPageCubit() : super(const SplashPageState.init());

  void redirectToDashboard() async {
    await Future.delayed(const Duration(seconds: 5));
    emit(const SplashPageState.redirectToDashboard());
  }
}
