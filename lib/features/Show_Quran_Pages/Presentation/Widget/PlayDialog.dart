import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tafsir_project/features/Settings/Presentation/Widget/ReadersChoise.dart';

class PlayDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Dialog(
        child: Container(
          height: 160,
          width: 200,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 45,
                color: Colors.blueAccent.withAlpha(90),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'تنبيه',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Text(
                  'لم يتم تنزيل السور المراد الاستماع الى اياتها مسبقا هل تريد تنزيل السور',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
                height: 1.0,
              ),
              Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                              onPressed: () {
                                showDialog(context: context, builder: (BuildContext context){
                                  return ReadersChoice();
                                });
                              },
                              child: Text(
                                'نعم',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'لا',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )),
                        ],
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
