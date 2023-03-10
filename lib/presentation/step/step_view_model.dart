import 'dart:async';

import 'package:flutter/material.dart' hide StepState;
import 'package:mbti/data/data_source/result.dart';
import 'package:mbti/domain/model/step/step_model.dart';
import 'package:mbti/domain/use_case/get_results_use_case.dart';
import 'package:mbti/domain/use_case/get_steps_use_case.dart';
import 'package:mbti/presentation/result/result_screen.dart';
import 'package:mbti/presentation/result/result_view_model.dart';
import 'package:mbti/presentation/step/step_state.dart';
import 'package:mbti/presentation/step/step_ui_event.dart';

class StepViewModel with ChangeNotifier {
  final GetStepsUseCase getStepsUseCase;

  StepState _state = StepState(
    steps: [],
    isLoading: false,
    selectedResult: '',
    selectedStep: '',
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

  indexPlus(String type) {
    if (state.steps.length - 1 == state.currentIndex) {
      _state = state.copyWith(
        isLastPage: true,
        selectedStep: state.selectedStep + type,
      );
      notifyListeners();
    } else {
      _state = state.copyWith(
        isLastPage: false,
        currentIndex: state.currentIndex + 1,
        selectedStep: state.selectedStep + type,
      );
      notifyListeners();
    }
  }

  duplicate(context, String text) {
    final eiList = text.substring(0, 3).split('');
    final nsList = text.substring(3, 6).split('');
    final tfList = text.substring(6, 9).split('');
    final jpList = text.substring(9, 12).split('');

    final ei = eiList.fold(0, (prev, next) {
      if (next == 'E') {
        prev += 1;
      }

      return prev;
    });
    final ns = nsList.fold(0, (prev, next) {
      if (next == 'N') {
        prev += 1;
      }

      return prev;
    });
    final tf = tfList.fold(0, (prev, next) {
      if (next == 'T') {
        prev += 1;
      }

      return prev;
    });
    final jp = jpList.fold(0, (prev, next) {
      if (next == 'J') {
        prev += 1;
      }

      return prev;
    });

    String mbti = '';

    if (ei >= 2) {
      mbti += 'E';
    } else {
      mbti += 'I';
    }

    if (ns >= 2) {
      mbti += 'N';
    } else {
      mbti += 'S';
    }

    if (tf >= 2) {
      mbti += 'T';
    } else {
      mbti += 'F';
    }

    if (jp >= 2) {
      mbti += 'J';
    } else {
      mbti += 'P';
    }

    _state = state.copyWith(selectedResult: mbti);
    notifyListeners();

    Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => ResultScreen(mbtiType: state.selectedResult)));
  }
}
