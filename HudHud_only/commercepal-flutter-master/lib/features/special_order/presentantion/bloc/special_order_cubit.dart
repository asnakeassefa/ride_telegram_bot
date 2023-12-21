import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:commercepal/features/special_order/data/Special_orders_dto.dart';
import 'package:commercepal/features/special_order/presentantion/bloc/special_order_state.dart';
import 'package:injectable/injectable.dart';

import '../../domain/special_order_repo.dart';

@injectable
class SpecialOrderCubit extends Cubit<SpecialOrderState> {
  final SpecialOrderRepo specialOrderRepo;

  SpecialOrderCubit(this.specialOrderRepo)
      : super(const SpecialOrderState.init());

  void specialOrder(File? image, Map map) async {
    try {
      emit(const SpecialOrderState.loading());
      final response = await specialOrderRepo.specialOrder(image, map);
      emit(SpecialOrderState.success(response));
    } catch (e) {
      emit(SpecialOrderState.error(e.toString()));
    }
  }

  void fetchSpecialOrders() async {
    try {
      emit(const SpecialOrderState.loading());
      final response = await specialOrderRepo.getSpecialOrders();
      emit(SpecialOrderState.data(response));
    } catch (e) {
      emit(SpecialOrderState.error(e.toString()));
    }
  }
}
