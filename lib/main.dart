import 'dart:ui';

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
              top: 150,
              left: 12,
              child: Transform.scale(
                  scale: 1.15,
                  child: Image.asset("assets/grafics/chick_cupcakes.png"))),
          Positioned(
              left: 0,
              right: 0,
              bottom: 40,
              child: Image.asset("assets/details/snack.png",
                  fit: BoxFit.fitWidth)),
          Positioned(
            bottom: 148,
            left: 16,
            right: 16,
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  child: Center(
                    child: Column(
                      children: [
                        const SizedBox(height: 40),
                        const Text("Feeling snackish today?"),
                        const SizedBox(height: 24),
                        const Text(
                            "Explore Angi`s most popular snack selection \n and get instantly happy"),
                        const SizedBox(height: 40),
                        ElevatedButton(
                            style: ButtonStyle(),
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(32, 8, 32, 8),
                              child: Text("Order now",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
