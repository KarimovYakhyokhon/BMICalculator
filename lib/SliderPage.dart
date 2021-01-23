import 'package:flutter/material.dart';
import 'components/reusableCard.dart';
import 'Utils/utils.dart';
class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  int height =180;
  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      colour: activeCardColour,
      cardChild: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('HEIGHT', style: kLabelTextStyle),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Text(
                height.toString(),
                style: kNumbersStyle,
              ),
              Text(
                'cm',
                style: kLabelTextStyle,
              )
            ],
          ),
          Slider(
            value: height.toDouble(),
            min: 120.0,
            max: 220.0,
            activeColor: Color(0xFFEB1555),
            inactiveColor: Color(0xFF8D8E98),
            onChanged: (double newValue) {
              setState(() {
                height = newValue.round();
              });
            },
          ),
        ],
      ),
    );
  }
}
