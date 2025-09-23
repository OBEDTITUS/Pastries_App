import 'package:flutter/material.dart';
import 'package:pastriesapp/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          backgroundColor: Colors.white,
          indicatorColor: Colors.transparent,
          selectedIndex: selectedPage,
          onDestinationSelected: (int value) {
            selectedPageNotifier.value = value;
          },
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined, color: Colors.black),
              selectedIcon: Icon(Icons.home_outlined, color: Colors.yellow),
              label: "",
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite_outline, color: Colors.black),
              selectedIcon: Icon(Icons.favorite_outline, color: Colors.yellow),
              label: "",
            ),
            NavigationDestination(
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
              selectedIcon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.yellow,
              ),
              label: "",
            ),
            NavigationDestination(
              icon: Icon(Icons.notifications_outlined, color: Colors.black),
              selectedIcon: Icon(
                Icons.notifications_outlined,
                color: Colors.yellow,
              ),
              label: "",
            ),
          ],
        );
      },
    );
  }
}
