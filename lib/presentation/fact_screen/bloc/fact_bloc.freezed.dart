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
    required TResult Function() factsHistoryScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFact,
    TResult? Function()? factsHistoryScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFact,
    TResult Function()? factsHistoryScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFactEvent value) fetchFact,
    required TResult Function(FactsHistoryScreenEvent value) factsHistoryScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFactEvent value)? fetchFact,
    TResult? Function(FactsHistoryScreenEvent value)? factsHistoryScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFactEvent value)? fetchFact,
    TResult Function(FactsHistoryScreenEvent value)? factsHistoryScreen,
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
    required TResult Function() factsHistoryScreen,
  }) {
    return fetchFact();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFact,
    TResult? Function()? factsHistoryScreen,
  }) {
    return fetchFact?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFact,
    TResult Function()? factsHistoryScreen,
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
    required TResult Function(FactsHistoryScreenEvent value) factsHistoryScreen,
  }) {
    return fetchFact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFactEvent value)? fetchFact,
    TResult? Function(FactsHistoryScreenEvent value)? factsHistoryScreen,
  }) {
    return fetchFact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFactEvent value)? fetchFact,
    TResult Function(FactsHistoryScreenEvent value)? factsHistoryScreen,
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
abstract class _$$FactsHistoryScreenEventCopyWith<$Res> {
  factory _$$FactsHistoryScreenEventCopyWith(_$FactsHistoryScreenEvent value,
          $Res Function(_$FactsHistoryScreenEvent) then) =
      __$$FactsHistoryScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FactsHistoryScreenEventCopyWithImpl<$Res>
    extends _$FactEventCopyWithImpl<$Res, _$FactsHistoryScreenEvent>
    implements _$$FactsHistoryScreenEventCopyWith<$Res> {
  __$$FactsHistoryScreenEventCopyWithImpl(_$FactsHistoryScreenEvent _value,
      $Res Function(_$FactsHistoryScreenEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FactsHistoryScreenEvent implements FactsHistoryScreenEvent {
  const _$FactsHistoryScreenEvent();

  @override
  String toString() {
    return 'FactEvent.factsHistoryScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FactsHistoryScreenEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFact,
    required TResult Function() factsHistoryScreen,
  }) {
    return factsHistoryScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFact,
    TResult? Function()? factsHistoryScreen,
  }) {
    return factsHistoryScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFact,
    TResult Function()? factsHistoryScreen,
    required TResult orElse(),
  }) {
    if (factsHistoryScreen != null) {
      return factsHistoryScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFactEvent value) fetchFact,
    required TResult Function(FactsHistoryScreenEvent value) factsHistoryScreen,
  }) {
    return factsHistoryScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFactEvent value)? fetchFact,
    TResult? Function(FactsHistoryScreenEvent value)? factsHistoryScreen,
  }) {
    return factsHistoryScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFactEvent value)? fetchFact,
    TResult Function(FactsHistoryScreenEvent value)? factsHistoryScreen,
    required TResult orElse(),
  }) {
    if (factsHistoryScreen != null) {
      return factsHistoryScreen(this);
    }
    return orElse();
  }
}

