import 'package:flutter_cat_facts/data/models/entries/base/base_entry.dart';
import 'package:flutter_cat_facts/data/models/entries/facts/fact_entry.dart';
import 'package:flutter_cat_facts/data/repositories/base/base_repository.dart';
import 'package:flutter_cat_facts/domain/request_models/facts/put_fact_request_model.dart';
import 'package:retrofit/retrofit.dart';

import 'facts_local_repository.dart';
import 'facts_remote_repository.dart';

abstract class IFactsRepository {
  Future<HttpResponse<FactEntry>> fetchFact();
  Future<BaseEntry<bool>> putFact(PutFactRequestModel request);
}

class FactsRepository extends BaseRepository implements IFactsRepository {
  final FactsRemoteRepository _factRemoteRepository;
  final FactsLocalRepository _factLocalRepository;
  FactsRepository(this._factRemoteRepository, this._factLocalRepository);

  @override
  Future<HttpResponse<FactEntry>> fetchFact() async => await _factRemoteRepository.fetchFact();

  @override
  Future<BaseEntry<bool>> putFact(PutFactRequestModel request) async =>
      await _factLocalRepository.putFact(request);
}
