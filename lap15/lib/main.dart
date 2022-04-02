import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_screen/all_question.dart';
import 'app_screen/questioninfo.dart';
import 'app_screen/total_score.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Testscore(),
        ),
      ],
      child: const MaterialApp(home: MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}
