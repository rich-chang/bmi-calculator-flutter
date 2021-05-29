import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({Key key, this.bmiResult, this.bmiNumber, this.bmiSuggestion});

  final String bmiResult;
  final String bmiNumber;
  final String bmiSuggestion;

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
                      bmiResult,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiNumber,
                      style: kBmiNumberStyle,
                    ),
                    Text(
                      bmiSuggestion,
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
