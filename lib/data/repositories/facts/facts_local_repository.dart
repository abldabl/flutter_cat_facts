import 'package:flutter_cat_facts/app/constants/local_storage_constants.dart';
import 'package:flutter_cat_facts/app/exception/base_exception.dart';
import 'package:flutter_cat_facts/app/exception/data_state.dart';
import 'package:flutter_cat_facts/app/utils/error_handler.dart';
import 'package:flutter_cat_facts/data/models/entries/facts/fact_entry.dart';
import 'package:flutter_cat_facts/data/repositories/base/base_local_repository.dart';
import 'package:flutter_cat_facts/domain/request_models/facts/put_fact_request_model.dart';
import 'package:hive/hive.dart';

typedef FactList = List<FactEntry>;

abstract class IFactsLocalRepository {
  Future<DataState<bool>> putFact(PutFactRequestModel request);
  Future<DataState<FactList>> fetchFactList();
}

class FactsLocalRepository extends BaseLocalRepository implements IFactsLocalRepository {
  static Future<Box<FactList>> _openBox() =>
      Hive.openBox<FactList>(LocalStorageConstants.factListBox);

  @override
  Future<DataState<bool>> putFact(PutFactRequestModel request) async {
    try {
      final box = await _openBox();
      final list = _getFactList(box);

      list.add(FactEntry(fact: request.fact, createdDate: request.createdDate));
      await box.put(LocalStorageConstants.factListKey, list);

      return const DataSuccess(true);
    } catch (e) {
      return DataFailed(_handleError(e));
    }
  }

  List<FactEntry> _getFactList(Box<FactList> box) =>
      box.get(LocalStorageConstants.factListKey)?.cast<FactEntry>() ?? [];

  @override
  Future<DataState<FactList>> fetchFactList() async {
    try {
      final box = await _openBox();
      final list = _getFactList(box);
      return DataSuccess(list);
    } catch (e) {
      return DataFailed(_handleError(e));
    }
  }

  BaseException _handleError(dynamic error) => ErrorHandler.handle(error);
}
