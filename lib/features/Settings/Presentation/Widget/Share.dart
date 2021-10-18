import 'package:flutter/material.dart';
import 'package:tafsir_project/features/Settings/Presentation/Widget/ShareButton.dart';

class Share extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Dialog(
        child: Container(
          height: 495,
          width: 290,
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
                  'اذا اعجبك تطبيق التفاسير العظيمة, فنرجو أن تساهم في دعم هذا الوقف الخيري من خلال نشره عبر مواقع التواصل الاجتماعي, أنشر ولك الأجر ان شاء اللّه',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Container(
                  child: Column(
                    children: [
                      ShareButton(
                          onTap: () {},
                          buttonColor: Color.fromARGB(245, 0, 0, 135),
                          buttonText: 'انشر على Facebook',
                          buttonImagePath: 'images/logo_facebook.png'),
                      ShareButton(
                          onTap: () {},
                          buttonColor: Colors.blueAccent,
                          buttonText: 'انشر على Twitter',
                          buttonImagePath: 'images/logo_twitter.png'),
                      ShareButton(
                          onTap: () {},
                          buttonColor: Color.fromARGB(240, 0, 0,255),
                          buttonText: 'انشر على LinkedIn',
                          buttonImagePath: 'images/logo_linkedin.png'),
                      ShareButton(
                          onTap: () {},
                          buttonColor: Colors.red,
                          buttonText: 'انشر على Google',
                          buttonImagePath: 'images/logo_google.png'),
                      ShareButton(
                          onTap: () {},
                          buttonColor: Colors.green,
                          buttonText: 'انشر على WhatsApp',
                          buttonImagePath: 'images/logo_whatsapp.png'),
                    ],
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
