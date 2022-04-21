import 'package:flutter/material.dart';
import './faculty_data_model.dart';

class FacultyDetail extends StatelessWidget {
  final FacultyDataModel facultyDataModel;
  const FacultyDetail({Key? key, required this.facultyDataModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(facultyDataModel.name),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(13),
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(facultyDataModel.desc)],
            ),
          ),
          Text(
            facultyDataModel.thaiName,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Image.network(facultyDataModel.imageUrl),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
