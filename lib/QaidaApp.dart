import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class QaidaPage extends StatefulWidget {
  const QaidaPage({super.key});

  @override
  State<QaidaPage> createState() => _QaidaPageState();
}

class _QaidaPageState extends State<QaidaPage> {
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
        padding: const EdgeInsets.all(20.0),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'بِسْمِ اللهِ الرَّحْمٰنِ الرَّحِيْمِ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0, fontFamily: 'Amiri'),
              ),
              Text(
                'حروف الھجاء المفردۃ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0, fontFamily: 'Amiri'),
              ),
              Expanded(
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      childAspectRatio: 0.76,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: _alphabets.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () async {
                          try {
                            await _audioPlayer
                                .setAsset(_alphabets[index]['audioPath']!);
                            await _audioPlayer.play();
                          } catch (e) {
                            print('Error playing audio: $e');
                          }
                        },
                        child: Material(
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
                                  _alphabets[index]['letter']!,
                                  style: TextStyle(
                                      fontSize: 30.0, fontFamily: 'Amiri'),
                                ),
                                Text(
                                  _alphabets[index]['name']!,
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontFamily: 'Amiri',
                                      color: Colors.redAccent,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
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
