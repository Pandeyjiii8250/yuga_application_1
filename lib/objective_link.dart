import 'package:flutter/material.dart';

export 'objective_link.dart';

class ObjectiveLink extends StatelessWidget {
  final String label;
  final String destinationRoute;

  ObjectiveLink({
    required this.label,
    required this.destinationRoute,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigate to the specified destination route when clicked.
        Navigator.pushNamed(context, destinationRoute);
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 24.0, // Adjust font size as needed
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}

