import 'package:bookly/consts.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn(
      {super.key,
      required this.buttonColor,
      required this.buttonTetxt,
      required this.textColor});
  final Color buttonColor;
  final String buttonTetxt;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
      onPressed: () {},
      child: Text(
        "Grab Now",
        style: TextStyle(
          color: textColor,
        ),
      ),
    );
  }
}
