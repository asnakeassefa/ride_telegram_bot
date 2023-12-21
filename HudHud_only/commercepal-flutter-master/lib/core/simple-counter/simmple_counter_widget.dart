import 'package:commercepal/app/di/injector.dart';
import 'package:commercepal/app/utils/app_colors.dart';
import 'package:commercepal/core/simple-counter/bloc/simple_counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimpleCounterWidget extends StatelessWidget {
  final int seconds;

  const SimpleCounterWidget({Key? key, required this.seconds})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SimpleCounterCubit()..startCount(seconds),
      child: BlocBuilder<SimpleCounterCubit, int>(
        builder: (context, state) {
          if (state > 0) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "$state second(s)",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 13.sp, color: AppColors.colorPrimaryDark),
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
