import 'package:bloc/bloc.dart';
import 'package:flutter_cat_facts/app/di/injector.dart';
import 'package:flutter_cat_facts/domain/interactors/facts/fetch_fact_interactor.dart';

import 'package:flutter_cat_facts/presentation/base/base_bloc.dart';
import 'package:flutter_cat_facts/presentation/context/bloc/context_activity_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fact_event.dart';
part 'fact_state.dart';
part 'fact_bloc.freezed.dart';

class FactBloc extends BaseBloc<FactEvent, FactState> {
  final FetchFactInteractor _fetchFactInteractor = getIt<FetchFactInteractor>();
  FactBloc() : super(const FactState.loading());

  @override
  Future<void> onEventHandler(FactEvent event, Emitter emit) async {
    await event.when(
      start: () => start(event, emit),
      anotherFact: () => anotherFact(event, emit),
      factHistory: () => factHistorys(event, emit),
    );
  }

  Future<void> start(FactEvent event, Emitter emit) async {
    emit(const FactState.loading());

    final response = await _fetchFactInteractor.call();
    if (response.hasData) {
      emit(
        FactState.fetchFactSuccess(
          factText: response.data!.fact,
          createDate: DateTime.now().toIso8601String(),
        ),
      );
    } else {
      emit(const FactState.fetchFactError());
      contextActivity.add(ContextActivityEvent.handleContextActivity((context) {
        //TODO: call error popup
      }));
    }
  }

  Future<void> anotherFact(FactEvent event, Emitter emit) async {}
  Future<void> factHistorys(FactEvent event, Emitter emit) async {}
}
