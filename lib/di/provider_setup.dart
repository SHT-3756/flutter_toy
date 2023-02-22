import 'package:mbti/data/data_source/gist_api.dart';
import 'package:mbti/data/repository/gist_api_repository_impl.dart';
import 'package:mbti/domain/repository/result_api_repository.dart';
import 'package:mbti/domain/repository/step_api_repository.dart';
import 'package:mbti/domain/use_case/get_results_use_case.dart';
import 'package:mbti/domain/use_case/get_steps_use_case.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:http/http.dart' as http;

// 1. provider 전체
List<SingleChildWidget> globalProviders = [
  ...independentModels,
  ...dependentModels,
];

// 2. 독립적인 객체
List<SingleChildWidget> independentModels = [
  Provider<http.Client>(
    create: (context) => http.Client(),
  ),
];

// 3. 2번에 의존성있는 객체
List<SingleChildWidget> dependentModels = [
  ProxyProvider<http.Client, GistApi>(
    update: (context, client, _) => GistApi(client),
  ),
  ProxyProvider<http.Client, ResultApiRepository>(
    update: (context, api, _) => GistApiRepositoryImpl(api as GistApi),
  ),
  ProxyProvider<http.Client, StepApiRepository>(
    update: (context, api, _) => GistApiRepositoryImpl(api as GistApi),
  ),
  ProxyProvider<http.Client, GetResultsUseCase>(
    update: (context, repository, _) =>
        GetResultsUseCase(repository as ResultApiRepository),
  ),
  ProxyProvider<http.Client, GetStepsUseCase>(
    update: (context, repository, _) =>
        GetStepsUseCase(repository as StepApiRepository),
  ),
];

// 4. viewModels
// List<SingleChildWidget> viewModels = [
//   ChangeNotifierProvider(create: (context) => )
// ];