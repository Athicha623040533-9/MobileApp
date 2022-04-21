import 'package:flutter/material.dart';
import 'peopleinfo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Image(
              image: AssetImage('image/my_pic.jpg'),
              width: 250,
              height: 250,
            ),
            const Text(
              'Athicha Final Exam Part 3',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Text('By 623040533-9'),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                _navigateAndDisplay(context);
              },
              child: const Text('Start'),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateAndDisplay(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PeopleInfo()),
    );
  }
}

class Allpeople extends StatefulWidget {
  // final String name;
  // final Map<dynamic, dynamic> info;

  const Allpeople({Key? key}) : super(key: key);
  @override
  _AllpeopleState createState() => _AllpeopleState();
}

class _AllpeopleState extends State<Allpeople> {
  TextEditingController nameController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text('Bangkok Governor Candidates',
                        style: TextStyle(fontSize: 28, color: Colors.pink)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 16),
                    child: TextFormField(
                      controller: nameController,
                      obscureText: true,
                      decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Type candidate name'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          //_navigateAndDisplay(context);
                        },
                        child: const Text('Check their number'),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size.fromHeight(35)),
                      ),
                    ),
                  ),
                  // const Padding(
                  //   padding: EdgeInsets.only(top: 15),
                  //   child: Text('Chatchart Sittiphan',
                  //       style: TextStyle(fontSize: 28, color: Colors.green)),
                  // ),
                  // const Padding(
                  //   padding: EdgeInsets.only(top: 15),
                  //   child: Text('8',
                  //       style: TextStyle(fontSize: 28, color: Colors.green)),
                  // ),
                  const Padding(
                    padding: EdgeInsets.only(top: 150, left: 10, right: 10),
                    child: Image(
                      image: AssetImage('image/blank.jpeg'),
                      width: 250,
                      height: 250,
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
