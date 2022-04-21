import 'package:athicha_longlist/list_test/long_list.dart';
import 'package:flutter/material.dart';

void main() {
  int i = 0;
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Basic List View Demo",
      home: Scaffold(
          appBar: AppBar(title: const Text("Widgets Exercise")),
          body: getListView(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: const FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.add),
            tooltip: "Add One More Item",
          ))));
}
