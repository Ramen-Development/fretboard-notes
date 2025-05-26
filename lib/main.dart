import 'package:flutter/material.dart';
import 'package:fretboard_notes/views/main_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = 'Ramen fretboard notes';
    return MaterialApp(
      title: title,
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      home: const MainView(title: title),
    );
  }
}
