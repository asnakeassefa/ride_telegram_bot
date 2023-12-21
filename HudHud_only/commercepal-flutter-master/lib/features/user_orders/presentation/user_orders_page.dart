import 'package:commercepal/app/di/injector.dart';
import 'package:commercepal/app/utils/app_colors.dart';
import 'package:commercepal/core/widgets/commercepal_app_bar.dart';
import 'package:commercepal/features/dashboard/widgets/home_error_widget.dart';
import 'package:commercepal/features/dashboard/widgets/home_loading_widget.dart';
import 'package:commercepal/features/order_tracking/presentation/order_tracking_page.dart';
import 'package:commercepal/features/user_orders/data/models/user_orders_dto.dart';
import 'package:commercepal/features/user_orders/presentation/bloc/user_orders_bloc.dart';
import 'package:commercepal/features/user_orders/presentation/bloc/user_orders_state.dart';
import 'package:commercepal/features/user_orders/presentation/widgets/user_order_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserOrdersPage extends StatelessWidget {
  static const routeName = "/user_orders";

  const UserOrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildCommerceAppBar(context, "My Orders", null, false),
      body: BlocProvider(
        create: (context) => getIt<UserOrdersBloc>()..fetchOrders(),
        child: BlocBuilder<UserOrdersBloc, UserOrdersState>(
          builder: (ctx, state) {
            return state.maybeWhen(
                orElse: () => const HomeLoadingWidget(),
                error: (msg) => HomeErrorWidget(error: msg),
                orders: (orders) {
                  return ListView.builder(
                      itemCount: orders.length,
                      itemBuilder: (ctx, index) {
                        final order = orders[index];
                        return InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, OrderTrackingPage.routeName,
                                  arguments: {
                                    "order_id": orders[index].orderId,
                                    "order_ref": orders[index].orderRef
                                  });
                            },
                            child: UserOrderItemWidget(order: order));
                      });
                });
          },
        ),
      ),
    );
  }
}
