import 'package:flutter/material.dart';

Widget difficulty( String title){
  return Padding(
    padding:const EdgeInsets.all(8),
    child: Container( 
      alignment: Alignment.center,
      height: 50,
      width: 100,
      decoration: const BoxDecoration( 
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color.fromRGBO(254, 255, 255, 1),
        boxShadow:[
          BoxShadow( 
            color: Color.fromARGB(255, 220, 219, 219),
            blurRadius: 2,
          )
        ]
      ),
      child: Text( 
        title,
        style:const TextStyle( 
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}