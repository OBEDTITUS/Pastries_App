import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Notifications"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Row(
          children: [
            SizedBox(width: 110),
            Icon(Icons.notifications, size: 50, color: Colors.grey),
            Text("No Notifications Yet"),
          ],
        ),
      ),
    );
  }
}
