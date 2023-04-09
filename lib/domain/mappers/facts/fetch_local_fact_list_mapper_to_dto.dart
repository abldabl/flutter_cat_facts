import 'package:flutter_cat_facts/app/exception/data_state.dart';
import 'package:flutter_cat_facts/data/models/dto/facts/fact_list_dto.dart';

import 'package:flutter_cat_facts/data/models/entries/facts/fact_entry.dart';
import 'package:flutter_cat_facts/domain/mappers/base/base_mapper_to_dto.dart';
import 'package:flutter_cat_facts/domain/mappers/facts/fact_entry_to_fact_dto_mapper.dart';

class FetchLocalFactListMapperToDto
    extends BaseMapperToDto<DataState<List<FactEntry>>, FactListDto> {
  @override
  DataState<FactListDto> map(DataState<List<FactEntry>> dataState) {
    if (dataState.hasData) {
      final factList = dataState.data!.map((e) => FactsMapper().mapFactEntryToDto(e)).toList();
      return DataSuccess(FactListDto(facts: factList));
    }
    return DataFailed(dataState.error!);
  }
}
