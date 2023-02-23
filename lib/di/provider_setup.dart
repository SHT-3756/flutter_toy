import 'package:mbti/data/data_source/gist_api.dart';
import 'package:mbti/data/repository/gist_api_repository_impl.dart';
import 'package:mbti/domain/repository/result_api_repository.dart';
import 'package:mbti/domain/repository/step_api_repository.dart';
import 'package:mbti/domain/use_case/get_results_use_case.dart';
import 'package:mbti/domain/use_case/get_steps_use_case.dart';
import 'package:mbti/domain/use_case/use_cases.dart';
import 'package:mbti/presentation/result/result_view_model.dart';
import 'package:mbti/presentation/step/step_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:http/http.dart' as http;

Future<List<SingleChildWidget>> getProviders() async {
  GistApi api = GistApi(http.Client());
  StepApiRepository stepsRepo = GistApiRepositoryImpl(api);
  ResultApiRepository resultsRepo = GistApiRepositoryImpl(api);

  UseCases useCases = UseCases(
    getResults: GetResultsUseCase(repository: resultsRepo),
    getSteps: GetStepsUseCase(repository: stepsRepo),
  );

  StepViewModel stepViewModel = StepViewModel(useCases.getSteps);
  ResultViewModel resultViewModel = ResultViewModel(useCases.getResults);

  return [
    ChangeNotifierProvider(create: (_) => stepViewModel),
    ChangeNotifierProvider(create: (_) => resultViewModel),
  ];
}
