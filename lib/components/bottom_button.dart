import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant.dart';
import '../screens/input_page.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.btnLabel, @required this.onTap});

  final String btnLabel;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(btnLabel, style: kLargeButtonStyle)),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: bottomContainerMarginTop),
        height: kBottomContainerHeight,
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 20.0),
      ),
    );
  }
}