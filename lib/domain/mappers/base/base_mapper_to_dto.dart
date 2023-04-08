import 'package:flutter_cat_facts/data/models/dto/base/base_dto.dart';
import 'package:flutter_cat_facts/data/models/entries/base/base_entry.dart';

abstract class BaseMapperToDto<E extends BaseEntry, Dto extends BaseDto> {
  Dto map(E entry);
}
