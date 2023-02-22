import 'package:freezed_annotation/freezed_annotation.dart';

import 'result_detail_model.dart';

part 'result_model.freezed.dart';

part 'result_model.g.dart';

@freezed
class ResultModel with _$ResultModel {
  factory ResultModel({
    required String type,
    required ResultDetailModel detail,
  }) = _Result;

  factory ResultModel.fromJson(Map<String, dynamic> json) => _$ResultModelFromJson(json);
}
