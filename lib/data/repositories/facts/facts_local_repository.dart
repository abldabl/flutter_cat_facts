import 'package:flutter/cupertino.dart';
import 'package:flutter_cat_facts/app/constants/local_storage_constants.dart';
import 'package:flutter_cat_facts/data/models/entries/base/base_entry.dart';
import 'package:flutter_cat_facts/data/models/entries/facts/fact_entry.dart';
import 'package:flutter_cat_facts/data/repositories/base/base_local_repository.dart';
import 'package:flutter_cat_facts/domain/request_models/facts/put_fact_request_model.dart';
import 'package:hive/hive.dart';

typedef FactListBox = Box<List<FactEntry>>;

abstract class IFactsLocalRepository {
  Future<BaseEntry<bool>> putFact(PutFactRequestModel request);
}

class FactsLocalRepository extends BaseLocalRepository implements IFactsLocalRepository {
  static Future<FactListBox> _openBox() =>
      Hive.openBox<List<FactEntry>>(LocalStorageConstants.factListBox);

  @override
  Future<BaseEntry<bool>> putFact(PutFactRequestModel request) async {
    try {
      final box = await _openBox();
      final list = _getFactList(box) ?? [];

      list.add(FactEntry(fact: request.fact, createdDate: request.createdDate));
      await box.put(LocalStorageConstants.factListKey, list);

      return BaseEntry(data: true);
    } catch (e) {
      debugPrint(e.toString());
      return BaseEntry(data: false);
    }
  }

  List<FactEntry>? _getFactList(FactListBox box) => box.get(LocalStorageConstants.factListKey);
}
