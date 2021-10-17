import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String buttonText;
  final GestureTapCallback onTap;
  final Color? buttonColor;

  const CustomTextButton(
      {required this.buttonText,
      required this.onTap, this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(5),
          ),
          height: 35,
          child: Row(
            children: [
              Image.asset(
                'images/red-circle.png',
                width: 15,
                height: 15,
              ),
              Text(
                buttonText,
                style: TextStyle(fontSize: 10, color: buttonColor),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
