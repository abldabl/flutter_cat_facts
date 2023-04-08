// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fact_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FactEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFact,
    required TResult Function() factHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFact,
    TResult? Function()? factHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFact,
    TResult Function()? factHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFactEvent value) fetchFact,
    required TResult Function(_FactHistoryEvent value) factHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFactEvent value)? fetchFact,
    TResult? Function(_FactHistoryEvent value)? factHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFactEvent value)? fetchFact,
    TResult Function(_FactHistoryEvent value)? factHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactEventCopyWith<$Res> {
  factory $FactEventCopyWith(FactEvent value, $Res Function(FactEvent) then) =
      _$FactEventCopyWithImpl<$Res, FactEvent>;
}

/// @nodoc
class _$FactEventCopyWithImpl<$Res, $Val extends FactEvent>
    implements $FactEventCopyWith<$Res> {
  _$FactEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchFactEventCopyWith<$Res> {
  factory _$$_FetchFactEventCopyWith(
          _$_FetchFactEvent value, $Res Function(_$_FetchFactEvent) then) =
      __$$_FetchFactEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchFactEventCopyWithImpl<$Res>
    extends _$FactEventCopyWithImpl<$Res, _$_FetchFactEvent>
    implements _$$_FetchFactEventCopyWith<$Res> {
  __$$_FetchFactEventCopyWithImpl(
      _$_FetchFactEvent _value, $Res Function(_$_FetchFactEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchFactEvent implements _FetchFactEvent {
  const _$_FetchFactEvent();

  @override
  String toString() {
    return 'FactEvent.fetchFact()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchFactEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFact,
    required TResult Function() factHistory,
  }) {
    return fetchFact();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFact,
    TResult? Function()? factHistory,
  }) {
    return fetchFact?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFact,
    TResult Function()? factHistory,
    required TResult orElse(),
  }) {
    if (fetchFact != null) {
      return fetchFact();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFactEvent value) fetchFact,
    required TResult Function(_FactHistoryEvent value) factHistory,
  }) {
    return fetchFact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFactEvent value)? fetchFact,
    TResult? Function(_FactHistoryEvent value)? factHistory,
  }) {
    return fetchFact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFactEvent value)? fetchFact,
    TResult Function(_FactHistoryEvent value)? factHistory,
    required TResult orElse(),
  }) {
    if (fetchFact != null) {
      return fetchFact(this);
    }
    return orElse();
  }
}

abstract class _FetchFactEvent implements FactEvent {
  const factory _FetchFactEvent() = _$_FetchFactEvent;
}

/// @nodoc
abstract class _$$_FactHistoryEventCopyWith<$Res> {
  factory _$$_FactHistoryEventCopyWith(
          _$_FactHistoryEvent value, $Res Function(_$_FactHistoryEvent) then) =
      __$$_FactHistoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FactHistoryEventCopyWithImpl<$Res>
    extends _$FactEventCopyWithImpl<$Res, _$_FactHistoryEvent>
    implements _$$_FactHistoryEventCopyWith<$Res> {
  __$$_FactHistoryEventCopyWithImpl(
      _$_FactHistoryEvent _value, $Res Function(_$_FactHistoryEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FactHistoryEvent implements _FactHistoryEvent {
  const _$_FactHistoryEvent();

  @override
  String toString() {
    return 'FactEvent.factHistory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FactHistoryEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFact,
    required TResult Function() factHistory,
  }) {
    return factHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFact,
    TResult? Function()? factHistory,
  }) {
    return factHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFact,
    TResult Function()? factHistory,
    required TResult orElse(),
  }) {
    if (factHistory != null) {
      return factHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFactEvent value) fetchFact,
    required TResult Function(_FactHistoryEvent value) factHistory,
  }) {
    return factHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFactEvent value)? fetchFact,
    TResult? Function(_FactHistoryEvent value)? factHistory,
  }) {
    return factHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFactEvent value)? fetchFact,
    TResult Function(_FactHistoryEvent value)? factHistory,
    required TResult orElse(),
  }) {
    if (factHistory != null) {
      return factHistory(this);
    }
    return orElse();
  }
}

abstract class _FactHistoryEvent implements FactEvent {
  const factory _FactHistoryEvent() = _$_FactHistoryEvent;
}

/// @nodoc
mixin _$FactState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            String factText, String createDate, String catsImageUrl)
        fetchFactSuccess,
    required TResult Function() fetchFactError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String factText, String createDate, String catsImageUrl)?
        fetchFactSuccess,
    TResult? Function()? fetchFactError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String factText, String createDate, String catsImageUrl)?
        fetchFactSuccess,
    TResult Function()? fetchFactError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchFactSuccess value) fetchFactSuccess,
    required TResult Function(_FetchFactError value) fetchFactError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchFactSuccess value)? fetchFactSuccess,
    TResult? Function(_FetchFactError value)? fetchFactError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchFactSuccess value)? fetchFactSuccess,
    TResult Function(_FetchFactError value)? fetchFactError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactStateCopyWith<$Res> {
  factory $FactStateCopyWith(FactState value, $Res Function(FactState) then) =
      _$FactStateCopyWithImpl<$Res, FactState>;
}

