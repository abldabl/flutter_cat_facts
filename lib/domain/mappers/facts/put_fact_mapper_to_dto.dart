import 'package:flutter_cat_facts/app/exception/data_state.dart';
import 'package:flutter_cat_facts/data/models/dto/facts/put_fact_dto.dart';
import 'package:flutter_cat_facts/domain/mappers/base/base_mapper_to_dto.dart';

class PutFactMapperToDto extends BaseMapperToDto<DataState<bool>, PutFactDto> {
  @override
  DataState<PutFactDto> map(DataState<bool> dataState) {
    if (dataState.hasData) {
      final dto = PutFactDto(result: dataState.data!);
      return DataSuccess(dto);
    }
    return DataFailed(dataState.error!);
  }
}
