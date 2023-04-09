import 'package:bloc/bloc.dart';
import 'package:flutter_cat_facts/app/di/injector.dart';
import 'package:flutter_cat_facts/data/models/dto/facts/fact_dto.dart';
import 'package:flutter_cat_facts/domain/interactors/facts/fetch_local_fact_list_interactor.dart';
import 'package:flutter_cat_facts/presentation/base/base_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'facts_history_event.dart';
part 'facts_history_state.dart';
part 'facts_history_bloc.freezed.dart';

class FactsHistoryBloc extends BaseBloc<FactsHistoryEvent, FactsHistoryState> {
  final _fetchLocalFactListInteractor = getIt<FetchLocalFactListInteractor>();
  FactsHistoryBloc() : super(const FactsHistoryState.loading());

  @override
  Future<void> onEventHandler(FactsHistoryEvent event, Emitter emit) async {
    await event.when(fetchFactList: () => fetchFactList(emit));
  }

  Future<void> fetchFactList(Emitter emit) async {
    emit(const FactsHistoryState.loading());
    final result = await _fetchLocalFactListInteractor.call();
    if (result.hasData) {
      final reversedList = result.data!.facts.reversed.toList();
      emit(FactsHistoryState.fetchFactList(reversedList));
    } else {
      emit(const FactsHistoryState.fetchFactList([]));
    }
  }
}
