

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'api_methods.dart';

class ApiService {
  late final Dio _dio;
  ApiService(){
    _dio = Dio(
      BaseOptions(
        baseUrl: "https://gist.githubusercontent.com/anubhavshrimal/75f6183458db8c453306f93521e93d37/raw/f77e7598a8503f1f70528ae1cbf9f66755698a16",
      ),
    );

    _dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        responseBody: false,
        responseHeader: true,
        maxWidth: 120,
      ),
    );
  }

  Future<dynamic> request({
    required ApiMethods method,
    required String url,
    Map<String, dynamic>? data,
  }) async {
    late Response<dynamic> response;

    switch (method) {
      case ApiMethods.get:
        response = await _dio.get(
          url,
          queryParameters: data,
        );
      case ApiMethods.post:
        response = await _dio.post(
          url,
          data: data,
         
        );
      case ApiMethods.patch:
        response = await _dio.patch(
          url,
          data: data,
        );
      case ApiMethods.delete:
        response = await _dio.delete(
          url,
          data: data,
        );
    }
    return response.data;
  }
}