import 'package:flutter_cat_facts/data/models/entries/base/base_entry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'fact_entry.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class FactEntry extends BaseEntry {
  @HiveField(0)
  String fact;
  @HiveField(1)
  int? length;
  @HiveField(2)
  DateTime? createdDate;

  FactEntry({required this.fact, this.length, this.createdDate});

  factory FactEntry.fromJson(Map<String, dynamic> json) => _$FactEntryFromJson(json);
}
