import 'package:flutter/material.dart';
import 'package:tafsir_project/features/List_Swar_and_Ajzaa/Presentation/Widget/List_of_Swar_And_Ajzaa_Dialog.dart';

class ShowListOfSwarAndAjzaaButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return ShowSwarAndAjzaaDialog();
            });
      },
      child: Padding(
        padding: EdgeInsets.only(left: widthSize * 0.002),
        child: Container(
          width: widthSize > 520 ? 55 : widthSize * 0.11,
          height: 45,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/list_icon.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
