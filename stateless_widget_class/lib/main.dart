import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class PetName extends StatelessWidget {
  final String name;
  final String image;
  const PetName(this.name, this.image);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
          child: Container(
        margin: EdgeInsets.all(8.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: Colors.redAccent, border: Border.all(color: Colors.black)),
          child: Padding(padding: const EdgeInsets.all(8.0), child: Text(name)),
        ),
      )),
      Expanded(
          child: Container(
        margin: EdgeInsets.all(8.0),
        child: Image(
          image: NetworkImage(image),
        ),
      ))
    ]);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Pet App',
        home: Scaffold(
            appBar: AppBar(
              title: Text('My Pet App'),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  PetName("test1"),
                  SizedBox(width: 8.0),
                  PetName("test2"),
                  SizedBox(width: 8.0),
                  PetName("test3"),
                  SizedBox(width: 8.0),
                ],
              ),
            )));
  }
}
