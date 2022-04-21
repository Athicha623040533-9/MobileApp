import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'tapbox.dart';

class Testscore extends ChangeNotifier {
  double _scoreValue = 0;

  double get scoreValue => _scoreValue;

  set scoreValue(double value) {
    _scoreValue = value;
    notifyListeners();
  }
}

class Slider extends StatefulWidget {
  const Slider({Key? key}) : super(key: key);

  @override
  _SliderState createState() => _SliderState();
}

class _SliderState extends State<Slider> {
  var _value = 1;

  void _onValueChange(double value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final test14 = Provider.of<Testscore>(context);

    return Slider(
      value: test14.scoreValue,
      onChanged: (value) => test14.scoreValue = value,
    );
  }
}
