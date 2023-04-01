import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String iconText;
  IconContent(this.icon,this.iconText);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            icon,
            size: 80,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            iconText,
            style: kLabelTextStyle ,
          )
        ],
      ),
    );
  }
}
