import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cat_facts/app/constants/api_constants.dart';
import 'package:flutter_cat_facts/app/di/injector.dart';
import 'package:flutter_cat_facts/app/exception/base_exception.dart';
import 'package:flutter_cat_facts/app/utils/time_map_helper.dart';
import 'package:flutter_cat_facts/domain/interactors/facts/fetch_fact_interactor.dart';
import 'package:flutter_cat_facts/generated/l10n.dart';

import 'package:flutter_cat_facts/presentation/base/base_bloc.dart';
import 'package:flutter_cat_facts/presentation/context_activity/bloc/context_activity_bloc.dart';
import 'package:flutter_cat_facts/presentation/widgets/popups/popup_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fact_event.dart';
part 'fact_state.dart';
part 'fact_bloc.freezed.dart';

class FactBloc extends BaseBloc<FactEvent, FactState> {
  late BuildContext _context;

  final FetchFactInteractor _fetchFactInteractor = getIt<FetchFactInteractor>();

  FactBloc() : super(const FactState.loading());

  @override
  Future<void> onEventHandler(FactEvent event, Emitter emit) async {
    await event.when(
      start: () => _start(),
      fetchFact: () => _fetchFact(emit),
      factHistory: () => factHistorys(event, emit),
    );
  }

  Future<void> _start() async {
    contextActivity.add(ContextActivityEvent.handleContextActivity((context) {
      _context = context;
    }));
    add(const FactEvent.fetchFact());
  }

  Future<void> _fetchFact(Emitter emit) async {
    emit(const FactState.loading());

    final response = await _fetchFactInteractor.call();
    if (response.hasData) {
      await _evictNetworkImage();
      emit(
        FactState.fetchFactSuccess(
          factText: response.data!.fact,
          createDate: _mapFactCreateDate(),
          catsImageUrl: ApiConstants.catsImageUrl,
        ),
      );
    } else {
      emit(const FactState.fetchFactError());
      contextActivity.add(ContextActivityEvent.handleContextActivity((context) async {
        await _fetchFactErrorPopup(
          context: context,
          exception: response.error!,
          emit: emit,
        );
      }));
    }
  }

  Future<void> _evictNetworkImage() async {
    const networkImageProvider = NetworkImage(ApiConstants.catsImageUrl);
    await networkImageProvider.evict();
  }

  String _mapFactCreateDate() =>
      TimeMapHelper.dateForFactItem(dateTime: DateTime.now(), context: _context);

  Future<void> _fetchFactErrorPopup({
    required BuildContext context,
    required BaseException exception,
    required Emitter emit,
  }) async =>
      await PopupHelper().errorPopUp(
        context,
        exception,
        barrierDismissible: false,
        btnText: S.of(context).retry,
        onDismiss: () {
          Navigator.pop(context);
          add(const FactEvent.fetchFact());
        },
      );

  Future<void> factHistorys(FactEvent event, Emitter emit) async {}
}
