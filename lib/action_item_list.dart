import 'package:flutter/material.dart';

export 'action_item_list.dart';

class ActionItemList extends StatelessWidget {
  final List<String> items = [
    'Do Job',
    'Learn Investing',
    'Plan and Start a startup',
    'After it became successful become investor',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          print(index);
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/action-section');
            },
            child: ListTile(
              leading: Icon(Icons.circle),
              title: Text(items[index]),
            ),
          );
        },
      ),
    );
    // return Text("Action Item 1");
  }
}
