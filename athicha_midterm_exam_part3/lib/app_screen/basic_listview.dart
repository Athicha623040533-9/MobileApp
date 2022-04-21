import 'package:flutter/material.dart';

class BasicListView extends StatelessWidget {
  const BasicListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(8), children: <Widget>[
      ListTile(
          title: const Text("Andrew Carnegie"),
          leading: ConstrainedBox(
            constraints: BoxConstraints(minWidth: 30),
            child: Image.network(
              "https://y4p4e3d2.rocketcdn.me/wp-content/uploads/2016/08/biggest-philanthropist-ever-400x274.jpg",
              width: 50,
            ),
          ),
          trailing: const Icon(
            Icons.favorite,
            color: Colors.red,
          )),
      ListTile(
        title: const Text("Bill Gates"),
        trailing: const Icon(Icons.favorite_border),
        leading: ConstrainedBox(
          constraints: BoxConstraints(minWidth: 30),
          child: Image.network(
            "https://content.fortune.com/wp-content/uploads/2019/04/gft05.19-bill-melinda-gates-a-square.jpg?resize=1026,684",
            width: 50,
          ),
        ),
      ),
      ListTile(
          title: const Text("Warren Buffet"),
          leading: ConstrainedBox(
            constraints: BoxConstraints(minWidth: 30),
            child: Image.network(
              "https://y4p4e3d2.rocketcdn.me/wp-content/uploads/2016/08/philanthrophy.jpg",
              width: 50,
            ),
          ),
          onTap: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                  content: Text("He is one of the greatest investors")))),
    ]);
  }
}
