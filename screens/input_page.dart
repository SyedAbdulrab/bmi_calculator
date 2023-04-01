import 'package:bmi_calculator/calculator_brain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import '../constants.dart';
import 'results_page.dart';
import '../components/bottom_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';
enum Human { male, female, none }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Human selectedGender = Human.none;
  int height = 180;
  int weight = 67;
  int age = 18;
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
                    child: ReusableCard(
                      colour: selectedGender == Human.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: IconContent(FontAwesomeIcons.mars, "MALE"),
                      onPress: () {
                        setState(() {
                          selectedGender = Human.male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Human.female;
                        });
                      },
                      colour: selectedGender == Human.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: IconContent(FontAwesomeIcons.venus, "FEMALE"),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "HEIGHT",
                            style: kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                height.toString(),
                                style: kNumTextStyle,
                              ),
                              Text(
                                "cm",
                                style: kLabelTextStyle,
                              ),
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                                trackHeight: 2,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 15),
                                activeTrackColor: Colors.white,
                                inactiveTrackColor: Color(0xFF8D8E98),
                                overlayColor: Color(0x29EB1555),
                                thumbColor: Color(0xFFEB1555),
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 30.0)),
                            child: Slider(
                              value: height.toDouble(),
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.round();
                                });
                              },
                              min: 120,
                              max: 220,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WEIGHT",
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedIconButton(
                                  data: FontAwesomeIcons.minus,
                                  onPress: () {
                                    setState(() {
                                      weight -= 1;
                                    });
                                  }),
                              const SizedBox(
                                width: 10.0,
                              ),
                              RoundedIconButton(
                                  data: FontAwesomeIcons.plus,
                                  onPress: () {
                                    setState(() {
                                      weight += 1;
                                    });
                                  }),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",
                            style: kLabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedIconButton(
                                  data: FontAwesomeIcons.minus,
                                  onPress: () {
                                    setState(() {
                                      age -= 1;
                                    });
                                  }),
                              const SizedBox(
                                width: 10.0,
                              ),
                              RoundedIconButton(
                                  data: FontAwesomeIcons.plus,
                                  onPress: () {
                                    setState(() {
                                      age += 1;
                                    });
                                  }),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
                text: 'CALCULATE',
                onTap: () {
                  CalculatorBrain calc = CalculatorBrain(height: height,weight: weight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultsPage(
                        bmiValue: calc.calculateBMI(),
                      bmiTitle: calc.getResult(),bmiInterpretation: calc.getInterpretation(),
                    )),
                  );
                })
          ],
        ));
  }
}

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({this.data, this.onPress});
  final data; // IconData
  final onPress; // function
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(data),
      onPressed: onPress,
      elevation: 6,
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4E5E),
    );
  }
}
