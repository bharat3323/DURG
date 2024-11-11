import 'widgets/TrekCard.dart';
import 'package:flutter/material.dart';

class Alltreks extends StatefulWidget {
  const Alltreks({super.key});

  @override
  State<Alltreks> createState() => _AlltreksState();
}

class _AlltreksState extends State<Alltreks> {
  List<Map<String, String>> treks = [
    {'name': 'Achala', 'image': 'assets/achla.jpeg'},
    {'name': 'Aadrai Jungle', 'image': 'assets/aadrai.jpg'},
    {'name': 'Ahupe Ghat', 'image': 'assets/ahupe.jpeg'},
    {'name': 'Ajinkyatara', 'image': 'assets/ajinkyatara.jpg'},
    {'name': 'Ajobagad', 'image': 'assets/ajobagad.jpeg'},
    {'name': 'Amaraichi wat', 'image': 'assets/amaraichi.jpg'},
    {'name': 'Andharban', 'image': 'assets/andharban.jpg'},
    {'name': 'Anghai', 'image': 'assets/anghai.jpeg'},
    {'name': 'Ajinkyatara', 'image': 'assets/ajinkyatara.jpg'},
    {'name': 'Andharban', 'image': 'assets/andharban.jpg'},
     {'name': 'Aadrai Jungle', 'image': 'assets/aadrai.jpg'},
     {'name': 'Achala', 'image': 'assets/achla.jpeg'},
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'All Treks (148)',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: treks.length,
          itemBuilder: (context, index) => TrekCard(
            treks[index]['name']!,
            treks[index]['image']!, // Using 'image' with lowercase "i"
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.location_pin,
        color: Colors.blue,),
      ),
    );
  }
}
