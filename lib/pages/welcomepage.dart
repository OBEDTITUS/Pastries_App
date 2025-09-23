import 'package:flutter/material.dart';
import 'package:pastriesapp/pages/login.dart';
import 'dart:async';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 205, 23, 1), // yellow bg
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("lib/assets/logoimage.png", width: 160, height: 160),
            //const SizedBox(height: 20),

            // const Text(
            //   "PastriesApp",
            //   style: TextStyle(
            //     fontSize: 28,
            //     fontWeight: FontWeight.bold,
            //     color: Colors.white,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
