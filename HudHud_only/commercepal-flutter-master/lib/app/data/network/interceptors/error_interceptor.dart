import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';

import '../../../utils/routes.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    log(err.toString());
    switch (err.type) {
      case DioErrorType.cancel:
      case DioErrorType.receiveTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.connectTimeout:
        err.error =
            'An error occurred while attempting to connect to our servers';
        break;
      case DioErrorType.other:
        if (err.error is SocketException) {
          err.error =
              'Server is not reachable. Please verify your internet connection and try again';
        } else {
          err.error =
              'Looks like something went wrong while processing your request';
        }
        break;
      case DioErrorType.response:
        if (err.response?.data != null) {
          if (err.response?.data is String) {
            err.error =
                'Looks like something went wrong while processing your request! Kindly try later';
          } else {
            String? error = err.response!.data['message'] as String;
            err.error = error;
          }
        } else {
          err.error =
              'Looks like something went wrong while processing your request! Kindly try again';
        }
        if (err.response?.statusCode == 404) {
          err.error = '${err.response?.statusCode} Page not found.';
        }
        if (err.response?.statusCode == 500) {
          err.error = '${err.response?.statusCode} Internal server error.';
        }
        if (err.response?.statusCode == 403 ||
            err.response?.statusCode == 401) {
          redirectUserToLogin();
        }
        break;
      default:
        err.error =
            'Looks like something went wrong while processing your request! Kindly try again';
    }
    super.onError(err, handler);
  }
}
