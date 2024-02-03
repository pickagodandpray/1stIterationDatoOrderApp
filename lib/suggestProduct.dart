import 'package:flutter/material.dart';

class suggestProducts extends StatelessWidget {
  const suggestProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Scraped Data",
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        )
      ],
    ));
  }
}
