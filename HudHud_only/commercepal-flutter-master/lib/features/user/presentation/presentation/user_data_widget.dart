import 'package:commercepal/app/utils/app_colors.dart';
import 'package:commercepal/app/utils/dialog_utils.dart';
import 'package:commercepal/features/addresses/presentation/addresses_page.dart';
import 'package:commercepal/features/change_password/presentation/change_password_page.dart';
import 'package:commercepal/features/dashboard/bloc/dashboard_state.dart';
import 'package:commercepal/features/dashboard/dashboard_page.dart';
import 'package:commercepal/features/user/presentation/bloc/user_cubit.dart';
import 'package:commercepal/features/user/presentation/bloc/user_state.dart';
import 'package:commercepal/features/user/presentation/presentation/widgets/prompt_widget.dart';
import 'package:commercepal/features/validate_phone_email/presentation/validate_phone_email_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/di/injector.dart';
import '../../../../core/models/user_model.dart';
import '../../../dashboard/bloc/dashboard_cubit.dart';
import '../../../special_order/presentantion/list_special_orders_page.dart';
import '../../../user_orders/presentation/user_orders_page.dart';
import 'user_menu_item.dart';
import 'widgets/personal_business_acc_widegt.dart';

class UserDataWidget extends StatelessWidget {
  final UserModel userModel;
  final Function onRefresh;

  const UserDataWidget(
      {Key? key, required this.userModel, required this.onRefresh})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView(
        children: [
          InkWell(
            onTap: () {
              context.read<UserCubit>().logOutUser();
              // update dashboard bottom nav bar
              context.read<DashboardCubit>().checkIfUserIsABusiness();
            },
            child: Text(
              "Log Out",
              textAlign: TextAlign.right,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: AppColors.colorPrimary, fontSize: 14.sp),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(30),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.colorPrimary),
            child: Text(
              "${userModel.details?.firstName?[0]}${userModel.details?.lastName?[0]}",
              style: TextStyle(color: Colors.white, fontSize: 30.sp),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "${userModel.details?.firstName} ${userModel.details?.lastName}",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          // provider for toggling visibility of switch action
          BlocProvider(
            create: (context) =>
                getIt<DashboardCubit>()..checkIfUserIsABusiness(),
            child: BlocBuilder<DashboardCubit, DashboardState>(
              builder: (ctx, state) {
                return state is DashboardBusinessState && state.isBusiness
                    ? const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                        child: Column(
                          children: [
                            PersonalBusinessAccWidget(),
                          ],
                        ),
                      )
                    : const SizedBox();
              },
            ),
          ),

          const SizedBox(
            height: 15,
          ),
          _buildPromptWidgets(context),
          const SizedBox(
            height: 20,
          ),
          UserMenuItem(
            icon: Icons.production_quantity_limits_outlined,
            title: "Special Orders",
            onClick: () {
              Navigator.pushNamed(context, ListSpecialOrdersPage.routeName);
            },
          ),
          const Divider(),
          UserMenuItem(
            icon: Icons.list_alt_outlined,
            title: "My Orders",
            onClick: () {
              Navigator.pushNamed(context, UserOrdersPage.routeName);
            },
          ),
          const Divider(),
          UserMenuItem(
            icon: Icons.maps_home_work_outlined,
            title: "Addresses",
            onClick: () {
              Navigator.pushNamed(context, AddressesPage.routeName);
            },
          ),
          const Divider(),
          UserMenuItem(
            icon: Icons.password_outlined,
            title: "Change Password",
            onClick: () {
              Navigator.pushNamed(context, ChangePasswordPage.routeName)
                  .then((value) {
                onRefresh.call();
              });
            },
          ),
          const Divider(),
          BlocProvider(
            create: (context) => getIt<UserCubit>(),
            child: BlocConsumer<UserCubit, UserState>(
              listener: (ctx, state) {
                if (state is UserStateError) {
                  displaySnack(ctx, state.error);
                }
              },
              builder: (ctx, state) {
                return UserMenuItem(
                  icon: Icons.edit_document,
                  title: "Privacy Policy",
                  onClick: () {
                    ctx.read<UserCubit>().openPrivatePolicy();
                  },
                );
              },
            ),
          ),
          const Divider(),
          UserMenuItem(
            icon: Icons.delete,
            title: "Delete your account",
            onClick: () {
              displaySnackWithAction(
                  context, "Your account will deleted", "Continue", () {
                displaySnack(context, "Account deleted successfully");
                context.read<UserCubit>().logOutUser();

                Navigator.popAndPushNamed(context, DashboardPage.routeName);
              });
            },
          ),
          const Divider(),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text('Personal Details',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: AppColors.secondaryTextColor)),
                const Spacer(),
                // Text(
                //   'Edit',
                //   style: Theme.of(context)
                //       .textTheme
                //       .titleMedium
                //       ?.copyWith(color: AppColors.colorPrimary),
                // )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "${userModel.details?.firstName} ${userModel.details?.lastName}",
                "${userModel.details?.email}",
                "${userModel.details?.phoneNumber}",
                "${userModel.details?.country}",
                "${userModel.details?.city}",
              ]
                  .map((e) => Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          e,
                          style:
                              TextStyle(color: Colors.black, fontSize: 16.sp),
                        ),
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }

  _buildPromptWidgets(BuildContext context) {
    return Column(
      children: [
        if (userModel.authStatus?.isEmailValidated == 0)
          const SizedBox(
            height: 10,
          ),
        if (userModel.authStatus?.isEmailValidated == 0)
          PromptWidget(
            text: "Validate your email",
            onClick: () {
              Navigator.pushNamed(context, ValidatePhoneEmailPage.routeName,
                      arguments: {"email": userModel.details?.email ?? ""})
                  .then((value) {
                onRefresh.call();
              });
            },
          ),
        if (userModel.authStatus?.isPhoneValidated == 0)
          const SizedBox(
            height: 10,
          ),
        if (userModel.authStatus?.isPhoneValidated == 0)
          PromptWidget(
            text: "Validate your phone number",
            onClick: () {
              Navigator.pushNamed(context, ValidatePhoneEmailPage.routeName,
                  arguments: {
                    "phoneNumber": userModel.details?.phoneNumber ?? ""
                  }).then((value) {
                onRefresh.call();
              });
            },
          ),
      ],
    );
  }
}
