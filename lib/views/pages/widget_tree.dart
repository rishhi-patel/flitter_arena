import 'package:flutter/material.dart';
import 'package:todo1/data/notifiers.dart';
import 'package:todo1/views/pages/home_page.dart';
import 'package:todo1/views/pages/profile_page.dart';
import 'package:todo1/views/widgets/navbar_widget.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: currentPageNotifier,
      builder: (context, currentPage, child) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.dark_mode)),
            title: Text("My First App"),
            centerTitle: true,
          ),
          body: pages.elementAt(currentPage),
          bottomNavigationBar: NavbarWidget(),
        );
      },
    );
  }
}
