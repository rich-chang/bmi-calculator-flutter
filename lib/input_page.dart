import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableContainer(
                      bkgColor: activeCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 80.0,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableContainer(bkgColor: activeCardColor),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableContainer(bkgColor: activeCardColor),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableContainer(bkgColor: activeCardColor),
                  ),
                  Expanded(
                    child: ReusableContainer(bkgColor: activeCardColor),
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
        ));
  }
}

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

