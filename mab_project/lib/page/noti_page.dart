import 'package:flutter/material.dart';

class Notificationpage extends StatelessWidget {
  const Notificationpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
      ),
      body: const Center(
        child: Text(
          'test5',
          style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}
