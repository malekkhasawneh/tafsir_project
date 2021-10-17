import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3),
          child: TextFormField(
            focusNode: FocusNode(debugLabel: 'malek'),
            decoration: InputDecoration(contentPadding: EdgeInsets.only(top: 10,right: 10),
                hintText: 'ابحث في القران .. على الاقل حرفين ',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                )),
          ),
        ),
      ),
    );
  }
}
