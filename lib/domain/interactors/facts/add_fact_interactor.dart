import 'package:flutter_cat_facts/app/exception/data_state.dart';
import 'package:flutter_cat_facts/data/models/dto/facts/add_fact_dto.dart';
import 'package:flutter_cat_facts/data/repositories/facts/facts_repository.dart';
import 'package:flutter_cat_facts/domain/interactors/base/base_interactor.dart';
import 'package:flutter_cat_facts/domain/mappers/facts/add_fact_mapper_to_dto.dart';
import 'package:flutter_cat_facts/domain/request_models/facts/add_fact_request_model.dart';

class AddFactInteractor extends BaseInteractorWithMapper<FactsRepository, AddFactDto,
    AddFactMapperToDto, AddFactRequestModel> {
  AddFactInteractor() : super(AddFactMapperToDto());

  @override
  Future<DataState<AddFactDto>> call(AddFactRequestModel request) async {
    try {
      final data = await repository.addFact(request);
      return mapper.map(data);
    } catch (e) {
      return DataFailed(handleError(e));
    }
  }
}
