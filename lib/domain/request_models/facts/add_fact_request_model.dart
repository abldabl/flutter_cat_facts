import 'package:flutter_cat_facts/domain/request_models/base/base_request_model.dart';

class AddFactRequestModel extends BaseRequestModel {
  final String fact;
  final DateTime createDate;

  AddFactRequestModel({required this.fact, required this.createDate});
}
