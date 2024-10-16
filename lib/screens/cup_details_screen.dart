import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_design_app/widgets/moglis_cup_details_container.dart';

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
            const MoglisCupDetailsContainer(),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 800, 16, 80),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(255, 254, 158, 190),
                            spreadRadius: 0.5,
                            blurRadius: 8,
                            offset: Offset(1, 1)),
                      ],
                      gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(218, 213, 181, 131),
                            Color.fromARGB(255, 255, 90, 225)
                          ],
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft)),
                  child: const Center(
                    child: Text("Add to order for ₳8.99",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
