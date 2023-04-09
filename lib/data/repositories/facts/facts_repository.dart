import 'dart:io';

import 'package:flutter_cat_facts/app/exception/data_state.dart';
import 'package:flutter_cat_facts/data/models/entries/facts/fact_entry.dart';
import 'package:flutter_cat_facts/data/repositories/base/base_repository.dart';
import 'package:flutter_cat_facts/domain/request_models/facts/put_fact_request_model.dart';

import 'facts_local_repository.dart';
import 'facts_remote_repository.dart';

abstract class IFactsRepository {
  Future<DataState<FactEntry>> fetchFact();
  Future<DataState<bool>> putFact(PutFactRequestModel request);
  Future<DataState<List<FactEntry>>> fetchLocalFactList();
}

class FactsRepository extends BaseRepository implements IFactsRepository {
  final FactsRemoteRepository _factRemoteRepository;
  final FactsLocalRepository _factLocalRepository;
  FactsRepository(this._factRemoteRepository, this._factLocalRepository);

  @override
  Future<DataState<FactEntry>> fetchFact() async {
    final httpResponse = await _factRemoteRepository.fetchFact();
    if (httpResponse.response.statusCode == HttpStatus.ok) {
      return DataSuccess(httpResponse.data);
    }
    return DataFailed(handleError(httpResponse.response.statusMessage));
  }

  @override
  Future<DataState<bool>> putFact(PutFactRequestModel request) async =>
      await _factLocalRepository.putFact(request);

  @override
  Future<DataState<List<FactEntry>>> fetchLocalFactList() async =>
      await _factLocalRepository.fetchFactList();
}
