import 'package:commercepal/app/data/network/end_points.dart';
import 'package:commercepal/app/data/network/interceptors/auth_interceptor.dart';
import 'package:commercepal/app/data/network/interceptors/error_interceptor.dart';
import 'package:commercepal/app/data/network/interceptors/logging_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioClient {
  @lazySingleton
  Dio get dio => _getDio();

  Dio _getDio() {
    final options = BaseOptions(
      baseUrl: Url.baseUrl,
      connectTimeout: 50000,
      receiveTimeout: 30000,
    );
    final dio = Dio(options);

    dio.interceptors
      ..add(AuthInterceptor( ))
      ..add(ErrorInterceptor());
    if (kDebugMode) {
      dio.interceptors.add(LoggingInterceptor());
    }

    return dio;
  }
}
