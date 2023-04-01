import 'package:flutter/material.dart';
import '../constants.dart';


class BottomButton extends StatelessWidget {
  final onTap;
  final String text;
  BottomButton({required this.text,required this.onTap});

  Widget build(BuildContext context) {

    return GestureDetector(
      onTap:onTap,
      child: Container(
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 10),
      ),
    );
  }
}
