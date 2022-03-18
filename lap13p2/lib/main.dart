import 'package:flutter/material.dart';
import 'package:lap13/app_screen/all_question.dart';
import 'app_screen/questioninfo.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Interactivity Ex',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Question(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
