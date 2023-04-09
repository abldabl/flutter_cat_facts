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
    required TResult Function(FetchFactEvent value) fetchFact,
    required TResult Function(FactHistoryEvent value) factHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFactEvent value)? fetchFact,
    TResult? Function(FactHistoryEvent value)? factHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFactEvent value)? fetchFact,
    TResult Function(FactHistoryEvent value)? factHistory,
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
abstract class _$$FetchFactEventCopyWith<$Res> {
  factory _$$FetchFactEventCopyWith(
          _$FetchFactEvent value, $Res Function(_$FetchFactEvent) then) =
      __$$FetchFactEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchFactEventCopyWithImpl<$Res>
    extends _$FactEventCopyWithImpl<$Res, _$FetchFactEvent>
    implements _$$FetchFactEventCopyWith<$Res> {
  __$$FetchFactEventCopyWithImpl(
      _$FetchFactEvent _value, $Res Function(_$FetchFactEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchFactEvent implements FetchFactEvent {
  const _$FetchFactEvent();

  @override
  String toString() {
    return 'FactEvent.fetchFact()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchFactEvent);
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
    required TResult Function(FetchFactEvent value) fetchFact,
    required TResult Function(FactHistoryEvent value) factHistory,
  }) {
    return fetchFact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFactEvent value)? fetchFact,
    TResult? Function(FactHistoryEvent value)? factHistory,
  }) {
    return fetchFact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFactEvent value)? fetchFact,
    TResult Function(FactHistoryEvent value)? factHistory,
    required TResult orElse(),
  }) {
    if (fetchFact != null) {
      return fetchFact(this);
    }
    return orElse();
  }
}

abstract class FetchFactEvent implements FactEvent {
  const factory FetchFactEvent() = _$FetchFactEvent;
}

/// @nodoc
abstract class _$$FactHistoryEventCopyWith<$Res> {
  factory _$$FactHistoryEventCopyWith(
          _$FactHistoryEvent value, $Res Function(_$FactHistoryEvent) then) =
      __$$FactHistoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FactHistoryEventCopyWithImpl<$Res>
    extends _$FactEventCopyWithImpl<$Res, _$FactHistoryEvent>
    implements _$$FactHistoryEventCopyWith<$Res> {
  __$$FactHistoryEventCopyWithImpl(
      _$FactHistoryEvent _value, $Res Function(_$FactHistoryEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FactHistoryEvent implements FactHistoryEvent {
  const _$FactHistoryEvent();

  @override
  String toString() {
    return 'FactEvent.factHistory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FactHistoryEvent);
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
    required TResult Function(FetchFactEvent value) fetchFact,
    required TResult Function(FactHistoryEvent value) factHistory,
  }) {
    return factHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFactEvent value)? fetchFact,
    TResult? Function(FactHistoryEvent value)? factHistory,
  }) {
    return factHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFactEvent value)? fetchFact,
    TResult Function(FactHistoryEvent value)? factHistory,
    required TResult orElse(),
  }) {
    if (factHistory != null) {
      return factHistory(this);
    }
    return orElse();
  }
}

abstract class FactHistoryEvent implements FactEvent {
  const factory FactHistoryEvent() = _$FactHistoryEvent;
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
    required TResult Function(Loading value) loading,
    required TResult Function(FetchFactSuccess value) fetchFactSuccess,
    required TResult Function(FetchFactError value) fetchFactError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(FetchFactSuccess value)? fetchFactSuccess,
    TResult? Function(FetchFactError value)? fetchFactError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(FetchFactSuccess value)? fetchFactSuccess,
    TResult Function(FetchFactError value)? fetchFactError,
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
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$FactStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'FactState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
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
    required TResult Function(Loading value) loading,
    required TResult Function(FetchFactSuccess value) fetchFactSuccess,
    required TResult Function(FetchFactError value) fetchFactError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(FetchFactSuccess value)? fetchFactSuccess,
    TResult? Function(FetchFactError value)? fetchFactError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(FetchFactSuccess value)? fetchFactSuccess,
    TResult Function(FetchFactError value)? fetchFactError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements FactState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$FetchFactSuccessCopyWith<$Res> {
  factory _$$FetchFactSuccessCopyWith(
          _$FetchFactSuccess value, $Res Function(_$FetchFactSuccess) then) =
      __$$FetchFactSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String factText, String createDate, String catsImageUrl});
}

/// @nodoc
class __$$FetchFactSuccessCopyWithImpl<$Res>
    extends _$FactStateCopyWithImpl<$Res, _$FetchFactSuccess>
    implements _$$FetchFactSuccessCopyWith<$Res> {
  __$$FetchFactSuccessCopyWithImpl(
      _$FetchFactSuccess _value, $Res Function(_$FetchFactSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? factText = null,
    Object? createDate = null,
    Object? catsImageUrl = null,
  }) {
    return _then(_$FetchFactSuccess(
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

class _$FetchFactSuccess implements FetchFactSuccess {
  const _$FetchFactSuccess(
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
            other is _$FetchFactSuccess &&
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
  _$$FetchFactSuccessCopyWith<_$FetchFactSuccess> get copyWith =>
      __$$FetchFactSuccessCopyWithImpl<_$FetchFactSuccess>(this, _$identity);

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
    required TResult Function(Loading value) loading,
    required TResult Function(FetchFactSuccess value) fetchFactSuccess,
    required TResult Function(FetchFactError value) fetchFactError,
  }) {
    return fetchFactSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(FetchFactSuccess value)? fetchFactSuccess,
    TResult? Function(FetchFactError value)? fetchFactError,
  }) {
    return fetchFactSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(FetchFactSuccess value)? fetchFactSuccess,
    TResult Function(FetchFactError value)? fetchFactError,
    required TResult orElse(),
  }) {
    if (fetchFactSuccess != null) {
      return fetchFactSuccess(this);
    }
    return orElse();
  }
}

abstract class FetchFactSuccess implements FactState {
  const factory FetchFactSuccess(
      {required final String factText,
      required final String createDate,
      required final String catsImageUrl}) = _$FetchFactSuccess;

  String get factText;
  String get createDate;
  String get catsImageUrl;
  @JsonKey(ignore: true)
  _$$FetchFactSuccessCopyWith<_$FetchFactSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchFactErrorCopyWith<$Res> {
  factory _$$FetchFactErrorCopyWith(
          _$FetchFactError value, $Res Function(_$FetchFactError) then) =
      __$$FetchFactErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchFactErrorCopyWithImpl<$Res>
    extends _$FactStateCopyWithImpl<$Res, _$FetchFactError>
    implements _$$FetchFactErrorCopyWith<$Res> {
  __$$FetchFactErrorCopyWithImpl(
      _$FetchFactError _value, $Res Function(_$FetchFactError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchFactError implements FetchFactError {
  const _$FetchFactError();

  @override
  String toString() {
    return 'FactState.fetchFactError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchFactError);
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
    required TResult Function(Loading value) loading,
    required TResult Function(FetchFactSuccess value) fetchFactSuccess,
    required TResult Function(FetchFactError value) fetchFactError,
  }) {
    return fetchFactError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(FetchFactSuccess value)? fetchFactSuccess,
    TResult? Function(FetchFactError value)? fetchFactError,
  }) {
    return fetchFactError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(FetchFactSuccess value)? fetchFactSuccess,
    TResult Function(FetchFactError value)? fetchFactError,
    required TResult orElse(),
  }) {
    if (fetchFactError != null) {
      return fetchFactError(this);
    }
    return orElse();
  }
}

abstract class FetchFactError implements FactState {
  const factory FetchFactError() = _$FetchFactError;
}
