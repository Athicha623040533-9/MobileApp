import 'package:flutter/material.dart';

class Statpage extends StatelessWidget {
  const Statpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Container(
            child: ListView(
          children: <Widget>[
            Row(
              children: const <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/Pro_Trong.jpg'),
                  radius: 35,
                ),
                SizedBox(
                  width: 35,
                ),
                Text(
                  'Activity',
                  style: TextStyle(fontSize: 60),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
