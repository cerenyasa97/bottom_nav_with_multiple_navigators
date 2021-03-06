import 'package:bottom_navigation_hold_states/screens/example_page_2.dart';
import 'package:flutter/material.dart';

class ExamplePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourites Page"),
        actions: [
          TextButton(
              onPressed: () {
                // If you do not want to show bottom navigation bar, you can add rootNavigator: true in your code
                // If you want to show directed page as an info page, you can add fullscreenDialog: true in MaterialPageRoute
                Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(builder: (context) => ExamplePage2()));
              },
              child: Text(
                "Items",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Center(
          child: Text("There is nothing to shown. Please add your favourite items and then check again.", style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
        ),
      )
    );
  }
}
