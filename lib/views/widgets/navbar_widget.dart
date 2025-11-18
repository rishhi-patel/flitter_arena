import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo1/data/app_state.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();
    return NavigationBar(
      selectedIndex: appState.currentPage,
      onDestinationSelected: (int value) {
        appState.setPage(value);
      },
      destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: "Home"),
        NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
      ],
    );
  }
}
