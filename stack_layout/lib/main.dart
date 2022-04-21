import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Layout Flutter Exercise By Athicha Santi",
      home: Scaffold(
        body: Container(
          color: Colors.green,
          child: ListView(
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [buildProfile()],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [buildCard()],
              ),
              SmoothStarRating(
                starCount: 5,
                rating: 4,
                size: 20,
                color: Colors.green,
                borderColor: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProfile() {
    //final urlProfile =
    //'https://cdni-hw.ch7.com/dm/sz-md/i/images/2021/01/05/5ff359d206f275.54142114.jpg';
    return Stack(
      alignment: const Alignment(0.6, 0.6),
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://cdni-hw.ch7.com/dm/sz-md/i/images/2021/01/05/5ff359d206f275.54142114.jpg"),
          radius: 100,
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.black45,
          ),
          child: const Text(
            "เวียร์ ศุกลวัฒน์",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildCard() {
    return Card(
      margin: EdgeInsets.all(20),
      child: Column(
        children: const [
          ListTile(
            title: Text(
              "Weir Place",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: const Text('Khon Kaen, Thailand, 40000'),
            leading: Icon(
              Icons.apartment,
              color: Colors.red,
            ),
          ),
          const Divider(),
          ListTile(
            title: Text(
              "(000) 111 111",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            leading: Icon(
              Icons.apartment,
              color: Colors.red,
            ),
          ),
          ListTile(
            title: Text(
              "atdjkads@gmail.com",
            ),
            leading: Icon(
              Icons.apartment,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
