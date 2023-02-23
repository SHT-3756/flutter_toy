import 'package:mbti/domain/use_case/get_results_use_case.dart';
import 'package:mbti/domain/use_case/get_steps_use_case.dart';

class UseCases {
  final GetResultsUseCase getResults;
  final GetStepsUseCase getSteps;

  UseCases({
    required this.getResults,
    required this.getSteps,
  });
}
