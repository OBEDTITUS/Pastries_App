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
          width: MediaQuery.of(context).size.width * 0.24,
          height: MediaQuery.of(context).size.height * 0.06,

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
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.1,
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
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.1,
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
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.1,
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
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.1,
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
