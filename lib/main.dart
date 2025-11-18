import 'package:flutter/material.dart';
import "package:provider/provider.dart";
import 'package:todo1/data/app_state.dart';
import 'package:todo1/views/pages/widget_tree.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_) => AppState(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
          brightness: appState.isDarkTheme ? Brightness.dark : Brightness.light,
        ),
      ),
      home: WidgetTree(),
    );
  }
}
