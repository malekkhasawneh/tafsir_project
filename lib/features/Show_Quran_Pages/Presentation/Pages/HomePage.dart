import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tafsir_project/features/Add_Rmove_BookMark/Presentation/Page/Add_Remove_BookMark.dart';
import 'package:tafsir_project/features/AyaList/Presentation/Page/AyaListButton.dart';
import 'package:tafsir_project/features/List_Swar_and_Ajzaa/Presentation/Pages/List_Swar_and_Ajzaa.dart';
import 'package:tafsir_project/features/Play_All/Presentation/page/PlayAllButton.dart';
import 'package:tafsir_project/features/Search/Presentation/Pages/Search.dart';
import 'package:tafsir_project/features/Settings/Presentation/Page/Settings_Button.dart';
import 'package:tafsir_project/features/Show_BookMark_List/Presentation/Page/Show_BookMark_List.dart';
import 'package:tafsir_project/features/Show_Quran_Pages/Presentation/Widget/CustomButton.dart';
import 'package:tafsir_project/features/Show_Quran_Pages/Presentation/Widget/CustomPageView.dart';
import 'package:tafsir_project/features/Show_Quran_Pages/Presentation/Widget/PlayDialog.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'Home Page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageNumber = 0;
  List pages = [
    'images/quran_pages/page1.png',
    'images/quran_pages/page2.png',
    'images/quran_pages/page3.png',
    'images/quran_pages/page4.png',
    'images/quran_pages/page5.png',
    'images/quran_pages/page6.png',
    'images/quran_pages/page7.png',
    'images/quran_pages/page8.png',
    'images/quran_pages/page9.png',
    'images/quran_pages/page10.png',
  ];

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: widthSize > 528 ? 500 : double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'images/QuranPageBackground.jpg',
              ),
              fit: BoxFit.fill,
            )),
            child: Stack(
              children: [
                Container(
                  height: 88,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/PageHeader.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomButtons(
                            onPressedButton: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return PlayDialog();
                                  });
                            },
                            imagePath: 'images/playEnd1x.png'),
                        PlayAllButton(),
                        AyaListButton(),
                        SettingsButton(),
                        ShowListOfSwarAndAjzaaButton(),
                        ShowBookMarkListButton(),
                        AddRemoveBookMarkButton(),
                        CustomSearchButtons(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 80),
                  child: Container(
                    height: widthSize > 520 ? 610 : heightSize * 0.82,
                    width: double.infinity,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:  widthSize > 520 ? 60:75),
                  child: Container(
                    height: widthSize > 520 ? 610: heightSize * 0.838,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('images/QuranFramDesign.png'),
                      fit: BoxFit.fill,
                    )),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: heightSize * 0.163,
                        left: widthSize > 520 ? 40 : widthSize * 0.08),
                    child: Container(
                        height: widthSize > 520 ? 525 : heightSize * 0.73,
                        width: widthSize > 520 ? 418 : widthSize * 0.84,
                        child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: CustomPageView(
                              pagesList: pages,
                              onPageChange: (value) {
                                setState(() {
                                  pageNumber = value;
                                });
                              },
                            )))),
                Padding(
                  padding: EdgeInsets.only(top: 58),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Image.asset(
                          'images/quran_pages/SoraName.png',
                          width: 75,
                          height: 75,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Image.asset(
                          'images/quran_pages/Joza.png',
                          width: 75,
                          height: 75,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: widthSize > 520 ? 570 : heightSize * 0.85),
                  child: Center(
                      child: Text(
                    '${pageNumber + 1}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
