import 'package:flutter/material.dart';
import 'all_question.dart';
import 'questioninfo.dart';

class Tapbox extends StatefulWidget {
  final String name;
  final Color namecolor;
  final String correctcolor;
  Widget? nextpage;
  Tapbox(
      {Key? key,
      required this.name,
      required this.namecolor,
      required this.correctcolor,
      required this.nextpage})
      : super(key: key);

  @override
  _TapboxState createState() => _TapboxState();
}

class _TapboxState extends State<Tapbox> {
  bool _active = false;
  late Color correctans;
  int score = 0;

  void _showDialogtrue(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Score!'),
          content: const Text('Congrats, you get 1 point'),
          actions: <Widget>[
            ElevatedButton(
                onPressed: () async {
                  var nextstep = widget.nextpage;
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => nextstep ?? Container()));
                },
                child: const Text('OK'))
          ],
        );
      },
    );
  }

  void _showDialogFalse(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Score!'),
          content: const Text('Sorry, you miss it!'),
          actions: <Widget>[
            ElevatedButton(
                onPressed: () async {
                  var nextstep = widget.nextpage;
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => nextstep ?? Container()));
                },
                child: const Text('OK'))
          ],
        );
      },
    );
  }

  void _handleTap() {
    setState(() {
      _active = !_active;

      if (widget.correctcolor == widget.name) {
        correctans = Colors.lightGreen;
        _showDialogtrue(context);
      } else {
        correctans = Colors.red;
        _showDialogFalse(context);
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
