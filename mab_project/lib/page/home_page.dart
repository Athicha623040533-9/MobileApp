import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        Row(
          children: const [
            Text(
              'test1',
              style: TextStyle(fontSize: 60),
            )
          ],
        ),
      ]),
    );
  }
}
