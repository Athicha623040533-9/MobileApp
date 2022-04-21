import 'package:flutter/material.dart';
import 'package:stateful_test/app_screens/confirmation.dart';

class ProfileImageAsset extends StatelessWidget {
  const ProfileImageAsset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage("images/MyPic.png");
    Image image = Image(image: assetImage, height: 400);
    return Container(
      child: image,
      padding: const EdgeInsets.only(right: 10, top: 40),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: const EdgeInsets.only(left: 15.0, top: 100.0),
            alignment: Alignment.center,
            color: Colors.redAccent,
            //width: 300.0,
            //height: 100.0,
            //margin: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 320),
            child: Column(children: <Widget>[
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Expanded(
                        child: Text("Athicha Santi",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Itim',
                                fontSize: 30.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.yellowAccent))),
                    Expanded(
                        child: Text("623040533-9",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Itim',
                                fontSize: 30.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.yellowAccent))),
                  ]),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Expanded(
                      child: Text("Photo Credit:",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Itim',
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.lightBlueAccent))),
                  Expanded(
                      child: Text("Dol Hinta",
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
              const SummitBot()
            ])));
  }
}
