// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'facts_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FactsHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFactList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFactList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFactList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFactListEvent value) fetchFactList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFactListEvent value)? fetchFactList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFactListEvent value)? fetchFactList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactsHistoryEventCopyWith<$Res> {
  factory $FactsHistoryEventCopyWith(
          FactsHistoryEvent value, $Res Function(FactsHistoryEvent) then) =
      _$FactsHistoryEventCopyWithImpl<$Res, FactsHistoryEvent>;
}

/// @nodoc
class _$FactsHistoryEventCopyWithImpl<$Res, $Val extends FactsHistoryEvent>
    implements $FactsHistoryEventCopyWith<$Res> {
  _$FactsHistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchFactListEventCopyWith<$Res> {
  factory _$$FetchFactListEventCopyWith(_$FetchFactListEvent value,
          $Res Function(_$FetchFactListEvent) then) =
      __$$FetchFactListEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchFactListEventCopyWithImpl<$Res>
    extends _$FactsHistoryEventCopyWithImpl<$Res, _$FetchFactListEvent>
    implements _$$FetchFactListEventCopyWith<$Res> {
  __$$FetchFactListEventCopyWithImpl(
      _$FetchFactListEvent _value, $Res Function(_$FetchFactListEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchFactListEvent implements FetchFactListEvent {
  const _$FetchFactListEvent();

  @override
  String toString() {
    return 'FactsHistoryEvent.fetchFactList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchFactListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFactList,
  }) {
    return fetchFactList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFactList,
  }) {
    return fetchFactList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFactList,
    required TResult orElse(),
  }) {
    if (fetchFactList != null) {
      return fetchFactList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFactListEvent value) fetchFactList,
  }) {
    return fetchFactList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFactListEvent value)? fetchFactList,
  }) {
    return fetchFactList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFactListEvent value)? fetchFactList,
    required TResult orElse(),
  }) {
    if (fetchFactList != null) {
      return fetchFactList(this);
    }
    return orElse();
  }
}

abstract class FetchFactListEvent implements FactsHistoryEvent {
  const factory FetchFactListEvent() = _$FetchFactListEvent;
}

/// @nodoc
mixin _$FactsHistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<FactDto> facts) fetchFactList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<FactDto> facts)? fetchFactList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<FactDto> facts)? fetchFactList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FactsHistoryLoadingState value) loading,
    required TResult Function(FetchFactListState value) fetchFactList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FactsHistoryLoadingState value)? loading,
    TResult? Function(FetchFactListState value)? fetchFactList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FactsHistoryLoadingState value)? loading,
    TResult Function(FetchFactListState value)? fetchFactList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactsHistoryStateCopyWith<$Res> {
  factory $FactsHistoryStateCopyWith(
          FactsHistoryState value, $Res Function(FactsHistoryState) then) =
      _$FactsHistoryStateCopyWithImpl<$Res, FactsHistoryState>;
}

/// @nodoc
class _$FactsHistoryStateCopyWithImpl<$Res, $Val extends FactsHistoryState>
    implements $FactsHistoryStateCopyWith<$Res> {
  _$FactsHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FactsHistoryLoadingStateCopyWith<$Res> {
  factory _$$FactsHistoryLoadingStateCopyWith(_$FactsHistoryLoadingState value,
          $Res Function(_$FactsHistoryLoadingState) then) =
      __$$FactsHistoryLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FactsHistoryLoadingStateCopyWithImpl<$Res>
    extends _$FactsHistoryStateCopyWithImpl<$Res, _$FactsHistoryLoadingState>
    implements _$$FactsHistoryLoadingStateCopyWith<$Res> {
  __$$FactsHistoryLoadingStateCopyWithImpl(_$FactsHistoryLoadingState _value,
      $Res Function(_$FactsHistoryLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FactsHistoryLoadingState implements FactsHistoryLoadingState {
  const _$FactsHistoryLoadingState();

  @override
  String toString() {
    return 'FactsHistoryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FactsHistoryLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<FactDto> facts) fetchFactList,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<FactDto> facts)? fetchFactList,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<FactDto> facts)? fetchFactList,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FactsHistoryLoadingState value) loading,
    required TResult Function(FetchFactListState value) fetchFactList,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FactsHistoryLoadingState value)? loading,
    TResult? Function(FetchFactListState value)? fetchFactList,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FactsHistoryLoadingState value)? loading,
    TResult Function(FetchFactListState value)? fetchFactList,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FactsHistoryLoadingState implements FactsHistoryState {
  const factory FactsHistoryLoadingState() = _$FactsHistoryLoadingState;
}

/// @nodoc
abstract class _$$FetchFactListStateCopyWith<$Res> {
  factory _$$FetchFactListStateCopyWith(_$FetchFactListState value,
          $Res Function(_$FetchFactListState) then) =
      __$$FetchFactListStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FactDto> facts});
}

/// @nodoc
class __$$FetchFactListStateCopyWithImpl<$Res>
    extends _$FactsHistoryStateCopyWithImpl<$Res, _$FetchFactListState>
    implements _$$FetchFactListStateCopyWith<$Res> {
  __$$FetchFactListStateCopyWithImpl(
      _$FetchFactListState _value, $Res Function(_$FetchFactListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facts = null,
  }) {
    return _then(_$FetchFactListState(
      null == facts
          ? _value._facts
          : facts // ignore: cast_nullable_to_non_nullable
              as List<FactDto>,
    ));
  }
}

/// @nodoc

class _$FetchFactListState implements FetchFactListState {
  const _$FetchFactListState(final List<FactDto> facts) : _facts = facts;

  final List<FactDto> _facts;
  @override
  List<FactDto> get facts {
    if (_facts is EqualUnmodifiableListView) return _facts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_facts);
  }

  @override
  String toString() {
    return 'FactsHistoryState.fetchFactList(facts: $facts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchFactListState &&
            const DeepCollectionEquality().equals(other._facts, _facts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_facts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchFactListStateCopyWith<_$FetchFactListState> get copyWith =>
      __$$FetchFactListStateCopyWithImpl<_$FetchFactListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<FactDto> facts) fetchFactList,
  }) {
    return fetchFactList(facts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<FactDto> facts)? fetchFactList,
  }) {
    return fetchFactList?.call(facts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<FactDto> facts)? fetchFactList,
    required TResult orElse(),
  }) {
    if (fetchFactList != null) {
      return fetchFactList(facts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FactsHistoryLoadingState value) loading,
    required TResult Function(FetchFactListState value) fetchFactList,
  }) {
    return fetchFactList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FactsHistoryLoadingState value)? loading,
    TResult? Function(FetchFactListState value)? fetchFactList,
  }) {
    return fetchFactList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FactsHistoryLoadingState value)? loading,
    TResult Function(FetchFactListState value)? fetchFactList,
    required TResult orElse(),
  }) {
    if (fetchFactList != null) {
      return fetchFactList(this);
    }
    return orElse();
  }
}

abstract class FetchFactListState implements FactsHistoryState {
  const factory FetchFactListState(final List<FactDto> facts) =
      _$FetchFactListState;

  List<FactDto> get facts;
  @JsonKey(ignore: true)
  _$$FetchFactListStateCopyWith<_$FetchFactListState> get copyWith =>
      throw _privateConstructorUsedError;
}
