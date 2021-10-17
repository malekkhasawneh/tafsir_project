import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  final GestureTapCallback onPressedButton;
  final String imagePath;

  CustomButtons({required this.onPressedButton, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onPressedButton,
      child: Padding(
        padding: EdgeInsets.only(left: widthSize * 0.002),
        child: Container(
          width: widthSize > 520 ? 55 : widthSize * 0.11,
          height: 45,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
