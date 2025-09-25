import 'package:flutter/material.dart';

class Newtextbutton extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onTap;
  const Newtextbutton({
    super.key,
    required this.imagePath,
    required this.text,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: Colors.grey, width: 2),
        ),
      ),
      onPressed: onTap,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 8),
            Image.asset(
              imagePath,
              height: MediaQuery.of(context).size.height * 0.04,
              width: MediaQuery.of(context).size.width * 0.04,
            ),
          ],
        ),
      ),
    );
  }
}
