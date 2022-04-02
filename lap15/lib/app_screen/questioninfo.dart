import 'package:flutter/material.dart';
import 'all_question.dart';

class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  var list_question = {
    1: {
      "question": "Where is this place?",
      "title": "Question1",
      "imgAsset": "images/kku.jpg",
      "q1": "Khon Kaen University",
      "q2": "Chiang Mai University",
      "q3": "Chulalongkorn University",
      "q4": "Mahidol University",
      "trueans": "Khon Kaen University"
    },
    2: {
      "question": "Where is this?",
      "title": "Question2",
      "imgAsset": "images/kku.jpg",
      "q1": "CMU",
      "q2": "KKU",
      "q3": "CU",
      "q4": "MU",
      "trueans": "KKU"
    },
    3: {
      "question": "Where is this university?",
      "title": "Question3",
      "imgAsset": "images/kku.jpg",
      "q1": "CMU",
      "q2": "CU",
      "q3": "KKU",
      "q4": "MU",
      "trueans": "KKU"
    }
  };
  @override
  Widget build(BuildContext context) {
    return AllQuestion(num: 1, info: list_question);
  }
}
