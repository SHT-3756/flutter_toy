import 'package:flutter/material.dart';
import 'package:mbti/presentation/common/custom_button.dart';
import 'package:mbti/presentation/step/step_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fs = TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.w500,
    );

    return Container(
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '짱구의 The The 못말리는',
                        textAlign: TextAlign.center,
                        style: fs,
                      ),
                      Image.asset('assets/img/jjang1.png'),
                    ]),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: CustomButton(
                    buttonText: '시작하기!',
                    buttonColor: Colors.white70,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const StepScreen()),
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
