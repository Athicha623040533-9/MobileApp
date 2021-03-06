import 'package:flutter/material.dart';

class BasicListView extends StatelessWidget {
  const BasicListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(8), children: <Widget>[
      ListTile(
          title: const Text("Engineering"),
          leading: const Icon(Icons.engineering),
          onTap: () => ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("EN"))),
          trailing: const Icon(Icons.star)),
      ListTile(
          title: const Text("Agriculture"),
          leading: const Icon(Icons.agriculture),
          onTap: () => ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("AG")))),
      ListTile(
          title: const Text("Architecture"),
          leading: const Icon(Icons.architecture),
          onTap: () => ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("AR"))))
    ]);
  }
}
