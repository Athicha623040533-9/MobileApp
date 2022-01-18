import 'package:flutter/material.dart';
import 'package:stateful_test/app_screens/flight_bookbutton.dart';

class ProfileImageAsset extends StatelessWidget {
  const ProfileImageAsset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage("images/plane.png");
    Image image = Image(image: assetImage, width: 400, height: 300);
    return Container(child: image);
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: const EdgeInsets.only(left: 10, top: 40),
            alignment: Alignment.center,
            color: Colors.redAccent,
            //width: 300.0,
            //height: 100.0,
            //margin: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 320),
            child: Column(
              children: <Widget>[
                Row(children: const <Widget>[
                  Expanded(
                      child: Text("Space Jet",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Itim',
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.yellowAccent))),
                  Expanded(
                      child: Text("From Khon Kaen to Chiang Mai",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Itim',
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.yellowAccent))),
                ]),
                Row(
                  children: const <Widget>[
                    Expanded(
                        child: Text("Thai AirWays",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Itim',
                                fontSize: 30.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.lightBlueAccent))),
                    Expanded(
                        child: Text("From Bangkok to Tokyo",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Itim',
                                fontSize: 30.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.lightBlueAccent))),
                  ],
                ),
                const ProfileImageAsset(),
                const FlightBookButton()
              ],
            )));
  }
}
