import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  TextEditingController sendController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Athicha Final Exam Part 2'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: sendController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondPage(
                              test: sendController.text,
                            )),
                  )
                },
                child: const Text(
                  'Click Next!',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key, required this.test}) : super(key: key);
  final String test;
  final snackBar = const SnackBar(content: Text('Athicha 623040533-9'));
  // void action() {
  //   Navigator.pop(context);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Send your name and ID"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => [
            Navigator.pop(context),
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(test)))
          ],
          child: const Text(
            'Go back!',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
