import 'package:flutter/material.dart';
import 'package:jp_design_app/widgets/snackish_container.dart';

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
              top: 150,
              left: 12,
              child: Transform.scale(
                  scale: 1.15,
                  child: Image.asset("assets/grafics/chick_cupcakes.png"))),
          Positioned(
              left: 0,
              right: 0,
              bottom: 96,
              child: Image.asset("assets/details/snack.png",
                  fit: BoxFit.fitWidth)),
          const SnackishContainer()
        ],
      )),
    );
  }
}
