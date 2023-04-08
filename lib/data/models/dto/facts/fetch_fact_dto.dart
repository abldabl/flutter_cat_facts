import 'package:flutter_cat_facts/data/models/dto/base/base_dto.dart';

class FetchFactDto extends BaseDto {
  final String fact;
  final int? length;

  FetchFactDto({required this.fact, this.length});
}
