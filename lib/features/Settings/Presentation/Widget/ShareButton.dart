import 'package:flutter/material.dart';

class ShareButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonText;
  final String buttonImagePath;
  final GestureTapCallback onTap;

  ShareButton(
      {required this.buttonColor,
      required this.buttonText,
      required this.buttonImagePath,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: InkWell(
        onTap: onTap,
        child: Container(
            height: 50,
            width: double.infinity,
            color: buttonColor,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40, right: 10),
                  child: Image.asset(
                    buttonImagePath,
                    width: 30,
                    height: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    buttonText,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
