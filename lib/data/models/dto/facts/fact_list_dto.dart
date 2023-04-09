import 'package:flutter_cat_facts/data/models/dto/base/base_dto.dart';
import 'package:flutter_cat_facts/data/models/dto/facts/fact_dto.dart';

class FactListDto extends BaseDto {
  final List<FactDto> facts;

  FactListDto({this.facts = const []});
}
