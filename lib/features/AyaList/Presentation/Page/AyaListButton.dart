import 'package:flutter/material.dart';
import 'package:tafsir_project/features/AyaList/Presentation/Widget/AyaListDialog.dart';

class AyaListButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AyaListDialog();
            });
      },
      child: Padding(
        padding: EdgeInsets.only(left: widthSize * 0.002),
        child: Container(
          width: widthSize > 520 ? 55 : widthSize * 0.11,
          height: 45,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/ayaList.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
