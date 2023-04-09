part of 'facts_history_bloc.dart';

@freezed
class FactsHistoryState with _$FactsHistoryState {
  const factory FactsHistoryState.loading() = FactsHistoryLoadingState;
  const factory FactsHistoryState.fetchFactListSuccess(List<FactDto> facts) =
      FetchFactListSuccessState;
}
