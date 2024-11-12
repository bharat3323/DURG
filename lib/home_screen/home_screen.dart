import 'package:carousel_slider/carousel_slider.dart';
import 'package:durg/alltreks/AllTreks.dart';
import 'package:durg/home_screen/widgets/difficulty_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<dynamic> difficultyList = [ "Easy","Medium", "Difficult"];
  int _selectedIndex = 0;
    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(index==0){
        Navigator.pushReplacement(context,
        MaterialPageRoute(builder:(context) {
          return HomeScreen();
        },)
        );
      }
      else if(index ==1){
        Navigator.push(context,
        MaterialPageRoute(builder:(context) {
          return Alltreks() ;
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

          }, 
          icon: const Icon (
            Icons.person,
            size: 35,
            color: Color.fromARGB(255, 89, 159, 215),
          ),
          ),
        ],
      ),

      body:Column ( 
        children: [ 
      CarouselSlider(
        options: CarouselOptions(
          height: 50.0,
          autoPlay: true,
          ),
        items: ["Bring First Aid Kit ","No Smoking","Dont Eat wild Berries"].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                margin:const EdgeInsets.symmetric(
                  horizontal: 5.0),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 198, 230, 244),
                  borderRadius: BorderRadius.all(Radius.circular(10))
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
                        fontWeight: FontWeight.w300
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
            size: 30,
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
            size: 30,
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
      ],
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
    );
  }
}