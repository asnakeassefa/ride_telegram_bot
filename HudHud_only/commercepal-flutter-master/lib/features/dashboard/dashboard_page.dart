import 'package:commercepal/app/di/injector.dart';
import 'package:commercepal/app/utils/app_colors.dart';
import 'package:commercepal/app/utils/assets.dart';
import 'package:commercepal/core/cart-core/bloc/cart_core_cubit.dart';
import 'package:commercepal/features/cart/presentation/cart_page.dart';
import 'package:commercepal/features/dashboard/bloc/dashboard_state.dart';
import 'package:commercepal/features/user/user_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/cart-core/bloc/cart_core_state.dart';
import '../categories/presentation/dashboard_categories.dart';
import '../home/dashboard_home.dart';
import 'bloc/dashboard_cubit.dart';

class DashboardPage extends StatefulWidget {
  static const routeName = "/dashboard";

  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedTab = 0;
  bool _hasUserSwitchedToBusiness = false;

  final List _dWidgets = [
    const DashboardHomePage(),
    const DashboardCategories(),
    const CartPage(),
    const UserPage()
  ];

  final List _bWidgets = [
    const DashboardCategories(),
    const CartPage(),
    const UserPage()
  ];

  @override
  void initState() {
    // use this to refresh the carts state
    context.read<CartCoreCubit>().getItems();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (ModalRoute.of(context)?.settings.arguments != null) {
      final args = ModalRoute.of(context)?.settings.arguments as Map;
      if (args.containsKey("redirect_to")) {
        if (args['redirect_to'] == 'cart') {
          _selectedTab = _hasUserSwitchedToBusiness ? 1 : 2;
          setState(() {});
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DashboardCubit>()..hasUserSwitchedAccounts(),
      child: BlocConsumer<DashboardCubit, DashboardState>(
        listener: (ctx, state) {
          /// This code block is checking if the current state of the
          /// `DashboardCubit` is an instance of `DashboardUserSwicthedState`. If it
          /// is, it adjusts the `_selectedTab` index to match the new list of
          /// widgets based on whether the user has switched accounts or not. If the
          /// user has switched accounts, the `_selectedTab` index is adjusted to
          /// remove the `DashboardHomePage` widget from the list. If the user has
          /// not switched accounts, the `_selectedTab` index is adjusted to include
          /// the `DashboardHomePage` widget in the list. The `_isUserBusiness`
          /// variable is also updated to reflect the new user account status, and
          /// `setState()` is called to rebuild the widget tree with the updated
          /// state.
          if (state is DashboardUserSwicthedState) {
            // adjust index to match new list
            if (state.switched) {
              if (_selectedTab == 3) _selectedTab = _selectedTab - 1;
            } else {
              if (_selectedTab == 2) _selectedTab = _selectedTab + 1;
            }
            _hasUserSwitchedToBusiness = state.switched;
            setState(() {});
          }
        },
        builder: (ctx, state) {
          return Scaffold(
            body: SafeArea(
              child: state is DashboardUserSwicthedState && state.switched
                  ? _bWidgets[_selectedTab]
                  : _dWidgets[_selectedTab],
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              items: [
                if (!_hasUserSwitchedToBusiness)
                  BottomNavigationBarItem(
                      label: "Home",
                      icon: SvgPicture.asset(
                        Assets.home,
                        color: _selectedTab == 0
                            ? AppColors.colorPrimary
                            : AppColors.secondaryTextColor,
                      )),
                BottomNavigationBarItem(
                    label: "Categories",
                    icon: SvgPicture.asset(
                      Assets.category,
                      color: _selectedTab == (_hasUserSwitchedToBusiness ? 0 : 1)
                          ? AppColors.colorPrimary
                          : AppColors.secondaryTextColor,
                    )),
                BottomNavigationBarItem(
                    label: "Cart",
                    icon: Stack(
                      children: [
                        SvgPicture.asset(
                          Assets.cart,
                          color: _selectedTab == (_hasUserSwitchedToBusiness ? 1 : 2)
                              ? AppColors.colorPrimary
                              : AppColors.secondaryTextColor,
                        ),
                        BlocBuilder<CartCoreCubit, CartCoreState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                                orElse: () => const SizedBox(),
                                cartItems: (cartItems) => Positioned(
                                      top: -1,
                                      right: 0,
                                      child: Container(
                                        padding: const EdgeInsets.all(4),
                                        decoration: const BoxDecoration(
                                            color: AppColors.colorPrimary,
                                            shape: BoxShape.circle),
                                        child: Text(
                                          "${cartItems.map((e) => e.quantity).fold(0, (previousValue, element) => previousValue + element!)}",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 8.sp),
                                        ),
                                      ),
                                    ));
                          },
                        ),
                      ],
                    )),
                BottomNavigationBarItem(
                    label: "User",
                    icon: SvgPicture.asset(
                      Assets.user,
                      color: _selectedTab == (_hasUserSwitchedToBusiness ? 2 : 3)
                          ? AppColors.colorPrimary
                          : AppColors.secondaryTextColor,
                    )),
              ],
              currentIndex: _selectedTab,
              onTap: (int index) {
                setState(() {
                  _selectedTab = index;
                });
              },
              selectedItemColor: AppColors.colorPrimary,
            ),
          );
        },
      ),
    );
  }
}
