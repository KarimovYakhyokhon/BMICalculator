import 'package:flutter/material.dart';
import '../Utils/utils.dart';
class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: bottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bottomContainerHeight,
        child: Center(
            child: Text(
              buttonTitle,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
            )),
      ),
    );
  }
}