// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fact_entry.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FactEntryAdapter extends TypeAdapter<FactEntry> {
  @override
  final int typeId = 1;

  @override
  FactEntry read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FactEntry(
      fact: fields[0] as String,
      length: fields[1] as int?,
      createdDate: fields[2] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, FactEntry obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.fact)
      ..writeByte(1)
      ..write(obj.length)
      ..writeByte(2)
      ..write(obj.createdDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FactEntryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FactEntry _$FactEntryFromJson(Map<String, dynamic> json) => FactEntry(
      fact: json['fact'] as String,
      length: json['length'] as int?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
    );

Map<String, dynamic> _$FactEntryToJson(FactEntry instance) => <String, dynamic>{
      'fact': instance.fact,
      'length': instance.length,
      'createdDate': instance.createdDate?.toIso8601String(),
    };
