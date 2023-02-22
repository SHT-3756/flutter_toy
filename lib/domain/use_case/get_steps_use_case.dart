import 'package:mbti/data/data_source/result.dart';
import 'package:mbti/domain/model/step/step_model.dart';
import 'package:mbti/domain/repository/step_api_repository.dart';

class GetStepsUseCase {
  final StepApiRepository repository;

  GetStepsUseCase(this.repository);

  Future<Result<List<StepModel>>> call(String query) async {
    final result = await repository.fetchStep(query);

    return result.when(success: (successResponseData) {
      return Result.success(successResponseData);
    }, error: (errMsg) {
      return Result.error(errMsg);
    });
  }
}
