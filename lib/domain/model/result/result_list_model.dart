import 'package:freezed_annotation/freezed_annotation.dart';

import 'result_model.dart';

part 'result_list_model.freezed.dart';

part 'result_list_model.g.dart';

@freezed
class ResultListModel with _$ResultListModel {
  factory ResultListModel({
    required List<ResultModel> resultList,
  }) = _ResultList;

  factory ResultListModel.fromJson(Map<String, dynamic> json) =>
      _$ResultListModelFromJson(json);
}
