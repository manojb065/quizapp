import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './score.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var qi = 0;
  int s = 0;

  void reset() {
    setState(() {
      qi = 0;
      s = 0;
    });
    print('quiz is resetted');
  }

  void ans(int ans) {
    setState(() {
      qi += 1;
    });
    s += ans;
    print('button pressed ${s}');
  }

  @override
  final ques = [
    {
      0: 'what is ur favour color',
      'ans': [
        {'text': 'red', 'score': 10},
        {'text': 'black', 'score': 20},
        {'text': 'white', 'score': 30},
        {'text': 'orange', 'score': 40}
      ]
    },
    {
      1: 'what is ur favour food',
      'ans': [
        {'text': 'burger', 'score': 10},
        {'text': 'pizza', 'score': 20}
      ]
    },
    {
      2: 'what is ur favour animal',
      'ans': [
        {'text': 'lion', 'score': 50},
        {'text': 'tiger', 'score': 40},
        {'text': 'chicken', 'score': 20}
      ]
    }
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("my first app"),
      ),
      body: qi < ques.length
          ? Column(children: [
              question(ques[qi][qi]),
              ...(ques[qi]["ans"] as List<Map<String, Object>>).map((e) {
                return answer(ans, e);
              })
            ])
          : Score("Your total score is ${s}", reset),
    ));
  }
}
