import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fact_event.dart';
part 'fact_state.dart';
part 'fact_bloc.freezed.dart';

class FactBloc extends Bloc<FactEvent, FactState> {
  FactBloc() : super(const _Initial()) {
    on<FactEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
