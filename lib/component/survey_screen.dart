import 'package:flutter/material.dart';
import 'package:mbti/component/button.dart';
import 'package:mbti/constant/color.dart';

class SurveyScreen extends StatelessWidget {
  const SurveyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final commonTextStyle = TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.w500,
    );

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'mbti',
            style: commonTextStyle,
          ),
          backgroundColor: primaryColor,
        ),
        body: Container(
          color: Colors.green,
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TopIconPart(),
                SizedBox(height: 30.0),
                BodyPart(),
                SizedBox(height: 30.0),
                BottomPart(),
              ],
            ),
          ),
        ));
    ;
  }
}

class TopIconPart extends StatelessWidget {
  const TopIconPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 13;

    return Expanded(
      child: ListView.builder(
          itemCount: 12,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Image.asset(
              'asset/img/jjang2.png',
              width: width,
            );
          }),
    );
  }
}

class BodyPart extends StatelessWidget {
  const BodyPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final commonTextStyle = TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.w500,
    );
    return Expanded(
      flex: 5,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
        ),
        // height: 300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Q.',
                style: commonTextStyle,
              ),
              Text(
                '질문입니다.질문입니다.질문입니다.질문입니다.질문입니다.질문입니다.질문입니다.질문입니다.질문입니다.질문입니다.질문입니다.질문입니다.질문입니다.질문입니다.질문입니다.질문입니다.질문입니다.질문입니다.질문입니다.질문입니다.질문입니다.질문입니다.',
                textAlign: TextAlign.center,
                style: commonTextStyle.copyWith(fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomPart extends StatelessWidget {
  const BottomPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomButton(
            buttonText:
                '1번1번1번1번1번1번1번1번1번1번1번1번1번1번1번1번1번1번1번1번1번1번1번1번1번1번1번1번1번1번1번1번1번1번1번1번',
            buttonColor: primaryColor,
            onPressed: () {},
          ),
          SizedBox(
            height: 10,
          ),
          CustomButton(
            buttonText:
                '2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번2번',
            buttonColor: primaryColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
