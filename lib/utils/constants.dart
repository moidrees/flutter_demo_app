import 'package:flutter/material.dart';

const kBottomContainerHeight = 80.0;
const kCardColor = Color(0xFF1E1F33);
const kActiveCardColor = Color(0xFFFEFEFE);
const kInactiveCardColor = Color(0xFF8E8E99);
const kBottomContainerColor = Color(0xFFEB1555);
enum GenderType { MALE, FEMALE }
const kBoldTextStyle = TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900);
const kLabelTextStyle = TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));
const kNumberTextStyle = TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900, );
const kLargeBtnStyle = TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, );
const kTitleTextStyle = TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold, );
const kResultTextStyle = TextStyle(color: Color(0xFF24D876), fontSize: 22.0, fontWeight: FontWeight.bold, );
const kBMITextStyle = TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold, );
const kBodyTextStyle = TextStyle(fontSize: 22.0, );
const kTempTextStyle = TextStyle(fontFamily: 'Spartan MB', fontSize: 100.0, color: Colors.white);
const kMessageTextStyle = TextStyle(fontFamily: 'Spartan MB', fontSize: 60.0, color: Colors.white);
const kButtonTextStyle = TextStyle(fontSize: 30.0, fontFamily: 'Spartan MB', color: Colors.white);
const kConditionTextStyle = TextStyle(fontSize: 100.0,);
const kTextFieldInputDecoration = InputDecoration(
    filled: true,
    fillColor: Colors.white,
    icon: Icon(Icons.location_city, color: Colors.white,),
    hintText: 'Enter city name',
    hintStyle: TextStyle(color: Colors.grey),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide.none
    )
);
const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);


class Constants {
  static const USER_NAME_REG_EXP = "^[A-Za-z]\$";
  static const EMAIL_REG_EXP = "^[a-zA-Z0-9.a-zA-Z0-9.!#\$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  static TextStyle getLabelStyle(Color selectedColor) {
    return TextStyle(fontSize: 18.0, color: selectedColor);
  }
}