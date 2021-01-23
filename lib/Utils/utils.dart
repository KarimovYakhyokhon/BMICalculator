import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
const bottomContainerHeight = 80.0;
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);
const activeCardColour = Color(0xFF1D1E33);

enum Gender {
  male,
  female,
}

Gender selectedGender;


const kNumbersStyle =  TextStyle(fontSize: 50.0,fontWeight: FontWeight.w900);
const kLabelTextStyle = TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));

const kTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold
);

const kResultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold
);

const kBMITextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold
);
const kBodyTextStyle = TextStyle(
  fontSize: 22.0,
);

const IconTextStyle = TextStyle(fontSize: 20.0, color: Color(0xFF8D8E98));