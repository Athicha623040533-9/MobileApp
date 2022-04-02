import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'all_question.dart';
import 'tapbox.dart';

class Testscore extends ChangeNotifier {
  int num = 0;
  String testnum = " ";
  get _num => num;
  void testpoint(score) {
    if (score == true) {
      num += 1;
      testnum = "your total score is $num";
      notifyListeners();
    } else {
      testnum = "You miss";
      notifyListeners();
    }
  }

  void RestScore() {
    num = 0;
    notifyListeners();
  }
}
