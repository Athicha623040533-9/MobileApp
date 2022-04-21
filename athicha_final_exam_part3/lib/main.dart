import 'package:athicha_final_exam_part3/app_screen/all_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(theme: ThemeData(primaryColor: Colors.white), home: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}
