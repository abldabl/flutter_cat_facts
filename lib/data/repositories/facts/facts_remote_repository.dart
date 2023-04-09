import 'package:dio/dio.dart';
import 'package:flutter_cat_facts/app/constants/api_constants.dart';
import 'package:flutter_cat_facts/data/models/entries/facts/fact_entry.dart';
import 'package:flutter_cat_facts/data/repositories/base/base_remote_repository.dart';
import 'package:retrofit/retrofit.dart';

part 'facts_remote_repository.g.dart';

abstract class IFactsRemoteRepository {
  Future<HttpResponse<FactEntry>> fetchFact();
}

@RestApi()
abstract class FactsRemoteRepository extends BaseRemoteRepository
    implements IFactsRemoteRepository {
  factory FactsRemoteRepository(Dio dio) = _FactsRemoteRepository;

  @GET(ApiConstants.fetchFact)
  @override
  Future<HttpResponse<FactEntry>> fetchFact();
}
