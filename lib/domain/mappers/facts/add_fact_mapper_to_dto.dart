import 'package:flutter_cat_facts/app/exception/data_state.dart';
import 'package:flutter_cat_facts/data/models/dto/facts/add_fact_dto.dart';
import 'package:flutter_cat_facts/domain/mappers/base/base_mapper_to_dto.dart';

class AddFactMapperToDto extends BaseMapperToDto<DataState<bool>, AddFactDto> {
  @override
  DataState<AddFactDto> map(DataState<bool> dataState) {
    if (dataState.hasData) {
      final dto = AddFactDto(result: dataState.data!);
      return DataSuccess(dto);
    }
    return DataFailed(dataState.error!);
  }
}
