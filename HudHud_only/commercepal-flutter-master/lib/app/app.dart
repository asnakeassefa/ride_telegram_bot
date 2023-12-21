import 'package:commercepal/app/di/injector.dart';
import 'package:commercepal/app/utils/routes.dart';
import 'package:commercepal/app/utils/app_theme.dart';
import 'package:commercepal/core/cart-core/bloc/cart_core_cubit.dart';
import 'package:commercepal/features/dashboard/bloc/dashboard_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/session/presentation/session_bloc.dart';
import '../features/splash/splash_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        builder: (context, child) => MultiBlocProvider(
              providers: [
                BlocProvider(create: (_) => getIt<CartCoreCubit>()),
                BlocProvider(create: (_) => getIt<SessionCubit>())
              ],
              child: MaterialApp(
                theme: AppTheme.themeData(),
                debugShowCheckedModeBanner: false,
                localizationsDelegates: const [],
                routes: routes,
                navigatorKey: navigationKey,
                initialRoute: SplashPage.routeName,
                home: child,
              ),
            ));
  }
}
