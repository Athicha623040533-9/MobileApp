import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([]);
  runApp(const MaterialApp(home: MyApp()));
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
      decoration: BoxDecoration(
        color: namecolor,
      ),
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      child: Text(
        name,
        textDirection: TextDirection.ltr,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      appBar: MediaQuery.of(context).orientation == Orientation.landscape
          ? null
          : AppBar(
              title: const Text("Layout Flutter Exercise By Athicha Santi")),
      body: isPortrait
          ? Container(
              margin: const EdgeInsets.all(20),
              child: ListView(
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
                        image: AssetImage("images/kku.jpg"),
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
            )
          : Container(
              //margin: const EdgeInsets.all(20),
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Image(
                        image: AssetImage("images/kku.jpg"),
                        width: 350,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Choice("Khon Kaen University", Colors.green),
                      Choice("Chiang Mai University", Colors.purpleAccent),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Choice("Chulalongkorn University", Colors.pinkAccent),
                      Choice("Mahidol University", Colors.blueAccent)
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
