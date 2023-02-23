import 'package:flutter/material.dart';
import 'package:mbti/data/data_source/result.dart';
import 'package:mbti/domain/model/result/result_model.dart';
import 'package:mbti/domain/use_case/get_results_use_case.dart';
import 'package:mbti/presentation/result/result_state.dart';

class ResultViewModel extends ChangeNotifier {
  final GetResultsUseCase getResultsUseCase;

  // 생성자
  ResultViewModel(this.getResultsUseCase) {

  }

  ResultState _state = ResultState(
    results: [],
    isLoading: false,
  );

  ResultState get state => _state;

  Future<void> fetch(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();
    final Result<List<ResultModel>> result = await getResultsUseCase(query);
    result.when(success: (successResponseData) {
      _state = state.copyWith(results: successResponseData);
    }, error: (errorMsg) {
      print(errorMsg);
    });

    _state = state.copyWith(isLoading: false);
    notifyListeners();
  }
}
