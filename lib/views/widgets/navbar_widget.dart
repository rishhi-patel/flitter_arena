import 'package:flutter/material.dart';
import 'package:todo1/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: currentPageNotifier,
      builder: (context, currentPage, child) {
        return NavigationBar(
          selectedIndex: currentPage,
          onDestinationSelected: (int value) {
            currentPageNotifier.value = value;
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          ],
        );
      },
    );
  }
}
