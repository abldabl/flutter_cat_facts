import 'package:flutter_cat_facts/app/constants/local_storage_constants.dart';
import 'package:flutter_cat_facts/app/exception/base_exception.dart';
import 'package:flutter_cat_facts/app/exception/data_state.dart';
import 'package:flutter_cat_facts/app/utils/error_handler.dart';
import 'package:flutter_cat_facts/data/models/entries/facts/fact_entry.dart';
import 'package:flutter_cat_facts/data/repositories/base/base_local_repository.dart';
import 'package:flutter_cat_facts/domain/request_models/facts/add_fact_request_model.dart';
import 'package:hive/hive.dart';

abstract class IFactsLocalRepository {
  Future<DataState<bool>> addFact(AddFactRequestModel request);
  Future<DataState<List<FactEntry>>> fetchFactList();
}

class FactsLocalRepository extends BaseLocalRepository implements IFactsLocalRepository {
  static Future<Box<FactEntry>> _openBox() =>
      Hive.openBox<FactEntry>(LocalStorageConstants.factListBox);

  @override
  Future<DataState<bool>> addFact(AddFactRequestModel request) async {
    try {
      final box = await _openBox();

      final fact = FactEntry(fact: request.fact, createDate: request.createDate);
      await box.add(fact);

      return const DataSuccess(true);
    } catch (e) {
      return DataFailed(_handleError(e));
    }
  }

  @override
  Future<DataState<List<FactEntry>>> fetchFactList() async {
    try {
      final box = await _openBox();
      final list = box.values.toList();
      return DataSuccess(list);
    } catch (e) {
      return DataFailed(_handleError(e));
    }
  }

  BaseException _handleError(dynamic error) => ErrorHandler.handle(error);
}
