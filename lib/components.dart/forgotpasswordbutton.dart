import 'package:flutter/material.dart';

import 'package:pastriesapp/pages/forgotpassword.dart';

class Forgotpasswordbutton extends StatelessWidget {
  const Forgotpasswordbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Colors.transparent,
            width: MediaQuery.of(context).size.width * 0.005,
          ),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
        );
      },
      child: Text(
        'Forgot Password?',
        style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold),
      ),
    );
  }
}
