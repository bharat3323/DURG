import 'package:auto_scroll/auto_scroll.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<dynamic> items = [
     "",
      "","third", "fourth"];
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
            color: Colors.blue,
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
                      Expanded(
                        child: Image.network(
                          ""

                        ),
                      ),
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
      )
              ],
      ),
    );
  }
}