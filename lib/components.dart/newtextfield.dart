import 'package:flutter/material.dart';

class NewTextfield extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const NewTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = true,
  });

  @override
  State<NewTextfield> createState() => _NewTextfieldState();
}

class _NewTextfieldState extends State<NewTextfield> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 2.0),
      child: TextField(
        controller: widget.controller,
        obscureText: _obscureText,
        decoration: InputDecoration(
          suffixIcon: widget.obscureText
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black38),
            borderRadius: BorderRadius.circular(
              MediaQuery.of(context).size.width * 0.02,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black38),
          ),
          fillColor: Colors.transparent,
          filled: true,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.grey[600]),
        ),
      ),
    );
  }
}
