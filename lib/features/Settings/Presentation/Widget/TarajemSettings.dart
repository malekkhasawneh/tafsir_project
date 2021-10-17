import 'package:flutter/material.dart';

class TarajemSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List _dropdownValues = [
      "Malek",
      "Test",
      "Test",
      "Test",
    ];

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
                      'اعدادات التراجم',
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
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0),
                    ),
                    child: DropdownButton(
                      items: _dropdownValues
                          .map((value) => DropdownMenuItem(
                        child: Text(value),
                        value: value,
                      ))
                          .toList(),
                      onChanged: (value) {},
                      isExpanded: false,
                      value: _dropdownValues.first,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0),
                    ),
                    child: DropdownButton(
                      items: _dropdownValues
                          .map((value) => DropdownMenuItem(
                        child: Text(value),
                        value: value,
                      ))
                          .toList(),
                      onChanged: (value) {},
                      isExpanded: false,
                      value: _dropdownValues.first,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
