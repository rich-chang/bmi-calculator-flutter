import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Your Result',
            style: kTitleStyle,
          ),
          Expanded(
            flex: 5,
            child: ReusableContainer(
                bkgColor: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Normal',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '21.1',
                      style: kBmiNumberStyle,
                    ),
                    Text(
                      'You have to eat more.',
                      //textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ],
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(child: Text("Re-CALCULATE", style: kLargeButtonStyle)),
              color: kBottomContainerColor,
              height: kBottomContainerHeight,
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 20.0),
            ),
          )
        ],
      ),
    );
  }
}
