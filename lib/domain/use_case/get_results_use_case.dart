import 'package:mbti/data/data_source/result.dart';
import 'package:mbti/domain/model/result/result_model.dart';
import 'package:mbti/domain/repository/result_api_repository.dart';

class GetResultsUseCase {
  final ResultApiRepository repository;

  GetResultsUseCase({required this.repository});

  Future<Result<List<ResultModel>>> call(String query) async {
    final result = await repository.fetchResult(query);

    return result.when(success: (successResponseData) {
      return Result.success(successResponseData);
    }, error: (errMsg) {
      return Result.error(errMsg);
    });
  }
}
