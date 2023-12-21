import 'package:cached_network_image/cached_network_image.dart';
import 'package:commercepal/app/app.dart';
import 'package:commercepal/app/di/injector.dart';
import 'package:commercepal/app/utils/app_colors.dart';
import 'package:commercepal/app/utils/assets.dart';
import 'package:commercepal/features/dashboard/widgets/home_error_widget.dart';
import 'package:commercepal/features/dashboard/widgets/home_loading_widget.dart';
import 'package:commercepal/features/order_tracking/presentation/bloc/order_tracking_cubit.dart';
import 'package:commercepal/features/order_tracking/presentation/bloc/order_tracking_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderTrackingPage extends StatelessWidget {
  static const routeName = "/order_tracking_page";

  const OrderTrackingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map args = ModalRoute.of(context)?.settings.arguments as Map;
    final orderId = args['order_id'];
    final orderRef = args['order_ref'];

    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: BlocProvider(
          create: (context) =>
              getIt<OrderTrackingCubit>()..fetchTrackingData(orderId),
          child: BlocConsumer<OrderTrackingCubit, OrderTrackingState>(
            listener: (ctx, state) {},
            builder: (ctx, state) {
              return state.maybeWhen(
                  orElse: () => const HomeLoadingWidget(),
                  error: (String error) => HomeErrorWidget(error: error),
                  trackingData: (data) {
                    return SafeArea(
                      child: ListView(
                        children: [
                          _buildTitle(context, "Order"),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: "Order ref: ",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: AppColors.secondaryTextColor),
                            ),
                            TextSpan(
                              text: orderRef,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            )
                          ])),
                          const SizedBox(
                            height: 5,
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: "Payment: ",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: AppColors.secondaryTextColor),
                            ),
                            TextSpan(
                              text: "${data.paymentMethod}",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            )
                          ])),
                          const Divider(),
                          _buildTitle(context, "Product"),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(6)),
                                    border: Border.all(
                                        color: AppColors.secondaryTextColor
                                            .withOpacity(0.5),
                                        width: 0.5)),
                                child: CachedNetworkImage(
                                  fit: BoxFit.fill,
                                  height: 80,
                                  width: 80,
                                  placeholder: (_, __) => Container(
                                    color: AppColors.bg1,
                                  ),
                                  errorWidget: (_, __, ___) =>
                                      Image.asset(Assets.appIcon),
                                  imageUrl:
                                      "${data.orderItems?.first.product?.webImage}",
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${data.orderItems?.first.product?.productName}",
                                      style:
                                          Theme.of(context).textTheme.titleMedium,
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                        "${data.orderItems?.first.product?.shortDescription}"),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                        text: "Total: ",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.normal,
                                                color:
                                                    AppColors.secondaryTextColor),
                                      ),
                                      TextSpan(
                                        text: "ETB ${data.totalPrice}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(),
                                      )
                                    ])),
                                  ],
                                ),
                              )
                            ],
                          ),
                          const Divider(),
                          _buildTitle(context, "Shipment Status"),
                          Text(
                            "${data.orderItems?.first.shipmentStatusWord}",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    fontSize: 14.sp,
                                    color: AppColors.colorPrimary),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: data
                                  .orderItems?.first.shipmentStatusList?.length,
                              itemBuilder: (ctx, index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(2),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: AppColors.colorPrimary,
                                                  width: 1)),
                                          child: Container(
                                            height: 12,
                                            width: 12,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: AppColors.colorPrimary),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${data.orderItems?.first.shipmentStatusList![index].shipmentStatusWord}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleSmall
                                                    ?.copyWith(
                                                        fontSize: 14.sp,
                                                        fontWeight:
                                                            FontWeight.normal),
                                              ),
                                              const SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                "${data.orderItems?.first.shipmentStatusList![index].shipStatusDate}",
                                                style:
                                                    TextStyle(fontSize: 12.sp),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ))
                        ],
                      ),
                    );
                  });
            },
          ),
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontSize: 24.sp, color: AppColors.secondaryTextColor),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
