import 'package:commercepal/app/di/injector.dart';
import 'package:commercepal/app/utils/dialog_utils.dart';
import 'package:commercepal/core/session/presentation/session_bloc.dart';
import 'package:commercepal/features/dashboard/bloc/dashboard_cubit.dart';
import 'package:commercepal/features/dashboard/widgets/home_loading_widget.dart';
import 'package:commercepal/features/user/presentation/bloc/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../dashboard/bloc/dashboard_state.dart';
import 'presentation/bloc/user_cubit.dart';
import 'presentation/presentation/user_data_widget.dart';
import 'presentation/presentation/user_landing_widget.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UserCubit>()..getUser(),
      child: BlocConsumer<UserCubit, UserState>(
        listener: (ctx, state) {},
        builder: (ctx, state) {
          return state.maybeWhen(
              orElse: () => const HomeLoadingWidget(),
              user: (user) => UserDataWidget(
                    userModel: user,
                    onRefresh: () {
                      ctx.read<UserCubit>().getUser();
                    },
                  ),
              userNotLoggedIn: () => const UserLandingWidget());
        },
      ),
    );
  }
}
