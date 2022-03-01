import 'package:first_demo_app/pages/bmiCalculator/components/bottom_button.dart';
import 'package:first_demo_app/pages/bmiCalculator/components/reusable_card.dart';
import 'package:first_demo_app/pages/bmiCalculator/screens/calculator_brain.dart';
import 'package:first_demo_app/pages/bmiCalculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/constants.dart';
import '../../../utils/routes.dart';
import '../components/icon_content.dart';

final ThemeData theme = ThemeData();

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender = GenderType.MALE;
  int height = 180;
  int weight = 60;
  int age = 19;
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
            title: const Text('BMI CALCULATOR'),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.MALE;
                      });
                    },
                    color: kCardColor,
                    cardChild: IconContent(
                        gender: 'MALE',
                        iconData: FontAwesomeIcons.mars,
                        itemColor: selectedGender == GenderType.MALE
                            ? kActiveCardColor
                            : kInactiveCardColor),
                  )),
                  Expanded(
                      child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.FEMALE;
                      });
                    },
                    color: kCardColor,
                    cardChild: IconContent(
                        gender: 'FEMALE',
                        iconData: FontAwesomeIcons.venus,
                        itemColor: selectedGender == GenderType.FEMALE
                            ? kActiveCardColor
                            : kInactiveCardColor),
                  )),
                ],
              )),
              Expanded(
                  child: ReusableCard(
                color: kCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: Constants.getLabelStyle(kInactiveCardColor),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: kBoldTextStyle,
                          ),
                          const Text(
                            'cm',
                            style: kLabelTextStyle,
                          )
                        ]),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: const Color(0xFF8D8E98),
                          thumbColor: const Color(0xFFEB1555),
                          overlayColor: const Color(0x29EB1555),
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 15.0),
                          overlayShape:
                              const RoundSliderOverlayShape(overlayRadius: 30.0)),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              )),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                    color: kCardColor,
                    cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPress: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPress: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              )
                            ],
                          )
                        ]),
                  )),
                  Expanded(
                      child: ReusableCard(
                    color: kCardColor,
                    cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPress: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPress: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              )
                            ],
                          )
                        ]),
                  ))
                ],
              )),
              BottomButton(btnTitle: 'CALCULATE', onTap: () {
                CalculatorBrain calculate = CalculatorBrain(weight: weight, height: height);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    ResultPage(bmiResult: calculate.calculateBMI(),
                        resultText: calculate.getResult(),
                        interpretation: calculate.getInterpretation())));
              }),
            ],
          )),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData? icon;
  final onPress;
  RoundIconButton({required this.icon, this.onPress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: onPress,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0XFF4C4F5E),
    );
  }
}
