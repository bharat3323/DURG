import 'package:carousel_slider/carousel_slider.dart';
import 'package:durg/about/About.dart';
import 'package:durg/chats/Post_Screen.dart';
import 'package:durg/alltreks/AllTreks.dart';
import 'package:durg/alltreks/TrekDetailPage.dart';
import 'package:durg/alltreks/widgets/TrekCard.dart';
import 'package:durg/home_screen/widgets/difficulty_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

    List<Map<String, String>> treks = [
    {'name': 'Achala', 'image': 'assets/achla.jpeg'},
    {'name': 'Aadrai Jungle', 'image': 'assets/aadrai.jpg'},
    {'name': 'Ahupe Ghat', 'image': 'assets/ahupe.jpeg'},
    {'name': 'Ajinkyatara', 'image': 'assets/ajinkyatara.jpg'},
    {'name': 'Ajobagad', 'image': 'assets/ajobagad.jpeg'},
    {'name': 'Amaraichi wat', 'image': 'assets/amaraichi.jpg'},
    {'name': 'Andharban', 'image': 'assets/andharban.jpg'},
    {'name': 'Anghai', 'image': 'assets/anghai.jpeg'},
    {'name': 'Achala', 'image': 'assets/achla.jpeg'},
    {'name': 'Aadrai Jungle', 'image': 'assets/aadrai.jpg'},
    {'name': 'Ahupe Ghat', 'image': 'assets/ahupe.jpeg'},
    {'name': 'Ajinkyatara', 'image': 'assets/ajinkyatara.jpg'},
  ];
  List<dynamic> difficultyList = [ "Easy","Medium", "Difficult"];
  int _selectedIndex = 0;
    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(index==0){
        Navigator.pushReplacement(context,
        MaterialPageRoute(builder:(context) {
          return const HomeScreen();
        },)
        );
      }
      else if(index ==1){
        Navigator.push(context,
        MaterialPageRoute(builder:(context) {
          return const Alltreks() ;
        },)
        );
      }
      else if(index==2){
         Navigator.push(context,
        MaterialPageRoute(builder:(context) {
          return const Post_Screen();
        },)
        );
      }
    });

    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( 
        title: const Text("Where do you want to go",
        style: TextStyle( 
          fontSize: 25,
          fontWeight: FontWeight.w700,
          color: Colors.black
        ),
        ),
        actions: [ 
          IconButton(
            onPressed:  (){
                  Navigator.push(context,
        MaterialPageRoute(builder:(context) {
          return const About() ;
        },)
        );
          }, 
          icon: const Icon (
            Icons.person,
            size: 35,
            color: Color.fromARGB(255, 89, 159, 215),
          ),
          ),
        ],
      ),

      body:Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column ( 
          children: [ 
        CarouselSlider(
          options: CarouselOptions(
            padEnds: false,
            height: 50.0,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3)
            ),
          items: ["🩹   Bring First Aid Kit",
                  "🚭    No Smoking",
                  "Dont Eat Wild Berries  🫐",
                  "Dont throw Plastic Bottles  🍾",
                  "Dont Cramp on Risky Cramp   🪨"
                  
                  ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  margin:const EdgeInsets.symmetric(
                    horizontal: 5.0),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow( 
                        color: Color.fromARGB(255, 220, 219, 219),
                        blurRadius: 2,
                      )
                    ]
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          i,
                          style:const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    ),
                  )
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(
          height: 20,
        ),
             const Row( 
          children: [ 
            Icon(
              Icons.hiking,
              size: 35,
              color: Colors.blue,
            ),
            SizedBox(width: 25,),
            Text( "Based On Diffulty",
            style: TextStyle( 
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 50,
          child: ListView.builder(
            scrollDirection:Axis.horizontal,
            shrinkWrap: true,
            itemCount: difficultyList.length,
            itemBuilder:(context, index) {
              return difficulty(difficultyList[index]);
            },
            ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Row( 
          children: [ 
            Icon(
              Icons.landscape_outlined,
              size: 35,
              color: Colors.blue,
            ),
            SizedBox(width: 25,),
            Text( "Suggested Treks",
            style: TextStyle( 
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
            ),
            
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder:(context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: TrekCard(
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
            );
          },),
        ),
            const SizedBox(
          height: 10,
        ),
        const Row( 
          children: [ 
            Icon(
              Icons.favorite_border_outlined,
              size: 35,
              color: Colors.blue,
            ),
            SizedBox(width: 25,),
            Text( "Popular Treks",
            style: TextStyle( 
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
            ),
            
          ],
        ),
          const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder:(context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: TrekCard(
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
            );
          },),
        ),
        ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),

        items:const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.hiking_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_hdr),
            label: 'Treks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.map_rounded),
            label: 'Maps',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: const Color.fromARGB(255, 138, 135, 135),
        onTap: _onItemTapped,
         ),
      floatingActionButton: FloatingActionButton(
        tooltip: "store",
        elevation: 20,
        backgroundColor: Colors.blue,
        onPressed: (){

      },
      shape: const CircleBorder(),
      child: const Icon( 
        Icons.store,
        color: Colors.white,
      ),
      
      ),
    );
  }
}