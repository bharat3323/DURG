import 'package:durg/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      color: Colors.white,  
      debugShowCheckedModeBanner: false,
      home:HomeScreen()
      );
  }
}
