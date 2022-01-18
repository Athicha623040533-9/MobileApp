import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My favorite Quote',
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
                backgroundColor: Colors.black38,
                foregroundColor: Colors.yellowAccent)),
        home: Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: AppBar(
            title: const Text('My favorite Quote'),
          ),
          body: Column(
            children: <Widget>[
              const Expanded(
                  child: Image(
                      image: NetworkImage(
                          'https://greetingideas.com/core/webp-express/webp-images/uploads/2020/07/Archery-Quotes-Greeting-Ideas-1-1024x1024.png.webp'))),
              Container(
                  padding: const EdgeInsets.all(20.0),
                  margin: const EdgeInsets.symmetric(vertical: 80.0),
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      border: Border.all(color: Colors.black)),
                  child: const Text(
                    "Milan   E.   Elott",
                    style: TextStyle(
                        fontSize: 40.0, color: Colors.lightGreenAccent),
                  )),
            ],
          ),
        ));
  }
}
