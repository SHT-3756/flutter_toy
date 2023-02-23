import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mbti/data/data_source/result.dart';

class GistApi {
  final http.Client client;

  GistApi(this.client);

  Future<Result<Iterable>> fetch(String baseUrl, String query) async {
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
