import 'package:flutter_cat_facts/domain/request_models/base/base_request_model.dart';

class PutFactRequestModel extends BaseRequestModel {
  final String fact;
  final DateTime createdDate;

  PutFactRequestModel({required this.fact, required this.createdDate});
}
