import 'package:flutter_cat_facts/data/models/entries/facts/fact_entry.dart';
import 'package:flutter_cat_facts/data/repositories/base/base_repository.dart';
import 'package:retrofit/retrofit.dart';

import 'facts_remote_repository.dart';

abstract class IFactsRepository {
  Future<HttpResponse<FactEntry>> fetchFact();
}

class FactsRepository extends BaseRepository implements IFactsRepository {
  final FactsRemoteRepository _factRemoteRepository;
  FactsRepository(this._factRemoteRepository);

  @override
  Future<HttpResponse<FactEntry>> fetchFact() async => await _factRemoteRepository.fetchFact();
}
