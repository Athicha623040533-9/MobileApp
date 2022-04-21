import 'package:flutter/material.dart';

List<String> getListElements() {
  var item = List<String>.generate(30, (counter) => "Problem ${counter + 1}");
  return item;
}

Widget getListView() {
  var listItems = getListElements();

  var listView = ListView.builder(
      itemCount: listItems.length,
      itemBuilder: (context, index) {
        if (index.isOdd) {
          return ListTile(
              leading: const Icon(Icons.arrow_right),
              trailing: const Icon(Icons.star),
              title: Text(listItems[index]),
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content:
                      Text("Problem ${listItems[index]} is my favorite"))));
        } else {
          return ListTile(
              leading: const Icon(Icons.arrow_right),
              title: Text(listItems[index]),
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Problem ${listItems[index]} is selected"))));
        }
      });
  return listView;
}
