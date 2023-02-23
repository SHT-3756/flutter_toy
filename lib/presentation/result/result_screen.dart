import 'package:flutter/material.dart';
import 'package:mbti/presentation/common/default_layout.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      appbar: AppBar(title: Text('결과')),
      body: Text('결과페이지'),
    );
  }
}
