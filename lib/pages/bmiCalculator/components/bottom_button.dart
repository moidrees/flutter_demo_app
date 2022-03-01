import 'package:flutter/material.dart';
import '../../../utils/constants.dart';
import '../../../utils/routes.dart';

class BottomButton extends StatelessWidget {
  final onTap;
  final String btnTitle;
  BottomButton({required this.btnTitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
            child: Text(
              btnTitle,
              style: kLargeBtnStyle,
            )),
      ),
    );
  }
}
