import 'package:flutter_cat_facts/app/exception/data_state.dart';
import 'package:flutter_cat_facts/data/models/dto/facts/fact_dto.dart';
import 'package:flutter_cat_facts/data/repositories/facts/facts_repository.dart';
import 'package:flutter_cat_facts/domain/interactors/base/base_interactor.dart';
import 'package:flutter_cat_facts/domain/mappers/facts/fetch_fact_mapper_to_dto.dart';

class FetchFactInteractor
    extends BaseEmptyInteractorWithMapper<FactsRepository, FactDto, FetchFactMapperToDto> {
  FetchFactInteractor() : super(FetchFactMapperToDto());

  @override
  Future<DataState<FactDto>> call() async {
    try {
      final dataState = await repository.fetchFact();
      return mapper.map(dataState);
    } catch (e) {
      return DataFailed(handleError(e));
    }
  }
}
