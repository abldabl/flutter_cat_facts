import 'package:flutter_cat_facts/app/exception/base_exception.dart';
import 'package:flutter_cat_facts/app/utils/error_handler.dart';

abstract class BaseRepository {
  BaseException handleError(dynamic error) => ErrorHandler.handle(error);
}
