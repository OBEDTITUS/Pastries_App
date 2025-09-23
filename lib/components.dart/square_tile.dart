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
        height: MediaQuery.of(context).size.height * 0.15,
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
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 0.12,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.02),

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
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
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
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width * 0.08,
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
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02),

                    Text(
                      "$quantity",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02),

                    Container(
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width * 0.08,
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
