import 'widgets/TrekCard.dart';
import 'package:flutter/material.dart';
import 'TrekDetailPage.dart';

class Alltreks extends StatefulWidget {
  const Alltreks({super.key});

  @override
  State<Alltreks> createState() => _AlltreksState();
}

class _AlltreksState extends State<Alltreks> {
  List<Map<String, String>> treks = [
    {'name': 'Achala', 'image': 'assets/achala.jpg'},
    {'name': 'Aadrai Jungle', 'image': 'assets/aadrai_jungle.jpg'},
    {'name': 'Ahupe Ghat', 'image': 'assets/ahupe_ghat.jpg'},
    {'name': 'Ajinkyatara', 'image': 'assets/ajinkyatara.jpg'},
    {'name': 'Ajobagad', 'image': 'assets/ajobagad.jpg'},
    {'name': 'Amaraichi wat', 'image': 'assets/amaraichi.jpg'},
    {'name': 'Andharban', 'image': 'assets/andharban.jpg'},
    {'name': 'Anghai', 'image': 'assets/anghai.jpg'},
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
            name: treks[index]['name']!,
            imageUrl: treks[index]['image']!,
            onTap: () {
              // Navigate to detail page when the trek card is tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TrekDetailPage(
                    name: treks[index]['name']!,
                    imageUrl: treks[index]['image']!,
                  ),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.location_pin),
      ),
    );
  }
}
