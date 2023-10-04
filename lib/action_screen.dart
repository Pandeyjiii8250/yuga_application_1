import 'package:flutter/material.dart';

class ActionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Action Item Description")),
      body: Column(children: [
        Text('This should be the tag of application'),
        Text('Tags are combination of: Urgent and Important and their negation.'),
        Text("This tag will help to build Eisenhour Metrix"),
        Text("This should be feedback received from performing this task.")
      ]),
    );
  }
}
