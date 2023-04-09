import 'package:flutter_cat_facts/data/models/dto/facts/put_fact_dto.dart';
import 'package:flutter_cat_facts/data/models/entries/base/base_entry.dart';
import 'package:flutter_cat_facts/domain/mappers/base/base_mapper_to_dto.dart';

class PutFactMapperToDto extends BaseMapperToDto<BaseEntry<bool>, PutFactDto> {
  @override
  PutFactDto map(BaseEntry<bool>? entry) => PutFactDto(result: entry?.data ?? false);
}
