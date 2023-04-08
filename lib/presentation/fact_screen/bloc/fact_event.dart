part of 'fact_bloc.dart';

@freezed
class FactEvent with _$FactEvent {
  const factory FactEvent.fetchFact() = _FetchFactEvent;
  const factory FactEvent.factHistory() = _FactHistoryEvent;
}
