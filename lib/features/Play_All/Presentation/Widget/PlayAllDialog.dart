import 'package:flutter/material.dart';

class PlayAllDialog extends StatefulWidget {
  @override
  _PlayAllDialogState createState() => _PlayAllDialogState();
}

class _PlayAllDialogState extends State<PlayAllDialog> {
  int? _radioValue;
  bool isFirstChecked = false;
  bool isSecondChecked = false;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Dialog(
        child: Container(
          height: 450,
          child: Center(
            child: Column(
              children: [
                Text(
                  'استماع',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('الرجاء اختيار المادة المراد الاستماع لتلاوتها'),
                Divider(
                  color: Colors.black,
                  height: 1.0,
                ),
                Container(
                  height: 230,
                  child: ListView(
                    children: [
                      ListTile(
                          title: Text(
                            'الانفال',
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: Radio(
                            value: 1,
                            onChanged: (int? value) {
                              setState(() {
                                _radioValue = value!;
                              });
                            },
                            groupValue: _radioValue,
                          )),
                      Divider(
                        color: Colors.black,
                        height: 1.0,
                      ),
                      ListTile(
                          title: Text(
                            'استماع للصفحة كاملة',
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: Radio(
                            value: 2,
                            onChanged: (int? value) {
                              setState(() {
                                _radioValue = value!;
                              });
                            },
                            groupValue: _radioValue,
                          )),
                      Divider(
                        color: Colors.black,
                        height: 1.0,
                      ),
                      ListTile(
                          title: Text(
                            'استماع للحزب',
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: Radio(
                            value: 3,
                            onChanged: (int? value) {
                              setState(() {
                                _radioValue = value!;
                              });
                            },
                            groupValue: _radioValue,
                          )),
                      Divider(
                        color: Colors.black,
                        height: 1.0,
                      ),
                      ListTile(
                          title: Text(
                            'استماع للجزء',
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: Radio(
                            value: 4,
                            onChanged: (int? value) {
                              setState(() {
                                _radioValue = value!;
                              });
                            },
                            groupValue: _radioValue,
                          )),
                      Divider(
                        color: Colors.black,
                        height: 1.0,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Checkbox(value: isFirstChecked, onChanged: (value) {
                      setState(() {
                        isFirstChecked = value!;
                      });
                    }),
                    Text(
                      'تكرار الاستماع',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: isSecondChecked, onChanged: (value) {
                      setState(() {
                        isSecondChecked = value!;
                      });
                    }),
                    Text(
                      'الاستماع من الصفحة الحالية',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                ),
                Divider(
                  color: Colors.black,
                  height: 1.0,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'موافق',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'الغاء',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
