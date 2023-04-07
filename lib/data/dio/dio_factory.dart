import 'package:dio/dio.dart';

class DioFactory {
  BaseOptions _createBaseOptions(String baseUrl) => BaseOptions(baseUrl: baseUrl);

  Dio create(String baseUrl) => Dio(_createBaseOptions(baseUrl));
}
