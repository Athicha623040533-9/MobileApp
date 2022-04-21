import 'package:flutter/material.dart';
import './fruit_data_model.dart';
import './fruit_detail.dart';

class FruitList extends StatefulWidget {
  const FruitList({Key? key}) : super(key: key);

  @override
  _FruitListState createState() => _FruitListState();
}

class _FruitListState extends State<FruitList> {
  static List<String> fruitname = ['Apple', 'Banana', 'Orange'];
  static List<String> fruitThaiName = ["แอปเปิ้ล", "กล้ยว", "ส้ม"];
  static List url = [
    'https://5.imimg.com/data5/YY/EN/MY-8155364/fresh-apple-500x500.jpg',
    'https://image.makewebeasy.net/makeweb/0/aNSsujWTa/FruitandVegs/Picture14.png',
    'https://5.imimg.com/data5/EE/ER/MY-27568370/fresh-orange-500x500.png',
  ];
  final List<FruitDataModel> fruitData = List.generate(
      fruitname.length,
      (index) => FruitDataModel(fruitname[index], fruitThaiName[index],
          '${url[index]}', '${fruitname[index]} Description ...'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pass Data from List to the next screen'),
      ),
      body: ListView.builder(
          itemCount: fruitData.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(fruitData[index].name),
                leading: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.network(fruitData[index].imageUrl),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FruitDetail(
                            fruitDataModel: fruitData[index],
                          )));
                },
              ),
            );
          }),
    );
  }
}
