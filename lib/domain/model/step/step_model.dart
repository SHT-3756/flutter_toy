import 'package:freezed_annotation/freezed_annotation.dart';

part 'step_model.freezed.dart';

part 'step_model.g.dart';

@freezed
class StepModel with _$StepModel {
  factory StepModel({
    required String title,
    required String type,
    required String answerA,
    required String answerB,
  }) = _StepModel;

  factory StepModel.fromJson(Map<String, dynamic> json) => _$StepModelFromJson(json);
}
