import 'package:flutter_cat_facts/app/exception/data_state.dart';
import 'package:flutter_cat_facts/data/models/dto/facts/fact_list_dto.dart';
import 'package:flutter_cat_facts/data/repositories/facts/facts_repository.dart';
import 'package:flutter_cat_facts/domain/interactors/base/base_interactor.dart';
import 'package:flutter_cat_facts/domain/mappers/facts/fetch_local_fact_list_mapper_to_dto.dart';

class FetchLocalFactListInteractor extends BaseEmptyInteractorWithMapper<FactsRepository,
    FactListDto, FetchLocalFactListMapperToDto> {
  FetchLocalFactListInteractor() : super(FetchLocalFactListMapperToDto());

  @override
  Future<DataState<FactListDto>> call() async {
    try {
      final dataState = await repository.fetchLocalFactList();
      return mapper.map(dataState);
    } catch (e) {
      return DataFailed(handleError(e));
    }
  }
}
