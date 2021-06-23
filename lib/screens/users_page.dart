import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  final List<Map<String, String>> users = List.generate(10,
      (index) => {"name": "Ceren Yaşa", "job": "Mobile Application Developer", "profile_image": "CY"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Card(
          child: ListTile(
            leading: CircleAvatar(child: Text(users[index]["profile_image"]!),),
            title: Text(users[index]["name"]!),
            subtitle: Text(users[index]["job"]!),
          ),
        ),
        itemCount: users.length,
      ),
    );
  }
}
