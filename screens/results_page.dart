import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import '../components/bottom_button.dart';
class ResultsPage extends StatelessWidget {

  ResultsPage({required this.bmiInterpretation,required this.bmiValue,required this.bmiTitle});
  final bmiValue;
  final bmiInterpretation;
  final bmiTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI CALCULATOR',
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text('Your Results', style: kTitleTextStyle),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmiTitle.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiValue,
                      style: kBMIResultStyle,
                    ),
                    Text(
                      bmiInterpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            BottomButton(onTap: () {
              Navigator.pop(
                context
              );
            }, text: 'RE-CALCULATE',)
          ],
        ));
  }
}
