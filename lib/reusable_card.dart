import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  ReusableContainer({@required this.bkgColor, this.cardChild});

  final Color bkgColor;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: bkgColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
