import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cat_facts/app/constants/api_constants.dart';
import 'package:flutter_cat_facts/app/di/injector.dart';
import 'package:flutter_cat_facts/app/exception/base_exception.dart';
import 'package:flutter_cat_facts/app/utils/time_map_helper.dart';
import 'package:flutter_cat_facts/data/models/dto/facts/fact_dto.dart';
import 'package:flutter_cat_facts/domain/interactors/facts/fetch_fact_interactor.dart';
import 'package:flutter_cat_facts/domain/interactors/facts/put_fact_interactor.dart';
import 'package:flutter_cat_facts/domain/request_models/facts/put_fact_request_model.dart';
import 'package:flutter_cat_facts/generated/l10n.dart';

import 'package:flutter_cat_facts/presentation/base/base_bloc.dart';
import 'package:flutter_cat_facts/presentation/context_activity/bloc/context_activity_bloc.dart';
import 'package:flutter_cat_facts/presentation/widgets/popups/popup_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fact_event.dart';
part 'fact_state.dart';
part 'fact_bloc.freezed.dart';

class FactBloc extends BaseBloc<FactEvent, FactState> {
  final _fetchFactInteractor = getIt<FetchFactInteractor>();
  final _putFactInteractor = getIt<PutFactInteractor>();

  FactBloc() : super(const FactState.loading());

  @override
  Future<void> onEventHandler(FactEvent event, Emitter emit) async {
    await event.when(
      fetchFact: () => _fetchFact(emit),
      factHistory: () => factHistory(event, emit),
    );
  }

  Future<void> _fetchFact(Emitter emit) async {
    emit(const FactState.loading());

    final response = await _fetchFactInteractor.call();
    if (response.hasData) {
      await _evictNetworkImage();
      emit(
        FactState.fetchFactSuccess(
          factText: response.data!.fact,
          createDate: _mapFactCreateDate(response.data!.createdDate),
          catsImageUrl: ApiConstants.catsImageUrl,
        ),
      );
      await _saveFactToStorage(response.data!);
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

  String _mapFactCreateDate(DateTime dateTime) => TimeMapHelper.dateForFactItem(dateTime);

  Future<void> _saveFactToStorage(FactDto dto) async {
    final result = await _putFactInteractor.call(
      PutFactRequestModel(
        fact: dto.fact,
        createdDate: dto.createdDate,
      ),
    );
    if (result.hasError) {
      debugPrint(result.error!.errorMessage);
    }
  }

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

  Future<void> factHistory(FactEvent event, Emitter emit) async {}
}