/// @nodoc
class _$FactStateCopyWithImpl<$Res, $Val extends FactState>
    implements $FactStateCopyWith<$Res> {
  _$FactStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$FactStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'FactState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            String factText, String createDate, String catsImageUrl)
        fetchFactSuccess,
    required TResult Function() fetchFactError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String factText, String createDate, String catsImageUrl)?
        fetchFactSuccess,
    TResult? Function()? fetchFactError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String factText, String createDate, String catsImageUrl)?
        fetchFactSuccess,
    TResult Function()? fetchFactError,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchFactSuccess value) fetchFactSuccess,
    required TResult Function(_FetchFactError value) fetchFactError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchFactSuccess value)? fetchFactSuccess,
    TResult? Function(_FetchFactError value)? fetchFactError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchFactSuccess value)? fetchFactSuccess,
    TResult Function(_FetchFactError value)? fetchFactError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FactState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_FetchFactSuccessCopyWith<$Res> {
  factory _$$_FetchFactSuccessCopyWith(
          _$_FetchFactSuccess value, $Res Function(_$_FetchFactSuccess) then) =
      __$$_FetchFactSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String factText, String createDate, String catsImageUrl});
}

/// @nodoc
class __$$_FetchFactSuccessCopyWithImpl<$Res>
    extends _$FactStateCopyWithImpl<$Res, _$_FetchFactSuccess>
    implements _$$_FetchFactSuccessCopyWith<$Res> {
  __$$_FetchFactSuccessCopyWithImpl(
      _$_FetchFactSuccess _value, $Res Function(_$_FetchFactSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? factText = null,
    Object? createDate = null,
    Object? catsImageUrl = null,
  }) {
    return _then(_$_FetchFactSuccess(
      factText: null == factText
          ? _value.factText
          : factText // ignore: cast_nullable_to_non_nullable
              as String,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String,
      catsImageUrl: null == catsImageUrl
          ? _value.catsImageUrl
          : catsImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchFactSuccess implements _FetchFactSuccess {
  const _$_FetchFactSuccess(
      {required this.factText,
      required this.createDate,
      required this.catsImageUrl});

  @override
  final String factText;
  @override
  final String createDate;
  @override
  final String catsImageUrl;

  @override
  String toString() {
    return 'FactState.fetchFactSuccess(factText: $factText, createDate: $createDate, catsImageUrl: $catsImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchFactSuccess &&
            (identical(other.factText, factText) ||
                other.factText == factText) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.catsImageUrl, catsImageUrl) ||
                other.catsImageUrl == catsImageUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, factText, createDate, catsImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchFactSuccessCopyWith<_$_FetchFactSuccess> get copyWith =>
      __$$_FetchFactSuccessCopyWithImpl<_$_FetchFactSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            String factText, String createDate, String catsImageUrl)
        fetchFactSuccess,
    required TResult Function() fetchFactError,
  }) {
    return fetchFactSuccess(factText, createDate, catsImageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String factText, String createDate, String catsImageUrl)?
        fetchFactSuccess,
    TResult? Function()? fetchFactError,
  }) {
    return fetchFactSuccess?.call(factText, createDate, catsImageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String factText, String createDate, String catsImageUrl)?
        fetchFactSuccess,
    TResult Function()? fetchFactError,
    required TResult orElse(),
  }) {
    if (fetchFactSuccess != null) {
      return fetchFactSuccess(factText, createDate, catsImageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchFactSuccess value) fetchFactSuccess,
    required TResult Function(_FetchFactError value) fetchFactError,
  }) {
    return fetchFactSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchFactSuccess value)? fetchFactSuccess,
    TResult? Function(_FetchFactError value)? fetchFactError,
  }) {
    return fetchFactSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchFactSuccess value)? fetchFactSuccess,
    TResult Function(_FetchFactError value)? fetchFactError,
    required TResult orElse(),
  }) {
    if (fetchFactSuccess != null) {
      return fetchFactSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchFactSuccess implements FactState {
  const factory _FetchFactSuccess(
      {required final String factText,
      required final String createDate,
      required final String catsImageUrl}) = _$_FetchFactSuccess;

  String get factText;
  String get createDate;
  String get catsImageUrl;
  @JsonKey(ignore: true)
  _$$_FetchFactSuccessCopyWith<_$_FetchFactSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchFactErrorCopyWith<$Res> {
  factory _$$_FetchFactErrorCopyWith(
          _$_FetchFactError value, $Res Function(_$_FetchFactError) then) =
      __$$_FetchFactErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchFactErrorCopyWithImpl<$Res>
    extends _$FactStateCopyWithImpl<$Res, _$_FetchFactError>
    implements _$$_FetchFactErrorCopyWith<$Res> {
  __$$_FetchFactErrorCopyWithImpl(
      _$_FetchFactError _value, $Res Function(_$_FetchFactError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchFactError implements _FetchFactError {
  const _$_FetchFactError();

  @override
  String toString() {
    return 'FactState.fetchFactError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchFactError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            String factText, String createDate, String catsImageUrl)
        fetchFactSuccess,
    required TResult Function() fetchFactError,
  }) {
    return fetchFactError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String factText, String createDate, String catsImageUrl)?
        fetchFactSuccess,
    TResult? Function()? fetchFactError,
  }) {
    return fetchFactError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String factText, String createDate, String catsImageUrl)?
        fetchFactSuccess,
    TResult Function()? fetchFactError,
    required TResult orElse(),
  }) {
    if (fetchFactError != null) {
      return fetchFactError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchFactSuccess value) fetchFactSuccess,
    required TResult Function(_FetchFactError value) fetchFactError,
  }) {
    return fetchFactError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchFactSuccess value)? fetchFactSuccess,
    TResult? Function(_FetchFactError value)? fetchFactError,
  }) {
    return fetchFactError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchFactSuccess value)? fetchFactSuccess,
    TResult Function(_FetchFactError value)? fetchFactError,
    required TResult orElse(),
  }) {
    if (fetchFactError != null) {
      return fetchFactError(this);
    }
    return orElse();
  }
}

abstract class _FetchFactError implements FactState {
  const factory _FetchFactError() = _$_FetchFactError;
}
