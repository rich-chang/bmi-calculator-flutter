import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowFloatingActionBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FloatingActionButton(
          onPressed: null,
          backgroundColor: Color(0xFF4C4F5E),
          child: Icon(
            Icons.add,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        FloatingActionButton(
          onPressed: null,
          backgroundColor: Color(0xFF4C4F5E),
          child: Icon(
            Icons.add,
          ),
        ),
      ],
    );
  }
}
