import 'package:flutter_cat_facts/data/models/dto/base/base_dto.dart';

class FactDto extends BaseDto {
  final String fact;
  final int? length;
  final DateTime createDate;

  FactDto({required this.fact, this.length, required this.createDate});
}
