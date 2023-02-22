import 'package:freezed_annotation/freezed_annotation.dart';

part 'step_ui_event.freezed.dart';

@freezed
abstract class StepUiEvent<T> with _$StepUiEvent<T> {
  const factory StepUiEvent.showSnackBar(String message) = ShowSnackBar;
}
