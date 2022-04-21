import 'package:flutter/material.dart';
import './app_screen/test_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const Firstscreen(),
        '/second': (context) => const Secscreen(),
      },
    );
  }
}
