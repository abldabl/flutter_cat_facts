import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'facts_history_event.dart';
part 'facts_history_state.dart';
part 'facts_history_bloc.freezed.dart';

class FactsHistoryBloc extends Bloc<FactsHistoryEvent, FactsHistoryState> {
  FactsHistoryBloc() : super(const _Initial()) {
    on<FactsHistoryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
