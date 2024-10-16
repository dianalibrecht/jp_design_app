import 'dart:ui';
import 'package:flutter/material.dart';

class MoglisCupDetailsContainer extends StatelessWidget {
  const MoglisCupDetailsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 320, 16, 250),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0.1),
                borderRadius: const BorderRadius.all(Radius.circular(16))),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(32, 24, 32, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Mogli`s Cup",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w900)),
                  SizedBox(height: 8),
                  Text(
                    textAlign: TextAlign.center,
                    "Der argentinische Austral (Währungssymbol: ₳, ein A mit Querstrich; Code: ARA) war vom 15. Juni 1985 bis zum Ende des Jahres 1991 die Währung Argentiniens.",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 24),
                  Text("₳ 8.99",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  //Der argentinische Austral (Währungssymbol: ₳,
                  //ein A mit Querstrich; Code: ARA) war vom 15. Juni 1985 bis zum
                  //ende des Jahres 1991 die Währung Argentiniens.
                  SizedBox(height: 30),
                  Divider(color: Colors.white),
                  SizedBox(height: 24),
                  Row(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ingredients",
                                style: TextStyle(color: Colors.white)),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(Icons.abc, color: Colors.white),
                                SizedBox(width: 4),
                                Icon(Icons.abc, color: Colors.white),
                                SizedBox(width: 4),
                                Icon(Icons.abc, color: Colors.white),
                                SizedBox(width: 4),
                                Icon(Icons.abc, color: Colors.white)
                              ],
                            )
                          ]),
                      Expanded(child: SizedBox()),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Reviews",
                                style: TextStyle(color: Colors.white)),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(width: 2),
                                Icon(Icons.star, color: Colors.white, size: 16),
                                SizedBox(width: 2),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(width: 2),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(width: 2),
                                Icon(
                                  Icons.star_outline,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(width: 16),
                                Text(
                                  "4.0",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                )
                              ],
                            )
                          ]),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
