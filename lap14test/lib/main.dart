import 'package:flutter/material.dart';
import 'app_screen/all_question.dart';
import 'app_screen/questioninfo.dart';

main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}
