import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tafsir_project/features/Settings/Presentation/Widget/AboutUs.dart';
import 'package:tafsir_project/features/Settings/Presentation/Widget/AyatListDialog.dart';
import 'package:tafsir_project/features/Settings/Presentation/Widget/ChooseTafsirDialog.dart';
import 'package:tafsir_project/features/Settings/Presentation/Widget/ScreenPause.dart';
import 'package:tafsir_project/features/Settings/Presentation/Widget/Share.dart';
import 'package:tafsir_project/features/Settings/Presentation/Widget/TarajemSettings.dart';

import 'Download_Swar.dart';
import 'ReadersChoise.dart';

class SettingsDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Dialog(
        child: Container(
          height: 500,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 45,
                color: Colors.blueAccent.withAlpha(90),
                child: Text(
                  'الإعدادات',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 450,
                child: ListView(
                  children: [
                    ListTile(
                      title: Text(
                        'إختيار القارئ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return ReadersChoice();
                            });
                      },
                    ),
                    ListTile(
                      title: Text(
                        'تنزيل السور',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return DownloadSwar();
                            });
                      },
                    ),
                    ListTile(
                      title: Text(
                        'تنزيل السور التي تحوي الاّيات',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AyatListDownload();
                            });
                      },
                    ),
                    ListTile(
                      title: Text(
                        'اختيار التفسير',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return ChooseTafsir();
                            });
                      },
                    ),
                    ListTile(
                      title: Text(
                        'اعدادات التراجم',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return TarajemSettings();
                            });
                      },
                    ),
                    ListTile(
                      title: Text(
                        'زمن توقف الشاشة',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return ScreenPause();
                            });
                      },
                    ),
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        Text(
                          'تفعيل الاشعارات',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    ListTile(
                      title: Text(
                        'المساعدة',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'نبذة عنا',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AboutUs();
                            });
                      },
                    ),
                    ListTile(
                      title: Text(
                        'انشر تؤجر',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Share();
                            });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
