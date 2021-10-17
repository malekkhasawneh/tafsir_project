import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tafsir_project/features/AyaList/Presentation/Widget/CreateList.dart';

class AyaListDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.width;

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
                                Tab(
                                  key: ObjectKey(1),
                                  text: 'قوائم البحث',
                                ),
                                Tab(
                                  key: ObjectKey(1),
                                  text: 'قوائم الايات',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  body: Padding(
                    padding: EdgeInsets.only(left: 14),
                    child: TextButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return CreateList();
                            });
                      },
                      child: Text(
                        'انشاء قائمة',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              )),
        )));
  }
}
