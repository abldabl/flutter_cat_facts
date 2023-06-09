import 'package:flutter_cat_facts/app/exception/data_state.dart';
import 'package:flutter_cat_facts/data/models/dto/facts/fact_dto.dart';
import 'package:flutter_cat_facts/data/models/entries/facts/fact_entry.dart';
import 'package:flutter_cat_facts/domain/mappers/base/base_mapper_to_dto.dart';
import 'package:flutter_cat_facts/domain/mappers/facts/fact_entry_to_fact_dto_mapper.dart';

class FetchFactMapperToDto extends BaseMapperToDto<DataState<FactEntry>, FactDto> {
  @override
  DataState<FactDto> map(DataState<FactEntry> dataState) {
    if (dataState.hasData) {
      final dto = FactsMapper().mapFactEntryToDto(dataState.data!);
      return DataSuccess(dto);
    }
    return DataFailed(dataState.error!);
  }
}
