import 'package:flutter_cat_facts/app/exception/data_state.dart';
import 'package:flutter_cat_facts/data/models/dto/base/base_dto.dart';

abstract class BaseMapperToDto<D extends DataState, Dto extends BaseDto> {
  DataState<Dto> map(D dataState);
}
