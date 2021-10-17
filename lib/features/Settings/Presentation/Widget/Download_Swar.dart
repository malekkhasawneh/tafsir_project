import 'package:flutter/material.dart';

class DownloadSwar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Dialog(
        child: Container(
          height: 400,
          width: 200,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 45,
                color: Colors.blueAccent.withAlpha(90),
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'تنزيل السور',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 50),
                      child: IconButton(onPressed: () {
                        Navigator.pop(context);
                      }, icon: Icon(Icons.arrow_forward_ios_outlined)),
                    )
                  ],
                ),
              ),
              Container(height: 350,
                child: ListView(children: [
                  ListTile(title: Text('الفاتحة'),),
                  Divider(color: Colors.black,height: 1.0,),
                  ListTile(title: Text('البقرة'),),
                  Divider(color: Colors.black,height: 1.0,),
                  ListTile(title: Text('اّل عمران'),),
                  Divider(color: Colors.black,height: 1.0,),
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}
