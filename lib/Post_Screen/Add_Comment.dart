import 'package:flutter/material.dart';

class Add_Comment extends StatefulWidget {
  const Add_Comment({super.key});

  @override
  State<Add_Comment> createState() => _Add_CommentState();
}

class _Add_CommentState extends State<Add_Comment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
           
               IconButton(
                onPressed: (){
                    Navigator.pop(context);
                    },
                    icon:const Icon(Icons.arrow_back),
                ),

               Container(
                margin: const EdgeInsets.only(top: 10),
                 child: const Text("New Comment",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800
                  ),),
               ),
            ],
          ),

          const SizedBox(height: 30,),

          Container(
            margin:const EdgeInsets.only(left: 15),
            child: TextFormField(
              decoration:const InputDecoration(
                hintText: "Add your comment here...",
                hintStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400
                )
              ),
            ),
          ),

          const SizedBox(height: 330,),

          Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(color: const Color.fromARGB(255, 9, 133, 235), borderRadius: BorderRadius.circular(30)),
            child:const Center(
              child: Text(
                "COMMENT",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
          )
        ]
      )
    );
  }
}