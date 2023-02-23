import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mbti/domain/model/result/result_model.dart';

part 'result_state.freezed.dart';

part 'result_state.g.dart';

@freezed
class ResultState with _$ResultState {
    factory ResultState({
      required List<ResultModel> results,
      required bool isLoading,
}) = _ResultState;

    factory ResultState.fromJson(Map<String, dynamic> json) => _$ResultStateFromJson(json);
}