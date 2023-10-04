import 'package:flutter/material.dart';
import 'action_item_list.dart';

export 'key_result_screen.dart';

class KeyResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Key Results")),
      body: Column(children: [
        Text(
          "To be millionaire",
          style: TextStyle(fontSize: 20.0),
          ),
          ActionItemList(),
          Text(
          "To be billionaire",
          style: TextStyle(fontSize: 20.0),
          ),
          ActionItemList(),
          Text(
          "To be trillionaire",
          style: TextStyle(fontSize: 20.0),
          ),
          ActionItemList(),
        ]),
    );
  }
}
