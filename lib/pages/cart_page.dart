import 'package:flutter/material.dart';
import 'package:pastriesapp/components.dart/square_tile.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

  final List<Map<String, dynamic>> cartitems = [
    {
      "image": "lib/assets/pastries5.jpeg",
      "title": "Deepthi Click",
      "price": 3.95,
    },
    {
      "image": "lib/assets/pastries1.jpeg",
      "title": "Cornish Pie",
      "price": 5.56,
    },
    {
      "image": "lib/assets/pastries2.jpeg",
      "title": "Chocolate Cake",
      "price": 7.25,
    },
    {
      "image": "lib/assets/pastries3.jpeg",
      "title": "French Croissant",
      "price": 4.50,
    },
    {
      "image": "lib/assets/pastries4.jpeg",
      "title": "American Pie",
      "price": 9.50,
    },
  ];

  double getTotalPrice() {
    return cartitems.fold(0.0, (sum, item) => sum + (item["price"] as double));
  }

  @override
  Widget build(BuildContext context) {
    final totalPrice = getTotalPrice();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,

        title: const Center(
          child: Text(
            "Cart",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: cartitems.length,
              itemBuilder: (context, index) {
                final item = cartitems[index];
                return SquareTile(
                  imagePath: item["image"],
                  title: item["title"],
                  price: item["price"],
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              top: 0,
              left: 24.0,
              right: 24.0,
              bottom: 24.0,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      "Total Price",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "\$${totalPrice.toStringAsFixed(2)}",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      backgroundColor: Color.fromRGBO(251, 205, 23, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Proceeding to PaymentPage"),
                        ),
                      );
                    },
                    child: const Text(
                      "Checkout",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
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
