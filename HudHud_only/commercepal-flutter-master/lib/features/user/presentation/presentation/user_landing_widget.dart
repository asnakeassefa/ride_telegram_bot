import 'package:commercepal/features/user/presentation/bloc/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/app_button.dart';
import '../../../login/presentation/login_page.dart';

class UserLandingWidget extends StatelessWidget {
  const UserLandingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.account_circle_outlined,
            size: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Login to access your account details and orders",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: AppButtonWidget(
              onClick: () async {
                await Navigator.pushNamed(context, LoginPage.routeName);
                if (!context.mounted) return;
                context.read<UserCubit>().getUser();
              },
              text: "Login",
            ),
          )
        ],
      ),
    );
  }
}
