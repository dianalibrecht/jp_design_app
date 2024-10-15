import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_design_app/screens/balu_container.dart';
import 'package:jp_design_app/widgets/mogli_container.dart';
import 'package:jp_design_app/widgets/categories_row.dart';

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/backgrounds/bg_mainscreen.png",
              fit: BoxFit.cover),
          Padding(
              padding: const EdgeInsets.fromLTRB(16, 80, 16, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Choose Your Favorite \nSnack",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 16),
                  const CategoriesRow(),
                  const SizedBox(height: 32),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 0.2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16))),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 24, 16, 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                const Text(
                                  "Angi´s Yummy Burger",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                const Expanded(child: SizedBox()),
                                Icon(Icons.star,
                                    color: Colors.pink[300], size: 16),
                                Text("4,8",
                                    style: TextStyle(color: Colors.grey[350]))
                              ]),
                              const SizedBox(height: 8),
                              const Text(
                                "Delish vegan burger \nthat tastes like heaven",
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(height: 24),
                              const Text("₳ 13.99",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              //Der argentinische Austral (Währungssymbol: ₳,
                              //ein A mit Querstrich; Code: ARA) war vom 15. Juni 1985 bis zum
                              //ende des Jahres 1991 die Währung Argentiniens.
                              const SizedBox(height: 64),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ChooseScreen()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(9),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.white,
                                            spreadRadius: 0.5,
                                            blurRadius: 3,
                                            offset: Offset(0, -1)),
                                      ],
                                      gradient: const LinearGradient(
                                          colors: [
                                            Color.fromARGB(218, 168, 112, 225),
                                            Color.fromARGB(255, 200, 122, 255)
                                          ],
                                          begin: Alignment.centerRight,
                                          end: Alignment.centerLeft)),
                                  child: const Padding(
                                    padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                    child: Text("Add to order",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Text("We Recommand",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white)),
                  const SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      const MogliContainer(),
                      const SizedBox(width: 24),
                      const BaluContainer(),
                      const SizedBox(width: 24),
                      ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 1000, sigmaY: 1000),
                          child: Container(
                            width: 204,
                            height: 280,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                border:
                                    Border.all(color: Colors.white, width: 0.2),
                                gradient: const LinearGradient(
                                    colors: [
                                      Color.fromARGB(57, 82, 82, 82),
                                      Color.fromARGB(132, 134, 90, 255),
                                      Color.fromARGB(132, 134, 90, 255),
                                      Color.fromARGB(132, 134, 90, 255),
                                      Color.fromARGB(155, 105, 28, 177)
                                    ],
                                    stops: [
                                      0.1,
                                      0.35,
                                      0.5,
                                      0.6,
                                      0.9
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Transform.scale(
                                      scale: 1.0,
                                      child: Image.asset(
                                          "assets/grafics/ice_cream_stick.png")),
                                  const Text("Sara`s stick",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.white)),
                                  const Text("Chocolate ice cream",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w300)),
                                  const SizedBox(height: 16),
                                  const Row(
                                    children: [
                                      Text(
                                        "₳8.99",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Expanded(child: SizedBox()),
                                      Icon(Icons.favorite_border_rounded,
                                          color: Colors.white, size: 12),
                                      Text("200",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  )
                ],
              )),
          Positioned(
            left: 64,
            bottom: 280,
            child: Transform.scale(
                scale: 0.6, child: Image.asset("assets/grafics/burger.png")),
          ),
        ],
      ),
    ));
  }
}
