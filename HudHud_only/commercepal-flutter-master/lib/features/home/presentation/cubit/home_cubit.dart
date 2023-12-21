import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/home_repostory.dart';
import 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeRepository homeRepository;

  HomeCubit({required this.homeRepository}) : super(const HomeState.init());

  void fetchHomeSettings() async {
    try {
      emit(const HomeState.loading());
      final response = await homeRepository.fetchHomeSchemas();
      if (response?.isEmpty == true) {
        throw 'No schemas defined';
      }

      final homeSchema = response?.where((element) => element.target == "home");
      if (homeSchema?.isNotEmpty == true) {
        emit(HomeState.schemas(homeSchema!.first));
      } else {
        throw 'Home page schema not found';
      }
    } catch (e) {
      emit(HomeState.error(e.toString()));
    }
  }
}
