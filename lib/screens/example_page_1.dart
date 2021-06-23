import 'package:bottom_navigation_hold_states/screens/example_page_2.dart';
import 'package:flutter/material.dart';

class ExamplePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example Page 1"),
        actions: [
          TextButton(
              onPressed: () {
                // If you do not want to show bottom navigation bar, you can add rootNavigator: true in your code
                // If you want to show directed page as an info page, you can add fullscreenDialog: true in MaterialPageRoute
                Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(builder: (context) => ExamplePage2()));
              },
              child: Text(
                "Navigate",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ))
        ],
      ),
      body: Center(
        child: Text("Example page 1"),
      ),
    );
  }
}
