import 'base_exception.dart';

abstract class DataState<T> {
  final T? data;
  final BaseException? error;

  const DataState({this.data, this.error});

  bool get hasData => data != null;

  bool get hasError => error != null;
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T? data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(BaseException error) : super(error: error);
}
