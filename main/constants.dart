import 'package:flutter/material.dart';


const kActiveCardColor = Color(0xFF1D1E33);
const kBottomContainerHeight = 80.0;
const kBottomContainerColor = Color(0xFFEB1555);
const kInactiveCardColor = Color(0xFF111328);

const kLabelTextStyle =  TextStyle(
  fontSize: 18,
  color: Color(0xFF8D8E98),
);

const kNumTextStyle = TextStyle(
    fontSize: 50.0,
    fontWeight: FontWeight.w900,
);

const kLargeButtonTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 25.0,
);
const kTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const kResultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22.00,
  fontWeight: FontWeight.bold,
);

const kBMIResultStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 100.00,
);

const kBodyTextStyle=TextStyle(
  fontSize: 22.0,
);


//
// Padding(
// padding: EdgeInsets.fromLTRB(15, 30, 5, 10),
// child: Container(
// child: Text(
// "Your Result ",
// style: TextStyle(
// fontSize: 40.0,
// fontWeight: FontWeight.w600,
// ),
// ),
// ),
// ),
// Expanded(
// child: ReusableCard(
// colour: Color(0xFF1D1E33),
// cardChild: Column(
// crossAxisAlignment: CrossAxisAlignment.stretch,
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// Center(
// child: Container(
// child:Text("Overweight",style: kLabelTextStyle,),
// ),
// ),
// Center(
// child: Container(
// child:Text("22.67",style: kNumTextStyle,)
// ),
// ),
// Center(
// child: Container(
// child:  Padding(
// padding: const EdgeInsets.all(8.0),
// child: Text("hey you yes you im talking to u dumb ass, you need get them Abs out asap or"
// " else,skinny ass bitch",style: kLabelTextStyle,),
// ),
// ),
// )
//
// ],
// ),
// ),
// ),