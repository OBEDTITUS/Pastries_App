import 'package:flutter/material.dart';
import 'package:pastriesapp/data/notifiers.dart';
import 'package:pastriesapp/pages/cart_page.dart';

import 'package:pastriesapp/pages/home_page.dart';
import 'package:pastriesapp/pages/notification_page.dart';
import 'package:pastriesapp/pages/favorites_page.dart';

import 'navbar_widget.dart';

List<Widget> pages = [
  HomePage(),
  FavoritesPage(),
  CartPage(),

  NotificationPage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),

      bottomNavigationBar: NavbarWidget(),
    );
  }
}
