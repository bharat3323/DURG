import 'package:flutter/material.dart';

class Comment_Screen extends StatefulWidget {
  const Comment_Screen({super.key});

  @override
  State<Comment_Screen> createState() => _Comment_ScreenState();
}

class _Comment_ScreenState extends State<Comment_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            size: 35,
          ),
        ),

        actions: [
          
        ],
      ),
    );
  }
}