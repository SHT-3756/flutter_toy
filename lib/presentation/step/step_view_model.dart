import 'dart:async';

import 'package:flutter/material.dart' hide StepState;
import 'package:mbti/data/data_source/result.dart';
import 'package:mbti/domain/model/step/step_model.dart';
import 'package:mbti/domain/use_case/get_steps_use_case.dart';
import 'package:mbti/presentation/result/result_screen.dart';
import 'package:mbti/presentation/step/step_state.dart';
import 'package:mbti/presentation/step/step_ui_event.dart';

class StepViewModel with ChangeNotifier {
  final GetStepsUseCase getStepsUseCase;

  StepState _state = StepState(
    steps: [],
    isLoading: false,
    selectedResult: [],
    currentIndex: 0,
    isLastPage: false,
  );

  StepState get state => _state;

  StepViewModel(this.getStepsUseCase) {
    fetch('mbti_step.json');
  }

  // 이벤트 처리 stream
  final _eventController = StreamController<StepUiEvent>();

  Stream<StepUiEvent> get eventController => _eventController.stream;

  Future<void> fetch(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final Result<List<StepModel>> result = await getStepsUseCase(query);

    result.when(
      success: (successResponseData) {
        _state = state.copyWith(steps: successResponseData);
        notifyListeners();
      },
      error: (errMsg) {
        _eventController.add(StepUiEvent.showSnackBar(errMsg));
        notifyListeners();
      },
    );

    _state = state.copyWith(isLoading: false);
    notifyListeners();
  }

  void indexPlus() {
    if (state.steps.length - 1 == state.currentIndex) {
      _state = state.copyWith(isLastPage: true);
      notifyListeners();
    } else {
      _state = state.copyWith(currentIndex: state.currentIndex + 1);
      _state = state.copyWith(isLastPage: false);
      notifyListeners();
    }
  }
}
