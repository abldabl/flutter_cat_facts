import 'package:flutter_cat_facts/data/models/entries/base/base_entry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fact_entry.freezed.dart';
part 'fact_entry.g.dart';

@Freezed(toJson: false)
class FactEntry extends BaseEntry with _$FactEntry {
  factory FactEntry({
    required String fact,
    int? length,
  }) = _FactEntry;

  factory FactEntry.fromJson(Map<String, dynamic> json) => _$FactEntryFromJson(json);
}
