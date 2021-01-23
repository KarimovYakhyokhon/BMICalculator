import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'file:///C:/Users/innovations/Desktop/My%20Flutter%20Projects/rewrite_bim/lib/components/AddRemoveButton.dart';
import 'package:rewrite_bim/SliderPage.dart';
import 'package:rewrite_bim/Utils/utils.dart';
import 'file:///C:/Users/innovations/Desktop/My%20Flutter%20Projects/rewrite_bim/lib/components/BottomButton.dart';
import '../components/male_button.dart';
import 'Results_Page.dart';
import 'calculator_brain.dart';
class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 60;
  int age = 12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: MaleFemaleBottom()),
          Expanded(child: SliderPage()),
          Expanded(child: AddRemoveButton()),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
             CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultsPage(
                    interpretation: calc.getInterpretation() ,
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                  )));
            },
          ),
        ],
      ),
    );
  }
}
