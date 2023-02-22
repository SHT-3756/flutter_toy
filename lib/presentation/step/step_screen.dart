import 'package:flutter/material.dart';
import 'package:mbti/presentation/common/default_layout.dart';

class StepScreen extends StatelessWidget {
  const StepScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: Text('스텝별'),
    );
  }
}
