import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ItemCounter('count'),
  ));
}

class ItemCounter extends StatefulWidget {
  final String name;
  ItemCounter(this.name);

  @override
  _ItemCounterState createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test",
      theme: ThemeData(
          appBarTheme: const AppBarTheme(foregroundColor: Colors.white)),
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: const Text("Stateful Widgets DEMO"),
        ),
        body: Center(
            child: GestureDetector(
          onTap: () {
            setState(() {
              count++;
            });
          },
          child: Text(
            '$count',
            style: const TextStyle(fontSize: 40.0),
          ),
        )),
      ),
    );
  }
}
