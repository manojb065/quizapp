import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  String result;
  Function reset;
  Score(this.result, this.reset);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
              child: Text(result,
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Cursive',
                  ))),
          FlatButton(
            onPressed: reset,
            child: Text("restart quiz!"),
            color: Colors.blue,
          )
        ],
      ),
      margin: EdgeInsets.only(top: 100),
    );
  }
}
