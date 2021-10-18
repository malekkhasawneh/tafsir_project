import 'package:flutter/material.dart';

class ScreenPause extends StatefulWidget {
  @override
  _ScreenPauseState createState() => _ScreenPauseState();
}

class _ScreenPauseState extends State<ScreenPause> {
  List pauseTimes = [
    '5 دقائق',
    '10 دقائق',
    '15 دقيقة',
    '20 دقيقة',
  ];
  String chooseTime = 'Choose Time';

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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'زمن توقف الشاشة',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 50),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_forward_ios_outlined)),
                    )
                  ],
                ),
              ),
              Container(
                height: 350,
                child: ListView(
                  children: pauseTimes.map((readers) {
                    return Column(
                      children: [
                        ListTile(
                          title: Text(readers),
                          trailing: chooseTime == readers
                              ? Image.asset('images/check_icon_enable.png')
                              : null,
                          onTap: () {
                            setState(() {
                              chooseTime = readers;
                            });
                          },
                        ),
                        Divider(
                          color: Colors.black,
                          height: 1.0,
                        ),
                      ],
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
