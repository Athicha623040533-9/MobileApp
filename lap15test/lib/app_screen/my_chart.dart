import 'package:flutter/material.dart';
import 'package:lap15test/app_screen/my_schedule.dart';
//import 'package:state_management_demo/states/my_schedule.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:provider/provider.dart';

class Mychart extends StatefulWidget {
  const Mychart({Key? key}) : super(key: key);

  @override
  _MychartState createState() => _MychartState();
}

class _MychartState extends State<Mychart> {
  List<Color> colorList = [
    Colors.purple,
    Colors.pinkAccent,
    Colors.green,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<Myschedule>(builder: (context, schedule, _) {
      return PieChart(
        dataMap: _createData(schedule.stateManagementValue),
        chartRadius: MediaQuery.of(context).size.width / 1.5,
        colorList: colorList,
      );
    });
  }

  static Map<String, double> _createData(double stateManagementValue) {
    Map<String, double> dataMap = Map();
    dataMap.putIfAbsent("state", () => stateManagementValue);
    dataMap.putIfAbsent("test2", () => 0.3);
    dataMap.putIfAbsent("test3", () => 0.1);
    dataMap.putIfAbsent("test4", () => 0.2);
    return dataMap;
  }
}
