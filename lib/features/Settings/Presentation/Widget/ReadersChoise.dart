import 'package:flutter/material.dart';

class ReadersChoice extends StatefulWidget {
  @override
  _ReadersChoiceState createState() => _ReadersChoiceState();
}

class _ReadersChoiceState extends State<ReadersChoice> {
  String reader = 'Choose Reader';

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
                      'اختيار القارئ',
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
                  children: [
                    ListTile(
                      title: Text('ياسر الدوسري'),
                      trailing: reader == 'ياسر الدوسري'
                          ? Image.asset('images/check_icon_enable.png')
                          : null,
                      onTap: () {
                        setState(() {
                          reader = 'ياسر الدوسري';
                        });
                      },
                    ),
                    Divider(
                      color: Colors.black,
                      height: 1.0,
                    ),
                    ListTile(
                      title: Text('ماهر المعيقلي'),
                      trailing: reader == 'ماهر المعيقلي'
                          ? Image.asset('images/check_icon_enable.png')
                          : null,
                      onTap: () {
                        setState(() {
                          reader = 'ماهر المعيقلي';
                        });
                      },
                    ),
                    Divider(
                      color: Colors.black,
                      height: 1.0,
                    ),
                    ListTile(
                      title: Text('محمد صديق المنشاوي'),
                      trailing: reader == 'محمد صديق المنشاوي'
                          ? Image.asset('images/check_icon_enable.png')
                          : null,
                      onTap: () {
                        setState(() {
                          reader = 'محمد صديق المنشاوي';
                        });
                      },
                    ),
                    Divider(
                      color: Colors.black,
                      height: 1.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
