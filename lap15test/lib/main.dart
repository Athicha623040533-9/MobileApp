import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_screen/my_chart.dart';
import 'app_screen/';
import 'app_screen/my_schedule.dart';
import 'app_screen/total_score.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Testscore(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'testApp',
      home: Mychart(),
    );
  }
}
