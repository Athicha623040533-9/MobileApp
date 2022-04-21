import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Choice extends StatelessWidget {
  final String name;
  final Color namecolor;

  const Choice(this.name, this.namecolor);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 55,
      color: namecolor,
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            textDirection: TextDirection.ltr,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Layout Flutter Exercise By Athicha Santi",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Layout Flutter Exercise By Athicha Santi"),
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    "What is this picture?",
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 29,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Image(
                    image: AssetImage("image/kku.jpg"),
                    width: 300,
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Choice("Khon Kaen University", Colors.green),
                  SizedBox(
                    width: 12,
                  ),
                  Choice("Chiang Mai University", Colors.purpleAccent),
                ],
              ),
              //Choice("Khon Kaen University"),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Choice("Chulalongkorn University", Colors.pinkAccent),
                  SizedBox(
                    width: 12,
                  ),
                  Choice("Mahidol University", Colors.blueAccent)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
