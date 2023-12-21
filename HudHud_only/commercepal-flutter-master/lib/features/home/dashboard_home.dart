import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app/di/injector.dart';
import 'domain/schema_settings_model.dart';
import 'presentation/cubit/home_cubit.dart';
import '../dashboard/widgets/home_error_widget.dart';
import '../dashboard/widgets/home_loading_widget.dart';
import 'presentation/cubit/home_state.dart';
import 'presentation/widgets/home_data_widget.dart';

class DashboardHomePage extends StatefulWidget {
  const DashboardHomePage({Key? key}) : super(key: key);

  @override
  State<DashboardHomePage> createState() => _DashboardHomePageState();
}

class _DashboardHomePageState extends State<DashboardHomePage>  {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>()..fetchHomeSettings(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.when(
              init: () => const HomeLoadingWidget(),
              loading: () => const HomeLoadingWidget(),
              schemas: (SchemaSettingsModel schema) =>
                  HomePageDataWidget(schema: schema),
              error: (String error) => HomeErrorWidget(
                    error: error,
                  ));
        },
      ),
    );
  }
}
