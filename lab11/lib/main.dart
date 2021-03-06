import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([]);
  runApp(const MaterialApp(home: MyApp()));
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
          : AppBar(title: const Text('My favorite Celeb')),
      body: isPortrait
          ? Container(
              color: Colors.yellow,
              child: ListView(
                children: <Widget>[
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [buildProfile()],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [buildCard()],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SmoothStarRating(
                        starCount: 5,
                        rating: 4,
                        size: 25,
                        color: Colors.green,
                        borderColor: Colors.black,
                        defaultIconData: Icons.star,
                      )
                    ],
                  )
                ],
              ),
            )
          : Container(
              color: Colors.yellow,
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [buildProfile()],
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      buildCard(),
                      const SizedBox(
                        height: 30,
                      ),
                      SmoothStarRating(
                        starCount: 5,
                        rating: 4,
                        size: 25,
                        color: Colors.green,
                        borderColor: Colors.black,
                        defaultIconData: Icons.star,
                      )
                    ],
                  )),
                ],
              ),
            ),
    );
  }

  Widget buildProfile() {
    return Stack(
      alignment: const Alignment(0.6, 0.6),
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://cdni-hw.ch7.com/dm/sz-md/i/images/2021/01/05/5ff359d206f275.54142114.jpg"),
          radius: 150,
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.black45,
          ),
          child: const Text(
            "?????????????????? ???????????????????????????",
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
              "(082) 147 6788",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            leading: Icon(
              Icons.contact_phone,
              color: Colors.red,
            ),
          ),
          ListTile(
            title: Text(
              "Sukollawat@gmail.com",
            ),
            leading: Icon(
              Icons.contact_mail,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
