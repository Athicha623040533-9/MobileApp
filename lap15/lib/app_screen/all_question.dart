import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'questioninfo.dart';
import 'total_score.dart';

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
              image: AssetImage('images/quiz_icon.jpg'),
              width: 100,
              height: 100,
            ),
            const Text(
              'Welcome to the Quiz App',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Text('By Athicha Santi 623040533-9'),
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
      MaterialPageRoute(builder: (context) => const Question()),
    );
  }
}

class Tapbox extends StatefulWidget {
  final String name;
  final Color namecolor;
  final String correctcolor;
  Widget? nextpage;
  Tapbox(
      {Key? key,
      required this.name,
      required this.namecolor,
      required this.correctcolor,
      required this.nextpage})
      : super(key: key);

  @override
  _TapboxState createState() => _TapboxState();
}

class _TapboxState extends State<Tapbox> {
  bool _active = false;
  bool showpoint = false;
  late Color correctans;

  void _showDialogtrue(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Score!'),
          content: const Text('Congrats, you get 1 point'),
          actions: <Widget>[
            ElevatedButton(
                onPressed: () async {
                  var nextstep = widget.nextpage;
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => nextstep ?? Container()));
                },
                child: const Text('OK'))
          ],
        );
      },
    );
  }

  void _showDialogFalse(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Score!'),
          content: const Text("Sorry, you miss it!"),
          actions: <Widget>[
            ElevatedButton(
                onPressed: () async {
                  var nextstep = widget.nextpage;
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => nextstep ?? Container()));
                },
                child: const Text('OK'))
          ],
        );
      },
    );
  }

  void handleTap() {
    setState(() {
      _active = !_active;

      if (widget.correctcolor == widget.name) {
        correctans = Colors.lightGreen;
        showpoint = !showpoint;
        _showDialogtrue(context);
      } else {
        correctans = Colors.red;
        showpoint = showpoint;
        _showDialogFalse(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Testscore>(builder: (context, provider, child) {
      return GestureDetector(
        onTap: () {
          handleTap();
          provider.testpoint(showpoint);
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 30, right: 10, left: 10),
          child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    _active ? widget.name : widget.name,
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ]),
            height: 55,
            decoration: BoxDecoration(
              color: _active ? correctans : widget.namecolor,
            ),
          ),
        ),
      );
    });
  }
}

class RestartPage extends StatelessWidget {
  const RestartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Testscore>(builder: (context, provider, child) {
      return Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Your total score is ${provider.num}',
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('Restart!'),
              onPressed: () {
                provider.RestScore();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
            ),
          ),
        ],
      ));
    });
  }
}

class AllQuestion extends StatefulWidget {
  final int num;
  final Map<dynamic, dynamic> info;

  const AllQuestion({Key? key, required this.num, required this.info})
      : super(key: key);

  @override
  State<AllQuestion> createState() => _AllQuestionState();
}

class _AllQuestionState extends State<AllQuestion> {
  late String question;
  late String title;
  late String imgAsset;
  late String q1;
  late String q2;
  late String q3;
  late String q4;
  late String trueans;
  bool previous = false;
  bool home = true;
  Widget? nextQuestion;

  void _navigateAndDisplayHome(BuildContext context) async {
    final resulthome = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  @override
  void initState() {
    super.initState();
    question = widget.info[widget.num]["question"];
    title = widget.info[widget.num]["title"];
    imgAsset = widget.info[widget.num]["imgAsset"];
    q1 = widget.info[widget.num]["q1"];
    q2 = widget.info[widget.num]["q2"];
    q3 = widget.info[widget.num]["q3"];
    q4 = widget.info[widget.num]["q4"];
    trueans = widget.info[widget.num]["trueans"];
    if (widget.num > 1 && widget.num <= widget.info.length) {
      previous = true;
    }
    if (widget.num < widget.info.length) {
      nextQuestion = AllQuestion(
        num: widget.num + 1,
        info: widget.info,
      );
    } else {
      nextQuestion = RestartPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Testscore>(builder: (context, provider, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: const TextStyle(fontSize: 18),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 12),
              Text(
                question,
                style: const TextStyle(fontSize: 29, color: Colors.pink),
              ),
              const SizedBox(height: 45),
              Image(
                image: AssetImage(imgAsset),
                width: 300,
              ),
              const SizedBox(height: 65),
              Expanded(
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2.45,
                      mainAxisSpacing: 35),
                  children: [
                    Tapbox(
                      name: q1,
                      namecolor: Colors.green,
                      correctcolor: trueans,
                      nextpage: nextQuestion,
                    ),
                    Tapbox(
                      name: q2,
                      namecolor: Colors.purpleAccent,
                      correctcolor: trueans,
                      nextpage: nextQuestion,
                    ),
                    Tapbox(
                      name: q3,
                      namecolor: Colors.pinkAccent,
                      correctcolor: trueans,
                      nextpage: nextQuestion,
                    ),
                    Tapbox(
                      name: q4,
                      namecolor: Colors.blueAccent,
                      correctcolor: trueans,
                      nextpage: nextQuestion,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Positioned(
                        left: 0,
                        bottom: 0,
                        child: Visibility(
                          visible: previous,
                          child: ElevatedButton(
                            child: const Text("Previous"),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Visibility(
                          visible: home,
                          child: ElevatedButton(
                            child: const Text("Home"),
                            onPressed: () {
                              provider.RestScore();
                              _navigateAndDisplayHome(context);
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Visibility(
                          visible: nextQuestion != null,
                          child: ElevatedButton(
                            child: const Text("Next"),
                            onPressed: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        nextQuestion ?? Container())),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
