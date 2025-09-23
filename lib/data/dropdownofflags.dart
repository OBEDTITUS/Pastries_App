import 'package:flutter/material.dart';

class DropDownWithFlags extends StatefulWidget {
  const DropDownWithFlags({super.key});

  @override
  State<DropDownWithFlags> createState() => _DropDownWithFlagsState();
}

class _DropDownWithFlagsState extends State<DropDownWithFlags> {
  String? selectedCountry;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 115,
          height: 50,

          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: DropdownButton<String>(
              value: selectedCountry,
              hint: const Text("Select"),
              isExpanded: true,
              underline: const SizedBox(),
              items: [
                DropdownMenuItem(
                  value: "Nigeria",
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Image.asset(
                          "lib/assets/nigeriaflag.jpeg",
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ),
                DropdownMenuItem(
                  value: "USA",
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Image.asset(
                          "lib/assets/usaflag.jpeg",
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ),
                DropdownMenuItem(
                  value: "Ghana",
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Image.asset(
                          "lib/assets/ghanaflag.jpeg",
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ),

                DropdownMenuItem(
                  value: "UK",
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Image.asset(
                          "lib/assets/ukflag.jpeg",
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              ],

              onChanged: (value) {
                setState(() {
                  selectedCountry = value;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
