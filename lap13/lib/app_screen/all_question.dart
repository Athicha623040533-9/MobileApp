import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'tapbox.dart';

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
  Widget? nextQuestion;
  //late String true_ans_color;
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
    }
  }

  @override
  Widget build(BuildContext context) {
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
                  ),
                  Tapbox(
                    name: q2,
                    namecolor: Colors.purpleAccent,
                    correctcolor: trueans,
                  ),
                  Tapbox(
                    name: q3,
                    namecolor: Colors.pinkAccent,
                    correctcolor: trueans,
                  ),
                  Tapbox(
                    name: q4,
                    namecolor: Colors.blueAccent,
                    correctcolor: trueans,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Visibility(
                      visible: previous,
                      child: ElevatedButton(
                        child: const Text("Previous"),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ),
                    Visibility(
                      visible: nextQuestion != null,
                      child: ElevatedButton(
                        child: const Text("Next"),
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    nextQuestion ?? Container())),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
