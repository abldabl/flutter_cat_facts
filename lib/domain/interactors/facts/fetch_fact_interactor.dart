import 'dart:io';

import 'package:flutter_cat_facts/app/exception/data_state.dart';
import 'package:flutter_cat_facts/data/models/dto/facts/fetch_fact_dto.dart';
import 'package:flutter_cat_facts/data/repositories/facts/facts_repository.dart';
import 'package:flutter_cat_facts/domain/interactors/base/base_interactor.dart';
import 'package:flutter_cat_facts/domain/mappers/facts/fetch_fact_mapper_to_dto.dart';

class FetchFactInteractor
    extends BaseEmptyInteractorWithMapper<FactsRepository, FetchFactDto, FetchFactMapperToDto> {
  FetchFactInteractor() : super(FetchFactMapperToDto());

  @override
  Future<DataState<FetchFactDto>> call() async {
    try {
      final httpResponse = await repository.fetchFact();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        final dto = mapper.map(httpResponse.data);
        return DataSuccess(dto);
      }
      return DataFailed(handleError(httpResponse.response.statusMessage));
    } catch (e) {
      return DataFailed(handleError(e));
    }
  }
}
