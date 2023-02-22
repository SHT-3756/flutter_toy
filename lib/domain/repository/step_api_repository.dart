import 'package:mbti/data/data_source/result.dart';
import 'package:mbti/domain/model/step/step_model.dart';

abstract class StepApiRepository {
  Future<Result<List<StepModel>>> fetchStep(String query);
}
