import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  ReusableContainer({@required this.bkgColor, this.cardChild, this.onPress});

  final Color bkgColor;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: bkgColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
