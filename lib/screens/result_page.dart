import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constant.dart';
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
          Container(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Your Result',
              style: kTitleStyle,
            ),
            //alignment: Alignment.bottomLeft,
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
                      '23.1',
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
          BottomButton(
            btnLabel: 'Re-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
