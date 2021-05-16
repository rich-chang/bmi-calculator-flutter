import 'package:flutter/material.dart';

const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const bottomContainerHeight = 80.0;
const bottomContainerMarginTop = 10.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(child: Row(
              children: [
                Expanded(child: ReusableContainer(bkgColor: activeCardColor),
                ),
                Expanded(child: ReusableContainer(bkgColor: activeCardColor),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableContainer(bkgColor: activeCardColor),
          ),
          Expanded(child: Row(
              children: [
                Expanded(child: ReusableContainer(bkgColor: activeCardColor),
                ),
                Expanded(child: ReusableContainer(bkgColor: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: bottomContainerMarginTop),
            height: bottomContainerHeight,
            width: double.infinity,
          )
        ],
      )
    );
  }
}

class ReusableContainer extends StatelessWidget {

  ReusableContainer({@required this.bkgColor});

  final Color bkgColor;

  @override
  Widget build(BuildContext context) {
    return Container (
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: bkgColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      );
  }
}