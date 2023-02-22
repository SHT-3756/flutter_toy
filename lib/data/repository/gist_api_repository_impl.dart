import 'package:mbti/data/data_source/gist_api.dart';
import 'package:mbti/data/data_source/result.dart';
import 'package:mbti/domain/model/result/result_model.dart';
import 'package:mbti/domain/model/step/step_model.dart';
import 'package:mbti/domain/repository/result_api_repository.dart';
import 'package:mbti/domain/repository/step_api_repository.dart';

class GistApiRepositoryImpl implements ResultApiRepository, StepApiRepository {
  GistApi api;

  GistApiRepositoryImpl(this.api);

  @override
  Future<Result<List<ResultModel>>> fetchResult(String query) async {
    final Result<Iterable> result = await api.fetch(query);

    // 성공 실패 분기처리
    return result.when(success: (successData) {
      return Result.success(
          successData.map((e) => ResultModel.fromJson(e)).toList());
    }, error: (errMsg) {
      return Result.error(errMsg);
    });
  }

  @override
  Future<Result<List<StepModel>>> fetchStep(String query) async {
    final Result<Iterable> result = await api.fetch(query);

    // 성공 실패 분기처리
    return result.when(success: (successData) {
      return Result.success(
          successData.map((e) => StepModel.fromJson(e)).toList());
    }, error: (errMsg) {
      return Result.error(errMsg);
    });
  }
}
