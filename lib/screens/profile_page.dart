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
          }, child: Text("Favourites", style: TextStyle(color: Colors.white, fontSize: 18),))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: CircleAvatar(
                radius: 80,
                child: Text("CY", style: TextStyle(fontSize: 60),),
              ),
            ),
            Flexible(child: ListTile(title: Text("Name Surname"), subtitle: Text("Ceren Yaşa"),)),
            Flexible(child: ListTile(title: Text("Job Description"), subtitle: Text("Mobile Application Developer"),)),
            Flexible(child: ListTile(title: Text("Education"), subtitle: Text("Eskişehir Osmangazi University - Electrical Electronics Engineering"),)),
          ],
        ),
      )
    );
  }
}