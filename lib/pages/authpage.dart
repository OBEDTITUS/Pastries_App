import 'package:flutter/material.dart';
import 'package:pastriesapp/pages/forgotpassword.dart';
import 'package:pastriesapp/pages/newpasswordpage.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Verification Number\n",
                          style: const TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        TextSpan(
                          text:
                              "Enter Four(4) digit OTP sent to\n+234 8113486404",
                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),

                Padding(
                  padding: const EdgeInsets.only(right: 8, top: 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(4, (index) {
                      return SizedBox(
                        width: 80,

                        child: TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            counterText: "",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Resend Code in 1:00",
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.55),
                SizedBox(
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
                        MaterialPageRoute(
                          builder: (context) => Newpasswordpage(),
                        ),
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
      ),
    );
  }
}
