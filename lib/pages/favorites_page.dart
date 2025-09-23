import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Favorites"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width * 0.25),
            Icon(Icons.favorite, size: 50, color: Colors.grey),
            Text("No Favorites Yet"),
          ],
        ),
      ),
    );
  }
}
