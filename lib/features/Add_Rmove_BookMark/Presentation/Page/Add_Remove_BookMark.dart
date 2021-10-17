import 'package:flutter/material.dart';

class AddRemoveBookMarkButton extends StatefulWidget {
  @override
  _AddRemoveBookMarkButtonState createState() => _AddRemoveBookMarkButtonState();
}

class _AddRemoveBookMarkButtonState extends State<AddRemoveBookMarkButton> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: (){
        setState(() {
          isAdded = !isAdded;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(left: widthSize * 0.002),
        child: Container(
          width: widthSize > 520 ? 55 : widthSize * 0.11,
          height: 45,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: isAdded?AssetImage('images/removeBookmark_icon.png'):AssetImage('images/addBookMark_icon.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
