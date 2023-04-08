import 'package:dio/dio.dart';
import 'package:flutter_cat_facts/app/exception/base_exception.dart';
import 'package:flutter_cat_facts/app/exception/data_state.dart';
import 'package:flutter_cat_facts/data/models/dto/base/base_dto.dart';
import 'package:flutter_cat_facts/data/repositories/base/base_repository.dart';
import 'package:flutter_cat_facts/domain/mappers/base/base_mapper_to_dto.dart';
import 'package:flutter_cat_facts/domain/request_models/base/base_request_model.dart';

abstract class BaseInteractor<R extends BaseRepository, Dto extends BaseDto,
    Request extends BaseRequestModel> {
  R repository;

  BaseInteractor(this.repository);

  Future<DataState<Dto>> call(Request request);
}

abstract class BaseEmptyInteractorWithMapper<R extends BaseRepository, Dto extends BaseDto,
    M extends BaseMapperToDto> {
  R repository;
  M mapper;

  BaseEmptyInteractorWithMapper(this.repository, this.mapper);

  Future<DataState<Dto>> call();
}

abstract class BaseInteractorWithMapper<R extends BaseRepository, Dto extends BaseDto,
    M extends BaseMapperToDto, Request extends BaseRequestModel> {
  R repository;
  M mapper;

  BaseInteractorWithMapper(this.repository, this.mapper);

  Future<DataState<Dto>> call(Request request);
}

BaseException handleError(dynamic error) {
  if (error is DioError) {
    return BaseException.fromDioError(error);
  } else {
    return BaseException(errorMessage: error.toString());
  }
}
