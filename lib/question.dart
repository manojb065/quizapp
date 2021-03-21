import 'package:flutter/material.dart';

class question extends StatelessWidget {
  String ques;
  question(this.ques);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 50),
      child: Text(
        ques,
        style: TextStyle(
          fontSize: 40,
          fontFamily: 'Cursive',
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
