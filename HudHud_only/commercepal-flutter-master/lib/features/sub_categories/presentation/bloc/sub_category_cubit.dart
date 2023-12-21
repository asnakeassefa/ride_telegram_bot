import 'package:bloc/bloc.dart';
import 'package:commercepal/features/sub_categories/presentation/bloc/sub_category_state.dart';
import 'package:injectable/injectable.dart';

import '../../domain/sub_category_repository.dart';

@injectable
class SubCategoryCubit extends Cubit<SubCategoryState> {
  final SubCategoryRepository subCategoryRepository;

  SubCategoryCubit({required this.subCategoryRepository})
      : super(const SubCategoryState.init());

  void fetchSubCategories(num? categoryId) async {
    try {
      emit(const SubCategoryState.loading());
      final subCats =
          await subCategoryRepository.fetchSubCategories(categoryId);

      emit(SubCategoryState.subCategories(subCats));
    } catch (e) {
      emit(SubCategoryState.error(e.toString()));
    }
  }
}
