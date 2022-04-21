import 'package:flutter/material.dart';
import 'package:lap15test/app_screen/my_schedule.dart';
import 'package:provider/provider.dart';

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  var _value = 0.5;

  void _onValueChanged(double value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final schedule = Provider.of<Myschedule>(context);

    return Slider(
      value: schedule.stateManagementValue,
      onChanged: (value) => schedule.stateManagementValue = value,
    );
  }
}
