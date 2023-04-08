import 'package:dio/dio.dart';
import 'package:flutter_cat_facts/app/constants/exception_constants.dart';
import 'package:flutter_cat_facts/generated/l10n.dart';

class BaseException implements Exception {
  late String errorMessage;

  BaseException({required this.errorMessage});

  BaseException.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        errorMessage = S.current.dioErrorTypeCancel;
        break;
      case DioErrorType.connectionTimeout:
        errorMessage = S.current.dioErrorTypeConnectionTimeout;
        break;
      case DioErrorType.receiveTimeout:
        errorMessage = S.current.dioErrorTypeReceiveTimeout;
        break;
      case DioErrorType.sendTimeout:
        errorMessage = S.current.dioErrorTypeSendTimeout;
        break;
      case DioErrorType.badResponse:
        errorMessage = _handleStatusCode(dioError.response?.statusCode);
        break;
      case DioErrorType.connectionError:
        if (dioError.message != null &&
            dioError.message!.contains(ExceptionConstants.socketException)) {
          errorMessage = S.current.dioErrorTypeConnectionError;
          break;
        }
        errorMessage = S.current.unknownError;
        break;
      default:
        errorMessage = S.current.unknownError;
        break;
    }
  }

  String _handleStatusCode(int? statusCode) {
    switch (statusCode) {
      case 400:
        return S.current.error400;
      case 403:
        return S.current.error403;
      case 404:
        return S.current.error404;
      case 500:
        return S.current.error500;
      default:
        return S.current.unknownError;
    }
  }

  @override
  String toString() => errorMessage;
}
