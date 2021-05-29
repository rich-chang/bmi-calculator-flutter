import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.red,
          child: Text('BACK to HOME'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}