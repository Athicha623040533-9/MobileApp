import 'package:flutter/material.dart';
import 'package:athicha_midterm_exam_part3/app_screen/basic_listview.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Basic List View Demo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Athicha Exam Part 3"),
          backgroundColor: Colors.pink,
        ),
        body: const BasicListView(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => print('The current number of philanthropists is 4'),
          backgroundColor: Colors.pink,
        ),
      )));
}
}
