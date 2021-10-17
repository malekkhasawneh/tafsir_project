import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tafsir_project/features/Search/Presentation/Widget/SearchTextField.dart';

import 'CustomTextButton.dart';

class SearchDialog extends StatefulWidget {
  @override
  _SearchDialogState createState() => _SearchDialogState();
}

class _SearchDialogState extends State<SearchDialog> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Dialog(
          child: Container(
            height: 350,
            child: Column(
              children: [
                Container(
                  color: Color(0xffc7e9ed).withAlpha(90),
                  width: double.infinity,
                  child: Text(
                    'البحث في القران',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1, bottom: 1),
                  child: SearchTextField(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomTextButton(
                      buttonText: 'مفردات القران',
                      onTap: () {
                        setState(() {
                          isPressed = false;
                        });
                      },
                    ),
                    CustomTextButton(
                      buttonText: 'الجذر',
                      onTap: () {
                        setState(() {
                          isPressed = false;
                        });
                      },
                    ),
                    CustomTextButton(
                      buttonText: 'من خلال الجذر',
                      onTap: () {
                        setState(() {
                          isPressed = false;
                        });
                      },
                    ),
                    CustomTextButton(
                      buttonText: 'ايات القران',
                      onTap: () {
                        setState(() {
                          isPressed = true;
                        });
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2),
                  child: Container(
                    height: 195,
                    child: Column(
                      children: [
                        isPressed == false
                            ? Container()
                            : Container(
                                height: 50,
                                child: DefaultTabController(
                                    length: 2,
                                    child: Scaffold(
                                        appBar: PreferredSize(
                                      preferredSize: Size.fromHeight(50),
                                      child: Container(
                                        child: SafeArea(
                                          child: Column(
                                            children: [
                                              Expanded(child: Container()),
                                              TabBar(
                                                labelColor: Colors.black,
                                                unselectedLabelColor:
                                                    Colors.grey,
                                                tabs: [
                                                  Tab(
                                                    key: ObjectKey(1),
                                                    text: 'نتائج مطابقة',
                                                  ),
                                                  Tab(
                                                    key: ObjectKey(1),
                                                    text: 'نتائج كلية',
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ))),
                              ),
                        Container(
                          alignment: Alignment.centerRight,
                          width: double.infinity,
                          height: 40,
                          color: Colors.blueAccent.withAlpha(90),
                          child: Text('عدد النتائج : 0'),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 1.0,
                ),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'images/check_icon_enable.png',
                        height: 40,
                        width: 40,
                      ),
                      Image.asset(
                        'images/Add-List-en.png',
                        height: 40,
                        width: 40,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
