import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mbti/data/data_source/result.dart';

class GistApi {
  final http.Client client;

  GistApi(this.client);

  static const baseUrl =
      'https://gist.githubusercontent.com/SHT-3756/849d487af6d79a467696aeb42360b411/raw/53d041a939240896af571736bc0fdeebf4c90527/';

  // 만약 키가 있다면!
  // static const key ='키' ;
  // mbti_result.json 결과
  // mbti_step.json 단계
  Future<Result<Iterable>> fetch(String query) async {
    try {
      final res = await client.get(Uri.parse('$baseUrl/$query'));
      Map<String, dynamic> jsonResponse = jsonDecode(res.body);
      Iterable result = jsonResponse['result'];
      // print('@@@@@@result: $result @@@@@');
      return Result.success(result);
    } catch (e) {
      return Result.error('error: $e');
    }
  }
}
