import 'package:flutter_cat_facts/app/exception/data_state.dart';
import 'package:flutter_cat_facts/data/models/dto/facts/put_fact_dto.dart';
import 'package:flutter_cat_facts/data/repositories/facts/facts_repository.dart';
import 'package:flutter_cat_facts/domain/interactors/base/base_interactor.dart';
import 'package:flutter_cat_facts/domain/mappers/facts/put_fact_mapper_to_dto.dart';
import 'package:flutter_cat_facts/domain/request_models/facts/put_fact_request_model.dart';

class PutFactInteractor extends BaseInteractorWithMapper<FactsRepository, PutFactDto,
    PutFactMapperToDto, PutFactRequestModel> {
  PutFactInteractor() : super(PutFactMapperToDto());

  @override
  Future<DataState<PutFactDto>> call(PutFactRequestModel request) async {
    try {
      final entry = await repository.putFact(request);
      final dto = mapper.map(entry);
      return DataSuccess(dto);
    } catch (e) {
      return DataFailed(handleError(e));
    }
  }
}
