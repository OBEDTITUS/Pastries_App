import 'package:flutter/material.dart';
import 'package:pastriesapp/widgets/widget_tree.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.onTap, required this.text});
  final Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WidgetTree()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 1.0),

        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.06,
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(251, 205, 23, 1),
              borderRadius: BorderRadius.circular(5),
            ),

            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