abstract class FactsHistoryScreenEvent implements FactEvent {
  const factory FactsHistoryScreenEvent() = _$FactsHistoryScreenEvent;
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
    required TResult Function(FactLoadingState value) loading,
    required TResult Function(FetchFactSuccessState value) fetchFactSuccess,
    required TResult Function(FetchFactErrorState value) fetchFactError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FactLoadingState value)? loading,
    TResult? Function(FetchFactSuccessState value)? fetchFactSuccess,
    TResult? Function(FetchFactErrorState value)? fetchFactError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FactLoadingState value)? loading,
    TResult Function(FetchFactSuccessState value)? fetchFactSuccess,
    TResult Function(FetchFactErrorState value)? fetchFactError,
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
abstract class _$$FactLoadingStateCopyWith<$Res> {
  factory _$$FactLoadingStateCopyWith(
          _$FactLoadingState value, $Res Function(_$FactLoadingState) then) =
      __$$FactLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FactLoadingStateCopyWithImpl<$Res>
    extends _$FactStateCopyWithImpl<$Res, _$FactLoadingState>
    implements _$$FactLoadingStateCopyWith<$Res> {
  __$$FactLoadingStateCopyWithImpl(
      _$FactLoadingState _value, $Res Function(_$FactLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FactLoadingState implements FactLoadingState {
  const _$FactLoadingState();

  @override
  String toString() {
    return 'FactState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FactLoadingState);
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
    required TResult Function(FactLoadingState value) loading,
    required TResult Function(FetchFactSuccessState value) fetchFactSuccess,
    required TResult Function(FetchFactErrorState value) fetchFactError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FactLoadingState value)? loading,
    TResult? Function(FetchFactSuccessState value)? fetchFactSuccess,
    TResult? Function(FetchFactErrorState value)? fetchFactError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FactLoadingState value)? loading,
    TResult Function(FetchFactSuccessState value)? fetchFactSuccess,
    TResult Function(FetchFactErrorState value)? fetchFactError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FactLoadingState implements FactState {
  const factory FactLoadingState() = _$FactLoadingState;
}

/// @nodoc
abstract class _$$FetchFactSuccessStateCopyWith<$Res> {
  factory _$$FetchFactSuccessStateCopyWith(_$FetchFactSuccessState value,
          $Res Function(_$FetchFactSuccessState) then) =
      __$$FetchFactSuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String factText, String createDate, String catsImageUrl});
}

/// @nodoc
class __$$FetchFactSuccessStateCopyWithImpl<$Res>
    extends _$FactStateCopyWithImpl<$Res, _$FetchFactSuccessState>
    implements _$$FetchFactSuccessStateCopyWith<$Res> {
  __$$FetchFactSuccessStateCopyWithImpl(_$FetchFactSuccessState _value,
      $Res Function(_$FetchFactSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? factText = null,
    Object? createDate = null,
    Object? catsImageUrl = null,
  }) {
    return _then(_$FetchFactSuccessState(
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

class _$FetchFactSuccessState implements FetchFactSuccessState {
  const _$FetchFactSuccessState(
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
            other is _$FetchFactSuccessState &&
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
  _$$FetchFactSuccessStateCopyWith<_$FetchFactSuccessState> get copyWith =>
      __$$FetchFactSuccessStateCopyWithImpl<_$FetchFactSuccessState>(
          this, _$identity);

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
    required TResult Function(FactLoadingState value) loading,
    required TResult Function(FetchFactSuccessState value) fetchFactSuccess,
    required TResult Function(FetchFactErrorState value) fetchFactError,
  }) {
    return fetchFactSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FactLoadingState value)? loading,
    TResult? Function(FetchFactSuccessState value)? fetchFactSuccess,
    TResult? Function(FetchFactErrorState value)? fetchFactError,
  }) {
    return fetchFactSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FactLoadingState value)? loading,
    TResult Function(FetchFactSuccessState value)? fetchFactSuccess,
    TResult Function(FetchFactErrorState value)? fetchFactError,
    required TResult orElse(),
  }) {
    if (fetchFactSuccess != null) {
      return fetchFactSuccess(this);
    }
    return orElse();
  }
}

abstract class FetchFactSuccessState implements FactState {
  const factory FetchFactSuccessState(
      {required final String factText,
      required final String createDate,
      required final String catsImageUrl}) = _$FetchFactSuccessState;

  String get factText;
  String get createDate;
  String get catsImageUrl;
  @JsonKey(ignore: true)
  _$$FetchFactSuccessStateCopyWith<_$FetchFactSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchFactErrorStateCopyWith<$Res> {
  factory _$$FetchFactErrorStateCopyWith(_$FetchFactErrorState value,
          $Res Function(_$FetchFactErrorState) then) =
      __$$FetchFactErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchFactErrorStateCopyWithImpl<$Res>
    extends _$FactStateCopyWithImpl<$Res, _$FetchFactErrorState>
    implements _$$FetchFactErrorStateCopyWith<$Res> {
  __$$FetchFactErrorStateCopyWithImpl(
      _$FetchFactErrorState _value, $Res Function(_$FetchFactErrorState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchFactErrorState implements FetchFactErrorState {
  const _$FetchFactErrorState();

  @override
  String toString() {
    return 'FactState.fetchFactError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchFactErrorState);
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
    required TResult Function(FactLoadingState value) loading,
    required TResult Function(FetchFactSuccessState value) fetchFactSuccess,
    required TResult Function(FetchFactErrorState value) fetchFactError,
  }) {
    return fetchFactError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FactLoadingState value)? loading,
    TResult? Function(FetchFactSuccessState value)? fetchFactSuccess,
    TResult? Function(FetchFactErrorState value)? fetchFactError,
  }) {
    return fetchFactError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FactLoadingState value)? loading,
    TResult Function(FetchFactSuccessState value)? fetchFactSuccess,
    TResult Function(FetchFactErrorState value)? fetchFactError,
    required TResult orElse(),
  }) {
    if (fetchFactError != null) {
      return fetchFactError(this);
    }
    return orElse();
  }
}

abstract class FetchFactErrorState implements FactState {
  const factory FetchFactErrorState() = _$FetchFactErrorState;
}
