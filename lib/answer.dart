import 'package:flutter/material.dart';

class answer extends StatelessWidget {
  Function qa;
  var q;
  answer(this.qa, this.q);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: () => qa(q['score']),
        color: Colors.black,
        textColor: Colors.lime[700],
        hoverColor: Colors.black,
        focusColor: Colors.blue,
        child: Text(q['text']),
      ),
    );
  }
}
