import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;

void main() => runApp(TextRevealScreen());

class TextRevealScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Slide-able Box Demo',
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                itemCount: quran.getVerseCount(2),
                itemBuilder: (context, index) {
                  return SlideableBox(
                    child: ListTile(
                      title: Text(
                        quran.getVerse(2, index + 1, verseEndSymbol: true),
                        style: const TextStyle(fontSize: 12),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ));
  }
}

class SlideableBox extends StatefulWidget {
  final Widget child;

  SlideableBox({required this.child});

  @override
  _SlideableBoxState createState() => _SlideableBoxState();
}

class _SlideableBoxState extends State<SlideableBox> {
  double _sliderPosition = 0.0;
  double _sliderWidth = 0.0;
  double _sliderHeight = 0.0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        _sliderWidth = constraints.maxWidth;
        _sliderHeight = constraints.maxHeight;
        double maxWidth = MediaQuery.of(context).size.width;
        double maxHeight = MediaQuery.of(context).size.height;

        return Stack(
          children: <Widget>[
            widget.child,
            Positioned(
              right: _sliderPosition,
              child: GestureDetector(
                onHorizontalDragUpdate: (DragUpdateDetails details) {
                  setState(() {
                    _sliderPosition -= details.delta.dx;
                    if (_sliderPosition < 0) {
                      _sliderPosition = 0;
                    } else if (_sliderPosition > _sliderWidth) {
                      _sliderPosition = _sliderWidth;
                    }
                  });
                },
                child: Container(
                  // width: _sliderWidth - _sliderPosition,
                  //height: _sliderHeight,
                  width: constraints.maxWidth,
                  height: maxHeight,

                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 40.0,
                        height: maxHeight,
                        color: Colors.blue,
                        child: const Align(
                          alignment: Alignment.center,
                          child: Icon(
                              size: 9,
                              Icons.favorite_sharp,
                              color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
