import 'package:cached_network_image/cached_network_image.dart';
import 'package:commercepal/app/di/injector.dart';
import 'package:commercepal/app/utils/string_utils.dart';
import 'package:commercepal/core/widgets/app_button.dart';
import 'package:commercepal/features/customer_loan/presentation/widgets/terms_and_conditions.dart';
import 'package:commercepal/features/dashboard/widgets/home_error_widget.dart';
import 'package:commercepal/features/dashboard/widgets/home_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../app/utils/app_colors.dart';
import '../../../app/utils/dialog_utils.dart';
import '../../../core/customer_loan/data/dto/financial_mark_ups_dto.dart';
import '../../../core/widgets/commercepal_app_bar.dart';
import '../../dashboard/dashboard_page.dart';
import 'bloc/customer_loan_cubit.dart';
import 'bloc/customer_loan_state.dart';

class CustomerLoanPage extends StatelessWidget {
  static const routeName = "/loan_page";

  const CustomerLoanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final map = ModalRoute.of(context)?.settings.arguments as Map;
    final selectedMarkUpItem = map['markUp'] as MarkUpItem;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: buildCommerceAppBar(context, map['name'], null, false),
        body: BlocProvider(
          create: (context) => getIt<CustomerLoanCubit>()
            ..fetchNewPricedProducts(selectedMarkUpItem.id!),
          child: BlocConsumer<CustomerLoanCubit, CustomerLoanState>(
            listener: (ctx, state) {
              if (state is CustomerLoanStateDisplayError) {
                displaySnack(ctx, state.msg);
              }

              if (state is CustomerLoanStateSuccess) {
                displaySnack(context, state.msg);

                Navigator.of(context).pushNamedAndRemoveUntil(
                    DashboardPage.routeName, (Route<dynamic> route) => false);
              }
            },
            builder: (ctx, state) {
              return state.maybeWhen(
                  orElse: () => const HomeLoadingWidget(),
                  loading: (msg) => HomeLoadingWidget(
                        message: msg,
                      ),
                  error: (msg) => HomeErrorWidget(error: msg),
                  products: (products, priceSummary) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              "Products prices after mark up",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                      color: AppColors.secondaryTextColor),
                            ),
                          ),
                          Expanded(
                            child: ListView.separated(
                                separatorBuilder: (_, __) => const Divider(),
                                itemCount: products.length,
                                itemBuilder: (ctx, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFC4C4C4)
                                                .withOpacity(0.4),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft: Radius.circular(8),
                                                    bottomLeft:
                                                        Radius.circular(8)),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft: Radius.circular(8),
                                                    bottomLeft:
                                                        Radius.circular(8)),
                                            child: CachedNetworkImage(
                                              width: 60,
                                              height: 60,
                                              fit: BoxFit.cover,
                                              placeholder: (_, __) => Container(
                                                color: Colors.grey,
                                              ),
                                              errorWidget: (_, __, ___) =>
                                                  Container(
                                                color: Colors.grey,
                                              ),
                                              imageUrl:
                                                  "${products[index].cartItem.image}",
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${products[index].cartItem.name}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium
                                                  ?.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 16.sp),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Old price: ${products[index].cartItem.price.formatCurrency("")}",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.copyWith(
                                                              fontSize: 12),
                                                    ),
                                                    Text(
                                                        "After mark up:  ${products[index].extraData['new_price'].toString().formatCurrency("")}",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyMedium
                                                            ?.copyWith(
                                                                fontSize: 12))
                                                  ],
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                const Text("x "),
                                                Text(
                                                    "${products[index].cartItem.quantity} item(s)",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium
                                                        ?.copyWith(
                                                            fontSize: 12))
                                              ],
                                            )
                                          ],
                                        ),
                                        const Spacer(),
                                        Column(
                                          children: [
                                            Text(
                                              (double.tryParse(products[index]
                                                          .cartItem
                                                          .quantity
                                                          .toString())! *
                                                      double.tryParse(
                                                          products[index]
                                                              .cartItem
                                                              .price!)!)
                                                  .formatCurrency(""),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    fontSize: 13,
                                                    color: AppColors
                                                        .secondaryTextColor,
                                                  ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              products[index]
                                                  .extraData['new_total']
                                                  .toString()
                                                  .formatCurrency(""),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      color: AppColors
                                                          .colorPrimaryDark,
                                                      fontWeight:
                                                          FontWeight.w500),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                }),
                          ),
                          Container(
                            color: AppColors.priceBg,
                            child: SafeArea(
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Summary",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    ),
                                    const Divider(),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        Text("Before",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith()),
                                        const Spacer(),
                                        Text(priceSummary.before,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold))
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    Row(
                                      children: [
                                        Text("After",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith()),
                                        const Spacer(),
                                        Text(priceSummary.after,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                    color: AppColors
                                                        .colorPrimaryDark,
                                                    fontWeight:
                                                        FontWeight.bold))
                                      ],
                                    ),
                                    const Divider(),
                                    TermsAndConditionsWidget(
                                      tcChecked: (value) {
                                        ctx
                                            .read<CustomerLoanCubit>()
                                            .updateTermsAndConditions(value);
                                      },
                                    ),
                                    AppButtonWidget(
                                        text: "Place Order",
                                        onClick: () {
                                          ctx
                                              .read<CustomerLoanCubit>()
                                              .submitOrder(
                                                  selectedMarkUpItem.id);
                                        }),

                                    // ProductPriceWidget(
                                    //   padding: 4,
                                    //   subTitle:
                                    //       "Before mark up: ${products.first.cartItem.currency} ${products.map((e) => e.cartItem.quantity! * double.parse(e.cartItem.price!)).fold(0, (previousValue, element) => previousValue + element.toInt()) + deliveryFee}",
                                    //   title: "New price: ",
                                    //   totalPrice:
                                    //       "${products.first.cartItem.currency} ${products.map((e) => e.cartItem.quantity! * double.parse(e.extraData['new_price'].toString()!)).fold(0, (previousValue, element) => previousValue + element.toInt()) + deliveryFee}",
                                    //   buttonText: "Place Order",
                                    //   onClick: () {
                                    //     ctx
                                    //         .read<CustomerLoanCubit>()
                                    //         .submitOrder(selectedMarkUpItem.id);
                                    //   },
                                    // ),
                                    // Text(
                                    //   "Total include delivery fee of ${products.first.cartItem.currency} $deliveryFee",
                                    //   style: Theme.of(context)
                                    //       .textTheme
                                    //       .bodyMedium
                                    //       ?.copyWith(fontSize: 13.sp),
                                    // ),
                                    const SizedBox(
                                      height: 10,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ));
            },
          ),
        ));
  }
}

