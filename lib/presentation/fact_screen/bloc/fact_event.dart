part of 'fact_bloc.dart';

@freezed
class FactEvent with _$FactEvent {
  const factory FactEvent.start() = FactStartEvent;
  const factory FactEvent.fetchFact() = FetchFactEvent;
  const factory FactEvent.factHistory() = FactHistoryEvent;
}
