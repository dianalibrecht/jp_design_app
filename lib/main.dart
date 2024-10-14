import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/backgrounds/bg_startscreen.png",
              fit: BoxFit.cover),
          Positioned(
              top: 200,
              left: 40,
              child: Transform.scale(
                  scale: 1.4,
                  child: Image.asset("assets/grafics/chick_cupcakes.png"))),
          Image.asset("assets/details/snack.png"),
        ],
      )),
    );
  }
}
