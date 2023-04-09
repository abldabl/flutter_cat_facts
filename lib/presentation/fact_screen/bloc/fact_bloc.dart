import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cat_facts/app/constants/api_constants.dart';
import 'package:flutter_cat_facts/app/di/injector.dart';
import 'package:flutter_cat_facts/app/enums/app_routes_enum.dart';
import 'package:flutter_cat_facts/app/exception/base_exception.dart';
import 'package:flutter_cat_facts/app/utils/time_map_helper.dart';
import 'package:flutter_cat_facts/data/models/dto/facts/fact_dto.dart';
import 'package:flutter_cat_facts/domain/interactors/facts/fetch_fact_interactor.dart';
import 'package:flutter_cat_facts/domain/interactors/facts/add_fact_interactor.dart';
import 'package:flutter_cat_facts/domain/request_models/facts/add_fact_request_model.dart';
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
  final _addFactInteractor = getIt<AddFactInteractor>();

  FactBloc() : super(const FactState.loading());

  @override
  Future<void> onEventHandler(FactEvent event, Emitter emit) async {
    await event.when(
      fetchFact: () => _fetchFact(emit),
      factsHistory: () => factsHistory(emit),
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
          createDate: _mapFactCreateDate(response.data!.createDate),
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
    final result = await _addFactInteractor.call(
      AddFactRequestModel(
        fact: dto.fact,
        createDate: dto.createDate,
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

  Future<void> factsHistory(Emitter emit) async {
    contextActivity.add(ContextActivityEvent.handleContextActivity((context) async {
      context.router.pushNamed(AppRoutesEnum.factHistory.path);
    }));
  }
}
