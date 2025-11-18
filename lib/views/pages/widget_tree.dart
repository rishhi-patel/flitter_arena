import 'package:flutter/material.dart';
import "package:provider/provider.dart";
import 'package:todo1/data/app_state.dart';
import 'package:todo1/views/pages/home_page.dart';
import 'package:todo1/views/pages/profile_page.dart';
import 'package:todo1/views/widgets/navbar_widget.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            appState.toggleTheme();
          },
          icon: Icon(appState.isDarkTheme ? Icons.dark_mode : Icons.light_mode),
        ),
        title: Text("My First App"),
        centerTitle: true,
      ),
      body: pages.elementAt(appState.currentPage),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
