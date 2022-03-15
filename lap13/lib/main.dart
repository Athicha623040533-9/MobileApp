import 'package:flutter/material.dart';
import 'app_screen/questioninfo.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Interactivity Ex',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Question(),
      ),
    );
  }
}
