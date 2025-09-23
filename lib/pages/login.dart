import 'package:flutter/material.dart';

import 'package:pastriesapp/components.dart/forgotpasswordbutton.dart';
import 'package:pastriesapp/components.dart/my_button.dart';
import 'package:pastriesapp/components.dart/my_textfield.dart';
import 'package:pastriesapp/components.dart/newtextbutton.dart';
import 'package:pastriesapp/components.dart/newtextfield.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(251, 205, 23, 1),
                  Color.fromRGBO(251, 205, 23, 1),
                ],
              ),
            ),
            child: Center(
              child: Image.asset(
                "lib/assets/logoimage.png",
                width: 80,
                height: 80,
              ),
            ),
          ),
          Container(
            transform: Matrix4.translationValues(0, -40, 0),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Colors.white],
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.transparent),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50.0),
                        child: Container(
                          height: 4,
                          width: 120,
                          color: Colors.grey,
                        ),
                      ),

                      Text(
                        "Welcome Back",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      //SizedBox(height: 4),
                      Text(
                        "we've Missed You\nLog in to continue your experience",
                        textAlign: TextAlign.center,
                        style: TextStyle(),
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 18.0,
                              vertical: 5.0,
                            ),
                            child: Text(
                              "Email",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 8.1),
                          MyTextfield(
                            controller: usernameController,
                            hintText: "Enter your Email",
                            obscureText: false,
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 18.0,
                              vertical: 5.0,
                            ),
                            child: Text(
                              "Password",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          NewTextfield(
                            controller: passwordController,
                            hintText: "Enter your Password",
                          ),
                        ],
                      ),

                      Align(
                        alignment: Alignment.centerRight,
                        child: Forgotpasswordbutton(),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: MyButton(onTap: signUserIn, text: 'Login'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Colors.grey[400],
                                thickness: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Or With"),
                            ),
                            Expanded(
                              child: Divider(
                                color: Colors.grey[400],
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10.0,
                          left: 15.0,
                          right: 15.0,
                        ),
                        child: Newtextbutton(
                          imagePath: 'lib/assets/google.png',
                          text: 'Google',
                          onTap: () {},
                        ),
                      ),
                      SizedBox(height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Dont have an account?'),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.transparent,
                            ),
                            child: Text(
                              'Create One',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
