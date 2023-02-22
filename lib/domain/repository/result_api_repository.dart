import 'package:mbti/data/data_source/result.dart';
import 'package:mbti/domain/model/result/result_model.dart';

abstract class ResultApiRepository {
  Future<Result<List<ResultModel>>> fetchResult(String query);
}
