import 'package:flutter/material.dart';

class CreateList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: double.infinity,
        height: 200,
        child: Center(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 40,
                color: Colors.blueAccent.withAlpha(90),
                child: Text(
                  'قائمة البحث',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 7, bottom: 20),
                child: Text(
                  'اسم القائمة',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Container(
                  width: 160,
                  height: 35,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                      width: 1.0,
                      color: Colors.grey,
                    ))),
                  )),
              Padding(
                padding: EdgeInsets.only(top: 21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'الغاء',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'حفظ',
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
    );
  }
}
