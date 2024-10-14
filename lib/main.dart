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
              bottom: 96,
              child: Image.asset("assets/details/snack.png",
                  fit: BoxFit.fitWidth)),
          Positioned(
            bottom: 80,
            left: 16,
            right: 16,
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 0.2),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(16))),
                  child: Center(
                    child: Column(
                      children: [
                        const SizedBox(height: 32),
                        const Text(
                          "Feeling Snackish Today?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          "Explore Angi`s most popular snack selection \n and get instantly happy.",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 32),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                gradient: const LinearGradient(
                                    colors: [
                                      Color.fromARGB(218, 213, 181, 131),
                                      Color.fromARGB(255, 255, 90, 225)
                                    ],
                                    begin: Alignment.centerRight,
                                    end: Alignment.centerLeft)),
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(56, 12, 56, 12),
                              child: Text("Order Now",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
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
