import 'package:flutter/material.dart';
import 'app_screen/tapbox.dart';

void main() {
  runApp(MaterialApp(
    home: Testpage(),
  ));
}

class Testpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
        appBar: MediaQuery.of(context).orientation == Orientation.landscape
            ? null
            : AppBar(
                title: const Text("Question1"),
              ),
        body: isPortrait
            ? Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 12),
                    const Text(
                      'What is this picture?',
                      style: TextStyle(fontSize: 29, color: Colors.pink),
                    ),
                    const SizedBox(height: 50),
                    const Image(
                      image: AssetImage("images/kku.jpg"),
                      width: 300,
                    ),
                    const SizedBox(height: 80),
                    Expanded(
                        child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 2.45,
                              mainAxisSpacing: 35),
                      children: const [
                        Tapbox(
                          name: 'Khon Kaen University',
                          namecolor: Colors.green,
                          correctcolor: Colors.lightGreen,
                        ),
                        Tapbox(
                          name: 'Chiang Mai University',
                          namecolor: Colors.purpleAccent,
                          correctcolor: Colors.red,
                        ),
                        Tapbox(
                          name: 'Chulalongkorn University',
                          namecolor: Colors.pinkAccent,
                          correctcolor: Colors.red,
                        ),
                        Tapbox(
                          name: 'Mahidol University',
                          namecolor: Colors.blueAccent,
                          correctcolor: Colors.red,
                        ),
                      ],
                    ))
                  ],
                ),
              )
            : Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'What is this picture?',
                      style: TextStyle(fontSize: 29, color: Colors.pink),
                    ),
                    const Image(
                      image: AssetImage("images/kku.jpg"),
                      width: 250,
                    ),
                    Expanded(
                        child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 4,
                      ),
                      children: const [
                        Tapbox(
                          name: 'Khon Kaen University',
                          namecolor: Colors.green,
                          correctcolor: Colors.lightGreen,
                        ),
                        Tapbox(
                          name: 'Chiang Mai University',
                          namecolor: Colors.purpleAccent,
                          correctcolor: Colors.red,
                        ),
                        Tapbox(
                          name: 'Chulalongkorn University',
                          namecolor: Colors.pinkAccent,
                          correctcolor: Colors.red,
                        ),
                        Tapbox(
                          name: 'Mahidol University',
                          namecolor: Colors.blueAccent,
                          correctcolor: Colors.red,
                        ),
                      ],
                    ))
                  ],
                ),
              ));
  }
}
