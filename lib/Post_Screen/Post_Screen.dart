import 'package:durg/Post_Screen/Comment_Screen.dart';
import 'package:durg/Post_Screen/Post_Model.dart';
import 'package:flutter/material.dart';

class Post_Screen extends StatefulWidget {
  const Post_Screen({super.key});

  @override
  State<Post_Screen> createState() => _Post_ScreenState();
}

class _Post_ScreenState extends State<Post_Screen> {
  List<bool> likedPosts = [];
  List<int> likeCounts = [];

  @override
  void initState() {
    super.initState();
    // Initialize all posts as not liked and with 0 likes
    likedPosts = List<bool>.filled(post_list.length, false);
    likeCounts = List<int>.filled(post_list.length, 0);
  }

  void toggleLike(int index) {
    setState(() {
      // Toggle like status
      likedPosts[index] = !likedPosts[index];

      // Update like count for the specific post
      if (likedPosts[index]) {
        likeCounts[index]++;
      } else {
        likeCounts[index]--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(right: 15),
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(3)),
              ),
              child: const Center(
                child: Text(
                  "NEW POST",
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
        title: const Text(
          "Posts",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: post_list.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(post_list[index].userProfileImage),
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
                        post_list[index].username,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 20),
                  Expanded(
                    child: Text(
                      post_list[index].question,
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
              const SizedBox(height: 30),
              Row(
                children: [
                  const SizedBox(width: 20),
                  IconButton(
                    onPressed: () {
                      toggleLike(index);
                    },
                    icon: Icon(
                      likedPosts[index]
                          ? Icons.thumb_up
                          : Icons.thumb_up_outlined,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    "Like ",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    likeCounts[index] > 0 ? '(${likeCounts[index]})' : '',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Comment_Screen(index: index)));
                    },
                    icon: const Icon(Icons.message),
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    "Comments (0)",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(width: 15),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(),
            ],
          );
        },
      ),
    );
  }
}
