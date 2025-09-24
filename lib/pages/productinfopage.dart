import 'package:flutter/material.dart';
import 'package:pastriesapp/components.dart/foodtemcard.dart';

import 'package:pastriesapp/data/sizecard.dart';

class ProductDetailPage extends StatefulWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final double price;

  const ProductDetailPage({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final List<Map<String, dynamic>> foodItems = [
    {
      "image": "lib/assets/pastries5.jpeg",
      "title": "Deepthi Click",
      "subtitle": "Expresso",
      "price": 3.95,
    },
    {
      "image": "lib/assets/pastries1.jpeg",
      "title": "Cornish Pie",
      "subtitle": "Nigeria",
      "price": 5.56,
    },
    {
      "image": "lib/assets/pastries2.jpeg",
      "title": "Chocolate Cake",
      "subtitle": "Dessert",
      "price": 7.25,
    },
    {
      "image": "lib/assets/pastries3.jpeg",
      "title": "French Croissant",
      "subtitle": "Breakfast",
      "price": 4.50,
    },
  ];

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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Product Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  widget.imagePath,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.2,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Row(
                    children: [
                      Text(
                        "\$${widget.price.toStringAsFixed(2)}",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Spacer(flex: 1),
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
                                size: 20,
                              ),
                              onPressed: increaseQuantity,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),

                          Text(
                            "$quantity",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),

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
                                size: 20,
                              ),
                              onPressed: decreaseQuantity,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text(
                    "Description",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text(
                    "This Pastry is a favorite, wrapped in a golden, flaky pastry crust that’s baked to perfection. ",
                    style: const TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text(
                    "Select Size",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Row(children: [SizeCard()]),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Row(
                    children: [
                      Text(
                        "Popular Pastries",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      ),
                      Spacer(flex: 1),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See More",
                          style: TextStyle(
                            color: Color.fromRGBO(251, 205, 23, 1),
                            decoration: TextDecoration.underline,
                            decorationColor: Color.fromRGBO(251, 205, 23, 1),
                            decorationThickness: 2,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: foodItems.map((item) {
                        return FoodItemCard(
                          imagePath: item['image'],
                          title: item['title'],
                          subtitle: item['subtitle'],
                          price: item['price'],
                          onAdd: () {},
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_cart_checkout_outlined,
                        color: Colors.black,
                        size: 24,
                      ),
                      const Text(
                        "Add to Cart",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
