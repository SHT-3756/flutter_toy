import 'package:flutter/material.dart';
import 'package:mbti/presentation/common/custom_button.dart';
import 'package:mbti/presentation/common/default_layout.dart';
import 'package:mbti/presentation/result/result_screen.dart';
import 'package:mbti/presentation/step/step_view_model.dart';
import 'package:provider/provider.dart';

class StepScreen extends StatefulWidget {
  static const routeName = 'stepScreen';

  const StepScreen({Key? key}) : super(key: key);

  @override
  State<StepScreen> createState() => _StepScreenState();
}

class _StepScreenState extends State<StepScreen> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      final stepModel = context.read<StepViewModel>();
      stepModel.eventController.listen((event) {
        event.when(showSnackBar: (message) {
          final snackBar = SnackBar(content: Text(message));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final stepViewModel = context.watch<StepViewModel>();
    final index = stepViewModel.state.currentIndex;
    final state = stepViewModel.state.steps;

    const ts = TextStyle(
      fontSize: 18,
      overflow: TextOverflow.ellipsis,
    );

    void goResultScreen() {
      if (stepViewModel.state.isLastPage) {
        stepViewModel.duplicate(context, stepViewModel.state.selectedStep);
        // Navigator.of(context).push(MaterialPageRoute(
        //     builder: (_) => ResultScreen(
        //           mbtiType: stepViewModel.state.selectedResult,
        //         )));
      }
    }

    return DefaultLayout(
      body: Container(
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
          child: stepViewModel.state.isLoading
              ? const CircularProgressIndicator()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 500,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Q. ${state[index].title}',
                            style: const TextStyle(
                              fontSize: 25,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 20,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomButton(
                          buttonText: '1. ${state[index].answerA}',
                          buttonColor: Colors.white70,
                          onPressed: () {
                            stepViewModel
                                .indexPlus(state[index].type.substring(0, 1));
                            goResultScreen();
                          },
                          textStyle: ts,
                        ),
                        const SizedBox(height: 10),
                        CustomButton(
                          buttonText: '2. ${state[index].answerB}',
                          buttonColor: Colors.white70,
                          onPressed: () {
                            stepViewModel
                                .indexPlus(state[index].type.substring(1));
                            goResultScreen();
                          },
                          textStyle: ts,
                        ),
                      ],
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
