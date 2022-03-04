import 'package:flutter/material.dart';

import '../../../utils/routes.dart';

class RoundedButton extends StatelessWidget {

  final String? title;
  final Color? color;
  final VoidCallback? onPress;

  RoundedButton({required this.onPress, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title!,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
