part of 'fact_bloc.dart';

@freezed
class FactEvent with _$FactEvent {
  const factory FactEvent.start() = _StartEvent;
  const factory FactEvent.anotherFact() = _AnotherFactEvent;
  const factory FactEvent.factHistory() = _FactHistoryEvent;
}
