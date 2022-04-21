import 'package:flutter/material.dart';
import './fruit_data_model.dart';

class FruitDetail extends StatelessWidget {
  final FruitDataModel fruitDataModel;
  const FruitDetail({Key? key, required this.fruitDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(fruitDataModel.name),
      ),
      body: Column(
        children: [
          Image.network(fruitDataModel.imageUrl),
          const SizedBox(
            height: 10,
          ),
          Text(
            fruitDataModel.desc,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            fruitDataModel.thaiName,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          )
        ],
      ),
    );
  }
}
