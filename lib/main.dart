import 'package:flutter/material.dart';
import 'package:yuga_application/action_item_list.dart';
import 'package:yuga_application/action_screen.dart';
import 'objective_screen.dart';
import 'key_result_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          // '/': (context) => ObjectiveScreen(),
          '/key_result': (context) => KeyResultScreen(),
          '/action-section': (context) => ActionScreen(),
        },
        home: DefaultTabController(
            length: 4, // Number of tabs
            child: Scaffold(
              appBar: AppBar(
                title: Text('Yuga'),
                bottom: TabBar(
                  tabs: [
                    Tab(text: 'Objectives'),
                    Tab(text: 'Daily Work'),
                    Tab(text: 'Eishenhowers Matrix'),
                    Tab(text: 'The Progress Graph'),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  // Content for Tab 1
                  ObjectiveScreen(),

                  // Content for Tab 2
                  ActionItemList(),

                  // Content for Tab 3
                  Center(
                      child: Column(
                    children: [
                      Image.asset(
                        "assets/eisenhour-metrix.png",
                        height: 500,
                        width: 500,
                      ),
                      Text(
                          "We can choose from these actions to make our TODO's.")
                    ],
                  )),
                  // Content for Tab 4
                  Center(
                      child: Text(
                          'This is progrss tab need to plan this stuff. We can see our progress respect to each objective.')),
                ],
              ),
            )));
  }
}
