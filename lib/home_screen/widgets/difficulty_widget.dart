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
        color: Color.fromARGB(57, 176, 221, 244)
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