import 'package:flutter/material.dart';

import 'package:pastriesapp/components.dart/categorycard.dart';
import 'package:pastriesapp/components.dart/foodtemcard.dart';
import 'package:pastriesapp/components.dart/hometopcard.dart';
import 'package:pastriesapp/pages/productinfopage.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<Map<String, dynamic>> foodItems = [
    {
      "image": "lib/assets/pastries5.jpeg",
      "title": "Deepthi Click",
      "subtitle": "Expresso",
      "price": 3.95,
      //"onAdd": () {},
    },
    {
      "image": "lib/assets/pastries1.jpeg",
      "title": "Cornish Pie",
      "subtitle": "Nigeria",
      "price": 5.56,
      //"onAdd": () {},
    },
    {
      "image": "lib/assets/pastries2.jpeg",
      "title": "Chocolate Cake",
      "subtitle": "Dessert",
      "price": 7.25,
      //"onAdd": () {},
    },
    {
      "image": "lib/assets/pastries3.jpeg",
      "title": "French Croissant",
      "subtitle": "Breakfast",
      "price": 4.50,
      //"onAdd": () {},
    },
    {
      "image": "lib/assets/pastries2.jpeg",
      "title": "Chocolate Cake",
      "subtitle": "Dessert",
      "price": 7.25,
      //"onAdd": () {},
    },
    {
      "image": "lib/assets/pastries5.jpeg",
      "title": "Deepthi Click",
      "subtitle": "Expresso",
      "price": 3.95,
      //"onAdd": () {},
    },
    {
      "image": "lib/assets/pastries4.jpeg",
      "title": "American Pie",
      "subtitle": "Dessert",
      "price": 9.50,
      //"onAdd": () {},
    },
    {
      "image": "lib/assets/pastries1.jpeg",
      "title": "Cornish Pie",
      "subtitle": "Nigeria",
      "price": 5.56,
      //"onAdd": () {},
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          automaticallyImplyLeading: false,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                  Text(
                    'Hello Emily!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundImage: AssetImage('lib/assets/profile1.jpeg'),
                    radius: 20,
                  ),
                ],
              ),
              SizedBox(height: 0.5),
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 15,
                      color: Colors.grey[600],
                    ),
                    SizedBox(width: 4),
                    Text(
                      "Jacksonville",
                      style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 2.5),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.75,
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: Colors.grey.shade400,
                              ),
                            ),
                            labelText: 'Search',
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey[500],
                              //size: 10,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromRGBO(251, 205, 23, 1),
                      ),
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.height * 0.048,

                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.tune, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.009),
                Hometopcard(imagePath: 'lib/assets/pastries4.jpeg'),
                SizedBox(height: MediaQuery.of(context).size.height * 0.005),

                Row(
                  children: [
                    Text(
                      "Categories",
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
                SizedBox(height: MediaQuery.of(context).size.height * 0.002),
                Row(
                  children: [
                    CategoryCard(
                      imagePath: 'lib/assets/pastries1.jpeg',
                      text: 'Cakes',
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                    CategoryCard(
                      imagePath: 'lib/assets/pastries4.jpeg',
                      text: 'Breads',
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                    CategoryCard(
                      imagePath: 'lib/assets/pastries3.jpeg',
                      text: 'Pastries',
                    ),
                  ],
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.005),
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

                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(8),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: foodItems.length,
                  itemBuilder: (context, index) {
                    final item = foodItems[index];
                    return FoodItemCard(
                      imagePath: item["image"],
                      title: item["title"],
                      subtitle: item["subtitle"],
                      price: item["price"],
                      onAdd: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetailPage(
                              imagePath: item["image"],
                              title: item["title"],
                              subtitle: item["subtitle"],
                              price: item["price"],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
