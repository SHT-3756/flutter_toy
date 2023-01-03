class QuestionModel {
  final String title;
  final String type;
  final String questionA;
  final String questionB;

  QuestionModel.fromMap(Map<String, dynamic> map)
      : title = map['title'],
        type = map['type'],
        questionA = map['questionA'],
        questionB = map['questionB'];


  @override
  String toString() => "titile: $title";
}
