import 'package:flutter/material.dart';

class Clubpage extends StatelessWidget {
  const Clubpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Club'),
      ),
      body: const Center(
        child: Text(
          'test4',
          style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}
