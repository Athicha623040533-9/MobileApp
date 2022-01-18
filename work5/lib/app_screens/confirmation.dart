import 'package:flutter/material.dart';

class SummitBot extends StatelessWidget {
  const SummitBot({Key? key}) : super(key: key);

  void alertMsg(BuildContext context) {
    var alertDialog = const AlertDialog(
        title: Text("Confirmation"), content: Text("Submitting information"));

    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(30),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.lightBlue,
              padding: const EdgeInsets.all(12),
              textStyle: const TextStyle(fontSize: 30),
            ),
            child: const Text("Summit", style: TextStyle(color: Colors.lime)),
            onPressed: () => {alertMsg(context)}));
  }
}
