import 'package:flutter_cat_facts/data/models/dto/facts/fetch_fact_dto.dart';
import 'package:flutter_cat_facts/data/models/entries/facts/fact_entry.dart';
import 'package:flutter_cat_facts/domain/mappers/base/base_mapper_to_dto.dart';

class FetchFactMapperToDto extends BaseMapperToDto<FactEntry, FetchFactDto> {
  @override
  FetchFactDto map(FactEntry entry) => FetchFactDto(
        fact: entry.fact,
        length: entry.length,
      );
}
