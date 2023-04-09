part of 'fact_bloc.dart';

@freezed
class FactState with _$FactState {
  const factory FactState.loading() = Loading;
  const factory FactState.fetchFactSuccess({
    required String factText,
    required String createDate,
    required String catsImageUrl,
  }) = FetchFactSuccess;
  const factory FactState.fetchFactError() = FetchFactError;
}
