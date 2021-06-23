import 'package:flutter/material.dart';

import 'example_page_1.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [
          TextButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ExamplePage1()));
          }, child: Text("Navigate", style: TextStyle(color: Colors.white, fontSize: 18),))
        ],
      ),
      body: Center(child: Text("Profile page"),),
    );
  }
}