import 'package:flutter/material.dart';
import 'all_page.dart';

class PeopleInfo extends StatefulWidget {
  const PeopleInfo({Key? key}) : super(key: key);

  @override
  _PeopleInfoState createState() => _PeopleInfoState();
}

class _PeopleInfoState extends State<PeopleInfo> {
  var list_people = {
    chatchart: {
      "number": "8",
      "name": "Chatchart Sittiphan",
      "picture": "image/chatchart.jpeg",
    },
    blank: {
      "number": null,
      "name": null,
      "picture": null,
    }
  };

  static get chatchart => null;

  static get blank => null;

  @override
  Widget build(BuildContext context) {
    return Allpeople();
  }
}
