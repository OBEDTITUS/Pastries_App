import 'package:flutter/material.dart';

class SquareTile extends StatefulWidget {
  final String? imagePath;
  final String title;
  final double price;

  const SquareTile({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
  });

  @override
  State<SquareTile> createState() => _SquareTileState();
}

class _SquareTileState extends State<SquareTile> {
  int quantity = 1;

  void increaseQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decreaseQuantity() {
    setState(() {
      if (quantity > 1) quantity--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
      child: Container(
        height: 110,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                widget.imagePath!,
                height: 90,
                width: 90,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 20),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '\$${widget.price.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete_outline,
                    color: Colors.red,
                    size: 25,
                  ),
                ),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(251, 205, 23, 1),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 18,
                        ),
                        onPressed: increaseQuantity,
                      ),
                    ),
                    const SizedBox(width: 8),

                    Text(
                      "$quantity",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 8),

                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(251, 205, 23, 1),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 18,
                        ),
                        onPressed: decreaseQuantity,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
