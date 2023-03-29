import 'package:flutter/material.dart';

class NeuCircle extends StatelessWidget {
  final child;
  const NeuCircle({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      padding: const EdgeInsets.all(8.0),
      alignment: Alignment.center,
      margin: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.brown[600],
        boxShadow: [
          const BoxShadow(
              color: Colors.black,
              offset: Offset(1.0, 1.0),
              blurRadius: 15.0,
              spreadRadius: 0),
          BoxShadow(
              color: Colors.black,
              offset: const Offset(-1.0, -1.0),
              blurRadius: 15.0,
              spreadRadius: 0),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(90, 255, 255, 255),
            Color.fromARGB(90, 255, 255, 255),
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 255, 255, 255),
          ],
          stops: [0.1, 0.3, 0.8, 1],
        ),
      ),
      child: child,
    );
  }
}
