import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:commercepal/app/app.dart';
import 'package:commercepal/app/utils/app_bloc_observer.dart';
import 'package:commercepal/app/di/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);

  if (Platform.isAndroid) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white, // navigation bar color
      statusBarColor: Colors.white, // status bar color
    ));
  }

  Bloc.observer = AppBlocObserver();
  runApp(const App());
}
