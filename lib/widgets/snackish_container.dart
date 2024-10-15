import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_design_app/widgets/order_now_button.dart';

class SnackishContainer extends StatelessWidget {
  const SnackishContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 80,
      left: 16,
      right: 16,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0.2),
                borderRadius: const BorderRadius.all(Radius.circular(16))),
            child: const Center(
              child: Column(
                children: [
                  SizedBox(height: 32),
                  Text(
                    "Feeling Snackish Today?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Explore Angi`s most popular snack selection \n and get instantly happy.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 32),
                  OrderNowButton(),
                  SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
