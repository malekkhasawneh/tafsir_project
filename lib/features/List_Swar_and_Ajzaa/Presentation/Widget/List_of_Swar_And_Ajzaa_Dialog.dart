import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowSwarAndAjzaaDialog extends StatelessWidget {
  const ShowSwarAndAjzaaDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.width;
    List swar = [
      '1. الفاتحه',
      '2. البقره',
      '3. ال عمران',
      '4. النساء',
      '5. المائده',
      '6. الانعام',
      '7. الاعراف',
      '8. الانفال',
      '9. التوبه',
      '10. يونس',
    ];
    List ajzaa = [
      '1. الجزء الاول',
      '2. الجزء الثاني',
      '3. الجزء الثالث',
      '4. الجزء الرابع',
      '5. الجزء الخامس',
      '6. الجزء السادس',
      '7. الجزء السابع',
      '8. الجزء الثامن',
      '9. الجزء التاسع',
      '10. الجزء العاشر',
    ];
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Dialog(
            child: SingleChildScrollView(
          child: Container(
              height: 410,
              width: double.infinity,
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
                              unselectedLabelColor: Colors.grey,
                              labelStyle: TextStyle(fontSize: 20),
                              tabs: [
                                Tab(key: ObjectKey(1),
                                  text: 'قائمة السور',
                                ),
                                Tab(key: ObjectKey(1),
                                  text: 'قائمة الأجزاء',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  body: TabBarView(children: [ Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3),
                        child: Container(
                          height: 315,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border:
                              Border.all(color: Colors.grey, width: 1.0),
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              Container(
                                height: 56,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 3, vertical: 5),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.search),
                                        hintText: 'ابحث في السور',
                                        contentPadding: EdgeInsets.only(top: 5),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1.0,
                                                color: Colors.grey))),
                                  ),
                                ),
                              ),
                              Container(height: 250,
                                child: ListView(
                                  children: swar
                                      .map((swar) => ListTile(
                                    title: Text(swar,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                  ))
                                      .toList(),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 42,
                        color: Colors.blueAccent.withAlpha(90),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 3),
                              child: Text(
                                'اذهب للصفحة : ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 30,
                              color: Colors.white,
                              child: Padding(
                                padding:
                                EdgeInsets.only(top: heightSize * 0.03),
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  decoration:
                                  InputDecoration(hintText: '604:1'),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  //////////////
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 3),
                          child: Container(
                            height: 315,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border:
                                Border.all(color: Colors.grey, width: 1.0),
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              children: [
                                Container(
                                  height: 56,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 3, vertical: 5),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          prefixIcon: Icon(Icons.search),
                                          hintText: 'ابحث في الأجزاء',
                                          contentPadding: EdgeInsets.only(top: 5),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 1.0,
                                                  color: Colors.grey))),
                                    ),
                                  ),
                                ),
                                Container(height: 250,
                                  child: ListView(
                                    children: ajzaa
                                        .map((ajzaa) => ListTile(
                                      title: Text(ajzaa,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                    ))
                                        .toList(),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 42,
                          color: Colors.blueAccent.withAlpha(90),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 3),
                                child: Text(
                                  'اذهب للصفحة : ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 17),
                                ),
                              ),
                              Container(
                                width: 60,
                                height: 30,
                                color: Colors.white,
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(top: heightSize * 0.03),
                                  child: TextFormField(
                                    textAlign: TextAlign.center,
                                    decoration:
                                    InputDecoration(hintText: '604:1'),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),],),
                ),
              )),
        )));
  }
}
