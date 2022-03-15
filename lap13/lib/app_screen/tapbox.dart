import 'package:flutter/material.dart';

class Tapbox extends StatefulWidget {
  final String name;
  final Color namecolor;
  final String correctcolor;
  const Tapbox(
      {Key? key,
      required this.name,
      required this.namecolor,
      required this.correctcolor})
      : super(key: key);

  @override
  _TapboxState createState() => _TapboxState();
}

class _TapboxState extends State<Tapbox> {
  bool _active = false;
  late Color correctans;
  void _handleTap() {
    setState(() {
      _active = !_active;

      if (widget.correctcolor == Colors.lightGreen) {
        const snackBar = SnackBar(content: Text('Your Score is 1'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        const snackBar = SnackBar(content: Text('Your Score is 0'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
      if (widget.correctcolor == widget.name) {
        correctans = Colors.lightGreen;
      } else {
        correctans = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30, right: 10, left: 10),
        child: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  _active ? widget.name : widget.name,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                ),
              ]),
          height: 55,
          decoration: BoxDecoration(
            color: _active ? correctans : widget.namecolor,
          ),
        ),
      ),
    );
  }
}
