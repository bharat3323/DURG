import 'package:durg/View/Post_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:Post_Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
