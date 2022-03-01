import 'package:first_demo_app/pages/bmiCalculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../../utils/routes.dart';
import '../components/bottom_button.dart';

final ThemeData theme = ThemeData();

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: theme.copyWith(
    colorScheme: theme.colorScheme.copyWith(secondary: Colors.purple),
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF101427)),
    scaffoldBackgroundColor: const Color(0xFF101427),
    textTheme:
    const TextTheme(bodyText1: TextStyle(color: Colors.white))),
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              )),
              Expanded(
                  flex: 5,
                  child: ReusableCard(
                    color: kCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          resultText,
                          style: kResultTextStyle,
                        ),
                        Text(
                          bmiResult,
                          style: kBMITextStyle,
                        ),
                        Text(
                          interpretation,
                          textAlign: TextAlign.center,
                          style: kBodyTextStyle,
                        ),
                      ],
                    ),
                  )),
              BottomButton(
                  btnTitle: 'RE-CALCULATE',
                  onTap: () {
                    Navigator.pop(context);
                  }),
            ]),
      ),
    );
  }
}
