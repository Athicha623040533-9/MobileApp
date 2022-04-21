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
        margin: EdgeInsets.all(25.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: Colors.redAccent, border: Border.all(color: Colors.black)),
          child:
              Padding(padding: const EdgeInsets.all(11.0), child: Text(name)),
        ),
      )),
      Expanded(
          child: Container(
        //margin: EdgeInsets.all(8.0),
        child: Image(
          image: NetworkImage(image),
          height: 120,
          width: 110,
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
            body: Container(
              margin: const EdgeInsets.only(left: 20, top: 230, bottom: 250),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PetName("Dog",
                      "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*"),
                  SizedBox(width: 8.0),
                  PetName("Cat",
                      "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*"),
                  SizedBox(width: 8.0),
                  PetName("Snake",
                      "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*"),
                  SizedBox(width: 8.0),
                ],
              ),
            )));
  }
}
