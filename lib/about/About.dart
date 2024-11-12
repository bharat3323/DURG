import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
    
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        children: [
          ListTile(
            leading: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWg7X0YYzUCU5m8BA_sH_ti92q4X0lCz5h_w&s',
              width: 30,
              height: 30,
            ),
            title: const Text("Sign in with Google"),
            subtitle: const Text(
              "After sign in all actions will be linked with your account including comments, trips and much more.",
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.star, color: Colors.blue),
            title: const Text("Rate us"),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.feedback, color: Colors.blue),
            title: const Text("Submit feedback"),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.share, color: Colors.blue),
            title: const Text("Share app with friends"),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.car_repair, color: Colors.blue),
            title: const Text("Contact rescue team"),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.upload, color: Colors.blue),
            title: const Text("Upload logs"),
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector( 
          onTap: (){

          },
          child: SizedBox(
            height: 50,
            width: 50,
            child: Image.asset(
                "assets/insta.jpg",
                fit: BoxFit.scaleDown
                ,),
          ),
        )
      ]
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Stay updated with latest updates and news about app.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
