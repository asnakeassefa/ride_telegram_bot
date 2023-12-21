import 'package:cached_network_image/cached_network_image.dart';
import 'package:commercepal/app/app.dart';
import 'package:commercepal/app/di/injector.dart';
import 'package:commercepal/core/widgets/app_button.dart';
import 'package:commercepal/features/dashboard/widgets/home_error_widget.dart';
import 'package:commercepal/features/dashboard/widgets/home_loading_widget.dart';
import 'package:commercepal/features/special_order/presentantion/bloc/special_order_cubit.dart';
import 'package:commercepal/features/special_order/presentantion/bloc/special_order_state.dart';
import 'package:commercepal/features/special_order/presentantion/special_order_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListSpecialOrdersPage extends StatelessWidget {
  static const routeName = "/list_special_orders";

  const ListSpecialOrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Special Orders"),
        centerTitle: false,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, SpecialOrderPage.routeName);
              },
              child: Text("Add"))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: BlocProvider(
          create: (context) => getIt<SpecialOrderCubit>()..fetchSpecialOrders(),
          child: BlocConsumer<SpecialOrderCubit, SpecialOrderState>(
            listener: (ctx, state) {},
            builder: (ctx, state) {
              return state.maybeWhen(
                  data: (orders) => ListView.separated(
                        itemCount: orders.length,
                        separatorBuilder: (_, __) => const SizedBox(
                          height: 14,
                        ),
                        itemBuilder: (BuildContext context, int index) =>
                            Container(
                          color: Colors.white,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  if (orders[index].imageOne != null)
                                    CachedNetworkImage(
                                      imageUrl: orders[index].imageOne!,
                                      height: 50,
                                      width: 50,
                                      fit: BoxFit.fill,
                                      placeholder: (_, __) => Container(
                                        color: Colors.grey,
                                      ),
                                      errorWidget: (_, __, ___) => Container(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  if (orders[index].imageOne != null)
                                    const SizedBox(
                                      width: 10,
                                    ),
                                  Text(
                                    orders[index].productName!,
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                orders[index].description!,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                orders[index].linkToProduct!,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text("Status: "),
                                  Text(orders[index].status.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith())
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                  error: (msg) => HomeErrorWidget(error: msg),
                  loading: () => const HomeLoadingWidget(),
                  orElse: () => const HomeLoadingWidget());
            },
          ),
        ),
      ),
    );
  }
}
