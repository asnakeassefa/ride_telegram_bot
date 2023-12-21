import 'package:commercepal/app/utils/app_colors.dart';
import 'package:commercepal/core/cart-core/bloc/cart_core_cubit.dart';
import 'package:commercepal/core/cart-core/bloc/cart_core_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../app/utils/assets.dart';
import '../../features/dashboard/dashboard_page.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCoreCubit, CartCoreState>(
      listener: (context, state) {},
      builder: (context, state) {
        return InkWell(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context, DashboardPage.routeName, (route) => false,
                arguments: {"redirect_to": "cart"});
          },
          child: Center(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 14.0, top: 8),
                  child: SvgPicture.asset(
                    Assets.cart,
                    width: 30,
                    height: 30,
                  ),
                ),
                state.maybeWhen(
                    orElse: () => const SizedBox(),
                    cartItems: (cartItems) {
                      if (cartItems.isEmpty) {
                        return const SizedBox();
                      }
                      return Positioned(
                        right: 8,
                        top: 0,
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: const BoxDecoration(
                              color: AppColors.colorPrimary,
                              shape: BoxShape.circle),
                          child: Text(
                            "${cartItems.map((e) => e.quantity).fold(0, (previousValue, element) => previousValue + element!)}",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        );
      },
    );
  }
}
