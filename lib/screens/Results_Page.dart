import 'package:flutter/material.dart';
import 'package:rewrite_bim/components/BottomButton.dart';
import '../Utils/utils.dart';
import '../components/reusableCard.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.interpretation, this.bmiResult, this.resultText});
final String bmiResult;
final String resultText;
final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: 
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Your Result',style: kTitleTextStyle,),
          )
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase(),style: kResultTextStyle,),
                  Text(bmiResult,style: kBMITextStyle,),
                  Text(interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,)
                ],
              ),
            ),
          ),
            BottomButton(buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
            )
        ],
      ),
    );
  }
}
