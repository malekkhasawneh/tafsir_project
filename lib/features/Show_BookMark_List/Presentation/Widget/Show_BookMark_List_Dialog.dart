import 'package:flutter/material.dart';

class ShowBookMarkListDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 300,
        child: Column(
          children: [
            Container(
              color:Colors.blueAccent.withAlpha(90),
              width: double.infinity,
              child: Text(
                'العلامات',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            Container(height: 209,color: Colors.white,),
            Container(height: 50,alignment: Alignment.topLeft,
              color: Colors.blueAccent.withAlpha(90),
              width: double.infinity,
              child: InkWell(onTap: (){
                Navigator.pop(context);
              },
                child: Image.asset(
                  'images/delete.png',
                  width: 60,
                  height: 60,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
