import 'package:flutter/material.dart';
import 'package:mbti/component/button.dart';
import 'package:mbti/constant/color.dart';
import 'package:mbti/model/mbti_question_model.dart';

class SurveyScreen extends StatefulWidget {
  const SurveyScreen({Key? key}) : super(key: key);

  @override
  State<SurveyScreen> createState() => _SurveyScreenState();
}

class _SurveyScreenState extends State<SurveyScreen> {
  List<QuestionModel> questionLists = [
    QuestionModel.fromMap({
      'title': '곧 크리스마스!\n회사에서 크리스마스 파티 스텝을 모집한다는데?',
      'type': 'EI',
      'questionA': '재밌겠다!\n○○한테 같이 지원하자고 해야지~',
      'questionB': '파티 스텝은 못하지ㅎ...\n(그래도 파티는 재밌겠다 히히)'
    }),
    QuestionModel.fromMap({
      'title': '주말에 씻지도 않고 있는데 친구가 만나자고 연락을 한다.',
      'type': 'EI',
      'questionA': '좋지~! 바로 준비하고 갈게!',
      'questionB': '갑작스럽게... 이런저런 핑계를 대며 안나간다.'
    }),
    QuestionModel.fromMap({
      'title': '새학기 자기소개 시간에 나는???',
      'type': 'EI',
      'questionA': '오늘 나의 매력을 보여주겠어!!!',
      'questionB': '무사히 내 차례 넘어갔으면 좋겠다...'
    }),
    QuestionModel.fromMap({
      'title': '해외 출장이 잡혔다!\n전날 잠들기 전 나는?',
      'type': 'SN',
      'questionA': '짐 다 챙겼고 일찍 자야지~',
      'questionB': '다 챙겼겠지?\n여분 옷을 좀 더 챙길까..\n(뒤척뒤척)'
    }),
    QuestionModel.fromMap({
      'title': '일이 너무 많아서 머리가 복잡해! 계획했던 일을 이번 주까지 끝내야하는데 할 수 있을까?',
      'type': 'SN',
      'questionA': '기간을 조금 늘리더라도 정확하게 처리한다.',
      'questionB': '빠르게 일을 끝내고 수정할 게 생기면 그때가서 처리한다.'
    }),
    QuestionModel.fromMap({
      'title': '친구가 어제 본 영화에 대해 물어볼 때',
      'type': 'SN',
      'questionA': '배우 줄거리 연기 등 구체적으로 얘기한다.',
      'questionB': '내가 느낀 감정에 대해 얘기한다.'
    }),
    QuestionModel.fromMap({
      'title': '친구가 이직에 대한 고민을 하고 있다!\n다른 사람의 계획에 있어 당신의 반응은?',
      'type': 'TF',
      'questionA': '그럼 이렇게 해보는 건 어때? 계획들에 대한 분석적으로 살펴보고 다양한 의견을 준다',
      'questionB': '아 진짜? 그런 고민 왜 혼자 하고 있었어! 그동안 안힘들었어? 라고 위로하며 공감한다.',
    }),
    QuestionModel.fromMap({
      'title': '친했던 동기가\n퇴사를?',
      'type': 'TF',
      'questionA': '일하면서 많이 힘들었나?\n내가 좀 더 챙겨줄걸.',
      'questionB': '아 이직하나?\n퇴사하고 뭐하냐고 물어봐야지.'
    }),
    QuestionModel.fromMap({
      'title': '친구가 약속시간에 1시간 정도 늦은 상황 내가 더 듣고 싶은 말은?',
      'type': 'TF',
      'questionA': '(늦은 사유를 말하며)늦어서 정말 미안해',
      'questionB': '진짜 진짜 미안해.. 앞으로 약속시간 잘 지킬게..ㅠㅠ'
    }),
    QuestionModel.fromMap({
      'title': '대규모 프로젝트를 맡게 되어 떨리는 마음에 처음 시작한 건?',
      'type': 'JP',
      'questionA': '큰 프로젝트인 만큼 계획이 중요해!\n목적과 목표 먼저 정리해봐야지!',
      'questionB': '당장 미팅 잡고\n팀원이랑 이야기하면 되겠지?'
    }),
    QuestionModel.fromMap({
      'title': '내가 더욱 중요하게 생각하는 것은?',
      'type': 'JP',
      'questionA': '일이 수행된 방식 및 과정이 중요하다.',
      'questionB': '임무를 완수했는지 결과가 더 중요하다.'
    }),
    QuestionModel.fromMap({
      'title': '여행을 간다면',
      'type': 'JP',
      'questionA': '철저하게 계획을 짜서 가야지!',
      'questionB': '계획이 뭐가 중요해 그냥 가는거지~'
    }),
    QuestionModel.fromMap({
      'title': '길을 가다 마음에 드는 옷을 발견했을 때 나는?',
      'type': 'JP',
      'questionA': '나중에 더 찾아보고 사든가 해야겠다.',
      'questionB': '가격도 괜찮고 디자인도 괜찮은데? 완전 내 옷이네~ 바로 산다.'
    }),
  ];

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
                'dd',
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
