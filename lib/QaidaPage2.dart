import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class QaidaPage2 extends StatefulWidget {
  const QaidaPage2({super.key});

  @override
  State<QaidaPage2> createState() => _QaidaPage2State();
}

class _QaidaPage2State extends State<QaidaPage2> {
  final List<Map<String, String>> _alphabets = [
    {'letter': 'ا', 'name': 'الف', 'audioPath': 'assets/001-alif.mp3'},
    {'letter': 'ب', 'name': 'با', 'audioPath': 'assets/ba.mp3'},
    {'letter': 'ت', 'name': 'تا', 'audioPath': 'assets/003-taa.mp3'},
    {'letter': 'ث', 'name': 'ثا', 'audioPath': 'assets/004-tha.mp3'},
    {'letter': 'ج', 'name': 'جیم', 'audioPath': 'assets/005-jeem.mp3'},
    {'letter': 'ح', 'name': 'حا', 'audioPath': 'assets/006-haa.mp3'},
    {'letter': 'خ', 'name': 'خا', 'audioPath': 'assets/007-khaa.mp3'},
    {'letter': 'د', 'name': 'دال', 'audioPath': 'assets/008-dal.mp3'},
    {'letter': 'ذ', 'name': 'ذال', 'audioPath': 'assets/009-dhal.mp3'},
    {'letter': 'ر', 'name': 'را', 'audioPath': 'assets/010-raa.mp3'},
    {'letter': 'ز', 'name': 'زا'},
    {'letter': 'س', 'name': 'سین'},
    {'letter': 'ش', 'name': 'شین'},
    {'letter': 'ص', 'name': 'صاد'},
    {'letter': 'ض', 'name': 'ضاد'},
    {'letter': 'ط', 'name': 'طا'},
    {'letter': 'ظ', 'name': 'ظا'},
    {'letter': 'ع', 'name': 'عین'},
    {'letter': 'غ', 'name': 'غین'},
    {'letter': 'ف', 'name': 'فا'},
    {'letter': 'ق', 'name': 'قاف'},
    {'letter': 'ك', 'name': 'کاف'},
    {'letter': 'ل', 'name': 'لام'},
    {'letter': 'م', 'name': 'میم'},
    {'letter': 'ن', 'name': 'نون'},
    {'letter': 'و', 'name': 'واو'},
    {'letter': 'ہ', 'name': 'ھا'},
    {'letter': 'ء', 'name': 'ھمزہ'},
    {'letter': 'ی', 'name': 'یا'},
    {'letter': 'یہ ', 'name': 'یا'},
  ];
  final AudioPlayer _audioPlayer = AudioPlayer();
  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Qaida App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'جدول الحروف الا بجدیۃ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontFamily: 'Amiri'),
              ),
              const Text(
                'حروف الاظھار : ء ہ ع ح غ خ حروف الاقلاب : ب حروف الادغام : ی \n ر م ل حروف الاخفاء ت ث ج د ذز س ش ص ض ط ظ ف ق ک',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0, fontFamily: 'Amiri'),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Row(children: [
                  Directionality(
                      textDirection: TextDirection.rtl,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 200,
                          height: 500,
                          child: GridView.builder(
                            itemCount: 16,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                            ),
                            itemBuilder: (context, index) {
                              String text;
                              switch (index) {
                                case 0:
                                  text = 'أَ إِ أُ';
                                  break;
                                case 1:
                                  text = 'آ ئِ أُو';
                                  break;
                                case 2:
                                  text = 'أَيْ أَوْ';
                                  break;
                                case 3:
                                  text = 'أً إٍ أٌ';
                                  break;
                                case 4:
                                  text = 'بَ بِ بُ';
                                  break;
                                case 5:
                                  text = 'بَا بیِ بوُ';
                                  break;
                                case 6:
                                  text = 'بَيْ بَوْ';
                                  break;
                                case 7:
                                  text = 'بًا بٍ بٌ';
                                  break;
                                case 8:
                                  text = 'تَ تِ تُ';
                                  break;
                                case 9:
                                  text = 'تَا تِی تُو';
                                  break;
                                case 10:
                                  text = 'تَيْ تَوْ';
                                  break;
                                case 11:
                                  text = 'تًا تٍ تٌ';
                                  break;
                                case 12:
                                  text = 'ثَ ثِ ثُ';
                                  break;
                                case 13:
                                  text = 'ثَا ثِی ثُو';
                                  break;
                                case 14:
                                  text = 'ثَيْ ثَوْ';
                                  break;
                                case 15:
                                  text = 'ثًا ثٍ ثٌ';
                                  break;
                                default:
                                  text = '';
                                  break;
                              }
                              return Material(
                                elevation: 2.0,
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.grey[300]!),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      text,
                                      style: TextStyle(
                                          fontSize: 25, fontFamily: 'Amiri'),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      )),
                  Expanded(
                    child: Container(
                      width: 20,
                      child: GridView.builder(
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          childAspectRatio: 1.85,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) {
                          List<String> letters = [
                            "ا",
                            "ب",
                            "ت",
                            "ث",
                          ];
                          List<String> glyphs = [
                            "الف",
                            "با",
                            "تا",
                            "ثا",
                          ];
                          return Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[300]!),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    letters[index],
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Amiri'),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    glyphs[index],
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.red,
                                        fontFamily: 'Amiri'),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
