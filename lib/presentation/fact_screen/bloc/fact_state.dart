part of 'fact_bloc.dart';

@freezed
class FactState with _$FactState {
  const factory FactState.loading() = _Loading;
  const factory FactState.fetchFactSuccess({required String factText, required String createDate}) =
      _FetchFactSuccess;
  const factory FactState.fetchFactError() = _FetchFactError;
}
