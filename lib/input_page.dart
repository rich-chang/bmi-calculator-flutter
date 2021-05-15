import 'package:flutter/material.dart';

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
                Expanded(child: ReusableContainer(bkgColor: Color(0xFF1D1E33)),
                ),
                Expanded(child: ReusableContainer(bkgColor: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableContainer(bkgColor: Color(0xFF1D1E33)),
          ),
          Expanded(child: Row(
              children: [
                Expanded(child: ReusableContainer(bkgColor: Color(0xFF1D1E33)),
                ),
                Expanded(child: ReusableContainer(bkgColor: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
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