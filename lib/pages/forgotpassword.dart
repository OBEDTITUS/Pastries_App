import 'package:flutter/material.dart';
import 'package:pastriesapp/data/dropdownofflags.dart';
import 'package:pastriesapp/pages/authpage.dart';
import 'package:pastriesapp/pages/login.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            icon: Icon(Icons.arrow_back),
          ),
          backgroundColor: Colors.white,
          //toolbarHeight: 50,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
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
                      text: "Enter registered phone Number",
                      style: TextStyle(color: Colors.black87, fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  // Country column
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Country",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      DropDownWithFlags(),
                    ],
                  ),
                  const SizedBox(width: 10),

                  // Number column
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Number",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 3),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "+234 8113456789",
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black38,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            fillColor: Colors.transparent,
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[600]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 500),
              SizedBox(
                //height: 80,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    backgroundColor: Color.fromRGBO(251, 205, 23, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AuthPage()),
                    );
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 // Container(
                  //   height: 60,
                  //   width: 300,
                  //   padding: EdgeInsets.all(8),
                  //   child: Center(
                  //     child: TextField(
                  //       decoration: InputDecoration(
                  //         hintText: "+234 8113456789",
                  //         enabledBorder: OutlineInputBorder(
                  //           borderSide: BorderSide(color: Colors.black),
                  //           borderRadius: BorderRadius.circular(
                  //             MediaQuery.of(context).size.width * 0.02,
                  //           ),
                  //         ),
                  //         focusedBorder: OutlineInputBorder(
                  //           borderSide: BorderSide(color: Colors.black38),
                  //         ),
                  //         fillColor: Colors.transparent,
                  //         filled: true,
                  //         hintStyle: TextStyle(color: Colors.grey[600]),
                  //       ),
                  //     ),
                  //   ),
                  // ),