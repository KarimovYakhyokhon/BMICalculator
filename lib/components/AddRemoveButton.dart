import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusableCard.dart';
import 'IconContent.dart';
import '../Utils/utils.dart';

class AddRemoveButton extends StatefulWidget {
  @override
  _AddRemoveButtonState createState() => _AddRemoveButtonState();
}

class _AddRemoveButtonState extends State<AddRemoveButton> {
  int weight = 60;
  int age = 12;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ReusableCard(
            colour: activeCardColour,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'WEIGHT',
                  style: kLabelTextStyle,
                ),
                Text(
                  weight.toString(),
                  style: kNumbersStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RoundIconButton(
                      icon: FontAwesomeIcons.plus,
                      onPress: () {
                        setState(() {
                          weight++;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    RoundIconButton(
                      icon: FontAwesomeIcons.minus,
                      onPress: () {
                        setState(() {
                          weight--;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
           ),
        ),
        Expanded(
            child: ReusableCard(
          colour: activeCardColour,
          cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('AGE', style: kLabelTextStyle),
              Text(age.toString(), style: kNumbersStyle),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundIconButton(
                    icon: FontAwesomeIcons.plus,
                    onPress: () {
                      setState(() {
                        age++;
                      });
                    },
                  ),
                  SizedBox(width: 10.0),
                  RoundIconButton(
                    icon: FontAwesomeIcons.minus,
                    onPress: () {
                      setState(() {
                        age--;
                      });
                    },
                  )
                ],
              )
            ],
          ),
        )),
      ],
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, this.onPress});

  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: () {},
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
