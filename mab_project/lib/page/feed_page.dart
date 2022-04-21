import 'package:flutter/material.dart';

class Feedpage extends StatelessWidget {
  const Feedpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed'),
      ),
      body: const Center(
        child: Text(
          'test2',
          style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}
