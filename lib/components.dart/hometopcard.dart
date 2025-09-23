import 'package:flutter/material.dart';

class Hometopcard extends StatelessWidget {
  final String imagePath;
  //final VoidCallback onTap;

  const Hometopcard({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 1),
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8)],
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.black.withOpacity(0.4),
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    children: [
                      const TextSpan(text: "Buy 3, Get 1 "),
                      TextSpan(
                        text: "Free!", // make only this yellow
                        style: const TextStyle(color: Colors.yellow),
                      ),
                      const TextSpan(text: "\nMore Pastries, More Joy"),
                    ],
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
