import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'end_points.dart';

@singleton
class ApiProvider {
  final Dio _dio;

  ApiProvider(this._dio);

  Future<dynamic> refreshToken() async {}

  Future<dynamic> post(Map payload, String url) async {
    try {
      final response = await _dio.post<void>(url, data: jsonEncode(payload));
      return response.data;
    } on DioError catch (e) {
      throw e.message;
    }
  }

  Future<dynamic> uploadFile(
      String url, File file, Map<String, dynamic> extraData) async {
    try {
      String fileName = file.path.split('/').last;
      // attach file
      extraData['file'] = await MultipartFile.fromFile(
        file.path,
        filename: fileName,
      );

      FormData data = FormData.fromMap(extraData);

      final response = await _dio.post(url, data: data);
      return response.data;
    } on DioError catch (e) {
      throw e.message;
    }
  }

  Future<dynamic> delete(Map payload, String url) async {
    try {
      final response = await _dio.delete<void>(url, data: jsonEncode(payload));
      return response.data;
    } on DioError catch (e) {
      throw e.message;
    }
  }

  Future<dynamic> put(Map payload, String url) async {
    try {
      final response = await _dio.put<dynamic>(url, data: jsonEncode(payload));
      return response.data;
    } on DioError catch (e) {
      throw e.message;
    }
  }

  Future<dynamic> get(String url) async {
    try {
      final response = await _dio.get<dynamic>(url);
      return response.data;
    } on DioError catch (e) {
      throw e.message;
    }
  }

  Future<dynamic> sendPatchRequest(Map payload, String url) async {
    try {
      final response =
          await _dio.patch<dynamic>(url, data: jsonEncode(payload));
      return response.data;
    } on DioError catch (e) {
      throw e.message;
    }
  }
}
