import 'package:durg/Post_Screen/Add_Comment.dart';
import 'package:durg/Post_Screen/Post_Model.dart';
import 'package:flutter/material.dart';

class Comment_Screen extends StatefulWidget {
  final int? index;
  const Comment_Screen({super.key, required this.index});

  @override
  State<Comment_Screen> createState() => _Comment_ScreenState();
}

class _Comment_ScreenState extends State<Comment_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40,),
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
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(post_list[widget.index!].userProfileImage),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),


                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        post_list[widget.index!].username,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const Text(
                        "1 day ago",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 99, 96, 96),
                        ),
                      ),
                    ],
                  )
                ],
              ),

              const SizedBox(height: 20,),

              Row(
                children: [
                  const SizedBox(width: 12,),
                  Expanded(
                    child: Text(
                            post_list[widget.index!].question,
                            maxLines: 10,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 50,),

              Row(
                children: [
                  const SizedBox(width: 12,),
                  const Text("Comments (0)",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800
                  ),),

                  const Spacer(),

                  GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Add_Comment()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 15),
                    height: 40,
                    width: 140,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(3)),
                    ),
                    child: const Center(
                      child: Text(
                        "ADD COMMENT",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 41, 86, 164),
                        ),
                      ),
                    ),
                  ),
                )


                ],
              )
      
        ],
      ),
    );
  }
}