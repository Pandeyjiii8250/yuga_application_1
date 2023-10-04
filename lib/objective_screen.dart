import 'package:flutter/material.dart';
import 'objective_link.dart';

export 'objective_screen.dart';

class ObjectiveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Your Objectives'),
      ),
      body: Column(
        children: [
          ObjectiveLink(
              label: "To be Trillionaire", destinationRoute: '/key_result')
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle the floating action button's action here
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
