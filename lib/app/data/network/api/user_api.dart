import 'package:dio/dio.dart';
import 'package:flutter_dio_example/app/constants/app_url.dart';

import '../service/api_service.dart';

class UserApi {
  final ApiService _apiService = ApiService();

  Future<Response> getUsers() async {
    try {
      final Response response = await _apiService.get(AppUrl.users);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> postUser({Map<String, dynamic>? data}) async {
    try {
      final Response response = await _apiService.post(
        AppUrl.users,
        data: data,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> putUser(String id, {Map<String, dynamic>? data}) async {
    try {
      final Response response = await _apiService.put(
        '${AppUrl.users}/$id',
        data: data,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> deleteUser(String id) async {
    try {
      final Response response = await _apiService.delete(
        '${AppUrl.users}/$id',
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
