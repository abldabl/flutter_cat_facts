import 'package:flutter_cat_facts/data/models/dto/facts/fact_dto.dart';
import 'package:flutter_cat_facts/data/models/entries/facts/fact_entry.dart';

class FactsMapper {
  FactDto mapFactEntryToDto(FactEntry entry) => FactDto(
        fact: entry.fact,
        length: entry.length,
        createdDate: entry.createdDate ?? DateTime.now(),
      );
}
