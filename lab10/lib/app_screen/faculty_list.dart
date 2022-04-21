import 'package:flutter/material.dart';
import './faculty_detail.dart';
import './faculty_data_model.dart';

class FacultyList extends StatefulWidget {
  const FacultyList({Key? key}) : super(key: key);

  @override
  _FacultyListState createState() => _FacultyListState();
}

class _FacultyListState extends State<FacultyList> {
  static List<String> facultyname = ['Engineering', 'Medicine', 'Architecture'];
  static List<String> facultyThaiName = [
    "วิศวกรรมศาสตร์",
    "แพทยศาสตร์",
    "สถาปัตยกรรมศาสตร์"
  ];
  static List url = [
    'https://assets.sutori.com/user-uploads/image/96186941-ef8c-475c-bec7-f38bca822e1e/312ce72c41b8b1fca5c896de63ccd434.jpeg',
    'https://admissions.kku.ac.th/wp-content/uploads/2021/08/03.jpg',
    'https://www.u-review.in.th/timthumb.php?src=/uploads/contents/20160811142552uE0fuxK.jpg&w=923&h=520',
  ];
  static List facultyURL = [
    'https://www.en.kku.ac.th/web/',
    'https://md.kku.ac.th/',
    'https://arch.kku.ac.th/web/'
  ];
  final List<FacultyDataModel> facultyData = List.generate(
      facultyname.length,
      (index) => FacultyDataModel(facultyname[index], facultyThaiName[index],
          '${url[index]}', '${facultyURL[index]} '));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KKU Faculties'),
      ),
      body: ListView.builder(
          itemCount: facultyData.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(facultyData[index].name),
                leading: const Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FacultyDetail(
                            facultyDataModel: facultyData[index],
                          )));
                },
              ),
            );
          }),
    );
  }
}
