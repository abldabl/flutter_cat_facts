part of 'fact_bloc.dart';

@freezed
class FactState with _$FactState {
  const factory FactState.loading() = FactLoadingState;
  const factory FactState.fetchFactSuccess({
    required String factText,
    required DateTime createDate,
    required String catsImageUrl,
  }) = FetchFactSuccessState;
  const factory FactState.fetchFactError() = FetchFactErrorState;
}
