import 'package:flutter/material.dart';
import 'package:mbti/presentation/common/default_layout.dart';
import 'package:mbti/presentation/result/result_view_model.dart';
import 'package:provider/provider.dart';

class ResultScreen extends StatefulWidget {
  final String mbtiType;
  const ResultScreen({Key? key, required this.mbtiType}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  void initState() {
    super.initState();
    test();
  }

  Future<void> test() async {
    final resultViewModel = context.read<ResultViewModel>();

    await resultViewModel.fetch(widget.mbtiType);
  }

  @override
  Widget build(BuildContext context) {
    final resultViewModel = context.watch<ResultViewModel>();
    final state = resultViewModel.state;

    return DefaultLayout(
        appbar: AppBar(title: const Text('결과')),
        body: resultViewModel.state.isLoading
            ? const Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  // Image.asset(state.results[0].detail.path),
                  // Text(state.results[0].type),
                  // Text(state.results[0].detail.name),
                  // Text(state.results[0].detail.contents),
                ],
              ));
  }
}
