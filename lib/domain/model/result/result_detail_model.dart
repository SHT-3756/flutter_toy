import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_detail_model.freezed.dart';

part 'result_detail_model.g.dart';

@freezed
class ResultDetailModel with _$ResultDetailModel {
  factory ResultDetailModel({
    required String name,
    required String contents,
    required String path,
  }) = _ResultDetail;

  factory ResultDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ResultDetailModelFromJson(json);
}
