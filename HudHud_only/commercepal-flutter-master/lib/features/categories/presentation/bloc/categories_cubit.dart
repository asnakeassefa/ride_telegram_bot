import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../repository/categories_repo.dart';
import 'categories_state.dart';

@injectable
class CategoriesCubit extends Cubit<CategoriesState> {
  final CategoriesRepo categoriesRepo;

  CategoriesCubit({required this.categoriesRepo})
      : super(const CategoriesState.init());

  void fetchParentCategories() async {
    try {
      emit(const CategoriesState.loading());
      final pCategories = await categoriesRepo.getParentCategories();
      emit(CategoriesState.parentCategories(pCategories));
    } catch (e) {
      emit(CategoriesState.error(e.toString()));
    }
  }

  void fetchCategories(num? parentCatId, String? pName) async {
    try {
      emit(const CategoriesState.loading());
      final categories = await categoriesRepo.fetchCategories(parentCatId!);
      emit(CategoriesState.categories(categories, pName!));
    } catch (e) {
      emit(CategoriesState.error(e.toString()));
    }
  }
}
