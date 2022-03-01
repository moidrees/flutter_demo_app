import 'package:first_demo_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  final String gender;
  final IconData iconData;
  final Color itemColor;

  IconContent({required this.gender, required this.iconData, required this.itemColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          color: itemColor,
          size: 80.0,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: Constants.getLabelStyle(itemColor),
        )
      ],
    );
  }
}