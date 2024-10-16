import 'package:flutter/material.dart';

class CupDetailsScreen extends StatelessWidget {
  const CupDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/backgrounds/bg_mainscreen.png",
                fit: BoxFit.cover),
            const Positioned(
              top: 90,
              left: 16,
              child: Text(
                "Choose Your Favorite \nSnack",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
            ),
            SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Container(color: const Color.fromARGB(120, 0, 0, 0))),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 115, 0, 0),
              child: Container(
                  width: double.infinity,
                  color: const Color.fromARGB(255, 41, 41, 41)),
            ),
            Positioned(
                top: -66,
                left: -40,
                child: Transform.scale(
                    scale: 0.9,
                    child: Image.asset("assets/grafics/cat_cupcakes.png"))),
          ],
        ),
      ),
    );
  }
}
