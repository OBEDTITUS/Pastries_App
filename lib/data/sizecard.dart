import 'package:flutter/material.dart';

class SizeCard extends StatefulWidget {
  const SizeCard({super.key});

  @override
  State<SizeCard> createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeCard> {
  int? selectedIndex;

  final List<String> sizes = ["S", "M", "L", "XL"];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(sizes.length, (index) {
        final isSelected = selectedIndex == index;

        return InkWell(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Card(
            color: isSelected ? Colors.yellow : Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 3,
            child: SizedBox(
              width: 50,
              height: 40,
              child: Center(
                child: Text(
                  sizes[index],
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: isSelected ? Colors.black : Colors.grey[800],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
