import 'package:dio/dio.dart';
import 'package:flutter_cat_facts/app/exception/base_exception.dart';

class ErrorHandler {
  static BaseException handle(dynamic error) {
    if (error is DioError) {
      return BaseException.fromDioError(error);
    } else {
      return BaseException(errorMessage: error.toString());
    }
  }
}
