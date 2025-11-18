import 'package:flutter/material.dart';
import 'package:todo1/views/pages/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentNumber = 1;
  int currentIndex = 0;

  Map<int, String> pageHash = {0: "HomePage", 1: "Profile", 2: "History"};

  @override
  Widget build(BuildContext context) {
    dynamic page = pageHash[currentIndex];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
          brightness: Brightness.dark,
        ),
      ),
      home: WidgetTree()
    );
  }
}
