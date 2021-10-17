import 'package:flutter/material.dart';

class Share extends StatelessWidget {
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
                      'انشر تؤجر',
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
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Text(
                  'اذا اعجبك تطبيق التفاسير العظيمة نرجو ان تساهم في دعم هذا الوقف',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Container(width: double.infinity,
                    child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Image.asset(
                          'images/logo_facebook.png',
                          width: 30,
                          height: 30,
                        ),
                        label: Text('انشر على Facebook')),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
