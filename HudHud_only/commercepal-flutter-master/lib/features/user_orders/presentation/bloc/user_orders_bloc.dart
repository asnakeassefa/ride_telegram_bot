import 'package:bloc/bloc.dart';
import 'package:commercepal/features/user_orders/presentation/bloc/user_orders_state.dart';
import 'package:injectable/injectable.dart';

import '../../domain/user_orders_repo.dart';

@injectable
class UserOrdersBloc extends Cubit<UserOrdersState> {
  final UserOrderRepo userOrderRepo;

  UserOrdersBloc(this.userOrderRepo) : super(const UserOrdersState.init());

  void fetchOrders() async {
    try {
      emit(const UserOrdersState.loading());
      final orders = await userOrderRepo.fetchUserOrders();
      emit(UserOrdersState.orders(orders));
    } catch (e) {
      emit(UserOrdersState.error(e.toString()));
    }
  }
}
