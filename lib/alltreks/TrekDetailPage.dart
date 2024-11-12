import 'package:flutter/material.dart';

class TrekDetailPage extends StatelessWidget {
  final String name;
  final String imageUrl;

  const TrekDetailPage({required this.name, required this.imageUrl, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Column(
        children: [
          Image.asset(
            imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 300,
            errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image), // Error handling for missing images
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          // Add more details here as needed
        ],
      ),
    );
  }
}
