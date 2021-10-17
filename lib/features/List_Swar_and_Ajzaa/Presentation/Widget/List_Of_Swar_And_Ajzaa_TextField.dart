import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListOfSwarAndAjzaaTextField extends StatelessWidget {
  final String hintText;
  ListOfSwarAndAjzaaTextField({required this.hintText});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3),
          child: TextFormField(
            decoration: InputDecoration(contentPadding: EdgeInsets.only(top: 10,right: 10),
                hintText: hintText,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                )),
          ),
        ),
      ),
    );
  }
}
