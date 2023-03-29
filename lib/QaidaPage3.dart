import 'package:flutter/material.dart';

class QaidaPage3 extends StatefulWidget {
  const QaidaPage3({super.key});

  @override
  State<QaidaPage3> createState() => _QaidaPageState();
}

class _QaidaPageState extends State<QaidaPage3> {
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
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Row(children: [
                  Directionality(
                      textDirection: TextDirection.rtl,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: 200,
                          child: GridView.builder(
                            itemCount: 20,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 2.2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                            ),
                            itemBuilder: (context, index) {
                              String text;
                              switch (index) {
                                case 0:
                                  text = 'جَ جِ جُ';
                                  break;
                                case 1:
                                  text = 'جَا جِى جُو';
                                  break;
                                case 2:
                                  text = 'جَيْ جَوْ';
                                  break;
                                case 3:
                                  text = 'جًا جٍ جٌ';
                                  break;
                                case 4:
                                  text = 'حَ حِ حُ';
                                  break;
                                case 5:
                                  text = 'حَا حِى حُو';
                                  break;
                                case 6:
                                  text = 'حَيْ حَوْ';
                                  break;
                                case 7:
                                  text = 'حًا حٍ حٌ';
                                  break;
                                case 8:
                                  text = 'خَ خِ خُ';
                                  break;
                                case 9:
                                  text = 'خَا خِى خُو';
                                  break;
                                case 10:
                                  text = 'خَيْ خَوْ';
                                  break;
                                case 11:
                                  text = 'خًا خٍ خٌ';
                                  break;
                                case 12:
                                  text = 'دَ دِ دُ';
                                  break;
                                case 13:
                                  text = 'دَا دِى دُو';
                                  break;
                                case 14:
                                  text = 'دَيْ دَوٌ';
                                  break;
                                case 15:
                                  text = 'دًا دٍ دٌ';
                                  break;
                                case 16:
                                  text = 'ذَ ذِ ذُ';
                                  break;
                                case 17:
                                  text = 'ذَا ذِى ذُو';
                                  break;
                                case 18:
                                  text = 'ذَيْ زَوُ';
                                  break;
                                case 19:
                                  text = 'ذًا ذٍ ذٌ';
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
                                      style: const TextStyle(
                                          fontFamily: 'Amiri', fontSize: 25),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      )),
                  Expanded(
                    child: SizedBox(
                      width: 20,
                      child: GridView.builder(
                        itemCount: 5,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          childAspectRatio: 2.05,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) {
                          List<String> letters = [
                            "ج",
                            "ح",
                            "خ",
                            "د",
                            "ذ",
                          ];
                          List<String> glyphs = [
                            "جيم",
                            "حا",
                            "خا",
                            "دال",
                            "ذال",
                          ];
                          return Material(
                            elevation: 2.0,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[300]!),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      glyphs[index],
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.red,
                                        fontFamily: 'Amiri',
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      letters[index],
                                      style: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Amiri',
                                      ),
                                    ),
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
