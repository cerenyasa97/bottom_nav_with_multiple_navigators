import 'package:flutter/material.dart';

class ExamplePage2 extends StatelessWidget {
  final List<String> itemList = List.generate(15, (index) => "Item ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example Page 2"),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) => Card(
                child: ListTile(
                  title: Text(itemList[index]),
                ),
              ), itemCount: itemList.length,),
    );
  }
}
