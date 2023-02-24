import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mbti/domain/model/step/step_model.dart';

part 'step_state.freezed.dart';

part 'step_state.g.dart';

@freezed
class StepState with _$StepState {
  factory StepState({
    required List<StepModel> steps,
    required bool isLoading,
    required String selectedResult,
    required String selectedStep,
    required int currentIndex,
    required bool isLastPage,
  }) = _StepState;

  factory StepState.fromJson(Map<String, dynamic> json) =>
      _$StepStateFromJson(json);
}
