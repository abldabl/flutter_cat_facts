import 'package:flutter_cat_facts/data/models/entries/base/base_entry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'fact_entry.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class FactEntry extends BaseEntry {
  @HiveField(0)
  String id;
  @HiveField(1)
  String fact;
  @HiveField(2)
  int? length;
  @HiveField(3)
  DateTime? createDate;

  FactEntry({this.id = '', required this.fact, this.length, this.createDate});

  factory FactEntry.fromJson(Map<String, dynamic> json) => _$FactEntryFromJson(json);
}
