// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fact_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FactEntry _$FactEntryFromJson(Map<String, dynamic> json) {
  return _FactEntry.fromJson(json);
}

/// @nodoc
mixin _$FactEntry {
  String get fact => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FactEntryCopyWith<FactEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactEntryCopyWith<$Res> {
  factory $FactEntryCopyWith(FactEntry value, $Res Function(FactEntry) then) =
      _$FactEntryCopyWithImpl<$Res, FactEntry>;
  @useResult
  $Res call({String fact, int? length});
}

/// @nodoc
class _$FactEntryCopyWithImpl<$Res, $Val extends FactEntry>
    implements $FactEntryCopyWith<$Res> {
  _$FactEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fact = null,
    Object? length = freezed,
  }) {
    return _then(_value.copyWith(
      fact: null == fact
          ? _value.fact
          : fact // ignore: cast_nullable_to_non_nullable
              as String,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FactEntryCopyWith<$Res> implements $FactEntryCopyWith<$Res> {
  factory _$$_FactEntryCopyWith(
          _$_FactEntry value, $Res Function(_$_FactEntry) then) =
      __$$_FactEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fact, int? length});
}

/// @nodoc
class __$$_FactEntryCopyWithImpl<$Res>
    extends _$FactEntryCopyWithImpl<$Res, _$_FactEntry>
    implements _$$_FactEntryCopyWith<$Res> {
  __$$_FactEntryCopyWithImpl(
      _$_FactEntry _value, $Res Function(_$_FactEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fact = null,
    Object? length = freezed,
  }) {
    return _then(_$_FactEntry(
      fact: null == fact
          ? _value.fact
          : fact // ignore: cast_nullable_to_non_nullable
              as String,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FactEntry implements _FactEntry {
  _$_FactEntry({required this.fact, this.length});

  factory _$_FactEntry.fromJson(Map<String, dynamic> json) =>
      _$$_FactEntryFromJson(json);

  @override
  final String fact;
  @override
  final int? length;

  @override
  String toString() {
    return 'FactEntry(fact: $fact, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FactEntry &&
            (identical(other.fact, fact) || other.fact == fact) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fact, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FactEntryCopyWith<_$_FactEntry> get copyWith =>
      __$$_FactEntryCopyWithImpl<_$_FactEntry>(this, _$identity);
}

abstract class _FactEntry implements FactEntry {
  factory _FactEntry({required final String fact, final int? length}) =
      _$_FactEntry;

  factory _FactEntry.fromJson(Map<String, dynamic> json) =
      _$_FactEntry.fromJson;

  @override
  String get fact;
  @override
  int? get length;
  @override
  @JsonKey(ignore: true)
  _$$_FactEntryCopyWith<_$_FactEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
