import 'package:flutter/material.dart';

import 'package:pastriesapp/components.dart/newtextfield.dart';
import 'package:pastriesapp/widgets/widget_tree.dart';

class Newpasswordpage extends StatelessWidget {
  Newpasswordpage({super.key});

  final newpasswordController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 20, top: 10),
            child: RichText(
              textAlign: TextAlign.start,
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Forgot Password\n",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  TextSpan(
                    text: "Enter your new password",
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
              vertical: 5.0,
            ),
            child: Text(
              "New Password",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8.1),
          NewTextfield(controller: newpasswordController, hintText: "Password"),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
              vertical: 5.0,
            ),
            child: Text(
              "Confirm Password",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          NewTextfield(controller: passwordController, hintText: " Password"),
          SizedBox(height: MediaQuery.of(context).size.height * 0.5),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Color.fromRGBO(251, 205, 23, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WidgetTree()),
                  );
                },
                child: const Text(
                  "Confirm",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
