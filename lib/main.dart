import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final double boxSize = 150.0;
  int numOfSingleTapp = 0;
  int doubleTaps = 0;
  int longPress = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              numOfSingleTapp++;
            });
            setState(() {
              doubleTaps++;
            });
            setState(() {
              longPress++;
            });
          },
          child: Container(
            width: boxSize,
            height: boxSize,
            color: Colors.grey,
          ),
        ),
      ),
      bottomNavigationBar: Text(
        'Taps: $numOfSingleTapp - Double Taps: $doubleTaps - Long Press: $longPress',
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
