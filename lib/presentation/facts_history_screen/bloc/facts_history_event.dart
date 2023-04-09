part of 'facts_history_bloc.dart';

@freezed
class FactsHistoryEvent with _$FactsHistoryEvent {
  const factory FactsHistoryEvent.fetchFactList() = FetchFactListEvent;
}
