import 'package:flutter_cat_facts/app/di/injector.dart';
import 'package:flutter_cat_facts/app/exception/base_exception.dart';
import 'package:flutter_cat_facts/app/exception/data_state.dart';
import 'package:flutter_cat_facts/app/utils/error_handler.dart';
import 'package:flutter_cat_facts/data/models/dto/base/base_dto.dart';
import 'package:flutter_cat_facts/data/repositories/base/base_repository.dart';
import 'package:flutter_cat_facts/domain/mappers/base/base_mapper_to_dto.dart';
import 'package:flutter_cat_facts/domain/request_models/base/base_request_model.dart';

abstract class BaseInteractor<R extends BaseRepository, Dto extends BaseDto,
    Request extends BaseRequestModel> {
  late R repository;

  BaseInteractor() {
    repository = getIt<R>();
  }

  Future<DataState<Dto>> call(Request request);
}

abstract class BaseEmptyInteractorWithMapper<R extends BaseRepository, Dto extends BaseDto,
    M extends BaseMapperToDto> {
  late R repository;
  M mapper;

  BaseEmptyInteractorWithMapper(this.mapper) {
    repository = getIt<R>();
  }

  Future<DataState<Dto>> call();
}

abstract class BaseInteractorWithMapper<R extends BaseRepository, Dto extends BaseDto,
    M extends BaseMapperToDto, Request extends BaseRequestModel> {
  late R repository;
  M mapper;

  BaseInteractorWithMapper(this.mapper) {
    repository = getIt<R>();
  }

  Future<DataState<Dto>> call(Request request);
}

BaseException handleError(dynamic error) => ErrorHandler.handle(error);
