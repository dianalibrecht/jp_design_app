import 'package:flutter/material.dart';
import 'package:jp_design_app/screens/choose_screen.dart';

class OrderNowButton extends StatelessWidget {
  const OrderNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ChooseScreen()));
      },
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
            gradient: const LinearGradient(colors: [
              Color.fromARGB(218, 213, 181, 131),
              Color.fromARGB(255, 255, 90, 225)
            ], begin: Alignment.centerRight, end: Alignment.centerLeft)),
        child: const Padding(
          padding: EdgeInsets.fromLTRB(56, 12, 56, 12),
          child: Text("Order Now",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
