import 'package:flutter/material.dart';

class ChooseTafsir extends StatefulWidget {
  @override
  _ChooseTafsirState createState() => _ChooseTafsirState();
}

class _ChooseTafsirState extends State<ChooseTafsir> {
  List tafsirName = [
    'أيسر التفاسير/أبو بكر الجزائري',
    'البحر المحيط/ابو حيان',
    'التفسير/ابن عرفه'
  ];
  String chooseTafsir = 'Choose Tafsir';

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
                      'اختيار التفسير',
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
                  children: tafsirName.map((tafsir) {
                    return Column(
                      children: [
                        ListTile(
                          title: Text(tafsir),
                          trailing: chooseTafsir == tafsir
                              ? Image.asset('images/check_icon_enable.png')
                              : null,
                          onTap: () {
                            setState(() {
                              chooseTafsir = tafsir;
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
