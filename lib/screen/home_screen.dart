import 'package:flutter/material.dart';
import 'package:mbti/component/button.dart';
import 'package:mbti/component/survey_screen.dart';
import 'package:mbti/constant/color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fs = TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.w500,
    );

    return Scaffold(
      body: Container(
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
                        Image.asset('asset/img/jjang1.png'),
                      ]),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: CustomButton(
                      buttonText: '시작하기!',
                      buttonColor: primaryColor,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => SurveyScreen()),
                        );
                      }),
                ),
              ],
            ),
          )),
    );
  }
}
