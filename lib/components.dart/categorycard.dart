import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String imagePath;
  final String text;

  const CategoryCard({super.key, required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        height: 30,
        width: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.white, blurRadius: 30)],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset(imagePath, height: 30, width: 30)),

            SizedBox(width: 5),
            Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown[800],
                ),
                overflow: TextOverflow.visible,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
