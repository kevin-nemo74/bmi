import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  ContentCard({required this.textString, required this.awesom});
  String textString;
  IconData awesom;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          awesom,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          textString,
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ],
    );
  }
}
