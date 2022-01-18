import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.redAccent,
            //width: 300.0,
            //height: 100.0,
            margin: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 320),
            child: const Text(
              "อธิชา แสนธิ",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Itim',
                  fontSize: 40.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.yellowAccent),
            )));
  }
}
